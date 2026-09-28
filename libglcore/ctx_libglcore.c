typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;
typedef unsigned int size_t;
typedef enum GLenum {
    GL_FALSE = 0,
    GL_NONE = 0,
    GL_POINTS = 0x0000,
    GL_NO_ERROR = 0,
    GL_ZERO = 0,
    GL_LINES = 0x0001,
    GL_TRUE = 1,
    GL_ONE = 1,
    GL_LINE_LOOP = 0x0002,
    GL_LINE_STRIP = 0x0003,
    GL_TRIANGLES = 0x0004,
    GL_TRIANGLE_STRIP = 0x0005,
    GL_TRIANGLE_FAN = 0x0006,
    GL_QUADS = 0x0007,
    GL_QUAD_STRIP = 0x0008,
    GL_POLYGON = 0x0009,
    GL_ACCUM = 0x0100,
    GL_LOAD = 0x0101,
    GL_RETURN = 0x0102,
    GL_MULT = 0x0103,
    GL_ADD = 0x0104,
    GL_NEVER = 0x0200,
    GL_LESS = 0x0201,
    GL_EQUAL = 0x0202,
    GL_LEQUAL = 0x0203,
    GL_GREATER = 0x0204,
    GL_NOTEQUAL = 0x0205,
    GL_GEQUAL = 0x0206,
    GL_ALWAYS = 0x0207,
    GL_SRC_COLOR = 0x0300,
    GL_ONE_MINUS_SRC_COLOR = 0x0301,
    GL_SRC_ALPHA = 0x0302,
    GL_ONE_MINUS_SRC_ALPHA = 0x0303,
    GL_DST_ALPHA = 0x0304,
    GL_ONE_MINUS_DST_ALPHA = 0x0305,
    GL_DST_COLOR = 0x0306,
    GL_ONE_MINUS_DST_COLOR = 0x0307,
    GL_SRC_ALPHA_SATURATE = 0x0308,
    GL_FRONT_LEFT = 0x0400,
    GL_FRONT_RIGHT = 0x0401,
    GL_BACK_LEFT = 0x0402,
    GL_BACK_RIGHT = 0x0403,
    GL_FRONT = 0x0404,
    GL_BACK = 0x0405,
    GL_LEFT = 0x0406,
    GL_RIGHT = 0x0407,
    GL_FRONT_AND_BACK = 0x0408,
    GL_AUX0 = 0x0409,
    GL_AUX1 = 0x040A,
    GL_AUX2 = 0x040B,
    GL_AUX3 = 0x040C,
    GL_INVALID_ENUM = 0x0500,
    GL_INVALID_VALUE = 0x0501,
    GL_INVALID_OPERATION = 0x0502,
    GL_STACK_OVERFLOW = 0x0503,
    GL_STACK_UNDERFLOW = 0x0504,
    GL_OUT_OF_MEMORY = 0x0505,
    GL_2D = 0x0600,
    GL_3D = 0x0601,
    GL_3D_COLOR = 0x0602,
    GL_3D_COLOR_TEXTURE = 0x0603,
    GL_4D_COLOR_TEXTURE = 0x0604,
    GL_PASS_THROUGH_TOKEN = 0x0700,
    GL_POINT_TOKEN = 0x0701,
    GL_LINE_TOKEN = 0x0702,
    GL_POLYGON_TOKEN = 0x0703,
    GL_BITMAP_TOKEN = 0x0704,
    GL_DRAW_PIXEL_TOKEN = 0x0705,
    GL_COPY_PIXEL_TOKEN = 0x0706,
    GL_LINE_RESET_TOKEN = 0x0707,
    GL_EXP = 0x0800,
    GL_EXP2 = 0x0801,
    GL_CW = 0x0900,
    GL_CCW = 0x0901,
    GL_COEFF = 0x0A00,
    GL_ORDER = 0x0A01,
    GL_DOMAIN = 0x0A02,
    GL_CURRENT_COLOR = 0x0B00,
    GL_CURRENT_INDEX = 0x0B01,
    GL_CURRENT_NORMAL = 0x0B02,
    GL_CURRENT_TEXTURE_COORDS = 0x0B03,
    GL_CURRENT_RASTER_COLOR = 0x0B04,
    GL_CURRENT_RASTER_INDEX = 0x0B05,
    GL_CURRENT_RASTER_TEXTURE_COORDS = 0x0B06,
    GL_CURRENT_RASTER_POSITION = 0x0B07,
    GL_CURRENT_RASTER_POSITION_VALID = 0x0B08,
    GL_CURRENT_RASTER_DISTANCE = 0x0B09,
    GL_POINT_SMOOTH = 0x0B10,
    GL_POINT_SIZE = 0x0B11,
    GL_POINT_SIZE_RANGE = 0x0B12,
    GL_POINT_SIZE_GRANULARITY = 0x0B13,
    GL_LINE_SMOOTH = 0x0B20,
    GL_LINE_WIDTH = 0x0B21,
    GL_LINE_WIDTH_RANGE = 0x0B22,
    GL_LINE_WIDTH_GRANULARITY = 0x0B23,
    GL_LINE_STIPPLE = 0x0B24,
    GL_LINE_STIPPLE_PATTERN = 0x0B25,
    GL_LINE_STIPPLE_REPEAT = 0x0B26,
    GL_LIST_MODE = 0x0B30,
    GL_MAX_LIST_NESTING = 0x0B31,
    GL_LIST_BASE = 0x0B32,
    GL_LIST_INDEX = 0x0B33,
    GL_POLYGON_MODE = 0x0B40,
    GL_POLYGON_SMOOTH = 0x0B41,
    GL_POLYGON_STIPPLE = 0x0B42,
    GL_EDGE_FLAG = 0x0B43,
    GL_CULL_FACE = 0x0B44,
    GL_CULL_FACE_MODE = 0x0B45,
    GL_FRONT_FACE = 0x0B46,
    GL_LIGHTING = 0x0B50,
    GL_LIGHT_MODEL_LOCAL_VIEWER = 0x0B51,
    GL_LIGHT_MODEL_TWO_SIDE = 0x0B52,
    GL_LIGHT_MODEL_AMBIENT = 0x0B53,
    GL_SHADE_MODEL = 0x0B54,
    GL_COLOR_MATERIAL_FACE = 0x0B55,
    GL_COLOR_MATERIAL_PARAMETER = 0x0B56,
    GL_COLOR_MATERIAL = 0x0B57,
    GL_FOG = 0x0B60,
    GL_FOG_INDEX = 0x0B61,
    GL_FOG_DENSITY = 0x0B62,
    GL_FOG_START = 0x0B63,
    GL_FOG_END = 0x0B64,
    GL_FOG_MODE = 0x0B65,
    GL_FOG_COLOR = 0x0B66,
    GL_DEPTH_RANGE = 0x0B70,
    GL_DEPTH_TEST = 0x0B71,
    GL_DEPTH_WRITEMASK = 0x0B72,
    GL_DEPTH_CLEAR_VALUE = 0x0B73,
    GL_DEPTH_FUNC = 0x0B74,
    GL_ACCUM_CLEAR_VALUE = 0x0B80,
    GL_STENCIL_TEST = 0x0B90,
    GL_STENCIL_CLEAR_VALUE = 0x0B91,
    GL_STENCIL_FUNC = 0x0B92,
    GL_STENCIL_VALUE_MASK = 0x0B93,
    GL_STENCIL_FAIL = 0x0B94,
    GL_STENCIL_PASS_DEPTH_FAIL = 0x0B95,
    GL_STENCIL_PASS_DEPTH_PASS = 0x0B96,
    GL_STENCIL_REF = 0x0B97,
    GL_STENCIL_WRITEMASK = 0x0B98,
    GL_MATRIX_MODE = 0x0BA0,
    GL_NORMALIZE = 0x0BA1,
    GL_VIEWPORT = 0x0BA2,
    GL_MODELVIEW_STACK_DEPTH = 0x0BA3,
    GL_PROJECTION_STACK_DEPTH = 0x0BA4,
    GL_TEXTURE_STACK_DEPTH = 0x0BA5,
    GL_MODELVIEW_MATRIX = 0x0BA6,
    GL_PROJECTION_MATRIX = 0x0BA7,
    GL_TEXTURE_MATRIX = 0x0BA8,
    GL_ATTRIB_STACK_DEPTH = 0x0BB0,
    GL_CLIENT_ATTRIB_STACK_DEPTH = 0x0BB1,
    GL_ALPHA_TEST = 0x0BC0,
    GL_ALPHA_TEST_FUNC = 0x0BC1,
    GL_ALPHA_TEST_REF = 0x0BC2,
    GL_DITHER = 0x0BD0,
    GL_BLEND_DST = 0x0BE0,
    GL_BLEND_SRC = 0x0BE1,
    GL_BLEND = 0x0BE2,
    GL_LOGIC_OP_MODE = 0x0BF0,
    GL_LOGIC_OP = 0x0BF1,
    GL_INDEX_LOGIC_OP = 0x0BF1,
    GL_COLOR_LOGIC_OP = 0x0BF2,
    GL_AUX_BUFFERS = 0x0C00,
    GL_DRAW_BUFFER = 0x0C01,
    GL_READ_BUFFER = 0x0C02,
    GL_SCISSOR_BOX = 0x0C10,
    GL_SCISSOR_TEST = 0x0C11,
    GL_INDEX_CLEAR_VALUE = 0x0C20,
    GL_INDEX_WRITEMASK = 0x0C21,
    GL_COLOR_CLEAR_VALUE = 0x0C22,
    GL_COLOR_WRITEMASK = 0x0C23,
    GL_INDEX_MODE = 0x0C30,
    GL_RGBA_MODE = 0x0C31,
    GL_DOUBLEBUFFER = 0x0C32,
    GL_STEREO = 0x0C33,
    GL_RENDER_MODE = 0x0C40,
    GL_PERSPECTIVE_CORRECTION_HINT = 0x0C50,
    GL_POINT_SMOOTH_HINT = 0x0C51,
    GL_LINE_SMOOTH_HINT = 0x0C52,
    GL_POLYGON_SMOOTH_HINT = 0x0C53,
    GL_FOG_HINT = 0x0C54,
    GL_TEXTURE_GEN_S = 0x0C60,
    GL_TEXTURE_GEN_T = 0x0C61,
    GL_TEXTURE_GEN_R = 0x0C62,
    GL_TEXTURE_GEN_Q = 0x0C63,
    GL_PIXEL_MAP_I_TO_I = 0x0C70,
    GL_PIXEL_MAP_S_TO_S = 0x0C71,
    GL_PIXEL_MAP_I_TO_R = 0x0C72,
    GL_PIXEL_MAP_I_TO_G = 0x0C73,
    GL_PIXEL_MAP_I_TO_B = 0x0C74,
    GL_PIXEL_MAP_I_TO_A = 0x0C75,
    GL_PIXEL_MAP_R_TO_R = 0x0C76,
    GL_PIXEL_MAP_G_TO_G = 0x0C77,
    GL_PIXEL_MAP_B_TO_B = 0x0C78,
    GL_PIXEL_MAP_A_TO_A = 0x0C79,
    GL_PIXEL_MAP_I_TO_I_SIZE = 0x0CB0,
    GL_PIXEL_MAP_S_TO_S_SIZE = 0x0CB1,
    GL_PIXEL_MAP_I_TO_R_SIZE = 0x0CB2,
    GL_PIXEL_MAP_I_TO_G_SIZE = 0x0CB3,
    GL_PIXEL_MAP_I_TO_B_SIZE = 0x0CB4,
    GL_PIXEL_MAP_I_TO_A_SIZE = 0x0CB5,
    GL_PIXEL_MAP_R_TO_R_SIZE = 0x0CB6,
    GL_PIXEL_MAP_G_TO_G_SIZE = 0x0CB7,
    GL_PIXEL_MAP_B_TO_B_SIZE = 0x0CB8,
    GL_PIXEL_MAP_A_TO_A_SIZE = 0x0CB9,
    GL_UNPACK_SWAP_BYTES = 0x0CF0,
    GL_UNPACK_LSB_FIRST = 0x0CF1,
    GL_UNPACK_ROW_LENGTH = 0x0CF2,
    GL_UNPACK_SKIP_ROWS = 0x0CF3,
    GL_UNPACK_SKIP_PIXELS = 0x0CF4,
    GL_UNPACK_ALIGNMENT = 0x0CF5,
    GL_PACK_SWAP_BYTES = 0x0D00,
    GL_PACK_LSB_FIRST = 0x0D01,
    GL_PACK_ROW_LENGTH = 0x0D02,
    GL_PACK_SKIP_ROWS = 0x0D03,
    GL_PACK_SKIP_PIXELS = 0x0D04,
    GL_PACK_ALIGNMENT = 0x0D05,
    GL_MAP_COLOR = 0x0D10,
    GL_MAP_STENCIL = 0x0D11,
    GL_INDEX_SHIFT = 0x0D12,
    GL_INDEX_OFFSET = 0x0D13,
    GL_RED_SCALE = 0x0D14,
    GL_RED_BIAS = 0x0D15,
    GL_ZOOM_X = 0x0D16,
    GL_ZOOM_Y = 0x0D17,
    GL_GREEN_SCALE = 0x0D18,
    GL_GREEN_BIAS = 0x0D19,
    GL_BLUE_SCALE = 0x0D1A,
    GL_BLUE_BIAS = 0x0D1B,
    GL_ALPHA_SCALE = 0x0D1C,
    GL_ALPHA_BIAS = 0x0D1D,
    GL_DEPTH_SCALE = 0x0D1E,
    GL_DEPTH_BIAS = 0x0D1F,
    GL_MAX_EVAL_ORDER = 0x0D30,
    GL_MAX_LIGHTS = 0x0D31,
    GL_MAX_CLIP_PLANES = 0x0D32,
    GL_MAX_TEXTURE_SIZE = 0x0D33,
    GL_MAX_PIXEL_MAP_TABLE = 0x0D34,
    GL_MAX_ATTRIB_STACK_DEPTH = 0x0D35,
    GL_MAX_MODELVIEW_STACK_DEPTH = 0x0D36,
    GL_MAX_NAME_STACK_DEPTH = 0x0D37,
    GL_MAX_PROJECTION_STACK_DEPTH = 0x0D38,
    GL_MAX_TEXTURE_STACK_DEPTH = 0x0D39,
    GL_MAX_VIEWPORT_DIMS = 0x0D3A,
    GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = 0x0D3B,
    GL_NAME_STACK_DEPTH = 0x0D70,
    GL_AUTO_NORMAL = 0x0D80,
    GL_MAP1_COLOR_4 = 0x0D90,
    GL_MAP1_INDEX = 0x0D91,
    GL_MAP1_NORMAL = 0x0D92,
    GL_MAP1_TEXTURE_COORD_1 = 0x0D93,
    GL_MAP1_TEXTURE_COORD_2 = 0x0D94,
    GL_MAP1_TEXTURE_COORD_3 = 0x0D95,
    GL_MAP1_TEXTURE_COORD_4 = 0x0D96,
    GL_MAP1_VERTEX_3 = 0x0D97,
    GL_MAP1_VERTEX_4 = 0x0D98,
    GL_MAP2_COLOR_4 = 0x0DB0,
    GL_MAP2_INDEX = 0x0DB1,
    GL_MAP2_NORMAL = 0x0DB2,
    GL_MAP2_TEXTURE_COORD_1 = 0x0DB3,
    GL_MAP2_TEXTURE_COORD_2 = 0x0DB4,
    GL_MAP2_TEXTURE_COORD_3 = 0x0DB5,
    GL_MAP2_TEXTURE_COORD_4 = 0x0DB6,
    GL_MAP2_VERTEX_3 = 0x0DB7,
    GL_MAP2_VERTEX_4 = 0x0DB8,
    GL_MAP1_GRID_DOMAIN = 0x0DD0,
    GL_MAP1_GRID_SEGMENTS = 0x0DD1,
    GL_MAP2_GRID_DOMAIN = 0x0DD2,
    GL_MAP2_GRID_SEGMENTS = 0x0DD3,
    GL_TEXTURE_1D = 0x0DE0,
    GL_TEXTURE_2D = 0x0DE1,
    GL_FEEDBACK_BUFFER_POINTER = 0x0DF0,
    GL_FEEDBACK_BUFFER_SIZE = 0x0DF1,
    GL_FEEDBACK_BUFFER_TYPE = 0x0DF2,
    GL_SELECTION_BUFFER_POINTER = 0x0DF3,
    GL_SELECTION_BUFFER_SIZE = 0x0DF4,
    GL_TEXTURE_WIDTH = 0x1000,
    GL_TEXTURE_HEIGHT = 0x1001,
    GL_TEXTURE_COMPONENTS = 0x1003,
    GL_TEXTURE_INTERNAL_FORMAT = 0x1003,
    GL_TEXTURE_BORDER_COLOR = 0x1004,
    GL_TEXTURE_BORDER = 0x1005,
    GL_DONT_CARE = 0x1100,
    GL_FASTEST = 0x1101,
    GL_NICEST = 0x1102,
    GL_AMBIENT = 0x1200,
    GL_DIFFUSE = 0x1201,
    GL_SPECULAR = 0x1202,
    GL_POSITION = 0x1203,
    GL_SPOT_DIRECTION = 0x1204,
    GL_SPOT_EXPONENT = 0x1205,
    GL_SPOT_CUTOFF = 0x1206,
    GL_CONSTANT_ATTENUATION = 0x1207,
    GL_LINEAR_ATTENUATION = 0x1208,
    GL_QUADRATIC_ATTENUATION = 0x1209,
    GL_COMPILE = 0x1300,
    GL_COMPILE_AND_EXECUTE = 0x1301,
    GL_BYTE = 0x1400,
    GL_UNSIGNED_BYTE = 0x1401,
    GL_SHORT = 0x1402,
    GL_UNSIGNED_SHORT = 0x1403,
    GL_INT = 0x1404,
    GL_UNSIGNED_INT = 0x1405,
    GL_FLOAT = 0x1406,
    GL_2_BYTES = 0x1407,
    GL_3_BYTES = 0x1408,
    GL_4_BYTES = 0x1409,
    GL_DOUBLE = 0x140A,
    GL_CLEAR = 0x1500,
    GL_AND = 0x1501,
    GL_AND_REVERSE = 0x1502,
    GL_COPY = 0x1503,
    GL_AND_INVERTED = 0x1504,
    GL_NOOP = 0x1505,
    GL_XOR = 0x1506,
    GL_OR = 0x1507,
    GL_NOR = 0x1508,
    GL_EQUIV = 0x1509,
    GL_INVERT = 0x150A,
    GL_OR_REVERSE = 0x150B,
    GL_COPY_INVERTED = 0x150C,
    GL_OR_INVERTED = 0x150D,
    GL_NAND = 0x150E,
    GL_SET = 0x150F,
    GL_EMISSION = 0x1600,
    GL_SHININESS = 0x1601,
    GL_AMBIENT_AND_DIFFUSE = 0x1602,
    GL_COLOR_INDEXES = 0x1603,
    GL_MODELVIEW = 0x1700,
    GL_PROJECTION = 0x1701,
    GL_TEXTURE = 0x1702,
    GL_COLOR = 0x1800,
    GL_DEPTH = 0x1801,
    GL_STENCIL = 0x1802,
    GL_COLOR_INDEX = 0x1900,
    GL_STENCIL_INDEX = 0x1901,
    GL_DEPTH_COMPONENT = 0x1902,
    GL_RED = 0x1903,
    GL_GREEN = 0x1904,
    GL_BLUE = 0x1905,
    GL_ALPHA = 0x1906,
    GL_RGB = 0x1907,
    GL_RGBA = 0x1908,
    GL_LUMINANCE = 0x1909,
    GL_LUMINANCE_ALPHA = 0x190A,
    GL_BITMAP = 0x1A00,
    GL_POINT = 0x1B00,
    GL_LINE = 0x1B01,
    GL_FILL = 0x1B02,
    GL_RENDER = 0x1C00,
    GL_FEEDBACK = 0x1C01,
    GL_SELECT = 0x1C02,
    GL_FLAT = 0x1D00,
    GL_SMOOTH = 0x1D01,
    GL_KEEP = 0x1E00,
    GL_REPLACE = 0x1E01,
    GL_INCR = 0x1E02,
    GL_DECR = 0x1E03,
    GL_VENDOR = 0x1F00,
    GL_RENDERER = 0x1F01,
    GL_VERSION = 0x1F02,
    GL_EXTENSIONS = 0x1F03,
    GL_S = 0x2000,
    GL_T = 0x2001,
    GL_R = 0x2002,
    GL_Q = 0x2003,
    GL_MODULATE = 0x2100,
    GL_DECAL = 0x2101,
    GL_TEXTURE_ENV_MODE = 0x2200,
    GL_TEXTURE_ENV_COLOR = 0x2201,
    GL_TEXTURE_ENV = 0x2300,
    GL_EYE_LINEAR = 0x2400,
    GL_OBJECT_LINEAR = 0x2401,
    GL_SPHERE_MAP = 0x2402,
    GL_TEXTURE_GEN_MODE = 0x2500,
    GL_OBJECT_PLANE = 0x2501,
    GL_EYE_PLANE = 0x2502,
    GL_NEAREST = 0x2600,
    GL_LINEAR = 0x2601,
    GL_NEAREST_MIPMAP_NEAREST = 0x2700,
    GL_LINEAR_MIPMAP_NEAREST = 0x2701,
    GL_NEAREST_MIPMAP_LINEAR = 0x2702,
    GL_LINEAR_MIPMAP_LINEAR = 0x2703,
    GL_TEXTURE_MAG_FILTER = 0x2800,
    GL_TEXTURE_MIN_FILTER = 0x2801,
    GL_TEXTURE_WRAP_S = 0x2802,
    GL_TEXTURE_WRAP_T = 0x2803,
    GL_CLAMP = 0x2900,
    GL_REPEAT = 0x2901,
    GL_POLYGON_OFFSET_UNITS = 0x2A00,
    GL_POLYGON_OFFSET_POINT = 0x2A01,
    GL_POLYGON_OFFSET_LINE = 0x2A02,
    GL_R3_G3_B2 = 0x2A10,
    GL_V2F = 0x2A20,
    GL_V3F = 0x2A21,
    GL_C4UB_V2F = 0x2A22,
    GL_C4UB_V3F = 0x2A23,
    GL_C3F_V3F = 0x2A24,
    GL_N3F_V3F = 0x2A25,
    GL_C4F_N3F_V3F = 0x2A26,
    GL_T2F_V3F = 0x2A27,
    GL_T4F_V4F = 0x2A28,
    GL_T2F_C4UB_V3F = 0x2A29,
    GL_T2F_C3F_V3F = 0x2A2A,
    GL_T2F_N3F_V3F = 0x2A2B,
    GL_T2F_C4F_N3F_V3F = 0x2A2C,
    GL_T4F_C4F_N3F_V4F = 0x2A2D,
    GL_CLIP_PLANE0 = 0x3000,
    GL_CLIP_PLANE1 = 0x3001,
    GL_CLIP_PLANE2 = 0x3002,
    GL_CLIP_PLANE3 = 0x3003,
    GL_CLIP_PLANE4 = 0x3004,
    GL_CLIP_PLANE5 = 0x3005,
    GL_LIGHT0 = 0x4000,
    GL_LIGHT1 = 0x4001,
    GL_LIGHT2 = 0x4002,
    GL_LIGHT3 = 0x4003,
    GL_LIGHT4 = 0x4004,
    GL_LIGHT5 = 0x4005,
    GL_LIGHT6 = 0x4006,
    GL_LIGHT7 = 0x4007,
    GL_ABGR_EXT = 0x8000,
    GL_CONSTANT_COLOR_EXT = 0x8001,
    GL_ONE_MINUS_CONSTANT_COLOR_EXT = 0x8002,
    GL_CONSTANT_ALPHA_EXT = 0x8003,
    GL_ONE_MINUS_CONSTANT_ALPHA_EXT = 0x8004,
    GL_BLEND_COLOR_EXT = 0x8005,
    GL_FUNC_ADD_EXT = 0x8006,
    GL_MIN_EXT = 0x8007,
    GL_MAX_EXT = 0x8008,
    GL_BLEND_EQUATION_EXT = 0x8009,
    GL_FUNC_SUBTRACT_EXT = 0x800A,
    GL_FUNC_REVERSE_SUBTRACT_EXT = 0x800B,
    GL_CONVOLUTION_1D_EXT = 0x8010,
    GL_CONVOLUTION_2D_EXT = 0x8011,
    GL_SEPARABLE_2D_EXT = 0x8012,
    GL_CONVOLUTION_BORDER_MODE_EXT = 0x8013,
    GL_CONVOLUTION_FILTER_SCALE_EXT = 0x8014,
    GL_CONVOLUTION_FILTER_BIAS_EXT = 0x8015,
    GL_REDUCE_EXT = 0x8016,
    GL_CONVOLUTION_FORMAT_EXT = 0x8017,
    GL_CONVOLUTION_WIDTH_EXT = 0x8018,
    GL_CONVOLUTION_HEIGHT_EXT = 0x8019,
    GL_MAX_CONVOLUTION_WIDTH_EXT = 0x801A,
    GL_MAX_CONVOLUTION_HEIGHT_EXT = 0x801B,
    GL_POST_CONVOLUTION_RED_SCALE_EXT = 0x801C,
    GL_POST_CONVOLUTION_GREEN_SCALE_EXT = 0x801D,
    GL_POST_CONVOLUTION_BLUE_SCALE_EXT = 0x801E,
    GL_POST_CONVOLUTION_ALPHA_SCALE_EXT = 0x801F,
    GL_POST_CONVOLUTION_RED_BIAS_EXT = 0x8020,
    GL_POST_CONVOLUTION_GREEN_BIAS_EXT = 0x8021,
    GL_POST_CONVOLUTION_BLUE_BIAS_EXT = 0x8022,
    GL_POST_CONVOLUTION_ALPHA_BIAS_EXT = 0x8023,
    GL_HISTOGRAM_EXT = 0x8024,
    GL_PROXY_HISTOGRAM_EXT = 0x8025,
    GL_HISTOGRAM_WIDTH_EXT = 0x8026,
    GL_HISTOGRAM_FORMAT_EXT = 0x8027,
    GL_HISTOGRAM_RED_SIZE_EXT = 0x8028,
    GL_HISTOGRAM_GREEN_SIZE_EXT = 0x8029,
    GL_HISTOGRAM_BLUE_SIZE_EXT = 0x802A,
    GL_HISTOGRAM_ALPHA_SIZE_EXT = 0x802B,
    GL_HISTOGRAM_LUMINANCE_SIZE_EXT = 0x802C,
    GL_HISTOGRAM_SINK_EXT = 0x802D,
    GL_MINMAX_EXT = 0x802E,
    GL_MINMAX_FORMAT_EXT = 0x802F,
    GL_MINMAX_SINK_EXT = 0x8030,
    GL_TABLE_TOO_LARGE_EXT = 0x8031,
    GL_UNSIGNED_BYTE_3_3_2_EXT = 0x8032,
    GL_UNSIGNED_SHORT_4_4_4_4_EXT = 0x8033,
    GL_UNSIGNED_SHORT_5_5_5_1_EXT = 0x8034,
    GL_UNSIGNED_INT_8_8_8_8_EXT = 0x8035,
    GL_UNSIGNED_INT_10_10_10_2_EXT = 0x8036,
    GL_POLYGON_OFFSET_EXT = 0x8037,
    GL_POLYGON_OFFSET_FILL = 0x8037,
    GL_POLYGON_OFFSET_FACTOR_EXT = 0x8038,
    GL_POLYGON_OFFSET_FACTOR = 0x8038,
    GL_POLYGON_OFFSET_BIAS_EXT = 0x8039,
    GL_ALPHA4_EXT = 0x803B,
    GL_ALPHA4 = 0x803B,
    GL_ALPHA8_EXT = 0x803C,
    GL_ALPHA8 = 0x803C,
    GL_ALPHA12_EXT = 0x803D,
    GL_ALPHA12 = 0x803D,
    GL_ALPHA16_EXT = 0x803E,
    GL_ALPHA16 = 0x803E,
    GL_LUMINANCE4_EXT = 0x803F,
    GL_LUMINANCE4 = 0x803F,
    GL_LUMINANCE8_EXT = 0x8040,
    GL_LUMINANCE8 = 0x8040,
    GL_LUMINANCE12_EXT = 0x8041,
    GL_LUMINANCE12 = 0x8041,
    GL_LUMINANCE16_EXT = 0x8042,
    GL_LUMINANCE16 = 0x8042,
    GL_LUMINANCE4_ALPHA4_EXT = 0x8043,
    GL_LUMINANCE4_ALPHA4 = 0x8043,
    GL_LUMINANCE6_ALPHA2_EXT = 0x8044,
    GL_LUMINANCE6_ALPHA2 = 0x8044,
    GL_LUMINANCE8_ALPHA8_EXT = 0x8045,
    GL_LUMINANCE8_ALPHA8 = 0x8045,
    GL_LUMINANCE12_ALPHA4_EXT = 0x8046,
    GL_LUMINANCE12_ALPHA4 = 0x8046,
    GL_LUMINANCE12_ALPHA12_EXT = 0x8047,
    GL_LUMINANCE12_ALPHA12 = 0x8047,
    GL_LUMINANCE16_ALPHA16_EXT = 0x8048,
    GL_LUMINANCE16_ALPHA16 = 0x8048,
    GL_INTENSITY_EXT = 0x8049,
    GL_INTENSITY = 0x8049,
    GL_INTENSITY4_EXT = 0x804A,
    GL_INTENSITY4 = 0x804A,
    GL_INTENSITY8_EXT = 0x804B,
    GL_INTENSITY8 = 0x804B,
    GL_INTENSITY12_EXT = 0x804C,
    GL_INTENSITY12 = 0x804C,
    GL_INTENSITY16_EXT = 0x804D,
    GL_INTENSITY16 = 0x804D,
    GL_RGB2_EXT = 0x804E,
    GL_RGB4_EXT = 0x804F,
    GL_RGB4 = 0x804F,
    GL_RGB5_EXT = 0x8050,
    GL_RGB5 = 0x8050,
    GL_RGB8_EXT = 0x8051,
    GL_RGB8 = 0x8051,
    GL_RGB10_EXT = 0x8052,
    GL_RGB10 = 0x8052,
    GL_RGB12_EXT = 0x8053,
    GL_RGB12 = 0x8053,
    GL_RGB16_EXT = 0x8054,
    GL_RGB16 = 0x8054,
    GL_RGBA2_EXT = 0x8055,
    GL_RGBA2 = 0x8055,
    GL_RGBA4_EXT = 0x8056,
    GL_RGBA4 = 0x8056,
    GL_RGB5_A1_EXT = 0x8057,
    GL_RGB5_A1 = 0x8057,
    GL_RGBA8_EXT = 0x8058,
    GL_RGBA8 = 0x8058,
    GL_RGB10_A2_EXT = 0x8059,
    GL_RGB10_A2 = 0x8059,
    GL_RGBA12_EXT = 0x805A,
    GL_RGBA12 = 0x805A,
    GL_RGBA16_EXT = 0x805B,
    GL_RGBA16 = 0x805B,
    GL_TEXTURE_RED_SIZE_EXT = 0x805C,
    GL_TEXTURE_RED_SIZE = 0x805C,
    GL_TEXTURE_GREEN_SIZE_EXT = 0x805D,
    GL_TEXTURE_GREEN_SIZE = 0x805D,
    GL_TEXTURE_BLUE_SIZE_EXT = 0x805E,
    GL_TEXTURE_BLUE_SIZE = 0x805E,
    GL_TEXTURE_ALPHA_SIZE_EXT = 0x805F,
    GL_TEXTURE_ALPHA_SIZE = 0x805F,
    GL_TEXTURE_LUMINANCE_SIZE_EXT = 0x8060,
    GL_TEXTURE_LUMINANCE_SIZE = 0x8060,
    GL_TEXTURE_INTENSITY_SIZE_EXT = 0x8061,
    GL_TEXTURE_INTENSITY_SIZE = 0x8061,
    GL_REPLACE_EXT = 0x8062,
    GL_PROXY_TEXTURE_1D_EXT = 0x8063,
    GL_PROXY_TEXTURE_1D = 0x8063,
    GL_PROXY_TEXTURE_2D_EXT = 0x8064,
    GL_PROXY_TEXTURE_2D = 0x8064,
    GL_TEXTURE_TOO_LARGE_EXT = 0x8065,
    GL_TEXTURE_PRIORITY_EXT = 0x8066,
    GL_TEXTURE_PRIORITY = 0x8066,
    GL_TEXTURE_RESIDENT_EXT = 0x8067,
    GL_TEXTURE_RESIDENT = 0x8067,
    GL_TEXTURE_1D_BINDING_EXT = 0x8068,
    GL_TEXTURE_BINDING_1D = 0x8068,
    GL_TEXTURE_2D_BINDING_EXT = 0x8069,
    GL_TEXTURE_BINDING_2D = 0x8069,
    GL_TEXTURE_3D_BINDING_EXT = 0x806A,
    GL_PACK_SKIP_IMAGES_EXT = 0x806B,
    GL_PACK_IMAGE_HEIGHT_EXT = 0x806C,
    GL_UNPACK_SKIP_IMAGES_EXT = 0x806D,
    GL_UNPACK_IMAGE_HEIGHT_EXT = 0x806E,
    GL_TEXTURE_3D_EXT = 0x806F,
    GL_PROXY_TEXTURE_3D_EXT = 0x8070,
    GL_TEXTURE_DEPTH_EXT = 0x8071,
    GL_TEXTURE_WRAP_R_EXT = 0x8072,
    GL_MAX_3D_TEXTURE_SIZE_EXT = 0x8073,
    GL_VERTEX_ARRAY_EXT = 0x8074,
    GL_VERTEX_ARRAY = 0x8074,
    GL_NORMAL_ARRAY_EXT = 0x8075,
    GL_NORMAL_ARRAY = 0x8075,
    GL_COLOR_ARRAY_EXT = 0x8076,
    GL_COLOR_ARRAY = 0x8076,
    GL_INDEX_ARRAY_EXT = 0x8077,
    GL_INDEX_ARRAY = 0x8077,
    GL_TEXTURE_COORD_ARRAY_EXT = 0x8078,
    GL_TEXTURE_COORD_ARRAY = 0x8078,
    GL_EDGE_FLAG_ARRAY_EXT = 0x8079,
    GL_EDGE_FLAG_ARRAY = 0x8079,
    GL_VERTEX_ARRAY_SIZE_EXT = 0x807A,
    GL_VERTEX_ARRAY_SIZE = 0x807A,
    GL_VERTEX_ARRAY_TYPE_EXT = 0x807B,
    GL_VERTEX_ARRAY_TYPE = 0x807B,
    GL_VERTEX_ARRAY_STRIDE_EXT = 0x807C,
    GL_VERTEX_ARRAY_STRIDE = 0x807C,
    GL_VERTEX_ARRAY_COUNT_EXT = 0x807D,
    GL_NORMAL_ARRAY_TYPE_EXT = 0x807E,
    GL_NORMAL_ARRAY_TYPE = 0x807E,
    GL_NORMAL_ARRAY_STRIDE_EXT = 0x807F,
    GL_NORMAL_ARRAY_STRIDE = 0x807F,
    GL_NORMAL_ARRAY_COUNT_EXT = 0x8080,
    GL_COLOR_ARRAY_SIZE_EXT = 0x8081,
    GL_COLOR_ARRAY_SIZE = 0x8081,
    GL_COLOR_ARRAY_TYPE_EXT = 0x8082,
    GL_COLOR_ARRAY_TYPE = 0x8082,
    GL_COLOR_ARRAY_STRIDE_EXT = 0x8083,
    GL_COLOR_ARRAY_STRIDE = 0x8083,
    GL_COLOR_ARRAY_COUNT_EXT = 0x8084,
    GL_INDEX_ARRAY_TYPE_EXT = 0x8085,
    GL_INDEX_ARRAY_TYPE = 0x8085,
    GL_INDEX_ARRAY_STRIDE_EXT = 0x8086,
    GL_INDEX_ARRAY_STRIDE = 0x8086,
    GL_INDEX_ARRAY_COUNT_EXT = 0x8087,
    GL_TEXTURE_COORD_ARRAY_SIZE_EXT = 0x8088,
    GL_TEXTURE_COORD_ARRAY_SIZE = 0x8088,
    GL_TEXTURE_COORD_ARRAY_TYPE_EXT = 0x8089,
    GL_TEXTURE_COORD_ARRAY_TYPE = 0x8089,
    GL_TEXTURE_COORD_ARRAY_STRIDE_EXT = 0x808A,
    GL_TEXTURE_COORD_ARRAY_STRIDE = 0x808A,
    GL_TEXTURE_COORD_ARRAY_COUNT_EXT = 0x808B,
    GL_EDGE_FLAG_ARRAY_STRIDE_EXT = 0x808C,
    GL_EDGE_FLAG_ARRAY_STRIDE = 0x808C,
    GL_EDGE_FLAG_ARRAY_COUNT_EXT = 0x808D,
    GL_VERTEX_ARRAY_POINTER_EXT = 0x808E,
    GL_VERTEX_ARRAY_POINTER = 0x808E,
    GL_NORMAL_ARRAY_POINTER_EXT = 0x808F,
    GL_NORMAL_ARRAY_POINTER = 0x808F,
    GL_COLOR_ARRAY_POINTER_EXT = 0x8090,
    GL_COLOR_ARRAY_POINTER = 0x8090,
    GL_INDEX_ARRAY_POINTER_EXT = 0x8091,
    GL_INDEX_ARRAY_POINTER = 0x8091,
    GL_TEXTURE_COORD_ARRAY_POINTER_EXT = 0x8092,
    GL_TEXTURE_COORD_ARRAY_POINTER = 0x8092,
    GL_EDGE_FLAG_ARRAY_POINTER_EXT = 0x8093,
    GL_EDGE_FLAG_ARRAY_POINTER = 0x8093,
    GL_COLOR_MATRIX_SGI = 0x80B1,
    GL_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B2,
    GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI = 0x80B3,
    GL_POST_COLOR_MATRIX_RED_SCALE_SGI = 0x80B4,
    GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI = 0x80B5,
    GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI = 0x80B6,
    GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI = 0x80B7,
    GL_POST_COLOR_MATRIX_RED_BIAS_SGI = 0x80B8,
    GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI = 0x80B9,
    GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI = 0x80BA,
    GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI = 0x80BB,
    GL_TEXTURE_COLOR_TABLE_SGI = 0x80BC,
    GL_PROXY_TEXTURE_COLOR_TABLE_SGI = 0x80BD,
    GL_COLOR_TABLE_SGI = 0x80D0,
    GL_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D1,
    GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D2,
    GL_PROXY_COLOR_TABLE_SGI = 0x80D3,
    GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI = 0x80D4,
    GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI = 0x80D5,
    GL_COLOR_TABLE_SCALE_SGI = 0x80D6,
    GL_COLOR_TABLE_BIAS_SGI = 0x80D7,
    GL_COLOR_TABLE_FORMAT_SGI = 0x80D8,
    GL_COLOR_TABLE_WIDTH_SGI = 0x80D9,
    GL_COLOR_TABLE_RED_SIZE_SGI = 0x80DA,
    GL_COLOR_TABLE_GREEN_SIZE_SGI = 0x80DB,
    GL_COLOR_TABLE_BLUE_SIZE_SGI = 0x80DC,
    GL_COLOR_TABLE_ALPHA_SIZE_SGI = 0x80DD,
    GL_COLOR_TABLE_LUMINANCE_SIZE_SGI = 0x80DE,
    GL_COLOR_TABLE_INTENSITY_SIZE_SGI = 0x80DF,
    GL_FILTER4_SGIS = 0x8146,
    GL_TEXTURE_FILTER4_SIZE_SGIS = 0x8147,
    GL_POST_TEXTURE_FILTER_BIAS_SGIX = 0x8179,
    GL_POST_TEXTURE_FILTER_SCALE_SGIX = 0x817A,
    GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX = 0x817B,
    GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX = 0x817C
} GLenum;
typedef unsigned char GLboolean;
typedef unsigned int GLbitfield;
typedef signed char GLbyte;
typedef short GLshort;
typedef int GLint;
typedef int GLsizei;
typedef unsigned char GLubyte;
typedef unsigned short GLushort;
typedef unsigned int GLuint;
typedef float GLfloat;
typedef float GLclampf;
typedef double GLdouble;
typedef double GLclampd;
typedef void GLvoid;
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
#pragma GCC diagnostic pop
typedef union {
    volatile uint32_t w;
    volatile uint16_t h;
    volatile uint8_t b;
} gr2_reg32_t;
struct gr2_clock {
    gr2_reg32_t write;
};
struct gr2_bt457_dac {
    gr2_reg32_t addr;
    gr2_reg32_t paltram;
    gr2_reg32_t cmd2;
    gr2_reg32_t ovrlay;
    uint32_t pad[4];
};
struct gr2_hq2 {
    gr2_reg32_t attrjmp[16];
    gr2_reg32_t version;
    gr2_reg32_t numge;
    gr2_reg32_t fin1;
    gr2_reg32_t fin2;
    gr2_reg32_t dmasync;
    gr2_reg32_t fifo_full_timeout;
    gr2_reg32_t fifo_empty_timeout;
    gr2_reg32_t fifo_full;
    gr2_reg32_t fifo_empty;
    gr2_reg32_t ge7loaducode;
    gr2_reg32_t gedma;
    gr2_reg32_t hq_gepc;
    gr2_reg32_t gepc;
    gr2_reg32_t intr;
    gr2_reg32_t unstall;
    gr2_reg32_t mystery;
    gr2_reg32_t refresh;
    uint32_t pad[31];
    gr2_reg32_t fin3;
};
#pragma pack(push, 2)
typedef struct {
    uint16_t address;
    uint16_t count;
    uint16_t ucode[2];
    uint16_t trailer;
} HQ_RECORD;
#pragma pack(pop)
struct gr2_ge7_win {
    gr2_reg32_t ram0[256];
};
#pragma pack(push, 2)
typedef struct {
    uint16_t address;
    uint16_t count;
    uint16_t ucode[10];
    uint16_t trailer;
} GE_RECORD;
#pragma pack(pop)
enum ge7_alu_op {
    GE7_OP_NOP = 0,
    GE7_OP_FADD = 3,
    GE7_OP_FPASSA = 4,
    GE7_OP_FNEGA = 5,
    GE7_OP_FPASSB = 6,
    GE7_OP_FNEGB = 7,
    GE7_OP_FSUB = 8,
    GE7_OP_FRSUB = 9,
    GE7_OP_FMIN = 10,
    GE7_OP_FMAX = 11,
    GE7_OP_FLOATA = 12,
    GE7_OP_FLOATB = 13,
    GE7_OP_FIXA = 14,
    GE7_OP_FIXB = 15,
    GE7_OP_FABSA = 20,
    GE7_OP_FABSB = 22,
    GE7_OP_FMINABS = 30,
    GE7_OP_FMAXABS = 31,
    GE7_OP_IMPY = 16,
    GE7_OP_FMPY = 17,
    GE7_OP_MPASSA = 18,
    GE7_OP_MPASSB = 19,
    GE7_OP_NOTA = 32,
    GE7_OP_AND = 33,
    GE7_OP_OR = 34,
    GE7_OP_XOR = 35,
    GE7_OP_ANDNOTB = 36,
    GE7_OP_ANDNOTA = 37,
    GE7_OP_ORNOTB = 38,
    GE7_OP_ORNOTA = 39,
    GE7_OP_IADD = 40,
    GE7_OP_ISUB = 41,
    GE7_OP_IRSUB = 42,
    GE7_OP_IMIN = 48,
    GE7_OP_IMINABS = 49,
    GE7_OP_IMAX = 50,
    GE7_OP_IMAXABS = 51,
    GE7_OP_IPASSA = 52,
    GE7_OP_INEGA = 53,
    GE7_OP_IABSA = 54,
    GE7_OP_IPASSB = 55,
    GE7_OP_INEGB = 56,
    GE7_OP_IABSB = 57,
    GE7_OP_SLRREG = 44,
    GE7_OP_SARREG = 45,
    GE7_OP_SLLREG = 46,
    GE7_OP_SLRBR = 60,
    GE7_OP_SARBR = 61,
    GE7_OP_SLLBR = 62
};
#pragma pack(push, 1)
struct vc1_sram_frame_entry {
    uint8_t lines;
    uint8_t addr_hi;
    uint8_t addr_lo;
};
#pragma pack(pop)
static inline uint16_t vc1_frame_entry_addr(const struct vc1_sram_frame_entry *e) {
    return ((uint16_t)e->addr_hi << 8) | e->addr_lo;
}
static inline int vc1_frame_entry_is_term(const struct vc1_sram_frame_entry *e) {
    return (e->addr_hi == 0xFF && e->addr_lo == 0xFF);
}
struct gr2_vc1 {
    gr2_reg32_t cmd0;
    gr2_reg32_t cmd1;
    gr2_reg32_t cmd2;
    gr2_reg32_t testreg;
    gr2_reg32_t addrlo;
    gr2_reg32_t addrhi;
    gr2_reg32_t sysctl;
    uint32_t pad;
};
struct gr2_xmap5 {
    gr2_reg32_t misc;
    gr2_reg32_t mode;
    gr2_reg32_t clut;
    gr2_reg32_t crc;
    gr2_reg32_t addrlo;
    gr2_reg32_t addrhi;
    gr2_reg32_t bytecnt;
    gr2_reg32_t fifostatus;
};
struct gr2_re3_buffered {
    gr2_reg32_t pad0[4];
    gr2_reg32_t enabrgb;
    gr2_reg32_t bigendian;
    gr2_reg32_t func;
    gr2_reg32_t haddr;
    gr2_reg32_t nopup;
    gr2_reg32_t xyfrac;
    gr2_reg32_t rgb;
    gr2_reg32_t yx;
    gr2_reg32_t pupdata;
    gr2_reg32_t patl;
    gr2_reg32_t path;
    gr2_reg32_t dzi;
    gr2_reg32_t dzf;
    gr2_reg32_t dr;
    gr2_reg32_t dg;
    gr2_reg32_t db;
    gr2_reg32_t z;
    gr2_reg32_t r;
    gr2_reg32_t g;
    gr2_reg32_t b;
    gr2_reg32_t stip;
    gr2_reg32_t stipcount;
    gr2_reg32_t dx;
    gr2_reg32_t dy;
    gr2_reg32_t numpix;
    gr2_reg32_t x;
    gr2_reg32_t y;
    gr2_reg32_t ir;
};
struct gr2_re3_control {
    gr2_reg32_t rwdata;
    gr2_reg32_t pixmask;
    gr2_reg32_t auxmask;
    gr2_reg32_t widdata;
    gr2_reg32_t uauxdata;
    gr2_reg32_t rwmode;
    gr2_reg32_t readbuf;
    gr2_reg32_t pixtype;
    gr2_reg32_t aselect;
    gr2_reg32_t alignpat;
    gr2_reg32_t enabpat;
    gr2_reg32_t enabstip;
    gr2_reg32_t enabdith;
    gr2_reg32_t enabwid;
    gr2_reg32_t curwid;
    gr2_reg32_t depthfn;
    gr2_reg32_t repstip;
    gr2_reg32_t enablwid;
    gr2_reg32_t fboption;
    gr2_reg32_t topscan;
    gr2_reg32_t testmode;
    gr2_reg32_t testdata;
    gr2_reg32_t zboption;
    gr2_reg32_t xzoom;
    gr2_reg32_t upacmode;
    gr2_reg32_t ymin;
    gr2_reg32_t ymax;
    gr2_reg32_t xmin;
    gr2_reg32_t xmax;
    gr2_reg32_t colorcmp;
    gr2_reg32_t megoption;
    gr2_reg32_t pad3f;
};
struct gr2_re3_32bit {
    gr2_reg32_t rwdata32;
    gr2_reg32_t pad[31];
};
struct gr2_bdvers {
    gr2_reg32_t rd0;
    gr2_reg32_t rd1;
    gr2_reg32_t rd2;
    gr2_reg32_t rd3;
    uint32_t pad[4];
};
struct gr2_hw {
    volatile uint32_t shram[32768];
    uint32_t pad0[32768];
    volatile uint32_t fifo[32768];
    volatile uint32_t hqucode[8192];
    struct gr2_ge7_win ge[8];
    struct gr2_hq2 hq;
    uint32_t pad_hq[(0x6c000 - 0x6a000 - sizeof(struct gr2_hq2)) / 4];
    struct gr2_bdvers bdvers;
    struct gr2_clock clock;
    uint32_t pad1[7];
    struct gr2_vc1 vc1;
    uint32_t pad_cs3[8];
    uint32_t pad_cs4[8];
    struct gr2_bt457_dac reddac;
    struct gr2_bt457_dac grndac;
    struct gr2_bt457_dac bluedac;
    struct gr2_xmap5 xmap[5];
    struct gr2_xmap5 xmapall;
    gr2_reg32_t ab1;
    uint32_t pad4[7];
    gr2_reg32_t cc1;
    uint32_t pad5[7];
    struct gr2_re3_buffered re3_buf;
    struct gr2_re3_control re3_ctrl;
    uint8_t pad6[0x300];
    struct gr2_re3_32bit re3_32;
};
struct gfx_info {
    char name[16];
    char label[16];
    uint16_t xpmax;
    uint16_t ypmax;
    uint32_t length;
};
struct gr2_info {
    struct gfx_info gfx_info;
    uint8_t BoardType;
    uint8_t Bitplanes;
    uint8_t Auxplanes;
    uint8_t Wids;
    uint8_t Zbuffer;
    uint8_t MonitorType;
    uint8_t GfxBoardRev;
    uint8_t mc_rev;
    uint8_t HQ2Rev;
    uint8_t GE7Rev;
    uint8_t pad32;
    uint8_t VC1Rev;
    uint8_t VidBckEndRev;
    uint8_t pad35;
    uint8_t GEs;
    uint8_t pad37;
    uint8_t corona_rev;
    uint8_t fp_id;
    uint8_t pad3a[2];
};
struct gr2_wid_swap {
    uint32_t current_mode;
    uint32_t new_mode;
    int32_t swap_interval;
    void *rrm_buf;
    void *mgr_buf;
    uint8_t pending_type;
    uint8_t pad15[3];
};
struct vc1_shadow {
    struct gr2_hw *base;
    uint16_t cur_ep;
    uint8_t sysctl;
    uint8_t pad07;
    uint32_t shadow_locked;
    uint32_t num_pending_wids;
    struct gr2_wid_swap wid_swaps[32];
    void *pending_events;
    uint32_t cursor_moved;
    uint32_t cursor_on;
};
struct gr2_data {
    void *gfx_board;
    uint8_t pad04[0x40];
    uint32_t board_index;
    uint8_t pad48[4];
    uint32_t retrace_count;
    uint32_t retrace_ticks;
    uint32_t video_sync_flag;
    uint8_t pad58[0x20];
    struct gr2_info *info;
    struct gr2_hw *base;
    uint8_t pad80[4];
    int32_t cursor_x;
    int32_t cursor_y;
    int32_t hotspot_x;
    int32_t hotspot_y;
    int32_t cursor_x_adj;
    int32_t cursor_y_adj;
    struct vc1_shadow *vc1_shadow;
    uint8_t padA0[8];
    void *dma_buf;
    void *pcx_data;
    uint8_t padB0[0x90];
    uint32_t lock[2];
    uint8_t pad148[4];
    uint8_t fp_installed;
    uint8_t pad14d[3];
};
#pragma pack(push, 2)
typedef struct {
    uint16_t f_magic;
    uint16_t f_nscns;
    uint32_t f_hdrlen;
    uint32_t f_dataoff;
    uint32_t f_codeoff;
    uint32_t length;
    uint32_t f_constoff;
    uint32_t rev;
    char version[24];
    char date[32];
    char user[12];
    char path[128];
    uint32_t hdr2[6];
    uint16_t length16;
    uint16_t pad_fa;
    uint32_t data[512];
} mcout_t;
#pragma pack(pop)
struct gr2_hq2_fifo {
    char pad0[0x2018];
    gr2_reg32_t swap_sync;
    char pad201c[0x0c];
    gr2_reg32_t depth_mask;
    char pad202c[0x0c];
    gr2_reg32_t stencil_config;
    gr2_reg32_t stencil_mode;
    gr2_reg32_t stencil_mask;
    gr2_reg32_t dither_enable;
    gr2_reg32_t pad2048;
    gr2_reg32_t shade_model;
    gr2_reg32_t depth_test_enable;
    gr2_reg32_t pad2054;
    gr2_reg32_t line_stipple;
    gr2_reg32_t line_width;
    char pad2060[0x34];
    gr2_reg32_t blend_factor;
    gr2_reg32_t blend_mode;
    char pad209c[0x08];
    gr2_reg32_t tex_span_setup;
    float tex_span_color;
    char pad20ac[0x08];
    gr2_reg32_t tex_span_skip;
    char pad20b8[0x24];
    float modelview_matrix;
    float projection_matrix;
    float normal_matrix;
    float texture_matrix;
    char pad20ec[0x0e4];
    float load_spec_lut;
    float material_shininess;
    float mat_front_emissive;
    float mat_back_emissive;
    float mat_front_ambient;
    float mat_back_ambient;
    float mat_front_diffuse;
    float mat_back_diffuse;
    float mat_front_specular;
    float mat_back_specular;
    char pad21f8[0x04];
    float light_position;
    float light_select;
    gr2_reg32_t light_enable_mask;
    gr2_reg32_t normalize_enable_b;
    float light_model_ambient;
    float light_spot_direction;
    float light_model_viewer;
    float load_spot_lut;
    char pad221c[0x64];
    float clear_color_depth;
    gr2_reg32_t clear_stencil;
    gr2_reg32_t pad2288;
    gr2_reg32_t readback_trigger;
    char pad2290[0x0c];
    gr2_reg32_t pixel_read_setup_a;
    gr2_reg32_t pixel_read_setup_b;
    char pad22a4[0x10];
    gr2_reg32_t read_x;
    char pad22b8[0x0c];
    gr2_reg32_t pixel_draw_start;
    gr2_reg32_t pixel_draw_rect;
    gr2_reg32_t pixel_draw_end;
    char pad22d0[0x18];
    gr2_reg32_t copy_pixels;
    float pixel_zoom;
    gr2_reg32_t pixel_read_mode;
    gr2_reg32_t read_done;
    char pad22f8[0x3c];
    gr2_reg32_t get_origin;
    char pad2338[0x60];
    gr2_reg32_t context_flush;
    char pad239c[0x08];
    gr2_reg32_t get_color;
    gr2_reg32_t get_normal;
    char pad23ac[0x64];
    float clear_color;
    gr2_reg32_t pad2414;
    gr2_reg32_t pad2418;
    gr2_reg32_t get_rasterpos;
    char pad2420[0x08];
    gr2_reg32_t buffer_mode;
    gr2_reg32_t color_writemask;
    char pad2430[0x200];
    gr2_reg32_t draw_bitmap;
    char pad2634[0x148];
    gr2_reg32_t data_port;
    char pad2780[0x1c];
    gr2_reg32_t swap_buffers;
    char pad27a0[0x1ec];
    gr2_reg32_t vertex_4f;
    char pad2990[0x1ffc];
    gr2_reg32_t vertex_3f;
    char pad4990[0x1ffc];
    gr2_reg32_t vertex_2f;
    char pad6990[0x1c78];
    gr2_reg32_t color_3f;
    char pad860c[0x1ffc];
    gr2_reg32_t color_4f;
    char pada60c[0x1c74];
    gr2_reg32_t clear_depth;
    char padc284[0x1ffc];
    gr2_reg32_t clear_ci_depth;
    char pade284[0x174];
    gr2_reg32_t index;
    char pade3fc[0x14];
    float clear_ci;
    char pade414[0x368];
    gr2_reg32_t data_port_ci;
};
extern struct gr2_hq2_fifo HQ2_FIFO;
extern struct gr2_hq2_fifo HQ2_FIFO_CI;
struct gr2_hq2_read_fifo {
    char pad0[0x2088];
    gr2_reg32_t data[4];
};
extern struct gr2_hq2_read_fifo HQ2_READ_FIFO;
struct gr2_hq2_status_port {
    char pad0[0xC040];
    gr2_reg32_t read_status;
    char padC044[0x0FBC];
    gr2_reg32_t read_ack;
};
extern struct gr2_hq2_status_port HQ2_STATUS_PORT;
struct __GLcontextRec;
typedef struct __GLcontextRec __GLcontext;
struct __GLattributeRec;
typedef struct __GLattributeRec __GLattribute;
typedef enum __GLbeginModeEnum {
    __GL_NOT_IN_BEGIN = 0,
    __GL_IN_BEGIN = 1,
    __GL_NEED_VALIDATE = 2
} __GLbeginMode;
typedef struct __GLcoordRec {
    GLfloat x, y, z, w;
} __GLcoord;
typedef struct __GLcolorRec {
    GLfloat r, g, b, a;
} __GLcolor;
struct __GLmatrixRec;
typedef struct __GLmatrixRec __GLmatrix;
struct __GLmatrixRec {
    GLfloat matrix[4][4];
    GLenum matrixType;
    GLshort width, height;
    void (*xf2)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    void (*xf3)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    void (*xf4)(__GLcoord *res, const GLfloat *v, const __GLmatrix *m);
    char pad[4];
};
typedef struct __GLtransformRec {
    __GLmatrix matrix;
    __GLmatrix inverseTranspose;
    __GLmatrix mvp;
    GLuint sequence;
    GLboolean updateInverse;
    char pad[3];
    GLfloat rescaleFactor;
} __GLtransform;
typedef struct __GLvertexRec {
               GLuint flagBits;
               GLuint pad4;
               void (*validate)(struct __GLcontextRec *gc, struct __GLvertexRec *v);
               GLuint pad0C;
               __GLcoord obj;
               __GLcoord normal;
               __GLcoord texture[1];
               char pad40[0x20];
               __GLcoord eye;
               __GLcoord clip;
               __GLcoord window;
               __GLcolor colors[2];
               char padB0[0x10];
} __GLvertex;
typedef struct __GLimportsRec {
    void *(*malloc)(__GLcontext *gc, size_t size);
    void *(*calloc)(__GLcontext *gc, size_t numElem, size_t elemSize);
    void *(*realloc)(__GLcontext *gc, void *oldAddr, size_t newSize);
    void (*free)(__GLcontext *gc, void *addr);
    void (*warning)(__GLcontext *gc, char *fmt);
    void (*fatal)(__GLcontext *gc, char *fmt);
    char *(*getenv)(__GLcontext *gc, const char *var);
    int (*atoi)(__GLcontext *gc, const char *str);
    int (*sprintf)(__GLcontext *gc, char *str, const char *fmt, ...);
    void *(*fopen)(__GLcontext *gc, const char *path, const char *mode);
    int (*fclose)(__GLcontext *gc, void *stream);
    int (*fprintf)(__GLcontext *gc, void *stream, const char *fmt, ...);
    void *(*getDrawablePrivate)(__GLcontext *gc);
    void *wscx;
    void *other;
    char pad[16];
} __GLimports;
typedef struct __GLexportsRec {
    GLboolean (*destroyContext)(__GLcontext *gc);
    GLboolean (*loseCurrent)(__GLcontext *gc);
    GLboolean (*makeCurrent)(__GLcontext *gc);
    GLboolean (*shareContext)(__GLcontext *gc, __GLcontext *gcShare);
    GLboolean (*copyContext)(__GLcontext *dst, const __GLcontext *src, GLuint mask);
    GLboolean (*forceCurrent)(__GLcontext *gc);
    GLboolean (*notifyResize)(__GLcontext *gc);
    void (*notifyDestroy)(__GLcontext *gc);
    void (*notifySwapBuffers)(__GLcontext *gc);
    void *(*dispatchExec)(__GLcontext *gc);
    void (*beginDispatchOverride)(__GLcontext *gc);
    void (*endDispatchOverride)(__GLcontext *gc);
    char pad[24];
} __GLexports;
typedef struct __GLpointStateRec {
    GLfloat requestedSize;
    GLfloat smoothSize;
    GLint aliasedSize;
} __GLpointState;
typedef struct __GLlineStateRec {
    GLfloat requestedWidth;
    GLfloat smoothWidth;
    GLint aliasedWidth;
    GLushort stipple;
    GLshort stippleRepeat;
} __GLlineState;
typedef struct __GLpolygonStateRec {
    GLenum frontMode;
    GLenum backMode;
    GLenum cull;
    GLenum frontFaceDirection;
    GLfloat factor;
    GLfloat units;
    GLfloat mask;
} __GLpolygonState;
typedef struct __GLpolygonStippleStateRec {
    GLubyte stipple[128];
} __GLpolygonStippleState;
typedef struct __GLpixelStateRec {
    char pad[680];
} __GLpixelState;
typedef struct __GLmaterialStateRec {
    __GLcolor ambient;
    __GLcolor diffuse;
    __GLcolor specular;
    __GLcolor emissive;
    GLfloat specularExponent;
    GLfloat cmapa, cmaps, cmapd;
} __GLmaterialState;
typedef struct __GLlightModelStateRec {
    __GLcolor ambient;
    GLboolean localViewer;
    GLboolean twoSided;
    char pad[2];
} __GLlightModelState;
typedef struct __GLlightSourceStateRec {
    __GLcolor ambient;
    __GLcolor diffuse;
    __GLcolor specular;
    __GLcoord position;
    __GLcoord positionEye;
    __GLcoord direction;
    GLfloat spotLightExponent;
    GLfloat spotLightCutOffAngle;
    GLfloat constantAttenuation;
    GLfloat linearAttenuation;
    GLfloat quadraticAttenuation;
} __GLlightSourceState;
typedef struct __GLlightStateRec {
    GLenum colorMaterialFace;
    GLenum colorMaterialParam;
    GLenum shadingModel;
    __GLlightModelState model;
    __GLmaterialState front;
    __GLmaterialState back;
    __GLlightSourceState *source;
} __GLlightState;
typedef struct __GLfogStateRec {
    GLenum mode;
    __GLcolor color;
    GLfloat density;
    GLfloat start;
    GLfloat end;
    GLfloat oneOverEMinusS;
    GLfloat index;
} __GLfogState;
typedef struct __GLdepthStateRec {
    GLenum testFunc;
    GLboolean writeEnable;
    char pad[3];
    GLdouble clear;
} __GLdepthState;
typedef struct __GLaccumStateRec {
    __GLcolor clear;
} __GLaccumState;
typedef struct __GLstencilStateRec {
    GLenum testFunc;
    GLshort clear;
    GLshort reference;
    GLshort mask;
    GLshort writeMask;
    GLenum fail;
    GLenum depthFail;
    GLenum depthPass;
} __GLstencilState;
typedef struct __GLviewportRec {
    GLint x, y;
    GLsizei width, height;
    GLdouble zNear, zFar;
    GLfloat xScale, xCenter;
    GLfloat yScale, yCenter;
    GLfloat zScale, zCenter;
} __GLviewport;
typedef struct __GLtransformStateRec {
    GLenum matrixMode;
    __GLcoord *eyeClipPlanes;
    char pad[8];
} __GLtransformState;
typedef struct __GLenableStateRec {
    GLuint general;
    GLuint texture;
    GLuint lights;
    GLuint clipPlanes;
    GLuint pixelPath;
    GLuint eval;
} __GLenableState;
typedef struct __GLrasterStateRec {
    GLenum alphaFunction;
    GLclampf alphaReference;
    GLenum blendSrc;
    GLenum blendDst;
    __GLcolor blendColor;
    GLenum blendMode;
    GLenum logicOp;
    __GLcolor clear;
    GLfloat clearIndex;
    GLint writeMask;
    GLboolean rMask, gMask, bMask, aMask;
    GLenum drawBuffer;
    GLenum drawBufferReturn;
} __GLrasterState;
typedef struct __GLhintStateRec {
    GLenum perspectiveCorrection;
    GLenum pointSmooth;
    GLenum lineSmooth;
    GLenum polygonSmooth;
    GLenum fog;
    GLenum textureBuffer;
    GLenum generateMipmap;
} __GLhintState;
typedef struct __GLevaluatorStateRec {
    char pad[48];
} __GLevaluatorState;
typedef struct __GLdlistStateRec {
    GLuint listBase;
} __GLdlistState;
typedef struct __GLtextureStateRec {
    char pad[536];
} __GLtextureState;
typedef struct __GLscissorRec {
    GLint scissorX;
    GLint scissorY;
    GLsizei scissorWidth;
    GLsizei scissorHeight;
} __GLscissor;
typedef struct __GLcolorTableStateRec {
    char pad[660];
} __GLcolorTableState;
typedef struct __GLcurrentStateRec {
                char pad0[8];
                __GLcolor color;
                __GLcoord normal;
                __GLcoord texture[1];
                __GLvertex rasterPos;
                __GLcolor userColor;
                GLfloat userColorIndex;
                GLboolean validRasterPos;
                GLboolean edgeTag;
                GLubyte pad10E[2];
} __GLcurrentState;
struct __GLattributeRec {
    GLuint mask;
    GLint pad4;
    __GLcurrentState current;
    __GLpointState point;
    __GLlineState line;
    __GLpolygonState polygon;
    __GLpolygonStippleState polygonStipple;
    __GLpixelState pixel;
    __GLlightState light;
    __GLfogState fog;
    char pad_fog[4];
    __GLdepthState depth;
    __GLaccumState accum;
    __GLstencilState stencil;
    __GLviewport viewport;
    __GLtransformState transform;
    char pad_trans[32];
    __GLenableState enables;
    __GLrasterState raster;
    __GLhintState hints;
    __GLevaluatorState evaluator;
    __GLdlistState list;
    __GLtextureState texture;
    __GLscissor scissor;
    __GLcolorTableState colorTable;
};
typedef struct __GLcontextModesRec {
    GLint visualID;
    GLboolean rgbMode;
    GLboolean colorIndexMode;
    GLboolean doubleBufferMode;
    GLboolean stereoMode;
    GLboolean haveAccumBuffer;
    GLboolean haveDepthBuffer;
    GLboolean haveStencilBuffer;
    GLboolean pad0;
    GLint accumRedBits;
    GLint accumGreenBits;
    GLint accumBlueBits;
    GLint accumAlphaBits;
    GLint depthBits;
    GLint stencilBits;
    GLint indexBits;
    GLint redBits;
    GLint greenBits;
    GLint blueBits;
    GLint alphaBits;
    GLuint redMask;
    GLuint greenMask;
    GLuint blueMask;
    GLuint alphaMask;
    GLint rgbBits;
    GLint level;
    GLint numAuxBuffers;
    GLint maxAuxBuffers;
} __GLcontextModes;
typedef struct __GLcontextConstantsRec {
    GLfloat half;
    GLfloat one;
    GLfloat val255;
    GLfloat oneOver255;
    GLfloat val65535;
    GLfloat oneOver65535;
    GLfloat val4294965000;
    GLfloat oneOver4294965000;
    char *vendor;
    char *renderer;
    char *version;
    char *extensions;
    GLint numberOfLights;
    GLint numberOfClipPlanes;
    GLint maxViewportWidth;
    GLint maxViewportHeight;
    char pad_align[28];
    GLint viewportXAdjust;
    GLint viewportYAdjust;
    GLfloat fviewportXAdjust;
    GLfloat fviewportYAdjust;
    char pad_rescale[92];
    GLint maxAttribStackDepth;
    GLint maxClientAttribStackDepth;
    GLint maxNameStackDepth;
    GLint maxColorStackDepth;
    GLint maxModelViewStackDepth;
    GLint maxProjectionStackDepth;
    GLint maxTextureStackDepth;
} __GLcontextConstants;
typedef struct __GLbufferRec {
    __GLcontext *gc;
    void *drawableBuf;
    void *other;
    void (*resize)();
    void (*makeCurrent)();
    void (*loseCurrent)();
    void (*free)();
} __GLbuffer;
typedef struct __GLcolorBufferRec __GLcolorBuffer;
struct __GLcolorBufferRec {
    __GLbuffer buf;
    GLint redMax, greenMax, blueMax;
    GLboolean needColorFragmentOps;
    char pad29[3];
    GLubyte *alphaTestFuncTable;
    GLfloat redScale, greenScale, blueScale;
    GLint iRedScale, iGreenScale, iBlueScale;
    GLint redShift, greenShift, blueShift, alphaShift;
    GLfloat alphaScale;
    GLint iAlphaScale;
    GLfloat oneOverRedScale, oneOverGreenScale, oneOverBlueScale, oneOverAlphaScale;
    GLuint sourceMask, destMask;
    void (*pick)();
    GLint (*getDisplayMasks)();
    void (*store)();
    void (*fetch)();
    void (*readColor)();
    GLboolean (*readSpan)();
    void (*returnSpan)();
    void *storeSpan;
    void *storeStippledSpan;
    void *storeLine;
    void *storeStippledLine;
    void *fetchSpan;
    void *fetchStippledSpan;
    void *fetchLine;
    void *fetchStippledLine;
    char padB4[36];
    void (*clear)(__GLcolorBuffer *cfb);
};
typedef struct __GLstencilBufferRec {
    __GLbuffer buf;
    char pad1C[88];
    void (*clear)(struct __GLstencilBufferRec *sfb, s64 mask, __GLcontext *gc);
} __GLstencilBuffer;
typedef struct __GLdepthBufferRec {
    __GLbuffer buf;
    char pad1C[48];
    GLuint scale;
    char pad50[40];
    void (*clear)(struct __GLdepthBufferRec *dfb, s64 mask, __GLcontext *gc);
    char pad7C[8];
} __GLdepthBuffer;
typedef struct __GLaccumBufferRec {
    __GLbuffer buf;
    char pad1C[80];
    void (*clear)(struct __GLaccumBufferRec *afb);
} __GLaccumBuffer;
typedef struct __GLprocsRec {
    void (*validate)(__GLcontext *gc);
    void (*finish)(__GLcontext *gc);
    void (*flush)(__GLcontext *gc);
    void (*applyColor)(__GLcontext *gc);
    void *table[128];
    char pad[324];
} __GLprocs;
typedef struct __GLattributeMachineRec {
    __GLattribute **stack;
    __GLattribute **stackPointer;
} __GLattributeMachine;
typedef GLfloat __GLfloat;
typedef GLuint __GLzValue;
typedef GLubyte __GLstencilCell;
typedef struct __GLtransformMachineRec {
    __GLtransform *modelViewStack;
    __GLtransform *modelView;
    __GLtransform *projectionStack;
    __GLtransform *projection;
    GLuint projectionSequence;
    __GLtransform *textureStack[1];
    __GLtransform *texture[1];
    __GLtransform *colorStack;
    __GLtransform *color;
    __GLvertex *clipTemp;
    __GLvertex *nextClipTemp;
    GLint clipX0;
    GLint clipY0;
    GLint clipX1;
    GLint clipY1;
    GLint minx, miny;
    GLint maxx, maxy;
    __GLfloat fminx, fminy;
    __GLfloat fmaxx, fmaxy;
    __GLmatrix matrix2D;
    GLboolean reasonableViewport;
    char pad_xend[3];
} __GLtransformMachine;
typedef struct __GLlineOptionsRec {
    GLint axis, numPixels;
    __GLfloat offset, length;
    GLint xStart, yStart;
    GLint xLittle, xBig;
    GLint yLittle, yBig;
    GLint fraction, dfraction;
    __GLfloat curF, curR, curG, curB;
    __GLfloat curA, curS, curT, curQW;
    __GLzValue curZ;
    __GLfloat antiAliasPercent;
    __GLfloat f0;
    GLint width;
    const __GLvertex *v0, *v1;
    __GLfloat realLength;
    __GLfloat dldx, dldy;
    __GLfloat dddx, dddy;
    __GLfloat dlLittle, dlBig;
    __GLfloat ddLittle, ddBig;
    __GLfloat plength, pwidth;
    __GLfloat stippleOffset;
} __GLlineOptions;
typedef struct __GLlineMachineRec {
    GLint stipplePosition;
    GLint repeat;
    GLboolean notResetStipple;
    char pad_line[3];
    __GLlineOptions options;
} __GLlineMachine;
typedef GLuint __GLstippleWord;
typedef struct __GLfragmentTextureRec {
    __GLfloat s, t, r, qw, rhow;
} __GLfragmentTexture;
typedef struct __GLfragmentRec {
    GLint x, y;
    __GLzValue z;
    __GLcolor color[1];
    __GLfragmentTexture texture[1];
    __GLfloat f;
} __GLfragment;
typedef struct __GLcolorIteratorRec {
    __GLfloat rLittle, gLittle, bLittle, aLittle;
    __GLfloat rBig, gBig, bBig, aBig;
    __GLfloat drdx, dgdx, dbdx, dadx;
    __GLfloat drdy, dgdy, dbdy, dady;
} __GLcolorIterator;
typedef struct __GLtextureIteratorRec {
    __GLfloat sLittle, tLittle, rLittle, qwLittle, rhowLittle;
    __GLfloat sBig, tBig, rBig, qwBig, rhowBig;
    __GLfloat dsdx, dtdx, drdx, dqwdx, drhowdx;
    __GLfloat dsdy, dtdy, drdy, dqwdy, drhowdy;
} __GLtextureIterator;
typedef struct __GLshadeRec {
    GLint dxLeftLittle, dxLeftBig;
    GLint dxLeftFrac;
    GLint ixLeft, ixLeftFrac;
    GLint dxRightLittle, dxRightBig;
    GLint dxRightFrac;
    GLint ixRight, ixRightFrac;
    __GLfloat area;
    __GLfloat dxAC, dxBC, dyAC, dyBC;
    GLboolean ccw;
    char pad_ccw[3];
    __GLfragment frag;
    GLint length;
    __GLcolorIterator colorIter[1];
    GLint zLittle, zBig;
    GLint dzdx, dzdxBig;
    __GLfloat dzdyf, dzdxf;
    __GLtextureIterator texture[1];
    __GLfloat fLittle, fBig;
    __GLfloat dfdy, dfdx;
    GLuint modeFlags;
    __GLzValue *zbuf;
    GLint zbufBig, zbufLittle;
    __GLstencilCell *sbuf;
    GLint sbufBig, sbufLittle;
    __GLcolor *colors;
    __GLcolor *fbcolors;
    __GLstippleWord *stipplePat;
    GLboolean done;
    char pad_done[3];
    __GLcolorBuffer *cfb;
    __GLfloat offsetZ;
    __GLzValue startZLimit;
    __GLzValue endZLimit;
    __GLfloat outBoundCount;
    __GLfloat rangeCount;
    __GLfloat outCountBig;
    __GLfloat outCountLittle;
    char pad_shade[4];
} __GLshade;
typedef struct __GLpolygonMachineRec {
    __GLstippleWord stipple[32];
    __GLshade shader;
    GLubyte face[2];
    GLubyte mode[2];
    GLubyte cullFace;
    GLubyte cullFlag;
    GLubyte needs;
    GLubyte pad_poly;
} __GLpolygonMachine;
typedef struct __GLpixelMachineRec {
    GLboolean modifyRGBA;
    GLboolean modifyCI;
    GLboolean modifyDepth;
    GLboolean modifyStencil;
    GLboolean fastRGBA;
    char pad05[3];
    GLfloat red0Mod;
    GLfloat green0Mod;
    GLfloat blue0Mod;
    GLfloat alpha1Mod;
    GLfloat *redMap;
    GLfloat *greenMap;
    GLfloat *blueMap;
    GLfloat *alphaMap;
    GLfloat *iMap;
    GLvoid *iCurMap;
    GLvoid *redCurMap;
    GLvoid *greenCurMap;
    GLvoid *blueCurMap;
    GLvoid *alphaCurMap;
    GLboolean rgbaCurrent;
    char pad41[3];
    GLfloat *redModMap;
    GLfloat *greenModMap;
    GLfloat *blueModMap;
    GLfloat *alphaModMap;
    GLboolean iToICurrent;
    char pad55[3];
    GLfloat *iToIMap;
    GLboolean iToRGBACurrent;
    char pad5D[3];
    GLfloat *iToRMap;
    GLfloat *iToGMap;
    GLfloat *iToBMap;
    GLfloat *iToAMap;
    char pad70[16];
} __GLpixelMachine;
typedef struct __GLbufferMachineRec {
    GLboolean doubleStore;
    char pad[3];
} __GLbufferMachine;
struct __GLcontextRec {
    __GLimports imports;
    __GLexports exports;
    GLint gcState;
    __GLattribute state;
    u32 beginMode;
    GLenum renderMode;
    GLint error;
    __GLcontextModes modes;
    __GLcontextModes readModes;
    GLboolean yInverted;
    char pad_yinv[3];
    __GLcontextConstants constants;
    char pad_const[8252];
    GLuint validateMask;
    GLuint dirtyMask;
    __GLcolorBuffer *drawBuffer;
    __GLcolorBuffer *readBuffer;
    char pad_proc[16];
    void (*validate)(__GLcontext *gc);
    char pad_proc2[28];
    __GLprocs procs;
    __GLattributeMachine attributes;
    char pad_mid2[16976];
    __GLtransformMachine transform;
    __GLlineMachine line;
    __GLpolygonMachine polygon;
    __GLpixelMachine pixel;
    __GLbufferMachine buffers;
    __GLcolorBuffer *front;
    __GLcolorBuffer *back;
    __GLcolorBuffer frontBuffer;
    __GLcolorBuffer backBuffer;
    __GLcolorBuffer *auxBuffer;
    __GLstencilBuffer stencilBuffer;
    __GLdepthBuffer depthBuffer;
    __GLaccumBuffer accumBuffer;
    char pad_bufend[28];
    GLint fd;
    GLint boardIndex;
    GLint zDepth;
    GLint stencilDepth;
    char rendererString[40];
    GLuint swapInterval;
    u8 hwFlags;
    u8 haveZ;
    u8 haveStencil;
    u8 fastMode;
    void (*primitiveProcs[10])(__GLcontext *gc);
};
typedef struct __GLLightLUTStateRec {
    GLfloat spotExponent;
    GLfloat cosCutoff;
    GLint lutIndex;
} __GLLightLUTState;
typedef struct __GLEXPRESScontextRec {
    __GLcontext gc;
    char pad7B78[0x54];
    void (*czClear)(__GLcolorBuffer *cfb, __GLdepthBuffer *dfb);
    GLuint polygonStipple[32];
    __GLLightLUTState *lightLUTs;
    GLfloat frontSpecularExponent;
    GLuint frontSpecularLUT;
    GLfloat backSpecularExponent;
    GLuint backSpecularLUT;
    GLuint lightModelFlags;
    GLuint lightModelParam;
    GLuint lightCacheCount;
    GLuint lightCacheMask;
    GLuint lightStateDirty;
    GLuint pad7C78;
    GLuint spotLUTInitialized;
    GLfloat spanState[3];
    GLuint pad7C8C;
    void *devicePrivate;
    GLuint pad7C94;
} __GLEXPRESScontext;
extern __GLcontext *__glCurrentContext;
extern u32 __glBeginMode;
void __glSetError(GLenum code);
int ioctl(int fd, unsigned long request, ...);
int printf(const char *format, ...);
void *malloc(u32 size);
void free(void *ptr);
void *memcpy(void *dest, const void *src, u32 n);
void *memset(void *s, int c, u32 n);
void bzero(void *s, u32 n);
f32 sqrtf(f32 x);
f32 fabsf(f32 x);
f32 floorf(f32 x);
f32 ceilf(f32 x);
f32 cosf(f32 x);
f32 sinf(f32 x);
void __glexpim_AlphaFunc(GLenum func, GLfloat ref);
void __glexpim_BlendFunc(GLenum sfactor, GLenum dfactor);
void __glexpim_BlendEquationEXT(GLenum mode);
void __glexpim_ClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glexpim_ClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glexpim_ClearDepth(GLdouble depth);
void __glexpim_ClearIndex(GLfloat c);
void __glexpim_ClearStencil(GLint s);
void __glexpim_ColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void __glexpim_ColorMaterial(GLenum face, GLenum mode);
void __glexpim_CullFace(GLenum mode);
void __glexpim_DepthFunc(GLenum func);
void __glexpim_DepthMask(GLboolean flag);
void __glexpim_DrawBuffer(GLenum buf);
void __glexpim_Fogfv(GLenum pname, const GLfloat *params);
void __glexpim_Fogf(GLenum pname, GLfloat param);
void __glexpim_Fogiv(GLenum pname, const GLint *params);
void __glexpim_Fogi(GLenum pname, GLint param);
void __glexpim_FrontFace(GLenum mode);
void __glexpim_Hint(GLenum target, GLenum mode);
void __glexpim_IndexMask(GLuint mask);
void __glExpTransformLightDirection(__GLcontext *gc, __GLlightSourceState *ls);
void __glexpim_Lightfv(GLenum light, GLenum pname, const GLfloat *params);
void __glexpim_Lightf(GLenum light, GLenum pname, GLfloat param);
void __glexpim_Lightiv(GLenum light, GLenum pname, const GLint *params);
void __glexpim_Lighti(GLenum light, GLenum pname, GLint param);
void __glexpim_LightModelfv(GLenum pname, const GLfloat *params);
void __glexpim_LightModelf(GLenum pname, GLfloat param);
void __glexpim_LightModeliv(GLenum pname, const GLint *params);
void __glexpim_LightModeli(GLenum pname, GLint param);
void __glexpim_LineStipple(GLint factor, GLushort pattern);
void RoundWidth();
void ClampWidth();
void __glexpim_LineWidth(GLfloat width);
void __glexpim_LogicOp(GLenum opcode);
void ApplyParameterF();
void __glExpErrorCheckMaterial(__GLcontext *gc, ...);
void __glexpim_Materialfv(GLenum face, GLenum pname, const GLfloat *params);
void __glexpim_Materialf(GLenum face, GLenum pname, GLfloat param);
void ApplyParameterI();
void __glexpim_Materialiv(GLenum face, GLenum pname, const GLint *params);
void __glexpim_Materiali(GLenum face, GLenum pname, GLint param);
void RoundSize();
void ClampSize();
void __glexpim_PointSize(GLfloat size);
void __glexpim_PolygonMode(GLenum face, GLenum mode);
void __glexpim_PolygonStipple(const GLubyte *mask);
void __glexpim_ShadeModel(GLenum mode);
void __glexpim_StencilMask(GLuint mask);
void __glexpim_StencilFunc(GLenum func, GLint ref, GLuint mask);
void __glexpim_StencilOp(GLenum fail, GLenum zfail, GLenum zpass);
void __glExpCopyContext(__GLcontext *gc, ...);
void __glexpim_PushAttrib(GLbitfield mask);
void __glexpim_PopAttrib(void);
void __glexpim_Enable(GLenum cap);
void __glexpim_Disable(GLenum cap);
void __glexpim_PolygonOffsetEXT(GLfloat factor, GLfloat bias);
void __glexpim_PolygonOffset(GLfloat factor, GLfloat units);
void __glExpRenderBitmap(__GLcontext *gc, ...);
void __glExpSlowRenderBitmap(__GLcontext *gc, ...);
void Store();
void Store_ND();
void Clear();
void CZClear();
void ReadColor();
void StoreSpan();
void StoreStippledSpan();
void Resize();
void Move();
void Pick();
void __glExpInitCI(__GLcontext *gc, ...);
void __glexpim_Clear(GLbitfield mask);
void __glExpIoctl(__GLcontext *gc, ...);
void GetBoardInfo();
void GetPixModeValue();
void __glExpAllocAccum(__GLcontext *gc, ...);
void __glExpUpdateViewport(__GLcontext *gc, ...);
void ApplyViewport();
void ApplyScissor();
void __glExpSetPixWritemask(__GLcontext *gc, ...);
void __glExpSetReadSource(__GLcontext *gc, ...);
void __glExpSetReadBuffer(__GLcontext *gc, ...);
void __glExpUpdateHardwareState(__GLcontext *gc, ...);
void __glExpPassMachineState(__GLcontext *gc, ...);
void __glExpGetMachineState(__GLcontext *gc, ...);
void SwapBuffers();
void Finish();
void Flush();
void DestroyContext();
void LoseCurrent();
void InitFnPtrs();
void InitBuffers();
void MakeCurrent();
void __glExpCreateContext(__GLcontext *gc, ...);
void __glExpEnableDepthTest(__GLcontext *gc, ...);
void __glExpPassDepthFunc(__GLcontext *gc, ...);
void __glExpPassDepthMask(__GLcontext *gc, ...);
void Fetch();
void Store2();
void __glExpInitDepth(__GLcontext *gc, ...);
void __glExpEvalPassCurrentState(__GLcontext *gc, ...);
void __glExpEvalRestoreCurrentState(__GLcontext *gc, ...);
void __glexpim_EvalMesh1(GLenum mode, GLint i1, GLint i2);
void __glexpim_EvalPoint1(GLint i);
void __glexpim_EvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void __glexpim_EvalPoint2(GLint i, GLint j);
void PreEvaluate();
void PreEvaluateWithDeriv();
void DoDomain1();
void DoEvalCoord1();
void __glExpDoEvalCoord1(__GLcontext *gc, ...);
void ComputeFirstPartials();
void ComputeNormal2();
void DoDomain2();
void DoDomain2WithDerivs();
void DoEvalCoord2();
void __glExpDoEvalCoord2(__GLcontext *gc, ...);
void __glExpEvalMesh1Line(__GLcontext *gc, ...);
void __glExpEvalMesh1Point(__GLcontext *gc, ...);
void sendChange();
void __glExpEvalMesh2Fill(__GLcontext *gc, ...);
void __glExpEvalMesh2Point(__GLcontext *gc, ...);
void __glExpEvalMesh2Line(__GLcontext *gc, ...);
void __glExpEnableFog(__GLcontext *gc, ...);
void __glExpPassFog(__GLcontext *gc, ...);
void __glExpDoGet(__GLcontext *gc, ...);
void __glexpim_GetDoublev(GLenum pname, GLdouble *data);
void __glexpim_GetFloatv(GLenum pname, GLfloat *data);
void __glexpim_GetIntegerv(GLenum pname, GLint *data);
void __glexpim_GetBooleanv(GLenum pname, GLboolean *data);
void __glExpInitLUTCache(__GLcontext *gc, ...);
void __glExpFreeLUTCache(__GLcontext *gc, ...);
void findEntry();
void __glExpCreateSpecLUT(__GLcontext *gc, ...);
void __glExpCreateSpotLUT(__GLcontext *gc, ...);
void __glExpFreeLightLUT(__GLcontext *gc, ...);
void __glExpLoadSpecLUT(__GLcontext *gc, ...);
void __glExpLoadSpotLUT(__GLcontext *gc, ...);
void __glExpLoadAmbientSum(__GLcontext *gc, ...);
void __glExpLoadLightPath(__GLcontext *gc, ...);
void __glExpLoadLightSource(__GLcontext *gc, ...);
void __glExpValidateMaterial(__GLcontext *gc, ...);
void __glExpValidateColorMaterial(__GLcontext *gc, ...);
void __glExpValidateLightSource(__GLcontext *gc, GLint lightIndex);
void __glExpValidateLighting(__GLcontext *gc, ...);
void __glExpUpdateLightingState(__GLcontext *gc, ...);
void __glExpEnableLighting(__GLcontext *gc, ...);
void __glExpFreeLighting(__GLcontext *gc, ...);
void __glExpInitLighting(__GLcontext *gc, ...);
void __glExpPassLineWidth(__GLcontext *gc, ...);
void __glExpPassLineStipple(__GLcontext *gc, ...);
void __glExpEnableLineStipple(__GLcontext *gc, ...);
void __glExpStoreLine(__GLcontext *gc, ...);
void __glExpStoreStippledLine(__GLcontext *gc, ...);
void __glexple_Vertex3fv();
void __glexple_Color3fv();
void __glexple_Normal3fv();
void __glexplc_Vertex3fv(const GLfloat *v);
void __glexplc_Color3fv(const GLfloat *v);
void __glexplc_Normal3fv(const GLfloat *v);
void __glExpDlistOptimizer(__GLcontext *gc, ...);
void LoadHardDispatchVectors();
void LoadSoftDispatchVectors();
void SwitchPrimDispatch();
void __glExpLoadPrimDispatchVectors(__GLcontext *gc, ...);
void SwitchLLoop();
void SwitchLStrip();
void SwitchLines();
void SwitchPoints();
void SwitchPolygon();
void SwitchTStrip();
void SwitchTFan();
void SwitchTriangles();
void SwitchQStrip();
void SwitchQuads();
void __glExpPickPrimDispatch(__GLcontext *gc, ...);
void __glExpInitPrimDispatchState(__GLcontext *gc, ...);
void __glExpPickBufferProcs(__GLcontext *gc, ...);
void __glExpPickSpanProcs(__GLcontext *gc, ...);
void __glExpPickLineProcs(__GLcontext *gc, ...);
void __glExpPickPixelProcs(__GLcontext *gc, ...);
void __glExpPickBitmapProcs(__GLcontext *gc, ...);
void __glExpPickAllProcs(__GLcontext *gc, ...);
void __glExpCopyToPipe4(__GLcontext *gc, ...);
void __glExpCopyToPipe1(__GLcontext *gc, ...);
void __glExpSwapToPipe1(__GLcontext *gc, ...);
void __glExpSwapAndCopy1(__GLcontext *gc, ...);
void __glExpSwapStuffAndCopy1(__GLcontext *gc, ...);
void __glExpCopyFromPipe1(__GLcontext *gc, ...);
void __glExpDrawPixelsUnpack4(__GLcontext *gc, ...);
void __glExpDrawPixelsUnpack1(__GLcontext *gc, ...);
void __glExpDrawPixelsKDMA(__GLcontext *gc, ...);
void __glExpReadPixelsPack1(__GLcontext *gc, ...);
void __glExpReadPixelsKDMA(__GLcontext *gc, ...);
void __glExpReadPixelsKDMARGBA(__GLcontext *gc, ...);
void __glExpGetOrigin(__GLcontext *gc, ...);
void __glExpClipPixels(__GLcontext *gc, ...);
void __glExpInitPackAndUnpack(__GLcontext *gc, ...);
void __glExpFastDrawPixels(__GLcontext *gc, ...);
void __glExpFastReadPixels(__GLcontext *gc, ...);
void __glExpFastCopyPixels(__GLcontext *gc, ...);
void __glExpPickDrawPixels(__GLcontext *gc, ...);
void __glExpPickReadPixels(__GLcontext *gc, ...);
void __glExpPickCopyPixels(__GLcontext *gc, ...);
void __glExpFreePixelState(__GLcontext *gc, ...);
void __glExpInitPixelState(__GLcontext *gc, ...);
void __glExpPassCullFace(__GLcontext *gc, ...);
void __glExpEnableCullFace(__GLcontext *gc, ...);
void __glExpConvertStipple(__GLcontext *gc, ...);
void __glExpPassFrontFace(__GLcontext *gc, ...);
void __glExpPassPolygonStipple(__GLcontext *gc, ...);
void __glExpEnablePolygonStipple(__GLcontext *gc, ...);
void __glExpPassPolygonMode(__GLcontext *gc, ...);
void __glExpPassPolygonOffset(__GLcontext *gc, ...);
void __glExpPassPointSize(__GLcontext *gc, ...);
void __glExpEndLLoop(__GLcontext *gc, ...);
void __glExpBeginLLoop(__GLcontext *gc, ...);
void __glExpEndLStrip(__GLcontext *gc, ...);
void __glExpBeginLStrip(__GLcontext *gc, ...);
void __glExpEndLines(__GLcontext *gc, ...);
void __glExpBeginLines(__GLcontext *gc, ...);
void __glExpEndPoints(__GLcontext *gc, ...);
void __glExpBeginPoints(__GLcontext *gc, ...);
void __glExpEndPolygon(__GLcontext *gc, ...);
void __glExpBeginPolygon(__GLcontext *gc, ...);
void __glExpEndTStrip(__GLcontext *gc, ...);
void __glExpBeginTStrip(__GLcontext *gc, ...);
void __glExpEndTFan(__GLcontext *gc, ...);
void __glExpBeginTFan(__GLcontext *gc, ...);
void __glExpEndTriangles(__GLcontext *gc, ...);
void __glExpBeginTriangles(__GLcontext *gc, ...);
void __glExpEndQStrip(__GLcontext *gc, ...);
void __glExpBeginQStrip(__GLcontext *gc, ...);
void __glExpEndQuads(__GLcontext *gc, ...);
void __glExpBeginQuads(__GLcontext *gc, ...);
void __glexpim_Begin(GLenum mode);
void __glexpim_End(void);
void __glExpPassRasterPosData(__GLcontext *gc, ...);
void __glExpGetRasterPosData(__GLcontext *gc, ...);
void __glexpim_RasterPos2dv(const GLdouble *v);
void __glexpim_RasterPos2fv(const GLfloat *v);
void __glexpim_RasterPos2d(GLdouble x, GLdouble y);
void __glexpim_RasterPos2f(GLfloat x, GLfloat y);
void __glexpim_RasterPos2i(GLint x, GLint y);
void __glexpim_RasterPos2iv(const GLint *v);
void __glexpim_RasterPos2s(GLshort x, GLshort y);
void __glexpim_RasterPos2sv(const GLshort *v);
void __glexpim_RasterPos3dv(const GLdouble *v);
void __glexpim_RasterPos3fv(const GLfloat *v);
void __glexpim_RasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void __glexpim_RasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void __glexpim_RasterPos3i(GLint x, GLint y, GLint z);
void __glexpim_RasterPos3iv(const GLint *v);
void __glexpim_RasterPos3s(GLshort x, GLshort y, GLshort z);
void __glexpim_RasterPos3sv(const GLshort *v);
void __glexpim_RasterPos4dv(const GLdouble *v);
void __glexpim_RasterPos4fv(const GLfloat *v);
void __glexpim_RasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glexpim_RasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glexpim_RasterPos4i(GLint x, GLint y, GLint z, GLint w);
void __glexpim_RasterPos4iv(const GLint *v);
void __glexpim_RasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glexpim_RasterPos4sv(const GLshort *v);
void __glExpPassDrawBuffer(__GLcontext *gc, ...);
void __glExpPassColorMask(__GLcontext *gc, ...);
void __glExpPassIndexMask(__GLcontext *gc, ...);
void __glExpEnableDither(__GLcontext *gc, ...);
void __glExpPassBlendFunc(__GLcontext *gc, ...);
void __glExpEnableBlendFunc(__GLcontext *gc, ...);
void __glExpPassLogicOp(__GLcontext *gc, ...);
void __glExpEnableLogicOp(__GLcontext *gc, ...);
void __glExpEnableLineSmooth(__GLcontext *gc, ...);
void __glExpEnablePointSmooth(__GLcontext *gc, ...);
void __glExpPassShadeModel(__GLcontext *gc, ...);
void __glexpim_Rectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void __glexpim_Rectdv(const GLdouble *v1, const GLdouble *v2);
void __glexpim_Rectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void __glexpim_Rectfv(const GLfloat *v1, const GLfloat *v2);
void __glexpim_Recti(GLint x1, GLint y1, GLint x2, GLint y2);
void __glexpim_Rectiv(const GLint *v1, const GLint *v2);
void __glexpim_Rects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void __glexpim_Rectsv(const GLshort *v1, const GLshort *v2);
void Store_B();
void __glExpTextureSpan(__GLcontext *gc, ...);
void __glExpTextureStippledSpan(__GLcontext *gc, ...);
void ReadSpan();
void ReturnSpan();
void __glExpInitRGB(__GLcontext *gc, ...);
void __glexpim_shadowColor3ub();
void __glexpim_shadowColor3ubv();
void __glexpim_shadowColor3b();
void __glexpim_shadowColor3bv();
void __glexpim_shadowColor3d();
void __glexpim_shadowColor3dv();
void __glexpim_shadowColor3f();
void __glexpim_shadowColor3fv();
void __glexpim_shadowColor3i();
void __glexpim_shadowColor3iv();
void __glexpim_shadowColor3ui();
void __glexpim_shadowColor3uiv();
void __glexpim_shadowColor3s();
void __glexpim_shadowColor3sv();
void __glexpim_shadowColor3us();
void __glexpim_shadowColor3usv();
void __glexpim_shadowColor4ub();
void __glexpim_shadowColor4ubv();
void __glexpim_shadowColor4b();
void __glexpim_shadowColor4bv();
void __glexpim_shadowColor4d();
void __glexpim_shadowColor4dv();
void __glexpim_shadowColor4f();
void __glexpim_shadowColor4fv();
void __glexpim_shadowColor4i();
void __glexpim_shadowColor4iv();
void __glexpim_shadowColor4ui();
void __glexpim_shadowColor4uiv();
void __glexpim_shadowColor4s();
void __glexpim_shadowColor4sv();
void __glexpim_shadowColor4us();
void __glexpim_shadowColor4usv();
void __glexpim_shadowNormal3d();
void __glexpim_shadowNormal3dv();
void __glexpim_shadowNormal3f();
void __glexpim_shadowNormal3fv();
void __glexpim_shadowNormal3b();
void __glexpim_shadowNormal3bv();
void __glexpim_shadowNormal3s();
void __glexpim_shadowNormal3sv();
void __glexpim_shadowNormal3i();
void __glexpim_shadowNormal3iv();
void __glexpim_shadowIndexd();
void __glexpim_shadowIndexf();
void __glexpim_shadowIndexi();
void __glexpim_shadowIndexs();
void __glexpim_shadowIndexub();
void __glexpim_shadowIndexdv();
void __glexpim_shadowIndexfv();
void __glexpim_shadowIndexiv();
void __glexpim_shadowIndexsv();
void __glexpim_shadowIndexubv();
void __glExpEnableStencilTest(__GLcontext *gc, ...);
void __glExpPassStencilMask(__GLcontext *gc, ...);
void __glExpPassStencilMode(__GLcontext *gc, ...);
void TestFunc();
void __glExpInitStencil(__GLcontext *gc, ...);
void __glExpPassColor(__GLcontext *gc, ...);
void __glExpPassIndex(__GLcontext *gc, ...);
void __glExpPassNormal(__GLcontext *gc, ...);
void __glExpPassEdgeFlag(__GLcontext *gc, ...);
void __glExpGetColor(__GLcontext *gc, ...);
void __glExpGetIndex(__GLcontext *gc, ...);
void __glExpGetNormal(__GLcontext *gc, ...);
void __glExpGetEdgeFlag(__GLcontext *gc, ...);
void __glexpim_EdgeFlag(GLboolean flag);
void __glexpim_EdgeFlagv(const GLboolean *flag);
void __glexpim_Color3ub(GLubyte red, GLubyte green, GLubyte blue);
void __glexpim_Color3ubv(const GLubyte *v);
void __glexpim_Color3b(GLbyte red, GLbyte green, GLbyte blue);
void __glexpim_Color3bv(const GLbyte *v);
void __glexpim_Color3d(GLdouble red, GLdouble green, GLdouble blue);
void __glexpim_Color3dv(const GLdouble *v);
void __glexpim_Color3f(GLfloat red, GLfloat green, GLfloat blue);
void __glexpim_Color3fv(const GLfloat *v);
void __glexpim_Color3i(GLint red, GLint green, GLint blue);
void __glexpim_Color3iv(const GLint *v);
void __glexpim_Color3ui(GLuint red, GLuint green, GLuint blue);
void __glexpim_Color3uiv(const GLuint *v);
void __glexpim_Color3s(GLshort red, GLshort green, GLshort blue);
void __glexpim_Color3sv(const GLshort *v);
void __glexpim_Color3us(GLushort red, GLushort green, GLushort blue);
void __glexpim_Color3usv(const GLushort *v);
void __glexpim_Color4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void __glexpim_Color4ubv(const GLubyte *v);
void __glexpim_Color4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void __glexpim_Color4bv(const GLbyte *v);
void __glexpim_Color4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void __glexpim_Color4dv(const GLdouble *v);
void __glexpim_Color4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glexpim_Color4fv(const GLfloat *v);
void __glexpim_Color4i(GLint red, GLint green, GLint blue, GLint alpha);
void __glexpim_Color4iv(const GLint *v);
void __glexpim_Color4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
void __glexpim_Color4uiv(const GLuint *v);
void __glexpim_Color4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
void __glexpim_Color4sv(const GLshort *v);
void __glexpim_Color4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
void __glexpim_Color4usv(const GLushort *v);
void __glexpim_Indexd(GLdouble c);
void __glexpim_Indexf(GLfloat c);
void __glexpim_Indexi(GLint c);
void __glexpim_Indexs(GLshort c);
void __glexpim_Indexub(GLubyte c);
void __glexpim_Indexdv(const GLdouble *c);
void __glexpim_Indexfv(const GLfloat *c);
void __glexpim_Indexiv(const GLint *c);
void __glexpim_Indexsv(const GLshort *c);
void __glexpim_Indexubv(const GLubyte *c);
void __glexpim_Vertex2dv(const GLdouble *v);
void __glexpim_Vertex2fv(const GLfloat *v);
void __glexpim_Vertex2d(GLdouble x, GLdouble y);
void __glexpim_Vertex2f(GLfloat x, GLfloat y);
void __glexpim_Vertex2i(GLint x, GLint y);
void __glexpim_Vertex2iv(const GLint *v);
void __glexpim_Vertex2s(GLshort x, GLshort y);
void __glexpim_Vertex2sv(const GLshort *v);
void __glexpim_Vertex3dv(const GLdouble *v);
void __glexpim_Vertex3fv(const GLfloat *v);
void __glexpim_Vertex3d(GLdouble x, GLdouble y, GLdouble z);
void __glexpim_Vertex3f(GLfloat x, GLfloat y, GLfloat z);
void __glexpim_Vertex3i(GLint x, GLint y, GLint z);
void __glexpim_Vertex3iv(const GLint *v);
void __glexpim_Vertex3s(GLshort x, GLshort y, GLshort z);
void __glexpim_Vertex3sv(const GLshort *v);
void __glexpim_Vertex4dv(const GLdouble *v);
void __glexpim_Vertex4fv(const GLfloat *v);
void __glexpim_Vertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glexpim_Vertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glexpim_Vertex4i(GLint x, GLint y, GLint z, GLint w);
void __glexpim_Vertex4iv(const GLint *v);
void __glexpim_Vertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glexpim_Vertex4sv(const GLshort *v);
void __glexpim_Normal3d(GLdouble nx, GLdouble ny, GLdouble nz);
void __glexpim_Normal3dv(const GLdouble *v);
void __glexpim_Normal3f(GLfloat nx, GLfloat ny, GLfloat nz);
void __glexpim_Normal3fv(const GLfloat *v);
void __glexpim_Normal3b(GLbyte nx, GLbyte ny, GLbyte nz);
void __glexpim_Normal3bv(const GLbyte *v);
void __glexpim_Normal3s(GLshort nx, GLshort ny, GLshort nz);
void __glexpim_Normal3sv(const GLshort *v);
void __glexpim_Normal3i(GLint nx, GLint ny, GLint nz);
void __glexpim_Normal3iv(const GLint *v);
void __glExpEnableNormalize(__GLcontext *gc, ...);
void __glExpUpdateMatrixState(__GLcontext *gc, ...);
void __glExpPassMatrix(__GLcontext *gc, ...);
void __glexpim_Frustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glexpim_LoadIdentity(void);
void __glexpim_LoadMatrixf(const GLfloat *m);
void __glexpim_LoadMatrixd(const GLdouble *m);
void __glexpim_MatrixMode(GLenum mode);
void __glexpim_MultMatrixf(const GLfloat *m);
void __glexpim_MultMatrixd(const GLdouble *m);
void __glexpim_Ortho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glexpim_DepthRange(GLdouble n, GLdouble f);
void __glexpim_PopMatrix(void);
void __glexpim_PushMatrix(void);
void __glexpim_Rotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void __glexpim_Rotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void __glexpim_Scaled(GLdouble x, GLdouble y, GLdouble z);
void __glexpim_Scalef(GLfloat x, GLfloat y, GLfloat z);
void __glexpim_Translated(GLdouble x, GLdouble y, GLdouble z);
void __glexpim_Translatef(GLfloat x, GLfloat y, GLfloat z);
void __glExpEnableClipPlanes(__GLcontext *gc, ...);
void __glExpPassClipPlanes(__GLcontext *gc, ...);
void __glexpim_ClipPlane(GLenum plane, const GLdouble *equation);
void __glDlistBlockStateInit();
void __glDlistBlockStateFree();
void block_grow_region();
void __glDlistPreallocBlocks();
void __glDlistAllocBlock();
void __glDlistFreeBlock();
void __glDlistCompactBlocks();
void __glDlistIsBlock();
void __glDlistTransientBlock();
void __glDlistFreeTransient();
void __glShareDlist();
void __glInitDlistState();
void __glFreeDlistState();
void __glim_NewList(GLuint list, GLenum mode);
void __glce_EndList(void);
void __glim_EndList(void);
void DoCallList();
void __gllc_CallList();
void __glle_CallList();
void __glce_CallList(GLuint list);
void __glce_CallLists(GLsizei n, GLenum type, const void *lists);
void __glim_CallList(GLuint list);
void DoCallLists();
void __gllc_CallLists();
void __glle_CallLists();
void __glim_CallLists(GLsizei n, GLenum type, const void *lists);
void __glce_DrawArraysEXT(GLenum mode, GLint first, GLsizei count);
void __glce_DrawElements(GLenum mode, GLsizei count, GLenum type, const void *indices);
void __glce_ArrayElementEXT(GLint i);
void __glDlistAllocOp2();
void __glDlistFreeOp();
void __glDlistAppendOp();
void __glGenericDlistOptimizer();
void __gllc_Begin();
void __glle_Begin_LineLoop();
void __glle_Begin_LineStrip();
void __glle_Begin_Lines();
void __glle_Begin_Points();
void __glle_Begin_Polygon();
void __glle_Begin_TriangleStrip();
void __glle_Begin_TriangleFan();
void __glle_Begin_Triangles();
void __glle_Begin_QuadStrip();
void __glle_Begin_Quads();
void __gllc_InvalidValue();
void __gllc_InvalidEnum();
void __gllc_InvalidOperation();
void __gllc_TableTooLarge();
void __gllc_UnimplementedExtension();
void __gllc_Error();
void __glle_InvalidValue();
void __glle_InvalidEnum();
void __glle_InvalidOperation();
void __glle_TableTooLarge();
void __glle_UnimplementedExtension();
void ApplyMatChange();
void FreeFastMaterial();
void __glDlistOptimizeMaterial();
void __glle_FastMaterial();
void __glDisposeDlist();
void __glEmptyFreeDlist();
void __glEmptyExecuteDlist();
void __glDlistNewArray();
void __glDlistFreeArray();
GLboolean __glim_IsList(GLuint list);
GLuint __glim_GenLists(GLsizei range);
void __glim_ListBase(GLuint base);
void __glim_DeleteLists(GLuint list, GLsizei range);
void __glInitDefaultPixelMap();
void __glPixelSetColorScales();
void __glFreePixelState();
void __glInitPixelState();
void __glim_PixelStoref(GLenum pname, GLfloat param);
void __glim_PixelStorei(GLenum pname, GLint param);
void __glim_PixelZoom(GLfloat xfactor, GLfloat yfactor);
void __glim_PixelTransferf(GLenum pname, GLfloat param);
void __glim_PixelTransferi(GLenum pname, GLint param);
void __glim_PixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values);
void __glim_PixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values);
void __glim_PixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values);
void __glim_ReadBuffer(GLenum src);
void __glCheckDrawPixelArgs();
void __glCheckReadPixelArgs();
void __glim_DrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void __glim_ReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
void __glim_CopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
void __glBuildRGBAModifyTables();
void __glBuildItoIModifyTables();
void __glBuildItoRGBAModifyTables();
void __glSpanModifyRGBA();
void __glSpanModifyABGR();
void __glSpanModifyRed();
void __glSpanModifyGreen();
void __glSpanModifyBlue();
void __glSpanModifyAlpha();
void __glSpanModifyRGB();
void __glSpanModifyLuminance();
void __glSpanModifyLuminanceAlpha();
void __glSpanModifyRedAlpha();
void __glSpanModifyDepth();
void __glSpanModifyStencil();
void __glSpanModifyCI();
void __glSpanApplyRGBAColorTable();
void __glInitPacker();
void __glInitPacker3D();
void __glSpanReduceRed();
void __glSpanReduceGreen();
void __glSpanReduceBlue();
void __glSpanReduceAlpha();
void __glSpanReduceRGB();
void __glSpanReorderABGR();
void __glSpanReduceLuminance();
void __glSpanReduceLuminanceAlpha();
void __glSpanReduceRedAlpha();
void __glSpanReduceRedNS();
void __glSpanReduceGreenNS();
void __glSpanReduceBlueNS();
void __glSpanReduceAlphaNS();
void __glSpanReduceRGBNS();
void __glSpanReorderABGRNS();
void __glSpanReduceRedAlphaNS();
void __glSpanPackUbyte();
void __glSpanPackByte();
void __glSpanPackUshort();
void __glSpanPackShort();
void __glSpanPackUint();
void __glSpanPackInt();
void __glSpanPack332Ubyte();
void __glSpanPack4444Ushort();
void __glSpanPack5551Ushort();
void __glSpanPack8888Uint();
void __glSpanPack_10_10_10_2_Uint();
void __glSpanPackUbyteI();
void __glSpanPackByteI();
void __glSpanPackUshortI();
void __glSpanPackShortI();
void __glSpanPackUintI();
void __glSpanPackIntI();
void __glSpanPackNonCompUbyte();
void __glSpanPackNonCompByte();
void __glSpanPackNonCompUshort();
void __glSpanPackNonCompShort();
void __glSpanPackNonCompUint();
void __glSpanPackNonCompInt();
void __glSpanCopy();
void __glSpanPackBitmap();
void __glSpanRGBAScaleBias();
void __glSpanRGBAScaleBiasReduce();
void PickSpanModifiers();
void __glClipDrawPixels();
void __glComputeSpanPixelArray();
void __glLoadUnpackModes();
void __glInitDrawPixelsInfo();
void __glDrawPixelSpans();
void __glDrawPixels2();
void __glDrawPixels1();
void __glDrawPixels0();
void __glLateScissorRender();
void __glInitLateScissor();
void __glSlowPickDrawPixels();
void __glGenericPickDrawPixels();
void __glClipReadPixels();
void __glLoadPackModes();
void __glInitReadPixelsInfo();
void __glReadPixelSpans();
void __glReadPixels2();
void __glReadPixels1();
void __glReadPixels0();
void __glSlowPickReadPixels();
void __glGenericPickReadPixels();
void __glClipCopyPixels();
void __glInitCopyPixelsInfo();
void __glCopyPixelSpans();
void __glCopyPixels2();
void __glCopyPixels1();
void __glCopyPixels0();
void __glCopyPixelsOverlapping();
void __glSlowPickCopyPixels();
void __glGenericPickCopyPixels();
void __glCopyImage1();
void __glCopyImage2();
void __glCopyImageSpans();
void __glGenericPickCopyImageSpan();
void __glCopyImage3D();
void __glGenericPickCopyImage();
void __glInitReadImageSrcInfo();
void __glGenericPickReadImage();
void __glInitMemLoad();
void __glInitMemGet();
void __glInitMemUnpack();
void __glInitMemPack();
void __glSpanReadRGBA();
void __glSpanReadRGBA2();
void __glSpanReadCI();
void __glSpanReadCI2();
void __glSpanReadDepth();
void __glSpanReadDepth2();
void __glSpanReadDepthUint1();
void __glSpanReadDepthUint();
void __glSpanReadStencil();
void __glSpanReadStencil2();
void __glSlowDrawPixelsStore();
void __glSpanRenderRGBubyte();
void __glSpanRenderRGBubyte2();
void __glSpanRenderRGBAubyte();
void __glSpanRenderRGBAubyte2();
void __glSpanRenderDepthUint();
void __glSpanRenderDepthUint1();
void __glSpanRenderStencilUshort();
void __glSpanRenderStencilUshort2();
void __glSpanRenderStencilUbyte();
void __glSpanRenderStencilUbyte2();
void __glSpanRenderCIushort();
void __glSpanRenderCIushort2();
void __glSpanRenderCIubyte();
void __glSpanRenderCIubyte2();
void __glSpanRenderCIubyte3();
void __glSpanRenderCIubyte4();
void __glSpanRenderRGBA();
void __glSpanRenderRGBA2();
void __glSpanRenderDepth();
void __glSpanRenderDepth2();
void __glSpanRenderCI();
void __glSpanRenderCI2();
void __glSpanRenderStencil();
void __glSpanRenderStencil2();
void __glElementsPerGroup();
void __glBytesPerElement();
void __glSpecElementsPerGroup();
void __glSpecBytesPerElement();
void __glInitUnpacker();
void __glInitUnpacker3D();
void __glSpanUnpackBitmap();
void __glSpanUnpackBitmap2();
void __glSpanUnpackRGBubyte();
void __glSpanUnpackIndexUbyte();
void __glSpanUnpackRGBAubyte();
void __glSpanSwapBytes2();
void __glSpanSwapBytes2Dst();
void __glSpanSwapAndSkipBytes2();
void __glSpanSwapBytes4();
void __glSpanSwapBytes4Dst();
void __glSpanSwapAndSkipBytes4();
void __glSpanSkipPixels1();
void __glSpanSkipPixels2();
void __glSpanSkipPixels4();
void __glSpanSlowSkipPixels2();
void __glSpanSlowSkipPixels4();
void __glSpanAlignPixels2();
void __glSpanAlignPixels2Dst();
void __glSpanAlignPixels4();
void __glSpanAlignPixels4Dst();
void __glSpanUnpackUbyte();
void __glSpanUnpackByte();
void __glSpanUnpackUshort();
void __glSpanUnpackShort();
void __glSpanUnpackUint();
void __glSpanUnpackInt();
void __glSpanUnpack332Ubyte();
void __glSpanUnpack4444Ushort();
void __glSpanUnpack5551Ushort();
void __glSpanUnpack8888Uint();
void __glSpanUnpack_10_10_10_2_Uint();
void __glSpanUnpackUbyteI();
void __glSpanUnpackByteI();
void __glSpanUnpackUshortI();
void __glSpanUnpackShortI();
void __glSpanUnpackUintI();
void __glSpanUnpackIntI();
void __glSpanUnpackNonCompUint();
void __glSpanClampPreFloat();
void __glSpanClampNegPreFloat();
void __glSpanClampPostFloat();
void __glSpanClampRed();
void __glSpanClampGreen();
void __glSpanClampBlue();
void __glSpanClampAlpha();
void __glSpanClampRGB();
void __glSpanClampRGBA();
void __glSpanClampSigned();
void __glSpanExpandRed();
void __glSpanExpandGreen();
void __glSpanExpandBlue();
void __glSpanExpandAlpha();
void __glSpanExpandRGB();
void __glSpanExpandLuminance();
void __glSpanExpandLuminanceAlpha();
void __glSpanExpandRedAlpha();
void __glSpanExpandIntensity();
void __glSpanExpandRedNS();
void __glSpanExpandGreenNS();
void __glSpanExpandBlueNS();
void __glSpanExpandAlphaNS();
void __glSpanExpandRGBNS();
void __glSpanExpandLuminanceNS();
void __glSpanExpandLuminanceAlphaNS();
void __glSpanExpandRedAlphaNS();
void __glSpanExpandIntensityNS();
void __glSpanZeroFillAlpha();
void __glSpanScaleRGBA();
void __glSpanScaleABGR();
void __glSpanPreReorderABGR();
void __glSpanPreUnscaleRGBA();
void __glSpanPostUnscaleRGBA();
void __glSpanUnscaleABGR();
void __glSpanGetMemRGBA();
void __glSpanGetMemRGB();
void __glSpanGetMemL();
void __glSpanGetMemLA();
void __glSpanGetMemI();
void __glSpanMemPutRGBA();
void __glSpanMemPutRGB();
void __glSpanMemPutL();
void __glSpanMemPutLA();
void __glSpanMemPutI();
void __glRowScaleSumRGBA();
void __glRowScaleSumRGB();
void __glRowScaleSumL();
void __glRowScaleSumLA();
void __glRowScaleSumI();
void __glSpanPostConvScaleBiasRGBA();
void __glRowSetNoAlpha();
void __glRowSetAll();
void __glSpanConvolveReduceRGB();
void __glSpanConvolveReduceRGBA();
void __glSpanConvolveReduceL();
void __glSpanConvolveReduceLA();
void __glSpanConvolveReduceI();
void __glSpanConvolve1DReduceRGB();
void __glSpanConvolve1DReduceRGBA();
void __glSpanConvolve1DReduceL();
void __glSpanConvolve1DReduceLA();
void __glSpanConvolve1DReduceI();
void __glSlowPickConvolutionFilter();
void __glSlowPickSeparableFilter();
void __glSlowPickGetConvolutionFilter();
void __glSlowPickGetSeparableFilter();
void __glSlowPickCopyConvolutionFilter1D();
void __glSlowPickCopyConvolutionFilter2D();
void __glSep2dZoomDrawPixels();
void __glConv2dDrawPixels();
void __glSep2dDrawPixels();
void __glConv2dReadPixels();
void __glSep2dReadPixels();
void savePixelTransferState();
void restorePixelTransferState();
void __glConv2dCopyPixels();
void __glSep2dCopyPixels();
void __glConv2dCopyImage();
void __glSep2dCopyImage();
void __glFClamp();
void __glSpanMinmaxA();
void __glSpanMinmaxL();
void __glSpanMinmaxLA();
void __glSpanMinmaxRGB();
void __glSpanMinmaxRGBA();
void __glSpanMinmaxSinkA();
void __glSpanMinmaxSinkL();
void __glSpanMinmaxSinkLA();
void __glSpanMinmaxSinkRGB();
void __glSpanMinmaxSinkRGBA();
void __glSpanHistogramA();
void __glSpanHistogramL();
void __glSpanHistogramLA();
void __glSpanHistogramRGB();
void __glSpanHistogramRGBA();
void __glSpanHistogramSinkA();
void __glSpanHistogramSinkL();
void __glSpanHistogramSinkLA();
void __glSpanHistogramSinkRGB();
void __glSpanHistogramSinkRGBA();
void __glGenMatrixSignature();
void __glSpanColorMatrixSwizzleRGBA();
void __glSpanColorMatrixSwizzWithDropRGBA();
void __glSpanColorMatrixGeneralRGBA();
void __glSpanPostColorMatrixScaleBiasRGBA();
void Load();
void Accumulate();
void Mult();
void Add();
void Return();
void __glInitAccum64();
void __glim_Accum(GLenum op, GLfloat value);
void __glValidateAlphaTest();
void __glim_AlphaFunc(GLenum func, GLfloat ref);
void __glim_BlendFunc(GLenum sfactor, GLenum dfactor);
void __glim_BlendEquationEXT(GLenum mode);
void __glim_ClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glim_ClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glim_ClearDepth(GLdouble depth);
void __glim_ClearIndex(GLfloat c);
void __glim_ClearStencil(GLint s);
void __glim_ColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void __glim_ColorMaterial(GLenum face, GLenum mode);
void __glim_CullFace(GLenum mode);
void __glim_DepthFunc(GLenum func);
void __glim_DepthMask(GLboolean flag);
void __glim_DrawBuffer(GLenum buf);
void __glim_Fogfv(GLenum pname, const GLfloat *params);
void __glim_Fogf(GLenum pname, GLfloat param);
void __glim_Fogiv(GLenum pname, const GLint *params);
void __glim_Fogi(GLenum pname, GLint param);
void __glim_FrontFace(GLenum mode);
void __glim_Hint(GLenum target, GLenum mode);
void __glim_IndexMask(GLuint mask);
void __glTransformLightDirection();
void __glim_Lightfv(GLenum light, GLenum pname, const GLfloat *params);
void __glim_Lightf(GLenum light, GLenum pname, GLfloat param);
void __glim_Lightiv(GLenum light, GLenum pname, const GLint *params);
void __glim_Lighti(GLenum light, GLenum pname, GLint param);
void __glim_LightModelfv(GLenum pname, const GLfloat *params);
void __glim_LightModelf(GLenum pname, GLfloat param);
void __glim_LightModeliv(GLenum pname, const GLint *params);
void __glim_LightModeli(GLenum pname, GLint param);
void __glim_LineStipple(GLint factor, GLushort pattern);
void __glim_LineWidth(GLfloat width);
void __glim_LogicOp(GLenum opcode);
void __glErrorCheckMaterial();
void __glim_Materialfv(GLenum face, GLenum pname, const GLfloat *params);
void __glim_Materialf(GLenum face, GLenum pname, GLfloat param);
void __glim_Materialiv(GLenum face, GLenum pname, const GLint *params);
void __glim_Materiali(GLenum face, GLenum pname, GLint param);
void __glim_PointSize(GLfloat size);
void __glim_PolygonMode(GLenum face, GLenum mode);
void __glim_PolygonStipple(const GLubyte *mask);
void __glim_ShadeModel(GLenum mode);
void __glim_StencilMask(GLuint mask);
void __glim_StencilFunc(GLenum func, GLint ref, GLuint mask);
void __glim_StencilOp(GLenum fail, GLenum zfail, GLenum zpass);
void __glCopyContext();
void __glim_PushAttrib(GLbitfield mask);
void __glim_PopAttrib(void);
void __glim_Enable(GLenum cap);
void __glim_Disable(GLenum cap);
GLboolean __glim_IsEnabled(GLenum cap);
void __glim_BlendColorEXT(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glim_PolygonOffsetEXT(GLfloat factor, GLfloat bias);
void __glim_PolygonOffset(GLfloat factor, GLfloat units);
void __glFreeAttributeState();
void __glim_EnableClientState(GLenum array);
void __glim_DisableClientState(GLenum array);
void __glim_PushClientAttrib(GLbitfield mask);
void __glim_PopClientAttrib(void);
void __glDrawBitmap();
void __glFastDrawBitmap();
void __glRenderBitmap();
void __glim_Bitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap);
void __glDoBlendAdd();
void __glDoBlendMin();
void __glDoBlendMax();
void __glDoBlendSubtract();
void __glDoBlendReverseSubtract();
void __glDoBlendLogicOp();
void __glDoBlendSourceZERO();
void __glDoBlendDestZERO();
void __glDoBlendSourceONE();
void __glDoBlendDestONE();
void __glDoBlendDestSC();
void __glDoBlendDestMSC();
void __glDoBlendSourceDC();
void __glDoBlendSourceMDC();
void __glDoBlendSourceSA();
void __glDoBlendDestSA();
void __glDoBlendSourceMSA();
void __glDoBlendDestMSA();
void __glDoBlendSourceDA();
void __glDoBlendDestDA();
void __glDoBlendSourceMDA();
void __glDoBlendDestMDA();
void __glDoBlendSourceSAT();
void __glDoBlendSourceCC();
void __glDoBlendDestCC();
void __glDoBlendSourceCA();
void __glDoBlendDestCA();
void __glDoBlendSourceMCC();
void __glDoBlendDestMCC();
void __glDoBlendSourceMCA();
void __glDoBlendDestMCA();
void Nop();
void __glDoNoFetchBlend();
void __glDoFetchBlend();
void __glDoBlend();
void __glDoBlendZeroClamp();
void __glDoBlendNoClamp();
void __glDoBlend_SA_ZERO();
void __glDoBlend_SA_ONE();
void __glDoBlend_SA_MSA();
void __glDoBlend_MSA_SA();
void __glGenericPickBlendProcs();
void __glBlendSpan();
void __glBlendSpan_SA_MSA();
void __glBlendSpan_MSA_SA();
void __glBlendSpan_SA_ZERO();
void __glBlendSpan_SA_ONE();
void __glBlendStippledSpan();
void __glInitBuffer();
void __glMakeCurrentBuffer();
void __glLoseCurrentBuffer();
void __glResizeBuffer();
void __glMoveBuffer();
void __glFreeBuffer();
void __glim_Color3ub(GLubyte red, GLubyte green, GLubyte blue);
void __glim_Color3ubv(const GLubyte *v);
void __glim_Color3b(GLbyte red, GLbyte green, GLbyte blue);
void __glim_Color3bv(const GLbyte *v);
void __glim_Color3d(GLdouble red, GLdouble green, GLdouble blue);
void __glim_Color3dv(const GLdouble *v);
void __glim_Color3i(GLint red, GLint green, GLint blue);
void __glim_Color3iv(const GLint *v);
void __glim_Color3ui(GLuint red, GLuint green, GLuint blue);
void __glim_Color3uiv(const GLuint *v);
void __glim_Color3s(GLshort red, GLshort green, GLshort blue);
void __glim_Color3sv(const GLshort *v);
void __glim_Color3us(GLushort red, GLushort green, GLushort blue);
void __glim_Color3usv(const GLushort *v);
void __glim_Color4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void __glim_Color4ubv(const GLubyte *v);
void __glim_Color4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void __glim_Color4bv(const GLbyte *v);
void __glim_Color4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void __glim_Color4dv(const GLdouble *v);
void __glim_Color4i(GLint red, GLint green, GLint blue, GLint alpha);
void __glim_Color4iv(const GLint *v);
void __glim_Color4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
void __glim_Color4uiv(const GLuint *v);
void __glim_Color4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
void __glim_Color4sv(const GLshort *v);
void __glim_Color4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
void __glim_Color4usv(const GLushort *v);
void __glim_Indexd(GLdouble c);
void __glim_Indexf(GLfloat c);
void __glim_Indexi(GLint c);
void __glim_Indexs(GLshort c);
void __glim_Indexdv(const GLdouble *c);
void __glim_Indexfv(const GLfloat *c);
void __glim_Indexiv(const GLint *c);
void __glim_Indexsv(const GLshort *c);
void __glim_Indexub(GLubyte c);
void __glim_Indexubv(const GLubyte *c);
void __glim_Clear(GLbitfield mask);
void Clip();
void ClipC();
void ClipI();
void ClipBC();
void ClipBI();
void ClipT();
void ClipIT();
void ClipBIT();
void ClipCT();
void ClipBCT();
void ClipF();
void ClipIF();
void ClipBIF();
void ClipCF();
void ClipBCF();
void ClipFT();
void ClipIFT();
void ClipBIFT();
void ClipCFT();
void ClipBCFT();
void __glGenericPickParameterClipProcs();
void __glCheckColorTableArgs();
void __glLoadColorTableParams();
void __glColorTableSGI();
void __glim_ColorTableSGI(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *table);
void __glim_GetColorTableSGI(GLenum target, GLenum format, GLenum type, void *table);
void __glColorTableModifiers();
void __glColorTableParameterv();
void __glim_ColorTableParameterivSGI(GLenum target, GLenum pname, const GLint *params);
void __glim_ColorTableParameterfvSGI(GLenum target, GLenum pname, const GLfloat *params);
void __glGetColorTableParameterv();
void __glim_GetColorTableParameterivSGI(GLenum target, GLenum pname, GLint *params);
void __glim_GetColorTableParameterfvSGI(GLenum target, GLenum pname, GLfloat *params);
void __glim_CopyColorTableSGI(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void __glInitColorTables();
void __glFreeColorTables();
void __glCopyColorTableScaleBias();
void __glDispatchExec();
void __glBeginDispatchOverride();
void __glEndDispatchOverride();
void __glEarlyInitContext();
void __glContextSetColorScales();
void __glSoftResetContext();
void __glDestroyContext();
void __glDestroySoftContext();
void __glFreePrivate();
void __glSetError(GLenum code);
GLint __glim_RenderMode(GLenum mode);
void __glChangeWindowSize();
void __glFindWindowSize();
void FillBufferInfo();
void __glMakeCurrentBuffers();
void __glLoseCurrentBuffers();
void __glFreeBufData();
void __glCheckConvolutionFilterArgs();
void __glim_ConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *image);
void __glim_ConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *image);
void __glim_SeparableFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *row, const void *column);
void __glim_CopyConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void __glim_CopyConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void __glim_GetConvolutionFilterEXT(GLenum target, GLenum format, GLenum type, void *image);
void __glim_GetSeparableFilterEXT(GLenum target, GLenum format, GLenum type, void *row, void *column, void *span);
void __GLconvolutionParameter();
void __glim_ConvolutionParameteriEXT(GLenum target, GLenum pname, GLint params);
void __glim_ConvolutionParameterivEXT(GLenum target, GLenum pname, const GLint *params);
void __glim_ConvolutionParameterfEXT(GLenum target, GLenum pname, GLfloat params);
void __glim_ConvolutionParameterfvEXT(GLenum target, GLenum pname, const GLfloat *params);
void __GLgetConvolutionParameter();
void __glim_GetConvolutionParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glim_GetConvolutionParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glConvolutionParameterfvEXT_size();
void __glConvolutionParameterivEXT_size();
void __glFillDeformationMap3f();
void __glFillDeformationMap3d();
void __glCheckMap3Params();
void FetchNon32();
void Fetch32();
void StoreNEVER();
void StoreLESS();
void StoreLESS_s();
void StoreEQUAL();
void StoreLEQUAL();
void StoreLEQUAL_s();
void StoreGREATER();
void StoreGREATER_s();
void StoreNOTEQUAL();
void StoreGEQUAL();
void StoreGEQUAL_s();
void StoreALWAYS();
void StoreLESS_W();
void StoreLESS_W_s();
void StoreEQUAL_W();
void StoreLEQUAL_W();
void StoreLEQUAL_W_s();
void StoreGREATER_W();
void StoreGREATER_W_s();
void StoreNOTEQUAL_W();
void StoreGEQUAL_W();
void StoreGEQUAL_W_s();
void StoreALWAYS_W();
void Fix_zbuffer();
void __glInitDepth24();
void __glInitDepth32();
void __glInitDepth();
void __glGenericFreeDlist();
void __glGenericExecuteDlist();
void __glGenericAllocDlist();
void __glle_Nop();
void __glGenericDlistCompiler();
void __glNopFreeDlist();
void __glNopExecuteDlist();
void __glNopAllocDlist();
void __glNopDlistCompiler();
void __glEvalComputeK();
void __glInitEvaluatorState();
void __glFreeEvaluatorState();
void __glim_Map1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void __glim_Map1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void __glim_Map2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void __glim_Map2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
void __glim_EvalCoord1d(GLdouble u);
void __glim_EvalCoord1dv(const GLdouble *u);
void __glim_EvalCoord1f(GLfloat u);
void __glim_EvalCoord1fv(const GLfloat *u);
void __glim_EvalCoord2d(GLdouble u, GLdouble v);
void __glim_EvalCoord2dv(const GLdouble *u);
void __glim_EvalCoord2f(GLfloat u, GLfloat v);
void __glim_EvalCoord2fv(const GLfloat *u);
void __glim_MapGrid1d(GLint un, GLdouble u1, GLdouble u2);
void __glim_MapGrid1f(GLint un, GLfloat u1, GLfloat u2);
void __glim_MapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
void __glim_MapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
void __glim_EvalMesh1(GLenum mode, GLint i1, GLint i2);
void __glim_EvalPoint1(GLint i);
void __glim_EvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void __glim_EvalPoint2(GLint i, GLint j);
void __glFillMap1f();
void __glFillMap1d();
void __glMap1_size();
void __glFillMap2f();
void __glFillMap2d();
void __glMap2_size();
void __glSetUpMap1();
void __glSetUpMap2();
void __glDoEvalCoord1();
void __glDoEvalCoord2();
void __glEvalMesh1Line();
void __glEvalMesh1Point();
void __glEvalMesh2Fill();
void __glEvalMesh2Point();
void __glEvalMesh2Line();
void NurbsKnots1Common();
void NurbsKnots2Common();
void __glim_NurbsKnots1dSGIX();
void __glim_NurbsKnots1fSGIX();
void __glim_NurbsKnots1iSGIX();
void __glim_NurbsKnots2dSGIX();
void __glim_NurbsKnots2fSGIX();
void __glim_NurbsKnots2iSGIX();
void __glim_FeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);
void __glim_PassThrough(GLfloat token);
void __glFeedbackTag();
void feedback();
void __glFeedbackCopyPixels();
void __glFeedbackDrawPixels();
void __glFeedbackBitmap();
void __glFeedbackPoint();
void __glFeedbackLine();
void __glFeedbackTriangle();
void __glim_Finish(void);
void __glim_Flush(void);
void __glFogSpan();
void __glFogStippledSpan();
void __glFogSpanSlow();
void __glFogStippledSpanSlow();
void __glFogFragmentSlow();
void __glFogVertex();
void __glFogVertexLinear();
void __glFogColorSlow();
void __glim_GetTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
void __glim_GetTexEnviv(GLenum target, GLenum pname, GLint *params);
void __glim_GetTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
void __glim_GetTexGendv(GLenum coord, GLenum pname, GLdouble *params);
void __glim_GetTexGeniv(GLenum coord, GLenum pname, GLint *params);
void __glim_GetTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
void __glim_GetTexParameteriv(GLenum target, GLenum pname, GLint *params);
void __glim_GetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params);
void __glim_GetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params);
void __glim_GetTexFilterFuncSGIS(GLenum target, GLenum filter, GLfloat *weights);
void __glim_GetClipPlane(GLenum plane, GLdouble *equation);
void __glInitImagePack();
void __glim_GetTexImage(GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void __glim_GetPolygonStipple(GLubyte *mask);
void __glim_GetLightfv(GLenum light, GLenum pname, GLfloat *params);
void __glim_GetLightiv(GLenum light, GLenum pname, GLint *params);
void __glim_GetMaterialfv(GLenum face, GLenum pname, GLfloat *params);
void __glim_GetMaterialiv(GLenum face, GLenum pname, GLint *params);
void __glim_GetMapfv(GLenum target, GLenum query, GLfloat *v);
void __glim_GetMapdv(GLenum target, GLenum query, GLdouble *v);
void __glim_GetMapiv(GLenum target, GLenum query, GLint *v);
void __glim_GetPixelMapfv(GLenum map, GLfloat *values);
void __glim_GetPixelMapuiv(GLenum map, GLuint *values);
void __glim_GetPixelMapusv(GLenum map, GLushort *values);
void __glConvertResult();
void __glDoGet();
void __glim_GetDoublev(GLenum pname, GLdouble *data);
void __glim_GetFloatv(GLenum pname, GLfloat *data);
void __glim_GetIntegerv(GLenum pname, GLint *data);
void __glim_GetBooleanv(GLenum pname, GLboolean *data);
GLenum __glim_GetError(void);
const GLubyte * __glim_GetString(GLenum name);
void __glim_GetPointervEXT(GLenum pname, void **params);
void __glProcessHistogramArguments();
void __glInitHistogramStore();
void __glInitHistogramUnpack();
void __glim_ResetHistogramEXT(GLenum target);
void __glim_HistogramEXT(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void __glCheckGetArguments();
void __glSetValue();
void __glResetArray();
void __glim_GetHistogramEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void __glGetHistogramParameters();
void __glim_GetHistogramParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glim_GetHistogramParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glProcessMinmaxArguments();
void __glResetMinmax();
void __glim_MinmaxEXT(GLenum target, GLenum internalformat, GLboolean sink);
void __glim_ResetMinmaxEXT(GLenum target);
void __glim_GetMinmaxEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void __glGetMinmaxParameters();
void __glim_GetMinmaxParameterivEXT(GLenum target, GLenum pname, GLint *params);
void __glim_GetMinmaxParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void __glConvertStipple();
void __glImageSize();
void __glImageSize3D();
void __glFillImage3D();
void __glFillImage();
void __glScaleColorf(__GLcontext *gc, __GLcolor *dst, const GLfloat *src);
void __glClampAndScaleColorf(__GLcontext *gc, __GLcolor *dst, const GLfloat *src);
void __glClampColorf();
void __glScaleColori();
void __glClampAndScaleColori();
void __glClampColori();
void __glUnScaleColorf(__GLcontext *gc, GLfloat *dst, const __GLcolor *src);
void __glUnScaleColori();
void __glClampRGBColor();
void vvec();
void __glCalcRGBColor();
void __glFogRGBColor();
void __glFogLitRGBColor();
void __glCalcCIColor();
void __glFastCalcCIColor();
void __glFogCIColor();
void __glFogLitCIColor();
void ChangeMaterialEmission();
void ChangeMaterialSpecular();
void ChangeMaterialAmbient();
void ChangeMaterialDiffuse();
void ChangeMaterialAmbientAndDiffuse();
void __glChangeOneMaterialColor();
void __glChangeBothMaterialColors();
void ComputeMaterialState();
void ComputeLightState();
void ComputeLightProcs();
void ComputeLightMaterialState();
void __glValidateMaterial();
void __glValidateLighting();
void __glGenericPickColorMaterialProcs();
void __glClipLine();
void __glFastClipSmoothLine();
void __glFastClipFlatLine();
void __glInitLineData();
void __glRenderAliasLine();
void __glRenderFlatFogLine();
void __glInitAALineData();
void __glRenderAntiAliasLine();
void __glPolygonOffsetLine();
void __glFirstLinesVertex();
void __glBeginLines();
void __glOtherLStripVertex();
void __glSecondLStripVertex();
void __glFirstLStripVertex();
void __glBeginLStrip();
void FirstLLoopVertex();
void __glEndLLoop();
void __glBeginLLoop();
void __glProcessLine();
void __glProcessLine3NW();
void __glWideLineRep();
void __glWideStippleLineRep();
void __glDrawBothLine();
void __glDrawBothStippledLine();
void __glScissorLine();
void __glScissorStippledLine();
void __glStippleLine();
void __glStencilTestLine();
void __glStencilTestStippledLine();
void __glDepthTestStippledLine();
void __glDepthTestStencilLine();
void __glDepthTestStencilStippledLine();
void __glDepthPassLine();
void __glDepthPassStippledLine();
void __glStoreLine();
void __glStoreStippledLine();
void __glAntiAliasLine();
void __glAntiAliasStippledLine();
void __gllc_Bitmap();
void __glle_Bitmap();
void __gllei_PolygonStipple();
void __gllc_PolygonStipple();
void __glle_PolygonStipple();
void __gllc_Map1f();
void __glle_Map1();
void __gllc_Map1d();
void __gllc_Map2f();
void __glle_Map2();
void __gllc_Map2d();
void __gllc_DeformationMap3fSGIX();
void __glle_DeformationMap3SGIX();
void __gllc_DeformationMap3dSGIX();
void __glle_DrawPixels();
void __gllc_DrawPixels();
void __glle_TexImage1D();
void __glle_TexImage2D();
void __gllc_TexImage1D();
void __gllc_TexImage2D();
void __glle_TexImage3DEXT();
void __gllc_TexImage3DEXT();
void __glle_TexSubImage1DEXT();
void __gllc_TexSubImage1DEXT();
void __glle_TexSubImage2DEXT();
void __gllc_TexSubImage2DEXT();
void __glle_TexSubImage3DEXT();
void __gllc_TexSubImage3DEXT();
void __glle_ConvolutionFilter1DEXT();
void __gllc_ConvolutionFilter1DEXT();
void __glle_ConvolutionFilter2DEXT();
void __gllc_ConvolutionFilter2DEXT();
void __glle_SeparableFilter2DEXT();
void __gllc_SeparableFilter2DEXT();
void __glle_TexImage4DSGIS();
void __gllc_TexImage4DSGIS();
void __glle_TexSubImage4DSGIS();
void __gllc_TexSubImage4DSGIS();
void __glle_Disable();
void __gllc_Disable();
void __glle_Enable();
void __gllc_Enable();
void __glle_DrawArraysEXT();
void __glle_DrawElements();
void __glle_ArrayElementEXT();
void __glle_ColorTableSGI();
void __gllc_ColorTableSGI();
void __gllc_DrawArraysEXT();
void __gllc_DrawElements();
void __glCopyMatrix();
void __glMakeIdentity();
void __glMultMatrix();
void __glInvertTransposeMatrix();
void __glFloorLog2();
void NewBlock();
void DeleteBlock();
void __glNewArena();
void __glDeleteArena();
void __glArenaAlloc();
void __glArenaFreeAll();
void __glNamesNewArray();
void freeLeafData();
void freeLeaf();
void freeBranch();
void __glNamesFreeTree();
void __glNamesFreeArray();
void findLeaf();
void copyLeafInfo();
void fixMemoryProblem();
void computeMax();
void pushMaxVal();
void allocLeafData();
void reallocLeafData();
void allocLeaf();
void allocBranch();
void deleteChild();
void addChild();
void splitParent();
void buildParent();
void insertLeaf();
void deleteLeaf();
void resizeLeaf();
void prevLeaf();
void firstLeaf();
void nextLeaf();
void mergeLeaves();
void mergeLeaf();
void __glNamesNewData();
void __glNamesLockData();
void __glNamesLockDataList();
void __glNamesUnlockData();
void __glNamesUnlockDataList();
void __glNamesGenRange();
void __glNamesDeleteRange();
void __glNamesIsName();
void __glNamesGenNames();
void __glNamesDeleteNames();
void __glim_Normal3d(GLdouble nx, GLdouble ny, GLdouble nz);
void __glim_Normal3dv(const GLdouble *v);
void __glim_Normal3b(GLbyte nx, GLbyte ny, GLbyte nz);
void __glim_Normal3bv(const GLbyte *v);
void __glim_Normal3s(GLshort nx, GLshort ny, GLshort nz);
void __glim_Normal3sv(const GLshort *v);
void __glim_Normal3i(GLint nx, GLint ny, GLint nz);
void __glim_Normal3iv(const GLint *v);
void __glGenericPickSpanProcs();
void __glGenericPickPointProcs();
void __glGenericPickLineProcs();
void __glGenericPickTriangleProcs();
void __glGenericPickRenderBitmapProcs();
void __glGenericPickClipProcs();
void __glGenericPickTextureProcs();
void __glGenericPickFogProcs();
void __glGenericPickBufferProcs();
void __glGenericPickPixelProcs();
void __glGenericPickTransformProcs();
void __glGenericPickDepthProcs();
void __glGenericValidate();
void __glGenericPickAllProcs();
void __glBuildAntiAliasIndex();
void Coverage();
void __glRenderAntiAliasedRGBPoint();
void __glRenderAntiAliasedCIPoint();
void __glRenderAliasedPoint1_NoTex();
void __glRenderAliasedPoint1();
void __glRenderFlatFogPoint();
void __glRenderAliasedPointN();
void __glPolygonOffsetPoint();
void __glBeginPoints();
void __glEndPoints();
void FindLineEquation();
void FindPlaneEquation();
void FindP();
void ComputeCoverageStuff();
void FillAASubTriangle();
void SetInitialParameters();
void __glFillAntiAliasedTriangle();
void clipToPlane();
void clipToPlaneEye();
void __glDoPolygonClip();
void __glClipPolygon();
void __glClipTriangle();
void FillSubTriangle();
void __glSnapXLeft();
void __glSnapXRight();
void __glComputePolygonOffset();
void __glPolygonOffsetForLineAndPoint();
void __glPolygonOffsetZ();
void __glFillTriangle();
void __glFillFlatFogTriangle();
void __glMatValidateVbuf0N();
void __glMatValidateVbuf0V1();
void __glMatValidateV1();
void __glMatValidateV1V2();
void __glMatValidateV1V2V3();
void __glMatValidateV2V3();
void OtherTFanVertex();
void SecondTFanVertex();
void FirstTFanVertex();
void __glBeginTFan();
void SecondTStripVertex();
void FirstTStripVertex();
void __glBeginTStrip();
void ThirdTrianglesVertex();
void SecondTrianglesVertex();
void FirstTrianglesVertex();
void __glBeginTriangles();
void FourthQStripVertex();
void ThirdQStripVertex();
void SecondQStripVertex();
void FirstQStripVertex();
void __glBeginQStrip();
void ThirdQuadsVertex();
void SecondQuadsVertex();
void __glFirstQuadsVertex();
void __glBeginQuads();
void PolygonVertex();
void __glEndPolygon();
void __glBeginPolygon();
void __glRenderTriangle();
void __glDontRenderTriangle();
void __glProcessSpan();
void __glProcessReplicateSpan();
void __glClipSpan();
void __glStippleSpan();
void __glStippleStippledSpan();
void __glAlphaTestSpan();
void __glAlphaTestStippledSpan();
void __glStencilTestStippledSpan();
void __glDepthTestOffsetSpan();
void __glDepthTestStippledOffsetSpan();
void __glDepthTestStencilOffsetSpan();
void __glDepthTestStencilStippledOffsetSpan();
void __glDepthPassSpan();
void __glDepthPassStippledSpan();
void __glShadeCISpan();
void __glShadeRGBASpan();
void __glFlatCISpan();
void __glFlatRGBASpan();
void __glTextureSpan();
void __glTextureStippledSpan();
void __glDitherCISpan();
void __glDitherCIStippledSpan();
void __glDitherRGBASpan();
void __glDitherRGBAStippledSpan();
void __glRoundCISpan();
void __glRoundCIStippledSpan();
void __glRoundRGBASpan();
void __glRoundRGBAStippledSpan();
void __glLogicOpSpan();
void __glLogicOpStippledSpan();
void __glMaskRGBASpan();
void __glMaskCISpan();
void __glim_Begin(GLenum mode);
void __glim_End(void);
void __glNop();
void __glEndPrim();
void __glim_UnimplementedExtension();
void __glim_RasterPos2dv(const GLdouble *v);
void __glim_RasterPos2fv(const GLfloat *v);
void __glim_RasterPos2d(GLdouble x, GLdouble y);
void __glim_RasterPos2f(GLfloat x, GLfloat y);
void __glim_RasterPos2i(GLint x, GLint y);
void __glim_RasterPos2iv(const GLint *v);
void __glim_RasterPos2s(GLshort x, GLshort y);
void __glim_RasterPos2sv(const GLshort *v);
void __glim_RasterPos3dv(const GLdouble *v);
void __glim_RasterPos3fv(const GLfloat *v);
void __glim_RasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void __glim_RasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void __glim_RasterPos3i(GLint x, GLint y, GLint z);
void __glim_RasterPos3iv(const GLint *v);
void __glim_RasterPos3s(GLshort x, GLshort y, GLshort z);
void __glim_RasterPos3sv(const GLshort *v);
void __glim_RasterPos4dv(const GLdouble *v);
void __glim_RasterPos4fv(const GLfloat *v);
void __glim_RasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glim_RasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glim_RasterPos4i(GLint x, GLint y, GLint z, GLint w);
void __glim_RasterPos4iv(const GLint *v);
void __glim_RasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glim_RasterPos4sv(const GLshort *v);
void __glRasterPos2();
void __glRasterPos3();
void __glRasterPos4();
void __glim_Rectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void __glim_Rectdv(const GLdouble *v1, const GLdouble *v2);
void __glim_Rectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void __glim_Rectfv(const GLfloat *v1, const GLfloat *v2);
void __glim_Recti(GLint x1, GLint y1, GLint x2, GLint y2);
void __glim_Rectiv(const GLint *v1, const GLint *v2);
void __glim_Rects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void __glim_Rectsv(const GLshort *v1, const GLshort *v2);
void __glRect();
void __glim_SelectBuffer(GLsizei size, GLuint *buffer);
void __glim_InitNames(void);
void __glim_LoadName(GLuint name);
void __glim_PopName(void);
void __glim_PushName(GLuint name);
void __glSelectHit();
void __glSelectTriangle();
void __glSelectLine();
void __glSelectPoint();
void __glFogiv_size();
void __glFogfv_size();
void __glLightfv_size();
void __glLightiv_size();
void __glLightModelfv_size();
void __glLightModeliv_size();
void __glMaterialfv_size();
void __glMaterialiv_size();
void __glColorTableParameterfvSGI_size();
void __glColorTableParameterivSGI_size();
void __glSpriteParameterfvSGIX_size();
void __glSpriteParameterivSGIX_size();
void __glPointParameterfvSGIS_size();
void __glPixelTransformParameterfvSGI_size();
void __glPixelTransformParameterivSGI_size();
void __glReadSpan();
void __glReturnSpan();
void __glFetchSpan();
void __glInitLUTCache();
void __glFreeLUTCache();
void __glCreateSpecLUT();
void __glFreeSpecLUT();
void FailOp();
void PassDepthFailOp();
void DepthPassOp();
void buildOpTable();
void FreeStencilBuf();
void __glValidateStencil();
void __glInitStencil8();
void __glDoStore_ASD();
void __glDoStore_AS();
void __glDoStore_AD();
void __glDoStore_SD();
void __glDoStore_A();
void __glDoStore_S();
void __glDoStore_D();
void __glDoStore();
void __glDoNullStore();
void __glDoDoubleStore();
void __glGenericPickStoreProcs();
void __glim_SubdivPatchParameterfSGIX();
void __glim_SubdivPatchParameteriSGIX();
void __glim_SubdivPatchSGIX();
void CopyVertex();
void CopyRVertex();
void NormalizedCrossProduct();
void SubdivSmoothEdge();
void SubdivRegCreaseEdge();
void SubdivIRRegCreaseEdge();
void SubdivEdge();
void PrepSmoothVertex();
void UpdateSmoothVertex();
void UpdateConicalVertex();
void PrepCreaseVertex();
void UpdateCreaseVertex();
void UpdateVertex();
void SmoothPosition();
void CreasePosition();
void FinalPosition();
void SmoothNormal();
void CreaseNormal();
void CornerNormal();
void ComputeNormal();
void InitSubdivision();
void DoRow();
void DoNormal();
void DoInterpolate();
void DoInterpolateNormal();
void DoRender();
void __glim_TexCoord1d(GLdouble s);
void __glim_TexCoord1f(GLfloat s);
void __glim_TexCoord1i(GLint s);
void __glim_TexCoord1s(GLshort s);
void __glim_TexCoord1dv(const GLdouble *v);
void __glim_TexCoord1fv(const GLfloat *v);
void __glim_TexCoord1iv(const GLint *v);
void __glim_TexCoord1sv(const GLshort *v);
void __glim_TexCoord2d(GLdouble s, GLdouble t);
void __glim_TexCoord2i(GLint s, GLint t);
void __glim_TexCoord2s(GLshort s, GLshort t);
void __glim_TexCoord2dv(const GLdouble *v);
void __glim_TexCoord2iv(const GLint *v);
void __glim_TexCoord2sv(const GLshort *v);
void __glim_TexCoord3d(GLdouble s, GLdouble t, GLdouble r);
void __glim_TexCoord3f(GLfloat s, GLfloat t, GLfloat r);
void __glim_TexCoord3i(GLint s, GLint t, GLint r);
void __glim_TexCoord3s(GLshort s, GLshort t, GLshort r);
void __glim_TexCoord3dv(const GLdouble *v);
void __glim_TexCoord3fv(const GLfloat *v);
void __glim_TexCoord3iv(const GLint *v);
void __glim_TexCoord3sv(const GLshort *v);
void __glim_TexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void __glim_TexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void __glim_TexCoord4i(GLint s, GLint t, GLint r, GLint q);
void __glim_TexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
void __glim_TexCoord4dv(const GLdouble *v);
void __glim_TexCoord4fv(const GLfloat *v);
void __glim_TexCoord4iv(const GLint *v);
void __glim_TexCoord4sv(const GLshort *v);
void __glLookUpTextureParams();
void __glLookUpTextureTexobjs();
void __glLookUpTexture();
void __glLookUpTextureObject();
void Clampf();
void __glCopyTexImage();
void __glReadTexImage();
void __glTexInitTextureObject();
void __glShareTextureObjects();
void __glEarlyInitTextureState();
void InitTextureMachine();
void __glInitTextureState();
void __glFreeTextureState();
void __glim_TexGenfv(GLenum coord, GLenum pname, const GLfloat *params);
void __glim_TexGenf(GLenum coord, GLenum pname, GLfloat param);
void __glim_TexGendv(GLenum coord, GLenum pname, const GLdouble *params);
void __glim_TexGend(GLenum coord, GLenum pname, GLdouble param);
void __glim_TexGeniv(GLenum coord, GLenum pname, const GLint *params);
void __glim_TexGeni(GLenum coord, GLenum pname, GLint param);
void __glTexGendv_size();
void __glTexGenfv_size();
void __glTexGeniv_size();
void __glim_TexParameterfv(GLenum target, GLenum pname, const GLfloat *params);
void __glim_TexParameterf(GLenum target, GLenum pname, GLfloat param);
void __glim_TexParameteriv(GLenum target, GLenum pname, const GLint *params);
void __glim_TexParameteri(GLenum target, GLenum pname, GLint param);
void __glTexParameterfv_size();
void __glTexParameteriv_size();
void __glim_TexEnvfv(GLenum target, GLenum pname, const GLfloat *params);
void __glim_TexEnvf(GLenum target, GLenum pname, GLfloat param);
void __glim_TexEnviv(GLenum target, GLenum pname, const GLint *params);
void __glim_TexEnvi(GLenum target, GLenum pname, GLint param);
void __glTexEnvfv_size();
void __glTexEnviv_size();
void __glExtractTexelL();
void __glExtractTexelLA();
void __glExtractTexelRGB();
void __glExtractTexelRGBA();
void __glExtractTexelA();
void __glExtractTexelI();
void __glExtractTexelRGB8();
void __glExtractTexelRGBA8();
void __glExtractTexelL_B();
void __glExtractTexelLA_B();
void __glExtractTexelRGB_B();
void __glExtractTexelRGBA_B();
void __glExtractTexelA_B();
void __glExtractTexelI_B();
void __glExtractTexelRGB8_B();
void __glExtractTexelRGBA8_B();
void __glExtractTexel3L();
void __glExtractTexel3LA();
void __glExtractTexel3RGB();
void __glExtractTexel3RGBA();
void __glExtractTexel3A();
void __glExtractTexel3I();
void __glExtractTexel3RGB8();
void __glExtractTexel3RGBA8();
void __glExtractTexel3L_B();
void __glExtractTexel3LA_B();
void __glExtractTexel3RGB_B();
void __glExtractTexel3RGBA_B();
void __glExtractTexel3A_B();
void __glExtractTexel3I_B();
void __glExtractTexel3RGB8_B();
void __glExtractTexel3RGBA8_B();
void IsTextureConsistent();
void __glIsTextureConsistent();
void CheckTexImageArgs();
void ComputeTexLevelSize();
void __glTexCreateProxyLevel();
void __glTexCreateLevel();
void __glInitTexImageStore();
void __glInitTexImageGet();
void __glInitTexSourceUnpack();
void __glInitTexDestPack();
void IsLegalRange();
void __glCheckTexImage1DArgs();
void __glCheckTexImage2DArgs();
void __glCheckTexImage3DArgs();
void __glCheckCopyTexImageArgs();
void __glim_TexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void __gllei_TexImage1D();
void __glim_TexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void __gllei_TexImage2D();
void __glim_TexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void __gllei_TexImage3DEXT();
void __glLoadDefaultFilterFuncSGIS();
void __glim_TexFilterFuncSGIS(GLenum target, GLenum filter, GLsizei n, const GLfloat *weights);
void __glNearestFilter1();
void __glNearestFilter2();
void __glNearestFilter3();
void __glLinearFilter1();
void __glLinearFilter2();
void __glLinearFilter3();
void __glFilter4Func();
void __glLinearFilter();
void __glNearestFilter();
void __glNMNFilter();
void __glLMNFilter();
void __glNMLFilter();
void __glLMLFilter();
void __glFilter4Func2();
void __glFilter4Func1();
void __glTextureModulateL();
void __glTextureModulateLA();
void __glTextureModulateRGB();
void __glTextureModulateRGBA();
void __glTextureModulateA();
void __glTextureModulateI();
void __glTextureDecalRGB();
void __glTextureDecalRGBA();
void __glTextureBlendL();
void __glTextureBlendLA();
void __glTextureBlendRGB();
void __glTextureBlendRGBA();
void __glTextureBlendA();
void __glTextureBlendI();
void __glTextureReplaceL();
void __glTextureReplaceLA();
void __glTextureReplaceRGB();
void __glTextureReplaceRGBA();
void __glTextureReplaceA();
void __glTextureReplaceI();
void __GL_TEXENV_CLAMP();
void __glTextureSBModulateL();
void __glTextureSBModulateLA();
void __glTextureSBModulateRGB();
void __glTextureSBModulateRGBA();
void __glTextureSBModulateA();
void __glTextureSBModulateI();
void __glTextureSBDecalRGB();
void __glTextureSBDecalRGBA();
void __glTextureSBBlendL();
void __glTextureSBBlendLA();
void __glTextureSBBlendRGB();
void __glTextureSBBlendRGBA();
void __glTextureSBBlendA();
void __glTextureSBBlendI();
void __glTextureSBReplaceL();
void __glTextureSBReplaceLA();
void __glTextureSBReplaceRGB();
void __glTextureSBReplaceRGBA();
void __glTextureSBReplaceA();
void __glTextureSBReplaceI();
void __glTextureCTModulateL();
void __glTextureCTModulateLA();
void __glTextureCTModulateRGB();
void __glTextureCTModulateRGBA();
void __glTextureCTModulateA();
void __glTextureCTModulateI();
void __glTextureCTDecalRGB();
void __glTextureCTDecalRGBA();
void __glTextureCTBlendL();
void __glTextureCTBlendLA();
void __glTextureCTBlendRGB();
void __glTextureCTBlendRGBA();
void __glTextureCTBlendA();
void __glTextureCTBlendI();
void __glTextureCTReplaceL();
void __glTextureCTReplaceLA();
void __glTextureCTReplaceRGB();
void __glTextureCTReplaceRGBA();
void __glTextureCTReplaceA();
void __glTextureCTReplaceI();
void __glNopPolygonRho();
void __glComputePolygonRho();
void __glNopLineRho();
void __glComputeLineRho();
void __glFastTextureFragment();
void __glTextureFragment();
void __glMipMapFragment();
void Dot();
void SphereGen();
void __glCalcMixedTexture();
void __glCalcSphereMap();
void __glCalcEyeLinear();
void __glCalcObjectLinear();
void __glCalcTexture();
void CheckTexSubImageArgs();
void __glInitTexSubImageStore();
void CheckTexSubImageRange();
void __glCheckTexSubImage1DArgs();
void __glCheckTexSubImage2DArgs();
void __glCheckTexSubImage3DArgs();
void __glCheckCopyTexSubImageArgs();
void __glim_TexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void __gllei_TexSubImage1DEXT();
void __glim_TexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void __gllei_TexSubImage2DEXT();
void __glim_TexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void __gllei_TexSubImage3DEXT();
void __glEmptyFreeTexObj();
void __glFreeTexObj();
void __glDisposeTexObj();
void __glim_GenTexturesEXT(GLsizei n, GLuint *textures);
void __glim_DeleteTexturesEXT(GLsizei n, const GLuint *textures);
void __glBindTexture();
void __glim_BindTextureEXT(GLenum target, GLuint texture);
void __glim_PrioritizeTexturesEXT(GLsizei n, const GLuint *textures, const GLclampf *priorities);
void IsTextureResident();
GLboolean __glim_AreTexturesResidentEXT(GLsizei n, const GLuint *textures, GLboolean *residences);
GLboolean __glim_IsTextureEXT(GLuint texture);
void __glim_CopyTexImage1DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void __glim_CopyTexImage2DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void __glim_CopyTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void __glim_CopyTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void __glim_CopyTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void __glTextureRGB_F_F_Span();
void __glTextureRGB_F_F_StippledSpan();
void __glTextureRGB_F_LML_Span();
void __glTextureRGB_F_LML_StippledSpan();
void __glTextureRGB_L_NML_Span();
void __glTextureRGB_L_NML_StippledSpan();
void __glTextureRGB_L_LML_Span();
void __glTextureRGB_L_LML_StippledSpan();
void __glTextureRGB_N_N_Span();
void __glTextureRGB_N_N_StippledSpan();
void __glTextureRGB_N_NMN_Span();
void __glTextureRGB_N_NMN_StippledSpan();
void __glim_EdgeFlag(GLboolean flag);
void __glim_EdgeFlagv(const GLboolean *flag);
void __glim_Vertex2fv(const GLfloat *v);
void __glim_Vertex3fv(const GLfloat *v);
void __glim_Vertex4fv(const GLfloat *v);
void __glim_Vertex2f(GLfloat x, GLfloat y);
void __glim_Vertex2d(GLdouble x, GLdouble y);
void __glim_Vertex2dv(const GLdouble *v);
void __glim_Vertex2i(GLint x, GLint y);
void __glim_Vertex2iv(const GLint *v);
void __glim_Vertex2s(GLshort x, GLshort y);
void __glim_Vertex2sv(const GLshort *v);
void __glim_Vertex3f(GLfloat x, GLfloat y, GLfloat z);
void __glim_Vertex3d(GLdouble x, GLdouble y, GLdouble z);
void __glim_Vertex3dv(const GLdouble *v);
void __glim_Vertex3i(GLint x, GLint y, GLint z);
void __glim_Vertex3iv(const GLint *v);
void __glim_Vertex3s(GLshort x, GLshort y, GLshort z);
void __glim_Vertex3sv(const GLshort *v);
void __glim_Vertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void __glim_Vertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void __glim_Vertex4dv(const GLdouble *v);
void __glim_Vertex4i(GLint x, GLint y, GLint z, GLint w);
void __glim_Vertex4iv(const GLint *v);
void __glim_Vertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void __glim_Vertex4sv(const GLshort *v);
void __glInitVertexArrayState();
void __glim_ArrayElementEXT(GLint i);
void __glim_DrawArraysEXT(GLenum mode, GLint first, GLsizei count);
void __glim_VertexPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_NormalPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_ColorPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_TexCoordPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_EdgeFlagPointerEXT(GLsizei stride, GLsizei count, const GLboolean *pointer);
void __glim_IndexPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void __glim_ColorPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glim_DrawElements(GLenum mode, GLsizei count, GLenum type, const void *indices);
void __glim_EdgeFlagPointer(GLsizei stride, const void *pointer);
void __glim_IndexPointer(GLenum type, GLsizei stride, const void *pointer);
void __glim_InterleavedArrays(GLenum format, GLsizei stride, const void *pointer);
void __glim_NormalPointer(GLenum type, GLsizei stride, const void *pointer);
void __glim_TexCoordPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glim_VertexPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void __glClipCheckAll2();
void __glClipCheckAll3();
void __glClipCheckAll();
void __glGenericPickVertexProcs();
void __glPickMatrixType();
void __glMultiplyMatrix();
void SetDepthRange();
void __glUpdateDepthRange();
void __glEarlyInitTransformState();
void __glInitTransformState();
void __glInvalidateSequenceNumbers();
void __glim_MatrixMode(GLenum mode);
void __glim_LoadIdentity(void);
void __glim_LoadMatrixf(const GLfloat *m);
void __glim_LoadMatrixd(const GLdouble *m);
void __glim_MultMatrixf(const GLfloat *m);
void __glim_MultMatrixd(const GLdouble *m);
void __glim_Rotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void __glim_Rotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void __glim_Scalef(GLfloat x, GLfloat y, GLfloat z);
void __glim_Scaled(GLdouble x, GLdouble y, GLdouble z);
void __glim_Translatef(GLfloat x, GLfloat y, GLfloat z);
void __glim_Translated(GLdouble x, GLdouble y, GLdouble z);
void __glim_PushMatrix(void);
void __glim_PopMatrix(void);
void __glim_Frustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glim_Ortho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void __glUpdateViewport();
void __glUpdateViewportTransform();
void __glim_Viewport(GLint x, GLint y, GLsizei width, GLsizei height);
void __glim_DepthRange(GLdouble n, GLdouble f);
void __glReadjustZCounts();
void __glim_Scissor(GLint x, GLint y, GLsizei width, GLsizei height);
void __glim_ClipPlane(GLenum plane, const GLdouble *equation);
void __glPushModelViewMatrix();
void __glPopModelViewMatrix();
void __glLoadIdentityModelViewMatrix();
void __glComputeInverseTranspose();
void __glPushProjectionMatrix();
void __glPopProjectionMatrix();
void __glLoadIdentityProjectionMatrix();
void __glPushTextureMatrix();
void __glPopTextureMatrix();
void __glLoadIdentityTextureMatrix();
void __glPushColorMatrix();
void __glPopColorMatrix();
void __glLoadIdentityColorMatrix();
void __glDoLoadMatrix();
void __glDoMultMatrix();
void __glDoRotate();
void __glScaleMatrix();
void __glDoScale();
void __glTranslateMatrix();
void __glDoTranslate();
void __glComputeClipBox();
void __glReCompute2DMatrix();
void __glGenericPickMvpMatrixProcs();
void __glGenericPickMatrixProcs();
void __glGenericPickInvTransposeProcs();
void __glPixmapAllocAccum();
void DestroySoftContext();
void __glPixmapMakeCurrent();
void Store_8();
void Store_16();
void Store_32A();
void Store_32();
void Fetch_8();
void Fetch_16();
void Fetch_32A();
void Fetch_32();
void __glPixInitRGB();
void __glPixInitCI();
void __glPixPickSpanProcs();
void __glPixPickStoreProcs();
void __gllc_ListBase();
void __gllc_Color3b();
void __gllc_Color3bv();
void __gllc_Color3d();
void __gllc_Color3dv();
void __gllc_Color3f();
void __gllc_Color3fv();
void __gllc_Color3i();
void __gllc_Color3iv();
void __gllc_Color3s();
void __gllc_Color3sv();
void __gllc_Color3ub();
void __gllc_Color3ubv();
void __gllc_Color3ui();
void __gllc_Color3uiv();
void __gllc_Color3us();
void __gllc_Color3usv();
void __gllc_Color4b();
void __gllc_Color4bv();
void __gllc_Color4d();
void __gllc_Color4dv();
void __gllc_Color4f();
void __gllc_Color4fv();
void __gllc_Color4i();
void __gllc_Color4iv();
void __gllc_Color4s();
void __gllc_Color4sv();
void __gllc_Color4ub();
void __gllc_Color4ubv();
void __gllc_Color4ui();
void __gllc_Color4uiv();
void __gllc_Color4us();
void __gllc_Color4usv();
void __gllc_EdgeFlag();
void __gllc_EdgeFlagv();
void __gllc_End();
void __gllc_Indexd();
void __gllc_Indexdv();
void __gllc_Indexf();
void __gllc_Indexfv();
void __gllc_Indexi();
void __gllc_Indexiv();
void __gllc_Indexs();
void __gllc_Indexsv();
void __gllc_Normal3b();
void __gllc_Normal3bv();
void __gllc_Normal3d();
void __gllc_Normal3dv();
void __gllc_Normal3f();
void __gllc_Normal3fv();
void __gllc_Normal3i();
void __gllc_Normal3iv();
void __gllc_Normal3s();
void __gllc_Normal3sv();
void __gllc_RasterPos2d();
void __gllc_RasterPos2dv();
void __gllc_RasterPos2f();
void __gllc_RasterPos2fv();
void __gllc_RasterPos2i();
void __gllc_RasterPos2iv();
void __gllc_RasterPos2s();
void __gllc_RasterPos2sv();
void __gllc_RasterPos3d();
void __gllc_RasterPos3dv();
void __gllc_RasterPos3f();
void __gllc_RasterPos3fv();
void __gllc_RasterPos3i();
void __gllc_RasterPos3iv();
void __gllc_RasterPos3s();
void __gllc_RasterPos3sv();
void __gllc_RasterPos4d();
void __gllc_RasterPos4dv();
void __gllc_RasterPos4f();
void __gllc_RasterPos4fv();
void __gllc_RasterPos4i();
void __gllc_RasterPos4iv();
void __gllc_RasterPos4s();
void __gllc_RasterPos4sv();
void __gllc_Rectd();
void __gllc_Rectdv();
void __gllc_Rectf();
void __gllc_Rectfv();
void __gllc_Recti();
void __gllc_Rectiv();
void __gllc_Rects();
void __gllc_Rectsv();
void __gllc_TexCoord1d();
void __gllc_TexCoord1dv();
void __gllc_TexCoord1f();
void __gllc_TexCoord1fv();
void __gllc_TexCoord1i();
void __gllc_TexCoord1iv();
void __gllc_TexCoord1s();
void __gllc_TexCoord1sv();
void __gllc_TexCoord2d();
void __gllc_TexCoord2dv();
void __gllc_TexCoord2f();
void __gllc_TexCoord2fv();
void __gllc_TexCoord2i();
void __gllc_TexCoord2iv();
void __gllc_TexCoord2s();
void __gllc_TexCoord2sv();
void __gllc_TexCoord3d();
void __gllc_TexCoord3dv();
void __gllc_TexCoord3f();
void __gllc_TexCoord3fv();
void __gllc_TexCoord3i();
void __gllc_TexCoord3iv();
void __gllc_TexCoord3s();
void __gllc_TexCoord3sv();
void __gllc_TexCoord4d();
void __gllc_TexCoord4dv();
void __gllc_TexCoord4f();
void __gllc_TexCoord4fv();
void __gllc_TexCoord4i();
void __gllc_TexCoord4iv();
void __gllc_TexCoord4s();
void __gllc_TexCoord4sv();
void __gllc_Vertex2d();
void __gllc_Vertex2dv();
void __gllc_Vertex2f();
void __gllc_Vertex2fv();
void __gllc_Vertex2i();
void __gllc_Vertex2iv();
void __gllc_Vertex2s();
void __gllc_Vertex2sv();
void __gllc_Vertex3d();
void __gllc_Vertex3dv();
void __gllc_Vertex3f();
void __gllc_Vertex3fv();
void __gllc_Vertex3i();
void __gllc_Vertex3iv();
void __gllc_Vertex3s();
void __gllc_Vertex3sv();
void __gllc_Vertex4d();
void __gllc_Vertex4dv();
void __gllc_Vertex4f();
void __gllc_Vertex4fv();
void __gllc_Vertex4i();
void __gllc_Vertex4iv();
void __gllc_Vertex4s();
void __gllc_Vertex4sv();
void __gllc_ClipPlane();
void __gllc_ColorMaterial();
void __gllc_CullFace();
void __gllc_Fogf();
void __gllc_Fogfv();
void __gllc_Fogi();
void __gllc_Fogiv();
void __gllc_FrontFace();
void __gllc_Hint();
void __gllc_Lightf();
void __gllc_Lightfv();
void __gllc_Lighti();
void __gllc_Lightiv();
void __gllc_LightModelf();
void __gllc_LightModelfv();
void __gllc_LightModeli();
void __gllc_LightModeliv();
void __gllc_LineStipple();
void __gllc_LineWidth();
void __gllc_Materialf();
void __gllc_Materialfv();
void __gllc_Materiali();
void __gllc_Materialiv();
void __gllc_PointSize();
void __gllc_PolygonMode();
void __gllc_Scissor();
void __gllc_ShadeModel();
void __gllc_TexParameterf();
void __gllc_TexParameterfv();
void __gllc_TexParameteri();
void __gllc_TexParameteriv();
void __gllc_TexEnvf();
void __gllc_TexEnvfv();
void __gllc_TexEnvi();
void __gllc_TexEnviv();
void __gllc_TexGend();
void __gllc_TexGendv();
void __gllc_TexGenf();
void __gllc_TexGenfv();
void __gllc_TexGeni();
void __gllc_TexGeniv();
void __gllc_InitNames();
void __gllc_LoadName();
void __gllc_PassThrough();
void __gllc_PopName();
void __gllc_PushName();
void __gllc_DrawBuffer();
void __gllc_Clear();
void __gllc_ClearAccum();
void __gllc_ClearIndex();
void __gllc_ClearColor();
void __gllc_ClearStencil();
void __gllc_ClearDepth();
void __gllc_StencilMask();
void __gllc_ColorMask();
void __gllc_DepthMask();
void __gllc_IndexMask();
void __gllc_Accum();
void __gllc_PopAttrib();
void __gllc_PushAttrib();
void __gllc_MapGrid1d();
void __gllc_MapGrid1f();
void __gllc_MapGrid2d();
void __gllc_MapGrid2f();
void __gllc_EvalCoord1d();
void __gllc_EvalCoord1dv();
void __gllc_EvalCoord1f();
void __gllc_EvalCoord1fv();
void __gllc_EvalCoord2d();
void __gllc_EvalCoord2dv();
void __gllc_EvalCoord2f();
void __gllc_EvalCoord2fv();
void __gllc_EvalMesh1();
void __gllc_EvalPoint1();
void __gllc_EvalMesh2();
void __gllc_EvalPoint2();
void __gllc_AlphaFunc();
void __gllc_BlendFunc();
void __gllc_LogicOp();
void __gllc_StencilFunc();
void __gllc_StencilOp();
void __gllc_DepthFunc();
void __gllc_PixelZoom();
void __gllc_PixelTransferf();
void __gllc_PixelTransferi();
void __gllc_PixelMapfv();
void __gllc_PixelMapuiv();
void __gllc_PixelMapusv();
void __gllc_ReadBuffer();
void __gllc_CopyPixels();
void __gllc_DepthRange();
void __gllc_Frustum();
void __gllc_LoadIdentity();
void __gllc_LoadMatrixf();
void __gllc_LoadMatrixd();
void __gllc_MatrixMode();
void __gllc_MultMatrixf();
void __gllc_MultMatrixd();
void __gllc_Ortho();
void __gllc_PopMatrix();
void __gllc_PushMatrix();
void __gllc_Rotated();
void __gllc_Rotatef();
void __gllc_Scaled();
void __gllc_Scalef();
void __gllc_Translated();
void __gllc_Translatef();
void __gllc_Viewport();
void __gllc_BlendColorEXT();
void __gllc_BlendEquationEXT();
void __gllc_PolygonOffsetEXT();
void __gllc_ConvolutionParameterfEXT();
void __gllc_ConvolutionParameterfvEXT();
void __gllc_ConvolutionParameteriEXT();
void __gllc_ConvolutionParameterivEXT();
void __gllc_CopyConvolutionFilter1DEXT();
void __gllc_CopyConvolutionFilter2DEXT();
void __gllc_HistogramEXT();
void __gllc_MinmaxEXT();
void __gllc_ResetHistogramEXT();
void __gllc_ResetMinmaxEXT();
void __gllc_BindTextureEXT();
void __gllc_PrioritizeTexturesEXT();
void __gllc_CopyTexImage1DEXT();
void __gllc_CopyTexImage2DEXT();
void __gllc_CopyTexSubImage1DEXT();
void __gllc_CopyTexSubImage2DEXT();
void __gllc_CopyTexSubImage3DEXT();
void __gllc_PolygonOffset();
void __gllc_Indexub();
void __gllc_Indexubv();
void __gllc_SampleMaskSGIS();
void __gllc_SamplePatternSGIS();
void __gllc_TagSampleBufferSGIX();
void __gllc_DetailTexFuncSGIS();
void __gllc_SharpenTexFuncSGIS();
void __gllc_ColorTableParameterfvSGI();
void __gllc_ColorTableParameterivSGI();
void __gllc_CopyColorTableSGI();
void __gllc_PixelTexGenSGIX();
void __gllc_SpriteParameterfSGIX();
void __gllc_SpriteParameterfvSGIX();
void __gllc_SpriteParameteriSGIX();
void __gllc_SpriteParameterivSGIX();
void __gllc_TexFilterFuncSGIS();
void __gllc_PointParameterfSGIS();
void __gllc_PointParameterfvSGIS();
void __gllc_FogFuncSGIS();
void __gllc_ReadInstrumentsSGIX();
void __gllc_StartInstrumentsSGIX();
void __gllc_StopInstrumentsSGIX();
void __gllc_ReferencePlaneSGIX();
void __gllc_FrameZoomSGIX();
void __gllc_DeformSGIX();
void __gllc_LoadIdentityDeformationMapSGIX();
void __gllc_PixelTransformSGI();
void __gllc_PixelTransformParameterfSGI();
void __gllc_PixelTransformParameterfvSGI();
void __gllc_PixelTransformParameteriSGI();
void __gllc_PixelTransformParameterivSGI();
void __gllc_SubdivPatchParameterfSGIX();
void __gllc_SubdivPatchParameteriSGIX();
void __gllc_NurbsKnots1dSGIX();
void __gllc_NurbsKnots1fSGIX();
void __gllc_NurbsKnots2dSGIX();
void __gllc_NurbsKnots2fSGIX();
void __glle_ListBase();
void __glle_Color3bv();
void __glle_Color3dv();
void __glle_Color3fv();
void __glle_Color3iv();
void __glle_Color3sv();
void __glle_Color3ubv();
void __glle_Color3uiv();
void __glle_Color3usv();
void __glle_Color4bv();
void __glle_Color4dv();
void __glle_Color4fv();
void __glle_Color4iv();
void __glle_Color4sv();
void __glle_Color4ubv();
void __glle_Color4uiv();
void __glle_Color4usv();
void __glle_EdgeFlagv();
void __glle_End();
void __glle_Indexdv();
void __glle_Indexfv();
void __glle_Indexiv();
void __glle_Indexsv();
void __glle_Normal3bv();
void __glle_Normal3dv();
void __glle_Normal3fv();
void __glle_Normal3iv();
void __glle_Normal3sv();
void __glle_RasterPos2dv();
void __glle_RasterPos2fv();
void __glle_RasterPos2iv();
void __glle_RasterPos2sv();
void __glle_RasterPos3dv();
void __glle_RasterPos3fv();
void __glle_RasterPos3iv();
void __glle_RasterPos3sv();
void __glle_RasterPos4dv();
void __glle_RasterPos4fv();
void __glle_RasterPos4iv();
void __glle_RasterPos4sv();
void __glle_Rectdv();
void __glle_Rectfv();
void __glle_Rectiv();
void __glle_Rectsv();
void __glle_TexCoord1dv();
void __glle_TexCoord1fv();
void __glle_TexCoord1iv();
void __glle_TexCoord1sv();
void __glle_TexCoord2dv();
void __glle_TexCoord2fv();
void __glle_TexCoord2iv();
void __glle_TexCoord2sv();
void __glle_TexCoord3dv();
void __glle_TexCoord3fv();
void __glle_TexCoord3iv();
void __glle_TexCoord3sv();
void __glle_TexCoord4dv();
void __glle_TexCoord4fv();
void __glle_TexCoord4iv();
void __glle_TexCoord4sv();
void __glle_Vertex2dv();
void __glle_Vertex2fv();
void __glle_Vertex2iv();
void __glle_Vertex2sv();
void __glle_Vertex3dv();
void __glle_Vertex3fv();
void __glle_Vertex3iv();
void __glle_Vertex3sv();
void __glle_Vertex4dv();
void __glle_Vertex4fv();
void __glle_Vertex4iv();
void __glle_Vertex4sv();
void __glle_ClipPlane();
void __glle_ColorMaterial();
void __glle_CullFace();
void __glle_Fogf();
void __glle_Fogfv();
void __glle_Fogi();
void __glle_Fogiv();
void __glle_FrontFace();
void __glle_Hint();
void __glle_Lightfv();
void __glle_Lightiv();
void __glle_LightModelfv();
void __glle_LightModeliv();
void __glle_LineStipple();
void __glle_LineWidth();
void __glle_Materialfv();
void __glle_Materialiv();
void __glle_PointSize();
void __glle_PolygonMode();
void __glle_Scissor();
void __glle_ShadeModel();
void __glle_TexParameterfv();
void __glle_TexParameteriv();
void __glle_TexEnvfv();
void __glle_TexEnviv();
void __glle_TexGendv();
void __glle_TexGenfv();
void __glle_TexGeniv();
void __glle_InitNames();
void __glle_LoadName();
void __glle_PassThrough();
void __glle_PopName();
void __glle_PushName();
void __glle_DrawBuffer();
void __glle_Clear();
void __glle_ClearAccum();
void __glle_ClearIndex();
void __glle_ClearColor();
void __glle_ClearStencil();
void __glle_ClearDepth();
void __glle_StencilMask();
void __glle_ColorMask();
void __glle_DepthMask();
void __glle_IndexMask();
void __glle_Accum();
void __glle_PopAttrib();
void __glle_PushAttrib();
void __glle_MapGrid1d();
void __glle_MapGrid1f();
void __glle_MapGrid2d();
void __glle_MapGrid2f();
void __glle_EvalCoord1dv();
void __glle_EvalCoord1fv();
void __glle_EvalCoord2dv();
void __glle_EvalCoord2fv();
void __glle_EvalMesh1();
void __glle_EvalPoint1();
void __glle_EvalMesh2();
void __glle_EvalPoint2();
void __glle_AlphaFunc();
void __glle_BlendFunc();
void __glle_LogicOp();
void __glle_StencilFunc();
void __glle_StencilOp();
void __glle_DepthFunc();
void __glle_PixelZoom();
void __glle_PixelTransferf();
void __glle_PixelTransferi();
void __glle_PixelMapfv();
void __glle_PixelMapuiv();
void __glle_PixelMapusv();
void __glle_ReadBuffer();
void __glle_CopyPixels();
void __glle_DepthRange();
void __glle_Frustum();
void __glle_LoadIdentity();
void __glle_LoadMatrixf();
void __glle_LoadMatrixd();
void __glle_MatrixMode();
void __glle_MultMatrixf();
void __glle_MultMatrixd();
void __glle_Ortho();
void __glle_PopMatrix();
void __glle_PushMatrix();
void __glle_Rotated();
void __glle_Rotatef();
void __glle_Scaled();
void __glle_Scalef();
void __glle_Translated();
void __glle_Translatef();
void __glle_Viewport();
void __glle_BlendColorEXT();
void __glle_BlendEquationEXT();
void __glle_PolygonOffsetEXT();
void __glle_ConvolutionParameterfEXT();
void __glle_ConvolutionParameterfvEXT();
void __glle_ConvolutionParameteriEXT();
void __glle_ConvolutionParameterivEXT();
void __glle_CopyConvolutionFilter1DEXT();
void __glle_CopyConvolutionFilter2DEXT();
void __glle_HistogramEXT();
void __glle_MinmaxEXT();
void __glle_ResetHistogramEXT();
void __glle_ResetMinmaxEXT();
void __glle_BindTextureEXT();
void __glle_PrioritizeTexturesEXT();
void __glle_CopyTexImage1DEXT();
void __glle_CopyTexImage2DEXT();
void __glle_CopyTexSubImage1DEXT();
void __glle_CopyTexSubImage2DEXT();
void __glle_CopyTexSubImage3DEXT();
void __glle_PolygonOffset();
void __glle_Indexubv();
void __glle_SampleMaskSGIS();
void __glle_SamplePatternSGIS();
void __glle_TagSampleBufferSGIX();
void __glle_DetailTexFuncSGIS();
void __glle_SharpenTexFuncSGIS();
void __glle_ColorTableParameterfvSGI();
void __glle_ColorTableParameterivSGI();
void __glle_CopyColorTableSGI();
void __glle_PixelTexGenSGIX();
void __glle_SpriteParameterfSGIX();
void __glle_SpriteParameterfvSGIX();
void __glle_SpriteParameteriSGIX();
void __glle_SpriteParameterivSGIX();
void __glle_TexFilterFuncSGIS();
void __glle_PointParameterfSGIS();
void __glle_PointParameterfvSGIS();
void __glle_FogFuncSGIS();
void __glle_ReadInstrumentsSGIX();
void __glle_StartInstrumentsSGIX();
void __glle_StopInstrumentsSGIX();
void __glle_ReferencePlaneSGIX();
void __glle_FrameZoomSGIX();
void __glle_DeformSGIX();
void __glle_LoadIdentityDeformationMapSGIX();
void __glle_PixelTransformSGI();
void __glle_PixelTransformParameterfSGI();
void __glle_PixelTransformParameterfvSGI();
void __glle_PixelTransformParameteriSGI();
void __glle_PixelTransformParameterivSGI();
void __glle_SubdivPatchParameterfSGIX();
void __glle_SubdivPatchParameteriSGIX();
void __glle_NurbsKnots1dSGIX();
void __glle_NurbsKnots1fSGIX();
void __glle_NurbsKnots2dSGIX();
void __glle_NurbsKnots2fSGIX();
void __glDrawArraysV();
void __glDrawArraysNV();
void __glDrawArraysCV();
void __glDrawArraysNCV();
void __glDrawArraysTV();
void __glDrawArraysNTV();
void __glDrawArraysCTV();
void __glDrawArraysNCTV();
void __glDrawArraysIV();
void __glDrawArraysNIV();
void __glDrawArraysCIV();
void __glDrawArraysNCIV();
void __glDrawArraysTIV();
void __glDrawArraysNTIV();
void __glDrawArraysCTIV();
void __glDrawArraysNCTIV();
void __glDrawArraysEV();
void __glDrawArraysNEV();
void __glDrawArraysCEV();
void __glDrawArraysNCEV();
void __glDrawArraysTEV();
void __glDrawArraysNTEV();
void __glDrawArraysCTEV();
void __glDrawArraysNCTEV();
void __glDrawArraysIEV();
void __glDrawArraysNIEV();
void __glDrawArraysCIEV();
void __glDrawArraysNCIEV();
void __glDrawArraysTIEV();
void __glDrawArraysNTIEV();
void __glDrawArraysCTIEV();
void __glDrawArraysNCTIEV();
void __glDrawArraysN();
void __glExpSwapToPipe4(__GLcontext *gc, ...);
void __glExpSwapAndCopy4(__GLcontext *gc, ...);
void __glExpSwapStuffAndCopy4(__GLcontext *gc, ...);
void __glDoInterpret();
void __glle_Sentinel();
void __glMipsCopyDispatch();
void __glFrac();
void __glFloor();
void glNewList(GLuint list, GLenum mode);
void glEndList(void);
void glCallList(GLuint list);
void glCallLists(GLsizei n, GLenum type, const void *lists);
void glDeleteLists(GLuint list, GLsizei range);
GLuint glGenLists(GLsizei range);
void glListBase(GLuint base);
void glBegin(GLenum mode);
void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap);
void glColor3b(GLbyte red, GLbyte green, GLbyte blue);
void glColor3bv(const GLbyte *v);
void glColor3d(GLdouble red, GLdouble green, GLdouble blue);
void glColor3dv(const GLdouble *v);
void glColor3f(GLfloat red, GLfloat green, GLfloat blue);
void glColor3fv(const GLfloat *v);
void glColor3i(GLint red, GLint green, GLint blue);
void glColor3iv(const GLint *v);
void glColor3s(GLshort red, GLshort green, GLshort blue);
void glColor3sv(const GLshort *v);
void glColor3ub(GLubyte red, GLubyte green, GLubyte blue);
void glColor3ubv(const GLubyte *v);
void glColor3ui(GLuint red, GLuint green, GLuint blue);
void glColor3uiv(const GLuint *v);
void glColor3us(GLushort red, GLushort green, GLushort blue);
void glColor3usv(const GLushort *v);
void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
void glColor4bv(const GLbyte *v);
void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
void glColor4dv(const GLdouble *v);
void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glColor4fv(const GLfloat *v);
void glColor4i(GLint red, GLint green, GLint blue, GLint alpha);
void glColor4iv(const GLint *v);
void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
void glColor4sv(const GLshort *v);
void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
void glColor4ubv(const GLubyte *v);
void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
void glColor4uiv(const GLuint *v);
void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
void glColor4usv(const GLushort *v);
void glEdgeFlag(GLboolean flag);
void glEdgeFlagv(const GLboolean *flag);
void glEnd(void);
void glIndexd(GLdouble c);
void glIndexdv(const GLdouble *c);
void glIndexf(GLfloat c);
void glIndexfv(const GLfloat *c);
void glIndexi(GLint c);
void glIndexiv(const GLint *c);
void glIndexs(GLshort c);
void glIndexsv(const GLshort *c);
void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz);
void glNormal3bv(const GLbyte *v);
void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz);
void glNormal3dv(const GLdouble *v);
void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz);
void glNormal3fv(const GLfloat *v);
void glNormal3i(GLint nx, GLint ny, GLint nz);
void glNormal3iv(const GLint *v);
void glNormal3s(GLshort nx, GLshort ny, GLshort nz);
void glNormal3sv(const GLshort *v);
void glRasterPos2d(GLdouble x, GLdouble y);
void glRasterPos2dv(const GLdouble *v);
void glRasterPos2f(GLfloat x, GLfloat y);
void glRasterPos2fv(const GLfloat *v);
void glRasterPos2i(GLint x, GLint y);
void glRasterPos2iv(const GLint *v);
void glRasterPos2s(GLshort x, GLshort y);
void glRasterPos2sv(const GLshort *v);
void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z);
void glRasterPos3dv(const GLdouble *v);
void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z);
void glRasterPos3fv(const GLfloat *v);
void glRasterPos3i(GLint x, GLint y, GLint z);
void glRasterPos3iv(const GLint *v);
void glRasterPos3s(GLshort x, GLshort y, GLshort z);
void glRasterPos3sv(const GLshort *v);
void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glRasterPos4dv(const GLdouble *v);
void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glRasterPos4fv(const GLfloat *v);
void glRasterPos4i(GLint x, GLint y, GLint z, GLint w);
void glRasterPos4iv(const GLint *v);
void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
void glRasterPos4sv(const GLshort *v);
void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
void glRectdv(const GLdouble *v1, const GLdouble *v2);
void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
void glRectfv(const GLfloat *v1, const GLfloat *v2);
void glRecti(GLint x1, GLint y1, GLint x2, GLint y2);
void glRectiv(const GLint *v1, const GLint *v2);
void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
void glRectsv(const GLshort *v1, const GLshort *v2);
void glTexCoord1d(GLdouble s);
void glTexCoord1dv(const GLdouble *v);
void glTexCoord1f(GLfloat s);
void glTexCoord1fv(const GLfloat *v);
void glTexCoord1i(GLint s);
void glTexCoord1iv(const GLint *v);
void glTexCoord1s(GLshort s);
void glTexCoord1sv(const GLshort *v);
void glTexCoord2d(GLdouble s, GLdouble t);
void glTexCoord2dv(const GLdouble *v);
void glTexCoord2f(GLfloat s, GLfloat t);
void glTexCoord2fv(const GLfloat *v);
void glTexCoord2i(GLint s, GLint t);
void glTexCoord2iv(const GLint *v);
void glTexCoord2s(GLshort s, GLshort t);
void glTexCoord2sv(const GLshort *v);
void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r);
void glTexCoord3dv(const GLdouble *v);
void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r);
void glTexCoord3fv(const GLfloat *v);
void glTexCoord3i(GLint s, GLint t, GLint r);
void glTexCoord3iv(const GLint *v);
void glTexCoord3s(GLshort s, GLshort t, GLshort r);
void glTexCoord3sv(const GLshort *v);
void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
void glTexCoord4dv(const GLdouble *v);
void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
void glTexCoord4fv(const GLfloat *v);
void glTexCoord4i(GLint s, GLint t, GLint r, GLint q);
void glTexCoord4iv(const GLint *v);
void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
void glTexCoord4sv(const GLshort *v);
void glVertex2d(GLdouble x, GLdouble y);
void glVertex2dv(const GLdouble *v);
void glVertex2f(GLfloat x, GLfloat y);
void glVertex2fv(const GLfloat *v);
void glVertex2i(GLint x, GLint y);
void glVertex2iv(const GLint *v);
void glVertex2s(GLshort x, GLshort y);
void glVertex2sv(const GLshort *v);
void glVertex3d(GLdouble x, GLdouble y, GLdouble z);
void glVertex3dv(const GLdouble *v);
void glVertex3f(GLfloat x, GLfloat y, GLfloat z);
void glVertex3fv(const GLfloat *v);
void glVertex3i(GLint x, GLint y, GLint z);
void glVertex3iv(const GLint *v);
void glVertex3s(GLshort x, GLshort y, GLshort z);
void glVertex3sv(const GLshort *v);
void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
void glVertex4dv(const GLdouble *v);
void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void glVertex4fv(const GLfloat *v);
void glVertex4i(GLint x, GLint y, GLint z, GLint w);
void glVertex4iv(const GLint *v);
void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
void glVertex4sv(const GLshort *v);
void glClipPlane(GLenum plane, const GLdouble *equation);
void glColorMaterial(GLenum face, GLenum mode);
void glCullFace(GLenum mode);
void glFogf(GLenum pname, GLfloat param);
void glFogfv(GLenum pname, const GLfloat *params);
void glFogi(GLenum pname, GLint param);
void glFogiv(GLenum pname, const GLint *params);
void glFrontFace(GLenum mode);
void glHint(GLenum target, GLenum mode);
void glLightf(GLenum light, GLenum pname, GLfloat param);
void glLightfv(GLenum light, GLenum pname, const GLfloat *params);
void glLighti(GLenum light, GLenum pname, GLint param);
void glLightiv(GLenum light, GLenum pname, const GLint *params);
void glLightModelf(GLenum pname, GLfloat param);
void glLightModelfv(GLenum pname, const GLfloat *params);
void glLightModeli(GLenum pname, GLint param);
void glLightModeliv(GLenum pname, const GLint *params);
void glLineStipple(GLint factor, GLushort pattern);
void glLineWidth(GLfloat width);
void glMaterialf(GLenum face, GLenum pname, GLfloat param);
void glMaterialfv(GLenum face, GLenum pname, const GLfloat *params);
void glMateriali(GLenum face, GLenum pname, GLint param);
void glMaterialiv(GLenum face, GLenum pname, const GLint *params);
void glPointSize(GLfloat size);
void glPolygonMode(GLenum face, GLenum mode);
void glPolygonStipple(const GLubyte *mask);
void glScissor(GLint x, GLint y, GLsizei width, GLsizei height);
void glShadeModel(GLenum mode);
void glTexParameterf(GLenum target, GLenum pname, GLfloat param);
void glTexParameterfv(GLenum target, GLenum pname, const GLfloat *params);
void glTexParameteri(GLenum target, GLenum pname, GLint param);
void glTexParameteriv(GLenum target, GLenum pname, const GLint *params);
void glTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexEnvf(GLenum target, GLenum pname, GLfloat param);
void glTexEnvfv(GLenum target, GLenum pname, const GLfloat *params);
void glTexEnvi(GLenum target, GLenum pname, GLint param);
void glTexEnviv(GLenum target, GLenum pname, const GLint *params);
void glTexGend(GLenum coord, GLenum pname, GLdouble param);
void glTexGendv(GLenum coord, GLenum pname, const GLdouble *params);
void glTexGenf(GLenum coord, GLenum pname, GLfloat param);
void glTexGenfv(GLenum coord, GLenum pname, const GLfloat *params);
void glTexGeni(GLenum coord, GLenum pname, GLint param);
void glTexGeniv(GLenum coord, GLenum pname, const GLint *params);
void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer);
void glSelectBuffer(GLsizei size, GLuint *buffer);
GLint glRenderMode(GLenum mode);
void glInitNames(void);
void glLoadName(GLuint name);
void glPassThrough(GLfloat token);
void glPopName(void);
void glPushName(GLuint name);
void glDrawBuffer(GLenum buf);
void glClear(GLbitfield mask);
void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glClearIndex(GLfloat c);
void glClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glClearStencil(GLint s);
void glClearDepth(GLdouble depth);
void glStencilMask(GLuint mask);
void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
void glDepthMask(GLboolean flag);
void glIndexMask(GLuint mask);
void glAccum(GLenum op, GLfloat value);
void glDisable(GLenum cap);
void glEnable(GLenum cap);
void glFinish(void);
void glFlush(void);
void glPopAttrib(void);
void glPushAttrib(GLbitfield mask);
void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points);
void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points);
void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points);
void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points);
void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2);
void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2);
void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
void glEvalCoord1d(GLdouble u);
void glEvalCoord1dv(const GLdouble *u);
void glEvalCoord1f(GLfloat u);
void glEvalCoord1fv(const GLfloat *u);
void glEvalCoord2d(GLdouble u, GLdouble v);
void glEvalCoord2dv(const GLdouble *u);
void glEvalCoord2f(GLfloat u, GLfloat v);
void glEvalCoord2fv(const GLfloat *u);
void glEvalMesh1(GLenum mode, GLint i1, GLint i2);
void glEvalPoint1(GLint i);
void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
void glEvalPoint2(GLint i, GLint j);
void glAlphaFunc(GLenum func, GLfloat ref);
void glBlendFunc(GLenum sfactor, GLenum dfactor);
void glLogicOp(GLenum opcode);
void glStencilFunc(GLenum func, GLint ref, GLuint mask);
void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass);
void glDepthFunc(GLenum func);
void glPixelZoom(GLfloat xfactor, GLfloat yfactor);
void glPixelTransferf(GLenum pname, GLfloat param);
void glPixelTransferi(GLenum pname, GLint param);
void glPixelStoref(GLenum pname, GLfloat param);
void glPixelStorei(GLenum pname, GLint param);
void glPixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values);
void glPixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values);
void glPixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values);
void glReadBuffer(GLenum src);
void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, void *pixels);
void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glGetBooleanv(GLenum pname, GLboolean *data);
void glGetClipPlane(GLenum plane, GLdouble *equation);
void glGetDoublev(GLenum pname, GLdouble *data);
GLenum glGetError(void);
void glGetFloatv(GLenum pname, GLfloat *data);
void glGetIntegerv(GLenum pname, GLint *data);
void glGetLightfv(GLenum light, GLenum pname, GLfloat *params);
void glGetLightiv(GLenum light, GLenum pname, GLint *params);
void glGetMapdv(GLenum target, GLenum query, GLdouble *v);
void glGetMapfv(GLenum target, GLenum query, GLfloat *v);
void glGetMapiv(GLenum target, GLenum query, GLint *v);
void glGetMaterialfv(GLenum face, GLenum pname, GLfloat *params);
void glGetMaterialiv(GLenum face, GLenum pname, GLint *params);
void glGetPixelMapfv(GLenum map, GLfloat *values);
void glGetPixelMapuiv(GLenum map, GLuint *values);
void glGetPixelMapusv(GLenum map, GLushort *values);
void glGetPolygonStipple(GLubyte *mask);
const GLubyte * glGetString(GLenum name);
void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat *params);
void glGetTexEnviv(GLenum target, GLenum pname, GLint *params);
void glGetTexGendv(GLenum coord, GLenum pname, GLdouble *params);
void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat *params);
void glGetTexGeniv(GLenum coord, GLenum pname, GLint *params);
void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, void *pixels);
void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat *params);
void glGetTexParameteriv(GLenum target, GLenum pname, GLint *params);
void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params);
void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params);
GLboolean glIsEnabled(GLenum cap);
GLboolean glIsList(GLuint list);
void glDepthRange(GLdouble n, GLdouble f);
void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glLoadIdentity(void);
void glLoadMatrixf(const GLfloat *m);
void glLoadMatrixd(const GLdouble *m);
void glMatrixMode(GLenum mode);
void glMultMatrixf(const GLfloat *m);
void glMultMatrixd(const GLdouble *m);
void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
void glPopMatrix(void);
void glPushMatrix(void);
void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
void glScaled(GLdouble x, GLdouble y, GLdouble z);
void glScalef(GLfloat x, GLfloat y, GLfloat z);
void glTranslated(GLdouble x, GLdouble y, GLdouble z);
void glTranslatef(GLfloat x, GLfloat y, GLfloat z);
void glViewport(GLint x, GLint y, GLsizei width, GLsizei height);
void glBlendColorEXT(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void glBlendEquationEXT(GLenum mode);
void glPolygonOffsetEXT(GLfloat factor, GLfloat bias);
void glTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const void *pixels);
void glTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *pixels);
void glConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *image);
void glConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *image);
void glConvolutionParameterfEXT(GLenum target, GLenum pname, GLfloat params);
void glConvolutionParameterfvEXT(GLenum target, GLenum pname, const GLfloat *params);
void glConvolutionParameteriEXT(GLenum target, GLenum pname, GLint params);
void glConvolutionParameterivEXT(GLenum target, GLenum pname, const GLint *params);
void glCopyConvolutionFilter1DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glCopyConvolutionFilter2DEXT(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
void glGetConvolutionFilterEXT(GLenum target, GLenum format, GLenum type, void *image);
void glGetConvolutionParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void glGetConvolutionParameterivEXT(GLenum target, GLenum pname, GLint *params);
void glGetSeparableFilterEXT(GLenum target, GLenum format, GLenum type, void *row, void *column, void *span);
void glSeparableFilter2DEXT(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const void *row, const void *column);
void glGetHistogramEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void glGetHistogramParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void glGetHistogramParameterivEXT(GLenum target, GLenum pname, GLint *params);
void glGetMinmaxEXT(GLenum target, GLboolean reset, GLenum format, GLenum type, void *values);
void glGetMinmaxParameterfvEXT(GLenum target, GLenum pname, GLfloat *params);
void glGetMinmaxParameterivEXT(GLenum target, GLenum pname, GLint *params);
void glHistogramEXT(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink);
void glMinmaxEXT(GLenum target, GLenum internalformat, GLboolean sink);
void glResetHistogramEXT(GLenum target);
void glResetMinmaxEXT(GLenum target);
void glTexImage3DEXT(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const void *pixels);
void glTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const void *pixels);
void glArrayElementEXT(GLint i);
void glColorPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glDrawArraysEXT(GLenum mode, GLint first, GLsizei count);
void glEdgeFlagPointerEXT(GLsizei stride, GLsizei count, const GLboolean *pointer);
void glGetPointervEXT(GLenum pname, void **params);
void glIndexPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glNormalPointerEXT(GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glTexCoordPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
void glVertexPointerEXT(GLint size, GLenum type, GLsizei stride, GLsizei count, const void *pointer);
GLboolean glAreTexturesResidentEXT(GLsizei n, const GLuint *textures, GLboolean *residences);
void glBindTextureEXT(GLenum target, GLuint texture);
void glDeleteTexturesEXT(GLsizei n, const GLuint *textures);
void glGenTexturesEXT(GLsizei n, GLuint *textures);
GLboolean glIsTextureEXT(GLuint texture);
void glPrioritizeTexturesEXT(GLsizei n, const GLuint *textures, const GLclampf *priorities);
void glCopyTexImage1DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
void glCopyTexImage2DEXT(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
void glCopyTexSubImage1DEXT(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
void glCopyTexSubImage2DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glCopyTexSubImage3DEXT(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
void glColorPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void glDisableClientState(GLenum array);
void glDrawElements(GLenum mode, GLsizei count, GLenum type, const void *indices);
void glEdgeFlagPointer(GLsizei stride, const void *pointer);
void glEnableClientState(GLenum array);
void glIndexPointer(GLenum type, GLsizei stride, const void *pointer);
void glInterleavedArrays(GLenum format, GLsizei stride, const void *pointer);
void glNormalPointer(GLenum type, GLsizei stride, const void *pointer);
void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void glVertexPointer(GLint size, GLenum type, GLsizei stride, const void *pointer);
void glPolygonOffset(GLfloat factor, GLfloat units);
void glIndexub(GLubyte c);
void glIndexubv(const GLubyte *c);
void glPopClientAttrib(void);
void glPushClientAttrib(GLbitfield mask);
void glSampleMaskSGIS();
void glSamplePatternSGIS();
void glTagSampleBufferSGIX();
void glDetailTexFuncSGIS();
void glGetDetailTexFuncSGIS();
void glSharpenTexFuncSGIS();
void glGetSharpenTexFuncSGIS();
void glColorTableSGI(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const void *table);
void glColorTableParameterfvSGI(GLenum target, GLenum pname, const GLfloat *params);
void glColorTableParameterivSGI(GLenum target, GLenum pname, const GLint *params);
void glCopyColorTableSGI(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width);
void glGetColorTableSGI(GLenum target, GLenum format, GLenum type, void *table);
void glGetColorTableParameterfvSGI(GLenum target, GLenum pname, GLfloat *params);
void glGetColorTableParameterivSGI(GLenum target, GLenum pname, GLint *params);
void glTexImage4DSGIS();
void glTexSubImage4DSGIS();
void glPixelTexGenSGIX();
void glSpriteParameterfSGIX();
void glSpriteParameterfvSGIX();
void glSpriteParameteriSGIX();
void glSpriteParameterivSGIX();
void glGetTexFilterFuncSGIS(GLenum target, GLenum filter, GLfloat *weights);
void glTexFilterFuncSGIS(GLenum target, GLenum filter, GLsizei n, const GLfloat *weights);
void glPointParameterfSGIS();
void glPointParameterfvSGIS();
void glFogFuncSGIS();
void glGetInstrumentsSGIX();
void glInstrumentsBufferSGIX();
void glPollInstrumentsSGIX();
void glReadInstrumentsSGIX();
void glStartInstrumentsSGIX();
void glStopInstrumentsSGIX();
void glFlushRasterSGIX();
void glReferencePlaneSGIX();
void glFrameZoomSGIX();
void glIglooInterfaceSGIX();
void glDeformationMap3dSGIX();
void glDeformationMap3fSGIX();
void glDeformSGIX();
void glLoadIdentityDeformationMapSGIX();
void glGetListParameterfvSGIX();
void glGetListParameterivSGIX();
void glListParameterfSGIX();
void glListParameterfvSGIX();
void glListParameteriSGIX();
void glListParameterivSGIX();
void glPixelTransformSGI();
void glPixelTransformParameterfSGI();
void glPixelTransformParameterfvSGI();
void glPixelTransformParameteriSGI();
void glPixelTransformParameterivSGI();
void glGetPixelTransformParameterfvSGI();
void glGetPixelTransformParameterivSGI();
void glSubdivPatchSGIX();
void glSubdivPatchParameterfSGIX();
void glSubdivPatchParameteriSGIX();
void glNurbsKnots1dSGIX();
void glNurbsKnots1fSGIX();
void glNurbsKnots2dSGIX();
void glNurbsKnots2fSGIX();
void glFragmentColorMaterialSGIX();
void glFragmentLightfSGIX();
void glFragmentLightfvSGIX();
void glFragmentLightiSGIX();
void glFragmentLightivSGIX();
void glFragmentLightModelfSGIX();
void glFragmentLightModelfvSGIX();
void glFragmentLightModeliSGIX();
void glFragmentLightModelivSGIX();
void glFragmentMaterialfSGIX();
void glFragmentMaterialfvSGIX();
void glFragmentMaterialiSGIX();
void glFragmentMaterialivSGIX();
void glGetFragmentLightfvSGIX();
void glGetFragmentLightivSGIX();
void glGetFragmentMaterialfvSGIX();
void glGetFragmentMaterialivSGIX();
void glLightEnviSGIX();
void glBinormal3bSGIX();
void glBinormal3bvSGIX();
void glBinormal3dSGIX();
void glBinormal3dvSGIX();
void glBinormal3fSGIX();
void glBinormal3fvSGIX();
void glBinormal3iSGIX();
void glBinormal3ivSGIX();
void glBinormal3sSGIX();
void glBinormal3svSGIX();
void glFragmentLightSpaceSGIX();
void glTangent3bSGIX();
void glTangent3bvSGIX();
void glTangent3dSGIX();
void glTangent3dvSGIX();
void glTangent3fSGIX();
void glTangent3fvSGIX();
void glTangent3iSGIX();
void glTangent3ivSGIX();
void glTangent3sSGIX();
void glTangent3svSGIX();
void glMultiTexCoord1dSGIS();
void glMultiTexCoord1dvSGIS();
void glMultiTexCoord1fSGIS();
void glMultiTexCoord1fvSGIS();
void glMultiTexCoord1iSGIS();
void glMultiTexCoord1ivSGIS();
void glMultiTexCoord1sSGIS();
void glMultiTexCoord1svSGIS();
void glMultiTexCoord2dSGIS();
void glMultiTexCoord2dvSGIS();
void glMultiTexCoord2fSGIS();
void glMultiTexCoord2fvSGIS();
void glMultiTexCoord2iSGIS();
void glMultiTexCoord2ivSGIS();
void glMultiTexCoord2sSGIS();
void glMultiTexCoord2svSGIS();
void glMultiTexCoord3dSGIS();
void glMultiTexCoord3dvSGIS();
void glMultiTexCoord3fSGIS();
void glMultiTexCoord3fvSGIS();
void glMultiTexCoord3iSGIS();
void glMultiTexCoord3ivSGIS();
void glMultiTexCoord3sSGIS();
void glMultiTexCoord3svSGIS();
void glMultiTexCoord4dSGIS();
void glMultiTexCoord4dvSGIS();
void glMultiTexCoord4fSGIS();
void glMultiTexCoord4fvSGIS();
void glMultiTexCoord4iSGIS();
void glMultiTexCoord4ivSGIS();
void glMultiTexCoord4sSGIS();
void glMultiTexCoord4svSGIS();
void glMultiTexCoordPointerSGIS();
void glSelectTextureSGIS();
void glApplyTextureSGIX();
void glTextureLightSGIX();
void glTextureMaterialSGIX();
void glFogLayersSGIX();
void glColorSubTable();
void glCopyColorSubTable();
void glDrawRangeElements();
void __glim_Color3f(GLfloat red, GLfloat green, GLfloat blue);
void __glim_Color3fv(const GLfloat *v);
void __glim_Color4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
void __glim_Color4fv(const GLfloat *v);
void __glim_Normal3f(GLfloat nx, GLfloat ny, GLfloat nz);
void __glim_Normal3fv(const GLfloat *v);
void __glim_TexCoord2f(GLfloat s, GLfloat t);
void __glim_TexCoord2fv(const GLfloat *v);
void __glEvenTStripVertex();
void __glOddTStripVertex();
void __glEvenTStripVertexFast();
void __glOddTStripVertexFast();
void __glFourthQuadsVertex();
void __glOtherLStripVertexFast();
void __glFastClipLine();
void __glSecondLinesVertex();
void __glSecondLLoopVertex();
void __glPoint();
void __glPointFast();
void __glStencilTestSpan_asm();
void __glim_MipsVertex3fv();
void __glim_MipsVertex2fv();
void __glim_MipsVertex4fv();
void __glim_MipsVertex3fvFast();
void __glim_MipsVertex2fvFast();
void __glim_MipsVertex4fvFast();
void __glim_MipsNoXFVertex3fv();
void __glim_MipsNoXFVertex2fv();
void __glim_MipsNoXFVertex4fv();
void __glim_MipsNoXFVertex3fvFast();
void __glim_MipsNoXFVertex4fvFast();
void __glim_MipsNoXFVertex2fvFast2D();
void __glValidateVertex2();
void __glValidateVertex3();
void __glValidateVertex4();
void __glValidateLitVertex2();
void __glValidateLitVertex3();
void __glValidateLitVertex4();
void __glSaveN();
void __glSaveCI();
void __glSaveC();
void __glSaveT();
void __glSaveCT();
void __glSaveNT();
void __glSaveCAll();
void __glSaveCIAll();
void __glDepthTestLine_LESS_asm();
void __glDepthTestLine_LESS_s_asm();
void __glDepthTestLine_asm();
void __glDT_NEVER();
void __glDT_LEQUAL();
void __glDT_LEQUAL_s();
void __glDT_LESS();
void __glDT_LESS_s();
void __glDT_EQUAL();
void __glDT_GREATER();
void __glDT_GREATER_s();
void __glDT_NOTEQUAL();
void __glDT_GEQUAL();
void __glDT_GEQUAL_s();
void __glDT_ALWAYS();
void __glDT_LEQUAL_M();
void __glDT_LEQUAL_M_s();
void __glDT_LESS_M();
void __glDT_LESS_M_s();
void __glDT_EQUAL_M();
void __glDT_GREATER_M();
void __glDT_GREATER_M_s();
void __glDT_NOTEQUAL_M();
void __glDT_GEQUAL_M();
void __glDT_GEQUAL_M_s();
void __glDT_ALWAYS_M();
void __glDepthTestSpan_asm();
void __glDepthTestStippledSpan_asm();
void __glDepthTestStencilSpan_asm();
void __glDepthTestStencilStippledSpan_asm();
void __glClampAndScaleColor();
void __glFastCalcRGBColor();
void __glMipsNormalize();
void __glRenderFlatTriangle();
void __glRenderFlatOneFaceTriangle();
void __glRenderSmoothTriangle();
void __glRenderSmoothOneFaceTriangle();
void __glRenderSmoothOneFaceTmesh();
void __glMipsClipCheckFrustum();
void __glMipsClipCheckFrustum_W();
void __glMipsClipCheckFrustum2D();
void __glMipsClipCheckAll2();
void __glMipsClipCheckAll3();
void __glMipsClipCheckAll();
void __glMipsXForm2_2DNRW();
void __glMipsXForm2_2DW();
void __glMipsXForm2_W();
void __glMipsXForm2();
void __glMipsXForm3_2DNRW();
void __glMipsXForm3_2DW();
void __glMipsXForm3_W();
void __glMipsXForm3AsmLink_W();
void __glMipsXForm3();
void __glMipsXForm3AsmLink();
void __glMipsXForm4_2DNRW();
void __glMipsXForm4_2DW();
void __glMipsXForm4_W();
void __glMipsXForm4();
void __glMipsMultMatrix();
