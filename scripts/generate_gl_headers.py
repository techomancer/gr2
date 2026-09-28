#!/usr/bin/env python3
"""
Generate OpenGL 1.1 + IRIX 6.5 SGI Extensions C headers and enums
from the official Khronos gl.xml specification in OpenGL-Registry/.
"""

import os
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent
GL_XML = REPO_ROOT / "OpenGL-Registry" / "xml" / "gl.xml"
OUTPUT_DIR = REPO_ROOT / "libglcore" / "include"

# SGI IRIX 6.5.0 libGLcore.so exported extensions
IRIX_EXTENSIONS = [
    "GL_EXT_abgr",
    "GL_EXT_blend_color",
    "GL_EXT_blend_logic_op",
    "GL_EXT_blend_minmax",
    "GL_EXT_blend_subtract",
    "GL_EXT_convolution",
    "GL_EXT_copy_texture",
    "GL_EXT_histogram",
    "GL_EXT_packed_pixels",
    "GL_EXT_polygon_offset",
    "GL_EXT_subtexture",
    "GL_EXT_texture",
    "GL_EXT_texture3D",
    "GL_EXT_texture_object",
    "GL_EXT_vertex_array",
    "GL_SGI_color_matrix",
    "GL_SGI_color_table",
    "GL_SGI_texture_color_table",
    "GL_SGIS_texture_filter4",
    "GL_SGIX_texture_scale_bias",
    "GL_SGIX_subdiv_patch",
]

def main():
    if not GL_XML.exists():
        print(f"Error: {GL_XML} not found", file=sys.stderr)
        sys.exit(1)

    print(f"Parsing {GL_XML}...")
    tree = ET.parse(GL_XML)
    root = tree.getroot()

    # 1. Parse all <enums> and <enum> elements
    enum_defs = {}
    for enums_el in root.findall("enums"):
        for e in enums_el.findall("enum"):
            name = e.attrib.get("name")
            val_str = e.attrib.get("value")
            if name and val_str:
                try:
                    val = int(val_str, 0)
                    enum_defs[name] = (val, val_str)
                except ValueError:
                    pass

    # 2. Collect enums required by GL 1.0, GL 1.1, and IRIX extensions
    core_enums = set()
    for feat in root.findall("feature"):
        if feat.attrib.get("name") in ["GL_VERSION_1_0", "GL_VERSION_1_1"]:
            for e in feat.findall(".//enum"):
                core_enums.add(e.attrib["name"])

    ext_enums = set()
    for ext in root.findall(".//extension"):
        if ext.attrib.get("name") in IRIX_EXTENSIONS:
            for e in ext.findall(".//enum"):
                ext_enums.add(e.attrib["name"])

    all_tokens = core_enums | ext_enums

    # Separate bitfield masks from pure enums
    bitmasks = {}
    pure_enums = {}

    for name in all_tokens:
        if name not in enum_defs:
            continue
        val, val_str = enum_defs[name]
        if name.endswith("_BIT") or name.endswith("_BITS") or name in ("GL_ALL_ATTRIB_BITS", "GL_CLIENT_ALL_ATTRIB_BITS"):
            bitmasks[name] = (val, val_str)
        else:
            pure_enums[name] = (val, val_str)

    print(f"Extracted {len(pure_enums)} enum values and {len(bitmasks)} bitmask values.")

    # 3. Organize pure_enums so preferred names win in m2c TypeMap
    # In m2c: typemap_enum.names[val] = enumerator.name (last one wins)
    # Order:
    #   1. EXT / SGIS / SGIX alias tokens
    #   2. Core tokens (GL_VERSION_1_0 / 1_1)
    #   3. Explicit priority overrides (GL_ZERO, GL_ONE, GL_NEVER, etc.)

    priority_overrides = {
        0: "GL_ZERO",
        1: "GL_ONE",
        0x0200: "GL_NEVER",
        0x0500: "GL_INVALID_ENUM",
        0x0501: "GL_INVALID_VALUE",
        0x0502: "GL_INVALID_OPERATION",
        0x0503: "GL_STACK_OVERFLOW",
        0x0504: "GL_STACK_UNDERFLOW",
        0x0505: "GL_OUT_OF_MEMORY",
    }

    # Group by value
    by_val = {}
    for name, (val, val_str) in pure_enums.items():
        by_val.setdefault(val, []).append((name, val_str))

    sorted_enum_list = []
    # Process each integer value
    for val in sorted(by_val.keys()):
        items = by_val[val]
        # Sort items: EXT tokens first, core tokens second
        def sort_key(item):
            name = item[0]
            if val in priority_overrides and name == priority_overrides[val]:
                return 100 # Put preferred name last so it wins
            if name in core_enums:
                return 10
            return 1
        items.sort(key=sort_key)
        for item in items:
            sorted_enum_list.append(item)

    # 4. Generate libglcore/include/gl_enums.h
    enums_h_path = OUTPUT_DIR / "gl_enums.h"
    with open(enums_h_path, "w") as f:
        f.write("/*\n")
        f.write(" * OpenGL 1.1 + SGI IRIX 6.5 Extension Enumerations\n")
        f.write(" * Generated automatically from Khronos OpenGL-Registry gl.xml\n")
        f.write(" */\n\n")
        f.write("#ifndef __GL_ENUMS_H__\n")
        f.write("#define __GL_ENUMS_H__\n\n")
        f.write("typedef enum GLenum {\n")
        
        seen_names = set()
        for i, (name, val_str) in enumerate(sorted_enum_list):
            if name in seen_names:
                continue
            seen_names.add(name)
            comma = "," if i < len(sorted_enum_list) - 1 else ""
            f.write(f"    {name:<36} = {val_str}{comma}\n")
        
        f.write("} GLenum;\n\n")
        f.write("/* Bitfield masks (GLbitfield) */\n")
        for name in sorted(bitmasks.keys()):
            val, val_str = bitmasks[name]
            f.write(f"#define {name:<36} {val_str}\n")
        f.write("\n#endif /* __GL_ENUMS_H__ */\n")

    print(f"Generated {enums_h_path} with {len(seen_names)} enum entries.")

    # 5. Extract commands / function prototypes
    commands = {}
    for cmd in root.findall(".//command"):
        proto = cmd.find("proto")
        if proto is None:
            continue
        ret_type = "".join(proto.itertext()).strip()
        cmd_name = proto.find("name").text.strip()
        # strip cmd_name from ret_type
        if ret_type.endswith(cmd_name):
            ret_type = ret_type[:-len(cmd_name)].strip()

        params = []
        for param in cmd.findall("param"):
            p_text = "".join(param.itertext()).strip()
            params.append(p_text)

        commands[cmd_name] = (ret_type, params)

    needed_commands = set()
    for feat in root.findall("feature"):
        if feat.attrib.get("name") in ["GL_VERSION_1_0", "GL_VERSION_1_1"]:
            for c in feat.findall(".//command"):
                needed_commands.add(c.attrib["name"])

    for ext in root.findall(".//extension"):
        if ext.attrib.get("name") in IRIX_EXTENSIONS:
            for c in ext.findall(".//command"):
                needed_commands.add(c.attrib["name"])

    gl_h_path = OUTPUT_DIR / "gl_1_1.h"
    with open(gl_h_path, "w") as f:
        f.write("/*\n")
        f.write(" * OpenGL 1.1 + SGI IRIX 6.5 Function Prototypes\n")
        f.write(" * Generated automatically from Khronos OpenGL-Registry gl.xml\n")
        f.write(" */\n\n")
        f.write("#ifndef __GL_1_1_H__\n")
        f.write("#define __GL_1_1_H__\n\n")
        f.write('#include "gl_enums.h"\n\n')
        for cmd_name in sorted(needed_commands):
            if cmd_name in commands:
                ret_type, params = commands[cmd_name]
                param_str = ", ".join(params) if params else "void"
                f.write(f"{ret_type} {cmd_name}({param_str});\n")
        f.write("\n#endif /* __GL_1_1_H__ */\n")

    print(f"Generated {gl_h_path} with {len(needed_commands)} function prototypes.")

if __name__ == "__main__":
    main()
