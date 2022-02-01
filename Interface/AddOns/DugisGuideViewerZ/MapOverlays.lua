local MOD = DugisGuideViewer
local _
local MapOverlays = MOD:RegisterModule("MapOverlays")
MapOverlays.essential = true
local harvestingDataMode = false

local HBDMigrate = LibStub("HereBeDragons-Migrate-Dugis")

function MapOverlays:Initialize()
	local defaults = {
		global = {
			overlayData = {
							
				[2] = {
    {
        ["offsetX"]=399,
        ["textureHeight"] = 157,
        ["textureWidth"] = 162,
        ["offsetY"] = 440,
        ["fileDataIDs"] = { 440583 } 
    },
    {
        ["offsetX"]=457,
        ["textureHeight"] = 184,
        ["textureWidth"] = 192,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 271426 } 
    },
    {
        ["offsetX"]=438,
        ["textureHeight"] = 157,
        ["textureWidth"] = 208,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271427 } 
    },
    {
        ["offsetX"]=462,
        ["textureHeight"] = 200,
        ["textureWidth"] = 210,
        ["offsetY"] = 298,
        ["fileDataIDs"] = { 271440 } 
    },
    {
        ["offsetX"]=295,
        ["textureHeight"] = 218,
        ["textureWidth"] = 220,
        ["offsetY"] = 48,
        ["fileDataIDs"] = { 271439 } 
    },
    {
        ["offsetX"]=431,
        ["textureHeight"] = 227,
        ["textureWidth"] = 224,
        ["offsetY"] = 157,
        ["fileDataIDs"] = { 271421 } 
    },
    {
        ["offsetX"]=415,
        ["textureHeight"] = 196,
        ["textureWidth"] = 236,
        ["offsetY"] = 60,
        ["fileDataIDs"] = { 271428 } 
    },
    {
        ["offsetX"]=282,
        ["textureHeight"] = 222,
        ["textureWidth"] = 244,
        ["offsetY"] = 174,
        ["fileDataIDs"] = { 440584 } 
    },
    {
        ["offsetX"]=302,
        ["textureHeight"] = 158,
        ["textureWidth"] = 248,
        ["offsetY"] = 264,
        ["fileDataIDs"] = { 271422 } 
    },
    {
        ["offsetX"]=304,
        ["textureHeight"] = 258,
        ["textureWidth"] = 254,
        ["offsetY"] = 312,
        ["fileDataIDs"] = { 271443,440585 } 
    },
    {
        ["offsetX"]=309,
        ["textureHeight"] = 165,
        ["textureWidth"] = 259,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271435,271442 } 
    },
    {
        ["offsetX"]=429,
        ["textureHeight"] = 255,
        ["textureWidth"] = 330,
        ["offsetY"] = 413,
        ["fileDataIDs"] = { 271437,440582 } 
    }
},
[8] = {
    {
        ["offsetX"]=248,
        ["textureHeight"] = 205,
        ["textureWidth"] = 172,
        ["offsetY"] = 321,
        ["fileDataIDs"] = { 272176 } 
    },
    {
        ["offsetX"]=449,
        ["textureHeight"] = 185,
        ["textureWidth"] = 174,
        ["offsetY"] = 340,
        ["fileDataIDs"] = { 272180 } 
    },
    {
        ["offsetX"]=514,
        ["textureHeight"] = 185,
        ["textureWidth"] = 186,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 272169 } 
    },
    {
        ["offsetX"]=448,
        ["textureHeight"] = 216,
        ["textureWidth"] = 186,
        ["offsetY"] = 101,
        ["fileDataIDs"] = { 272177 } 
    },
    {
        ["offsetX"]=435,
        ["textureHeight"] = 165,
        ["textureWidth"] = 187,
        ["offsetY"] = 224,
        ["fileDataIDs"] = { 272185 } 
    },
    {
        ["offsetX"]=331,
        ["textureHeight"] = 172,
        ["textureWidth"] = 190,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272172 } 
    },
    {
        ["offsetX"]=333,
        ["textureHeight"] = 167,
        ["textureWidth"] = 201,
        ["offsetY"] = 202,
        ["fileDataIDs"] = { 272178 } 
    },
    {
        ["offsetX"]=530,
        ["textureHeight"] = 300,
        ["textureWidth"] = 208,
        ["offsetY"] = 138,
        ["fileDataIDs"] = { 272186,457475 } 
    },
    {
        ["offsetX"]=226,
        ["textureHeight"] = 192,
        ["textureWidth"] = 218,
        ["offsetY"] = 220,
        ["fileDataIDs"] = { 272181 } 
    },
    {
        ["offsetX"]=400,
        ["textureHeight"] = 202,
        ["textureWidth"] = 222,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272179 } 
    },
    {
        ["offsetX"]=201,
        ["textureHeight"] = 184,
        ["textureWidth"] = 237,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 457473 } 
    },
    {
        ["offsetX"]=527,
        ["textureHeight"] = 243,
        ["textureWidth"] = 260,
        ["offsetY"] = 291,
        ["fileDataIDs"] = { 272170,457474 } 
    },
    {
        ["offsetX"]=319,
        ["textureHeight"] = 223,
        ["textureWidth"] = 302,
        ["offsetY"] = 273,
        ["fileDataIDs"] = { 272173,457470 } 
    },
    {
        ["offsetX"]=208,
        ["textureHeight"] = 259,
        ["textureWidth"] = 373,
        ["offsetY"] = 62,
        ["fileDataIDs"] = { 272187,272171,457476,457477 } 
    },
    {
        ["offsetX"]=286,
        ["textureHeight"] = 264,
        ["textureWidth"] = 446,
        ["offsetY"] = 401,
        ["fileDataIDs"] = { 272168,272165,457471,457472 } 
    }
},
[11] = {
    {
        ["offsetX"]=555,
        ["textureHeight"] = 332,
        ["textureWidth"] = 207,
        ["offsetY"] = 129,
        ["fileDataIDs"] = { 270569,438215 } 
    },
    {
        ["offsetX"]=547,
        ["textureHeight"] = 175,
        ["textureWidth"] = 219,
        ["offsetY"] = 379,
        ["fileDataIDs"] = { 270585 } 
    },
    {
        ["offsetX"]=362,
        ["textureHeight"] = 193,
        ["textureWidth"] = 233,
        ["offsetY"] = 275,
        ["fileDataIDs"] = { 270559 } 
    },
    {
        ["offsetX"]=481,
        ["textureHeight"] = 231,
        ["textureWidth"] = 239,
        ["offsetY"] = 254,
        ["fileDataIDs"] = { 270574 } 
    },
    {
        ["offsetX"]=290,
        ["textureHeight"] = 195,
        ["textureWidth"] = 241,
        ["offsetY"] = 104,
        ["fileDataIDs"] = { 270554 } 
    },
    {
        ["offsetX"]=448,
        ["textureHeight"] = 217,
        ["textureWidth"] = 243,
        ["offsetY"] = 127,
        ["fileDataIDs"] = { 270584 } 
    },
    {
        ["offsetX"]=403,
        ["textureHeight"] = 249,
        ["textureWidth"] = 257,
        ["offsetY"] = 6,
        ["fileDataIDs"] = { 270564,438223 } 
    },
    {
        ["offsetX"]=258,
        ["textureHeight"] = 216,
        ["textureWidth"] = 261,
        ["offsetY"] = 6,
        ["fileDataIDs"] = { 438216,438217 } 
    },
    {
        ["offsetX"]=511,
        ["textureHeight"] = 209,
        ["textureWidth"] = 278,
        ["offsetY"] = 7,
        ["fileDataIDs"] = { 270553,438214 } 
    },
    {
        ["offsetX"]=116,
        ["textureHeight"] = 270,
        ["textureWidth"] = 283,
        ["offsetY"] = 57,
        ["fileDataIDs"] = { 270572,438218,438219,438220 } 
    },
    {
        ["offsetX"]=556,
        ["textureHeight"] = 212,
        ["textureWidth"] = 315,
        ["offsetY"] = 456,
        ["fileDataIDs"] = { 270573,438222 } 
    },
    {
        ["offsetX"]=344,
        ["textureHeight"] = 289,
        ["textureWidth"] = 336,
        ["offsetY"] = 379,
        ["fileDataIDs"] = { 270565,438224,438225,438226 } 
    },
    {
        ["offsetX"]=152,
        ["textureHeight"] = 325,
        ["textureWidth"] = 377,
        ["offsetY"] = 318,
        ["fileDataIDs"] = { 438227,438228,438229,438230 } 
    },
    {
        ["offsetX"]=100,
        ["textureHeight"] = 256,
        ["textureWidth"] = 446,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 270560,438221 } 
    }
},
[15] = {
    {
        ["offsetX"]=506,
        ["textureHeight"] = 238,
        ["textureWidth"] = 183,
        ["offsetY"] = 126,
        ["fileDataIDs"] = { 270360 } 
    },
    {
        ["offsetX"]=293,
        ["textureHeight"] = 270,
        ["textureWidth"] = 196,
        ["offsetY"] = 145,
        ["fileDataIDs"] = { 270352,438180 } 
    },
    {
        ["offsetX"]=404,
        ["textureHeight"] = 227,
        ["textureWidth"] = 210,
        ["offsetY"] = 144,
        ["fileDataIDs"] = { 270350 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 305,
        ["textureWidth"] = 212,
        ["offsetY"] = 144,
        ["fileDataIDs"] = { 438173,438174 } 
    },
    {
        ["offsetX"]=332,
        ["textureHeight"] = 188,
        ["textureWidth"] = 215,
        ["offsetY"] = 273,
        ["fileDataIDs"] = { 438169 } 
    },
    {
        ["offsetX"]=85,
        ["textureHeight"] = 287,
        ["textureWidth"] = 220,
        ["offsetY"] = 24,
        ["fileDataIDs"] = { 270347,438168 } 
    },
    {
        ["offsetX"]=132,
        ["textureHeight"] = 268,
        ["textureWidth"] = 227,
        ["offsetY"] = 105,
        ["fileDataIDs"] = { 270351,438179 } 
    },
    {
        ["offsetX"]=201,
        ["textureHeight"] = 227,
        ["textureWidth"] = 228,
        ["offsetY"] = 312,
        ["fileDataIDs"] = { 270346 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 252,
        ["textureWidth"] = 237,
        ["offsetY"] = 416,
        ["fileDataIDs"] = { 270348 } 
    },
    {
        ["offsetX"]=171,
        ["textureHeight"] = 278,
        ["textureWidth"] = 249,
        ["offsetY"] = 123,
        ["fileDataIDs"] = { 270349,438167 } 
    },
    {
        ["offsetX"]=327,
        ["textureHeight"] = 258,
        ["textureWidth"] = 252,
        ["offsetY"] = 367,
        ["fileDataIDs"] = { 270342,438166 } 
    },
    {
        ["offsetX"]=476,
        ["textureHeight"] = 220,
        ["textureWidth"] = 260,
        ["offsetY"] = 359,
        ["fileDataIDs"] = { 270353,438184 } 
    },
    {
        ["offsetX"]=581,
        ["textureHeight"] = 271,
        ["textureWidth"] = 270,
        ["offsetY"] = 118,
        ["fileDataIDs"] = { 270336,438176,438177,438178 } 
    },
    {
        ["offsetX"]=77,
        ["textureHeight"] = 268,
        ["textureWidth"] = 273,
        ["offsetY"] = 400,
        ["fileDataIDs"] = { 270361,438170,438171,438172 } 
    },
    {
        ["offsetX"]=21,
        ["textureHeight"] = 306,
        ["textureWidth"] = 284,
        ["offsetY"] = 269,
        ["fileDataIDs"] = { 270358,438181,438182,438183 } 
    },
    {
        ["offsetX"]=430,
        ["textureHeight"] = 248,
        ["textureWidth"] = 306,
        ["offsetY"] = 249,
        ["fileDataIDs"] = { 270343,438175 } 
    }
},
[16] = {
    {
        ["offsetX"]=411,
        ["textureHeight"] = 196,
        ["textureWidth"] = 209,
        ["offsetY"] = 116,
        ["fileDataIDs"] = { 270532 } 
    },
    {
        ["offsetX"]=144,
        ["textureHeight"] = 285,
        ["textureWidth"] = 214,
        ["offsetY"] = 99,
        ["fileDataIDs"] = { 270525,270521 } 
    },
    {
        ["offsetX"]=504,
        ["textureHeight"] = 260,
        ["textureWidth"] = 236,
        ["offsetY"] = 19,
        ["fileDataIDs"] = { 270530,442231 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 353,
        ["textureWidth"] = 252,
        ["offsetY"] = 66,
        ["fileDataIDs"] = { 270529,442225 } 
    },
    {
        ["offsetX"]=336,
        ["textureHeight"] = 210,
        ["textureWidth"] = 266,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 442238,442239 } 
    },
    {
        ["offsetX"]=407,
        ["textureHeight"] = 448,
        ["textureWidth"] = 274,
        ["offsetY"] = 220,
        ["fileDataIDs"] = { 270540,270527,442226,442227 } 
    },
    {
        ["offsetX"]=230,
        ["textureHeight"] = 223,
        ["textureWidth"] = 285,
        ["offsetY"] = 68,
        ["fileDataIDs"] = { 270543,442224 } 
    },
    {
        ["offsetX"]=175,
        ["textureHeight"] = 313,
        ["textureWidth"] = 328,
        ["offsetY"] = 178,
        ["fileDataIDs"] = { 442232,442233,442234,442235 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 347,
        ["textureWidth"] = 339,
        ["offsetY"] = 281,
        ["fileDataIDs"] = { 270520,442228,442229,442230 } 
    },
    {
        ["offsetX"]=230,
        ["textureHeight"] = 353,
        ["textureWidth"] = 342,
        ["offsetY"] = 315,
        ["fileDataIDs"] = { 270522,270550,270528,270536 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 613,
        ["textureWidth"] = 469,
        ["offsetY"] = 55,
        ["fileDataIDs"] = { 270534,270551,270546,270535,442236,442237 } 
    }
},
[18] = {
    {
        ["offsetX"]=375,
        ["textureHeight"] = 170,
        ["textureWidth"] = 168,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 391431 } 
    },
    {
        ["offsetX"]=436,
        ["textureHeight"] = 199,
        ["textureWidth"] = 195,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438233 } 
    },
    {
        ["offsetX"]=333,
        ["textureHeight"] = 191,
        ["textureWidth"] = 199,
        ["offsetY"] = 474,
        ["fileDataIDs"] = { 438238 } 
    },
    {
        ["offsetX"]=459,
        ["textureHeight"] = 183,
        ["textureWidth"] = 218,
        ["offsetY"] = 97,
        ["fileDataIDs"] = { 391430 } 
    },
    {
        ["offsetX"]=386,
        ["textureHeight"] = 266,
        ["textureWidth"] = 233,
        ["offsetY"] = 374,
        ["fileDataIDs"] = { 438236,438237 } 
    },
    {
        ["offsetX"]=327,
        ["textureHeight"] = 188,
        ["textureWidth"] = 235,
        ["offsetY"] = 182,
        ["fileDataIDs"] = { 391434 } 
    },
    {
        ["offsetX"]=225,
        ["textureHeight"] = 195,
        ["textureWidth"] = 238,
        ["offsetY"] = 110,
        ["fileDataIDs"] = { 391425 } 
    },
    {
        ["offsetX"]=578,
        ["textureHeight"] = 270,
        ["textureWidth"] = 240,
        ["offsetY"] = 91,
        ["fileDataIDs"] = { 438234,438235 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 354,
        ["textureWidth"] = 268,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 438243,438244,438245,438246 } 
    },
    {
        ["offsetX"]=258,
        ["textureHeight"] = 206,
        ["textureWidth"] = 272,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 391435,438231 } 
    },
    {
        ["offsetX"]=530,
        ["textureHeight"] = 205,
        ["textureWidth"] = 295,
        ["offsetY"] = 6,
        ["fileDataIDs"] = { 391432,438232 } 
    },
    {
        ["offsetX"]=144,
        ["textureHeight"] = 226,
        ["textureWidth"] = 308,
        ["offsetY"] = 175,
        ["fileDataIDs"] = { 391429,391428 } 
    },
    {
        ["offsetX"]=132,
        ["textureHeight"] = 357,
        ["textureWidth"] = 348,
        ["offsetY"] = 311,
        ["fileDataIDs"] = { 438247,438248,438249,438250 } 
    },
    {
        ["offsetX"]=368,
        ["textureHeight"] = 298,
        ["textureWidth"] = 370,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 438239,438240,438241,438242 } 
    }
},
[19] = {
    {
        ["offsetX"]=692,
        ["textureHeight"] = 234,
        ["textureWidth"] = 161,
        ["offsetY"] = 99,
        ["fileDataIDs"] = { 272996 } 
    },
    {
        ["offsetX"]=686,
        ["textureHeight"] = 210,
        ["textureWidth"] = 175,
        ["offsetY"] = 232,
        ["fileDataIDs"] = { 273000 } 
    },
    {
        ["offsetX"]=389,
        ["textureHeight"] = 169,
        ["textureWidth"] = 179,
        ["offsetY"] = 255,
        ["fileDataIDs"] = { 440917 } 
    },
    {
        ["offsetX"]=477,
        ["textureHeight"] = 214,
        ["textureWidth"] = 190,
        ["offsetY"] = 129,
        ["fileDataIDs"] = { 273020 } 
    },
    {
        ["offsetX"]=480,
        ["textureHeight"] = 182,
        ["textureWidth"] = 199,
        ["offsetY"] = 252,
        ["fileDataIDs"] = { 273015 } 
    },
    {
        ["offsetX"]=573,
        ["textureHeight"] = 292,
        ["textureWidth"] = 210,
        ["offsetY"] = 122,
        ["fileDataIDs"] = { 273009,273002 } 
    },
    {
        ["offsetX"]=418,
        ["textureHeight"] = 177,
        ["textureWidth"] = 212,
        ["offsetY"] = 317,
        ["fileDataIDs"] = { 273016 } 
    },
    {
        ["offsetX"]=347,
        ["textureHeight"] = 281,
        ["textureWidth"] = 225,
        ["offsetY"] = 325,
        ["fileDataIDs"] = { 273003,440921 } 
    },
    {
        ["offsetX"]=594,
        ["textureHeight"] = 179,
        ["textureWidth"] = 242,
        ["offsetY"] = 324,
        ["fileDataIDs"] = { 273006 } 
    },
    {
        ["offsetX"]=752,
        ["textureHeight"] = 279,
        ["textureWidth"] = 250,
        ["offsetY"] = 150,
        ["fileDataIDs"] = { 272999,440935 } 
    },
    {
        ["offsetX"]=740,
        ["textureHeight"] = 262,
        ["textureWidth"] = 262,
        ["offsetY"] = 47,
        ["fileDataIDs"] = { 440926,440927,440928,440929 } 
    },
    {
        ["offsetX"]=324,
        ["textureHeight"] = 260,
        ["textureWidth"] = 285,
        ["offsetY"] = 90,
        ["fileDataIDs"] = { 273019,440914,440915,440916 } 
    },
    {
        ["offsetX"]=201,
        ["textureHeight"] = 225,
        ["textureWidth"] = 286,
        ["offsetY"] = 192,
        ["fileDataIDs"] = { 273017,440930 } 
    },
    {
        ["offsetX"]=709,
        ["textureHeight"] = 338,
        ["textureWidth"] = 293,
        ["offsetY"] = 330,
        ["fileDataIDs"] = { 440931,440932,440933,440934 } 
    },
    {
        ["offsetX"]=423,
        ["textureHeight"] = 267,
        ["textureWidth"] = 390,
        ["offsetY"] = 359,
        ["fileDataIDs"] = { 440922,440923,440924,440925 } 
    },
    {
        ["offsetX"]=9,
        ["textureHeight"] = 407,
        ["textureWidth"] = 431,
        ["offsetY"] = 207,
        ["fileDataIDs"] = { 273001,440918,440919,440920 } 
    }
},
[22] = {
    {
        ["offsetX"]=433,
        ["textureHeight"] = 189,
        ["textureWidth"] = 152,
        ["offsetY"] = 327,
        ["fileDataIDs"] = { 440742 } 
    },
    {
        ["offsetX"]=461,
        ["textureHeight"] = 172,
        ["textureWidth"] = 162,
        ["offsetY"] = 77,
        ["fileDataIDs"] = { 440744 } 
    },
    {
        ["offsetX"]=323,
        ["textureHeight"] = 199,
        ["textureWidth"] = 174,
        ["offsetY"] = 68,
        ["fileDataIDs"] = { 440735 } 
    },
    {
        ["offsetX"]=471,
        ["textureHeight"] = 152,
        ["textureWidth"] = 176,
        ["offsetY"] = 156,
        ["fileDataIDs"] = { 440741 } 
    },
    {
        ["offsetX"]=337,
        ["textureHeight"] = 165,
        ["textureWidth"] = 179,
        ["offsetY"] = 337,
        ["fileDataIDs"] = { 272613 } 
    },
    {
        ["offsetX"]=369,
        ["textureHeight"] = 238,
        ["textureWidth"] = 186,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440734 } 
    },
    {
        ["offsetX"]=483,
        ["textureHeight"] = 198,
        ["textureWidth"] = 217,
        ["offsetY"] = 212,
        ["fileDataIDs"] = { 272598 } 
    },
    {
        ["offsetX"]=341,
        ["textureHeight"] = 200,
        ["textureWidth"] = 218,
        ["offsetY"] = 157,
        ["fileDataIDs"] = { 272620 } 
    },
    {
        ["offsetX"]=236,
        ["textureHeight"] = 172,
        ["textureWidth"] = 227,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272610 } 
    },
    {
        ["offsetX"]=312,
        ["textureHeight"] = 167,
        ["textureWidth"] = 251,
        ["offsetY"] = 249,
        ["fileDataIDs"] = { 272616 } 
    },
    {
        ["offsetX"]=349,
        ["textureHeight"] = 180,
        ["textureWidth"] = 255,
        ["offsetY"] = 429,
        ["fileDataIDs"] = { 440740 } 
    },
    {
        ["offsetX"]=147,
        ["textureHeight"] = 345,
        ["textureWidth"] = 281,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440736,440737,440738,440739 } 
    },
    {
        ["offsetX"]=509,
        ["textureHeight"] = 243,
        ["textureWidth"] = 283,
        ["offsetY"] = 250,
        ["fileDataIDs"] = { 272614,440725 } 
    },
    {
        ["offsetX"]=505,
        ["textureHeight"] = 263,
        ["textureWidth"] = 318,
        ["offsetY"] = 405,
        ["fileDataIDs"] = { 272599,440726,440727,440728 } 
    },
    {
        ["offsetX"]=581,
        ["textureHeight"] = 302,
        ["textureWidth"] = 352,
        ["offsetY"] = 15,
        ["fileDataIDs"] = { 272600,440729,440730,440731 } 
    },
    {
        ["offsetX"]=445,
        ["textureHeight"] = 175,
        ["textureWidth"] = 361,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440732,440733 } 
    },
    {
        ["offsetX"]=318,
        ["textureHeight"] = 162,
        ["textureWidth"] = 409,
        ["offsetY"] = 506,
        ["fileDataIDs"] = { 272609,440743 } 
    }
},
[23] = {
    {
        ["offsetX"]=472,
        ["textureHeight"] = 195,
        ["textureWidth"] = 169,
        ["offsetY"] = 332,
        ["fileDataIDs"] = { 273102 } 
    },
    {
        ["offsetX"]=551,
        ["textureHeight"] = 230,
        ["textureWidth"] = 185,
        ["offsetY"] = 151,
        ["fileDataIDs"] = { 273121 } 
    },
    {
        ["offsetX"]=601,
        ["textureHeight"] = 208,
        ["textureWidth"] = 194,
        ["offsetY"] = 390,
        ["fileDataIDs"] = { 273107 } 
    },
    {
        ["offsetX"]=229,
        ["textureHeight"] = 212,
        ["textureWidth"] = 241,
        ["offsetY"] = 228,
        ["fileDataIDs"] = { 273113 } 
    },
    {
        ["offsetX"]=495,
        ["textureHeight"] = 252,
        ["textureWidth"] = 241,
        ["offsetY"] = 213,
        ["fileDataIDs"] = { 273094 } 
    },
    {
        ["offsetX"]=286,
        ["textureHeight"] = 133,
        ["textureWidth"] = 290,
        ["offsetY"] = 211,
        ["fileDataIDs"] = { 441018,441019 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 436,
        ["textureWidth"] = 311,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 273122,273103,441023,441024 } 
    },
    {
        ["offsetX"]=48,
        ["textureHeight"] = 316,
        ["textureWidth"] = 316,
        ["offsetY"] = 235,
        ["fileDataIDs"] = { 273120,441020,441021,441022 } 
    },
    {
        ["offsetX"]=300,
        ["textureHeight"] = 192,
        ["textureWidth"] = 325,
        ["offsetY"] = 232,
        ["fileDataIDs"] = { 441015,441016 } 
    },
    {
        ["offsetX"]=231,
        ["textureHeight"] = 182,
        ["textureWidth"] = 359,
        ["offsetY"] = 123,
        ["fileDataIDs"] = { 273114,441017 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 220,
        ["textureWidth"] = 368,
        ["offsetY"] = 448,
        ["fileDataIDs"] = { 273108,273101 } 
    },
    {
        ["offsetX"]=235,
        ["textureHeight"] = 271,
        ["textureWidth"] = 432,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 273095,273111,273100,273090 } 
    },
    {
        ["offsetX"]=96,
        ["textureHeight"] = 325,
        ["textureWidth"] = 464,
        ["offsetY"] = 343,
        ["fileDataIDs"] = { 441011,441012,441013,441014 } 
    },
    {
        ["offsetX"]=510,
        ["textureHeight"] = 314,
        ["textureWidth"] = 492,
        ["offsetY"] = 354,
        ["fileDataIDs"] = { 273119,273092,273112,273093 } 
    }
},
[24] = {
    {
        ["offsetX"]=595,
        ["textureHeight"] = 266,
        ["textureWidth"] = 177,
        ["offsetY"] = 263,
        ["fileDataIDs"] = { 271543,271530 } 
    },
    {
        ["offsetX"]=541,
        ["textureHeight"] = 176,
        ["textureWidth"] = 181,
        ["offsetY"] = 184,
        ["fileDataIDs"] = { 271542 } 
    },
    {
        ["offsetX"]=383,
        ["textureHeight"] = 320,
        ["textureWidth"] = 182,
        ["offsetY"] = 348,
        ["fileDataIDs"] = { 442692,442693 } 
    },
    {
        ["offsetX"]=493,
        ["textureHeight"] = 213,
        ["textureWidth"] = 186,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 271544 } 
    },
    {
        ["offsetX"]=687,
        ["textureHeight"] = 220,
        ["textureWidth"] = 196,
        ["offsetY"] = 271,
        ["fileDataIDs"] = { 271533 } 
    },
    {
        ["offsetX"]=258,
        ["textureHeight"] = 191,
        ["textureWidth"] = 202,
        ["offsetY"] = 351,
        ["fileDataIDs"] = { 271548 } 
    },
    {
        ["offsetX"]=133,
        ["textureHeight"] = 202,
        ["textureWidth"] = 202,
        ["offsetY"] = 335,
        ["fileDataIDs"] = { 271551 } 
    },
    {
        ["offsetX"]=651,
        ["textureHeight"] = 254,
        ["textureWidth"] = 214,
        ["offsetY"] = 414,
        ["fileDataIDs"] = { 271553 } 
    },
    {
        ["offsetX"]=774,
        ["textureHeight"] = 273,
        ["textureWidth"] = 228,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 442674,442675 } 
    },
    {
        ["offsetX"]=382,
        ["textureHeight"] = 231,
        ["textureWidth"] = 238,
        ["offsetY"] = 151,
        ["fileDataIDs"] = { 271523 } 
    },
    {
        ["offsetX"]=391,
        ["textureHeight"] = 162,
        ["textureWidth"] = 243,
        ["offsetY"] = 271,
        ["fileDataIDs"] = { 442677 } 
    },
    {
        ["offsetX"]=211,
        ["textureHeight"] = 206,
        ["textureWidth"] = 248,
        ["offsetY"] = 462,
        ["fileDataIDs"] = { 271514 } 
    },
    {
        ["offsetX"]=401,
        ["textureHeight"] = 192,
        ["textureWidth"] = 250,
        ["offsetY"] = 69,
        ["fileDataIDs"] = { 271521 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 320,
        ["textureWidth"] = 258,
        ["offsetY"] = 10,
        ["fileDataIDs"] = { 271522,442685,442686,442687 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 526,
        ["textureWidth"] = 262,
        ["offsetY"] = 100,
        ["fileDataIDs"] = { 271538,271513,442695,442696,442697,442698 } 
    },
    {
        ["offsetX"]=738,
        ["textureHeight"] = 373,
        ["textureWidth"] = 264,
        ["offsetY"] = 295,
        ["fileDataIDs"] = { 442680,442681,442682,442683 } 
    },
    {
        ["offsetX"]=570,
        ["textureHeight"] = 232,
        ["textureWidth"] = 265,
        ["offsetY"] = 61,
        ["fileDataIDs"] = { 271520,442678 } 
    },
    {
        ["offsetX"]=462,
        ["textureHeight"] = 241,
        ["textureWidth"] = 266,
        ["offsetY"] = 427,
        ["fileDataIDs"] = { 271532,442676 } 
    },
    {
        ["offsetX"]=183,
        ["textureHeight"] = 216,
        ["textureWidth"] = 274,
        ["offsetY"] = 211,
        ["fileDataIDs"] = { 271536,442688 } 
    },
    {
        ["offsetX"]=351,
        ["textureHeight"] = 175,
        ["textureWidth"] = 277,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271535,442679 } 
    },
    {
        ["offsetX"]=56,
        ["textureHeight"] = 211,
        ["textureWidth"] = 280,
        ["offsetY"] = 457,
        ["fileDataIDs"] = { 271512,442694 } 
    },
    {
        ["offsetX"]=528,
        ["textureHeight"] = 176,
        ["textureWidth"] = 286,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271554,442699 } 
    },
    {
        ["offsetX"]=650,
        ["textureHeight"] = 299,
        ["textureWidth"] = 297,
        ["offsetY"] = 55,
        ["fileDataIDs"] = { 271537,442689,442690,442691 } 
    },
    {
        ["offsetX"]=118,
        ["textureHeight"] = 178,
        ["textureWidth"] = 310,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271529,442684 } 
    },
    {
        ["offsetX"]=144,
        ["textureHeight"] = 253,
        ["textureWidth"] = 328,
        ["offsetY"] = 40,
        ["fileDataIDs"] = { 271518,271527 } 
    }
},
[26] = {
    {
        ["offsetX"]=390,
        ["textureHeight"] = 148,
        ["textureWidth"] = 105,
        ["offsetY"] = 255,
        ["fileDataIDs"] = { 450678 } 
    },
    {
        ["offsetX"]=344,
        ["textureHeight"] = 129,
        ["textureWidth"] = 116,
        ["offsetY"] = 254,
        ["fileDataIDs"] = { 450649 } 
    },
    {
        ["offsetX"]=463,
        ["textureHeight"] = 124,
        ["textureWidth"] = 134,
        ["offsetY"] = 101,
        ["fileDataIDs"] = { 450634 } 
    },
    {
        ["offsetX"]=426,
        ["textureHeight"] = 160,
        ["textureWidth"] = 135,
        ["offsetY"] = 224,
        ["fileDataIDs"] = { 450633 } 
    },
    {
        ["offsetX"]=200,
        ["textureHeight"] = 139,
        ["textureWidth"] = 144,
        ["offsetY"] = 505,
        ["fileDataIDs"] = { 450668 } 
    },
    {
        ["offsetX"]=425,
        ["textureHeight"] = 160,
        ["textureWidth"] = 147,
        ["offsetY"] = 279,
        ["fileDataIDs"] = { 450639 } 
    },
    {
        ["offsetX"]=413,
        ["textureHeight"] = 120,
        ["textureWidth"] = 148,
        ["offsetY"] = 55,
        ["fileDataIDs"] = { 450670 } 
    },
    {
        ["offsetX"]=484,
        ["textureHeight"] = 146,
        ["textureWidth"] = 148,
        ["offsetY"] = 166,
        ["fileDataIDs"] = { 450671 } 
    },
    {
        ["offsetX"]=451,
        ["textureHeight"] = 147,
        ["textureWidth"] = 155,
        ["offsetY"] = 140,
        ["fileDataIDs"] = { 450648 } 
    },
    {
        ["offsetX"]=321,
        ["textureHeight"] = 169,
        ["textureWidth"] = 158,
        ["offsetY"] = 42,
        ["fileDataIDs"] = { 450666 } 
    },
    {
        ["offsetX"]=494,
        ["textureHeight"] = 203,
        ["textureWidth"] = 165,
        ["offsetY"] = 226,
        ["fileDataIDs"] = { 450677 } 
    },
    {
        ["offsetX"]=359,
        ["textureHeight"] = 136,
        ["textureWidth"] = 171,
        ["offsetY"] = 191,
        ["fileDataIDs"] = { 450650 } 
    },
    {
        ["offsetX"]=287,
        ["textureHeight"] = 182,
        ["textureWidth"] = 180,
        ["offsetY"] = 399,
        ["fileDataIDs"] = { 450628 } 
    },
    {
        ["offsetX"]=347,
        ["textureHeight"] = 181,
        ["textureWidth"] = 189,
        ["offsetY"] = 85,
        ["fileDataIDs"] = { 450669 } 
    },
    {
        ["offsetX"]=502,
        ["textureHeight"] = 244,
        ["textureWidth"] = 204,
        ["offsetY"] = 373,
        ["fileDataIDs"] = { 450667 } 
    },
    {
        ["offsetX"]=441,
        ["textureHeight"] = 160,
        ["textureWidth"] = 212,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 450679 } 
    },
    {
        ["offsetX"]=383,
        ["textureHeight"] = 219,
        ["textureWidth"] = 229,
        ["offsetY"] = 352,
        ["fileDataIDs"] = { 450674 } 
    },
    {
        ["offsetX"]=194,
        ["textureHeight"] = 167,
        ["textureWidth"] = 250,
        ["offsetY"] = 216,
        ["fileDataIDs"] = { 450665 } 
    },
    {
        ["offsetX"]=341,
        ["textureHeight"] = 113,
        ["textureWidth"] = 258,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 450637,450638 } 
    },
    {
        ["offsetX"]=542,
        ["textureHeight"] = 258,
        ["textureWidth"] = 269,
        ["offsetY"] = 410,
        ["fileDataIDs"] = { 450640,450641,450642,450643 } 
    },
    {
        ["offsetX"]=505,
        ["textureHeight"] = 193,
        ["textureWidth"] = 275,
        ["offsetY"] = 44,
        ["fileDataIDs"] = { 450675,450676 } 
    },
    {
        ["offsetX"]=191,
        ["textureHeight"] = 175,
        ["textureWidth"] = 302,
        ["offsetY"] = 302,
        ["fileDataIDs"] = { 450651,450652 } 
    },
    {
        ["offsetX"]=59,
        ["textureHeight"] = 254,
        ["textureWidth"] = 312,
        ["offsetY"] = 310,
        ["fileDataIDs"] = { 450672,450673 } 
    },
    {
        ["offsetX"]=102,
        ["textureHeight"] = 238,
        ["textureWidth"] = 316,
        ["offsetY"] = 137,
        ["fileDataIDs"] = { 450635,450636 } 
    },
    {
        ["offsetX"]=565,
        ["textureHeight"] = 451,
        ["textureWidth"] = 437,
        ["offsetY"] = 217,
        ["fileDataIDs"] = { 450644,450645,450646,450647 } 
    },
    {
        ["offsetX"]=555,
        ["textureHeight"] = 263,
        ["textureWidth"] = 447,
        ["offsetY"] = 68,
        ["fileDataIDs"] = { 450629,450630,450631,450632 } 
    }
},
[27] = {
    {
        ["offsetX"]=490,
        ["textureHeight"] = 235,
        ["textureWidth"] = 176,
        ["offsetY"] = 195,
        ["fileDataIDs"] = { 271933 } 
    },
    {
        ["offsetX"]=133,
        ["textureHeight"] = 278,
        ["textureWidth"] = 191,
        ["offsetY"] = 105,
        ["fileDataIDs"] = { 271927,440600 } 
    },
    {
        ["offsetX"]=390,
        ["textureHeight"] = 199,
        ["textureWidth"] = 199,
        ["offsetY"] = 252,
        ["fileDataIDs"] = { 271929 } 
    },
    {
        ["offsetX"]=286,
        ["textureHeight"] = 212,
        ["textureWidth"] = 199,
        ["offsetY"] = 269,
        ["fileDataIDs"] = { 271934 } 
    },
    {
        ["offsetX"]=367,
        ["textureHeight"] = 204,
        ["textureWidth"] = 208,
        ["offsetY"] = 159,
        ["fileDataIDs"] = { 271910 } 
    },
    {
        ["offsetX"]=357,
        ["textureHeight"] = 196,
        ["textureWidth"] = 225,
        ["offsetY"] = 343,
        ["fileDataIDs"] = { 271922 } 
    },
    {
        ["offsetX"]=152,
        ["textureHeight"] = 225,
        ["textureWidth"] = 226,
        ["offsetY"] = 284,
        ["fileDataIDs"] = { 440603 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 267,
        ["textureWidth"] = 238,
        ["offsetY"] = 236,
        ["fileDataIDs"] = { 271917,440597 } 
    },
    {
        ["offsetX"]=220,
        ["textureHeight"] = 196,
        ["textureWidth"] = 240,
        ["offsetY"] = 379,
        ["fileDataIDs"] = { 271937 } 
    },
    {
        ["offsetX"]=220,
        ["textureHeight"] = 211,
        ["textureWidth"] = 241,
        ["offsetY"] = 181,
        ["fileDataIDs"] = { 271928 } 
    },
    {
        ["offsetX"]=677,
        ["textureHeight"] = 401,
        ["textureWidth"] = 244,
        ["offsetY"] = 267,
        ["fileDataIDs"] = { 271938,271916 } 
    },
    {
        ["offsetX"]=565,
        ["textureHeight"] = 261,
        ["textureWidth"] = 281,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 271915,271921,440601,440602 } 
    },
    {
        ["offsetX"]=487,
        ["textureHeight"] = 289,
        ["textureWidth"] = 287,
        ["offsetY"] = 334,
        ["fileDataIDs"] = { 271912,271920,440598,440599 } 
    },
    {
        ["offsetX"]=475,
        ["textureHeight"] = 311,
        ["textureWidth"] = 303,
        ["offsetY"] = 5,
        ["fileDataIDs"] = { 271908,271935,271936,271909 } 
    }
},
[28] = {
    {
        ["offsetX"]=397,
        ["textureHeight"] = 234,
        ["textureWidth"] = 171,
        ["offsetY"] = 132,
        ["fileDataIDs"] = { 445524 } 
    },
    {
        ["offsetX"]=579,
        ["textureHeight"] = 249,
        ["textureWidth"] = 174,
        ["offsetY"] = 306,
        ["fileDataIDs"] = { 271401 } 
    },
    {
        ["offsetX"]=449,
        ["textureHeight"] = 188,
        ["textureWidth"] = 184,
        ["offsetY"] = 220,
        ["fileDataIDs"] = { 271417 } 
    },
    {
        ["offsetX"]=663,
        ["textureHeight"] = 251,
        ["textureWidth"] = 198,
        ["offsetY"] = 288,
        ["fileDataIDs"] = { 271408 } 
    },
    {
        ["offsetX"]=374,
        ["textureHeight"] = 160,
        ["textureWidth"] = 211,
        ["offsetY"] = 287,
        ["fileDataIDs"] = { 271400 } 
    },
    {
        ["offsetX"]=760,
        ["textureHeight"] = 234,
        ["textureWidth"] = 218,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 271409 } 
    },
    {
        ["offsetX"]=360,
        ["textureHeight"] = 276,
        ["textureWidth"] = 225,
        ["offsetY"] = 340,
        ["fileDataIDs"] = { 271406,438340 } 
    },
    {
        ["offsetX"]=469,
        ["textureHeight"] = 335,
        ["textureWidth"] = 226,
        ["offsetY"] = 256,
        ["fileDataIDs"] = { 438345,438346 } 
    },
    {
        ["offsetX"]=263,
        ["textureHeight"] = 358,
        ["textureWidth"] = 236,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271392,442671 } 
    },
    {
        ["offsetX"]=765,
        ["textureHeight"] = 366,
        ["textureWidth"] = 237,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 442672,442673 } 
    },
    {
        ["offsetX"]=595,
        ["textureHeight"] = 183,
        ["textureWidth"] = 249,
        ["offsetY"] = 225,
        ["fileDataIDs"] = { 271389 } 
    },
    {
        ["offsetX"]=630,
        ["textureHeight"] = 335,
        ["textureWidth"] = 308,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438354,438355,438356,438357 } 
    },
    {
        ["offsetX"]=398,
        ["textureHeight"] = 347,
        ["textureWidth"] = 376,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271410,271396,438352,438353 } 
    },
    {
        ["offsetX"]=100,
        ["textureHeight"] = 302,
        ["textureWidth"] = 398,
        ["offsetY"] = 366,
        ["fileDataIDs"] = { 438341,438342,438343,438344 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 318,
        ["textureWidth"] = 409,
        ["offsetY"] = 27,
        ["fileDataIDs"] = { 438348,438349,438350,438351 } 
    },
    {
        ["offsetX"]=50,
        ["textureHeight"] = 249,
        ["textureWidth"] = 437,
        ["offsetY"] = 227,
        ["fileDataIDs"] = { 271398,438347 } 
    }
},
[33] = {
    {
        ["offsetX"]=243,
        ["textureHeight"] = 244,
        ["textureWidth"] = 304,
        ["offsetY"] = 424,
        ["fileDataIDs"] = { 450682,450683 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 393,
        ["textureWidth"] = 365,
        ["offsetY"] = 75,
        ["fileDataIDs"] = { 254509,254510,254511,254512 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 307,
        ["textureWidth"] = 375,
        ["offsetY"] = 361,
        ["fileDataIDs"] = { 254503,254504,450680,450681 } 
    },
    {
        ["offsetX"]=588,
        ["textureHeight"] = 355,
        ["textureWidth"] = 392,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 254505,254506,254507,254508 } 
    },
    {
        ["offsetX"]=255,
        ["textureHeight"] = 301,
        ["textureWidth"] = 429,
        ["offsetY"] = 38,
        ["fileDataIDs"] = { 450692,450693,450694,450695 } 
    },
    {
        ["offsetX"]=531,
        ["textureHeight"] = 266,
        ["textureWidth"] = 441,
        ["offsetY"] = 241,
        ["fileDataIDs"] = { 450684,450685,450686,450687 } 
    },
    {
        ["offsetX"]=232,
        ["textureHeight"] = 360,
        ["textureWidth"] = 481,
        ["offsetY"] = 171,
        ["fileDataIDs"] = { 254529,254530,254531,254532 } 
    },
    {
        ["offsetX"]=413,
        ["textureHeight"] = 308,
        ["textureWidth"] = 571,
        ["offsetY"] = 360,
        ["fileDataIDs"] = { 254527,254528,450688,450689,450690,450691 } 
    }
},
[37] = {
    {
        ["offsetX"]=0,
        ["textureHeight"] = 360,
        ["textureWidth"] = 182,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270938,455906 } 
    },
    {
        ["offsetX"]=568,
        ["textureHeight"] = 263,
        ["textureWidth"] = 274,
        ["offsetY"] = 151,
        ["fileDataIDs"] = { 270927,455911,455912,455913 } 
    },
    {
        ["offsetX"]=253,
        ["textureHeight"] = 413,
        ["textureWidth"] = 274,
        ["offsetY"] = 255,
        ["fileDataIDs"] = { 270933,270943,270921,270928 } 
    },
    {
        ["offsetX"]=79,
        ["textureHeight"] = 388,
        ["textureWidth"] = 281,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270919,270911,455907,455908 } 
    },
    {
        ["offsetX"]=419,
        ["textureHeight"] = 410,
        ["textureWidth"] = 298,
        ["offsetY"] = 258,
        ["fileDataIDs"] = { 270920,270914,270908,270929 } 
    },
    {
        ["offsetX"]=235,
        ["textureHeight"] = 385,
        ["textureWidth"] = 320,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270912,270909,455909,455910 } 
    },
    {
        ["offsetX"]=421,
        ["textureHeight"] = 354,
        ["textureWidth"] = 324,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270922,270934,270923,270937 } 
    },
    {
        ["offsetX"]=646,
        ["textureHeight"] = 341,
        ["textureWidth"] = 350,
        ["offsetY"] = 7,
        ["fileDataIDs"] = { 270944,270910,270935,270945 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 431,
        ["textureWidth"] = 362,
        ["offsetY"] = 237,
        ["fileDataIDs"] = { 270941,270925,270926,270917 } 
    },
    {
        ["offsetX"]=615,
        ["textureHeight"] = 413,
        ["textureWidth"] = 383,
        ["offsetY"] = 255,
        ["fileDataIDs"] = { 270906,270918,270936,270942 } 
    }
},
[41] = {
    {
        ["offsetX"]=417,
        ["textureHeight"] = 207,
        ["textureWidth"] = 220,
        ["offsetY"] = 327,
        ["fileDataIDs"] = { 271560 } 
    },
    {
        ["offsetX"]=396,
        ["textureHeight"] = 206,
        ["textureWidth"] = 230,
        ["offsetY"] = 430,
        ["fileDataIDs"] = { 271582 } 
    },
    {
        ["offsetX"]=240,
        ["textureHeight"] = 248,
        ["textureWidth"] = 269,
        ["offsetY"] = 420,
        ["fileDataIDs"] = { 271576,438414 } 
    },
    {
        ["offsetX"]=116,
        ["textureHeight"] = 313,
        ["textureWidth"] = 269,
        ["offsetY"] = 355,
        ["fileDataIDs"] = { 438426,438427,438428,438429 } 
    },
    {
        ["offsetX"]=529,
        ["textureHeight"] = 241,
        ["textureWidth"] = 270,
        ["offsetY"] = 287,
        ["fileDataIDs"] = { 271573,438425 } 
    },
    {
        ["offsetX"]=247,
        ["textureHeight"] = 231,
        ["textureWidth"] = 276,
        ["offsetY"] = 294,
        ["fileDataIDs"] = { 271567,438415 } 
    },
    {
        ["offsetX"]=708,
        ["textureHeight"] = 194,
        ["textureWidth"] = 285,
        ["offsetY"] = 442,
        ["fileDataIDs"] = { 271557,271583 } 
    },
    {
        ["offsetX"]=532,
        ["textureHeight"] = 216,
        ["textureWidth"] = 287,
        ["offsetY"] = 424,
        ["fileDataIDs"] = { 271559,438412 } 
    },
    {
        ["offsetX"]=703,
        ["textureHeight"] = 243,
        ["textureWidth"] = 294,
        ["offsetY"] = 292,
        ["fileDataIDs"] = { 271578,438413 } 
    },
    {
        ["offsetX"]=355,
        ["textureHeight"] = 296,
        ["textureWidth"] = 295,
        ["offsetY"] = 138,
        ["fileDataIDs"] = { 271572,438416,438417,438418 } 
    },
    {
        ["offsetX"]=552,
        ["textureHeight"] = 272,
        ["textureWidth"] = 340,
        ["offsetY"] = 186,
        ["fileDataIDs"] = { 271584,271565,438419,438420 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 422,
        ["textureWidth"] = 512,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438421,438422,438423,438424 } 
    }
},
[46] = {
    {
        ["offsetX"]=433,
        ["textureHeight"] = 449,
        ["textureWidth"] = 350,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 271092,271085,271086,271089 } 
    },
    {
        ["offsetX"]=92,
        ["textureHeight"] = 358,
        ["textureWidth"] = 513,
        ["offsetY"] = 310,
        ["fileDataIDs"] = { 271095,271079,440578,440579,440580,440581 } 
    },
    {
        ["offsetX"]=83,
        ["textureHeight"] = 522,
        ["textureWidth"] = 617,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271075,271076,271080,271081,440573,440574,440575,440576,440577 } 
    }
},
[52] = {
    {
        ["offsetX"]=0,
        ["textureHeight"] = 307,
        ["textureWidth"] = 189,
        ["offsetY"] = 152,
        ["fileDataIDs"] = { 271453,271454 } 
    },
    {
        ["offsetX"]=96,
        ["textureHeight"] = 157,
        ["textureWidth"] = 205,
        ["offsetY"] = 292,
        ["fileDataIDs"] = { 438381 } 
    },
    {
        ["offsetX"]=661,
        ["textureHeight"] = 182,
        ["textureWidth"] = 219,
        ["offsetY"] = 122,
        ["fileDataIDs"] = { 271466 } 
    },
    {
        ["offsetX"]=401,
        ["textureHeight"] = 248,
        ["textureWidth"] = 233,
        ["offsetY"] = 396,
        ["fileDataIDs"] = { 271449 } 
    },
    {
        ["offsetX"]=228,
        ["textureHeight"] = 282,
        ["textureWidth"] = 268,
        ["offsetY"] = 355,
        ["fileDataIDs"] = { 271448,271456,438391,438392 } 
    },
    {
        ["offsetX"]=497,
        ["textureHeight"] = 399,
        ["textureWidth"] = 279,
        ["offsetY"] = 112,
        ["fileDataIDs"] = { 271470,271477,438379,438380 } 
    },
    {
        ["offsetX"]=627,
        ["textureHeight"] = 244,
        ["textureWidth"] = 291,
        ["offsetY"] = 344,
        ["fileDataIDs"] = { 438385,438386 } 
    },
    {
        ["offsetX"]=539,
        ["textureHeight"] = 263,
        ["textureWidth"] = 291,
        ["offsetY"] = 368,
        ["fileDataIDs"] = { 271455,438382,438383,438384 } 
    },
    {
        ["offsetX"]=32,
        ["textureHeight"] = 296,
        ["textureWidth"] = 299,
        ["offsetY"] = 348,
        ["fileDataIDs"] = { 271444,271483,438377,438378 } 
    },
    {
        ["offsetX"]=314,
        ["textureHeight"] = 388,
        ["textureWidth"] = 320,
        ["offsetY"] = 101,
        ["fileDataIDs"] = { 438387,438388,438389,438390 } 
    },
    {
        ["offsetX"]=91,
        ["textureHeight"] = 309,
        ["textureWidth"] = 323,
        ["offsetY"] = 132,
        ["fileDataIDs"] = { 271473,271463,271467,271464 } 
    },
    {
        ["offsetX"]=640,
        ["textureHeight"] = 314,
        ["textureWidth"] = 329,
        ["offsetY"] = 128,
        ["fileDataIDs"] = { 271471,271461,271450,271451 } 
    },
    {
        ["offsetX"]=71,
        ["textureHeight"] = 235,
        ["textureWidth"] = 931,
        ["offsetY"] = 26,
        ["fileDataIDs"] = { 271481,271460,271474,271468 } 
    }
},
[53] = {
    {
        ["offsetX"]=221,
        ["textureHeight"] = 252,
        ["textureWidth"] = 225,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 252884 } 
    },
    {
        ["offsetX"]=245,
        ["textureHeight"] = 230,
        ["textureWidth"] = 273,
        ["offsetY"] = 324,
        ["fileDataIDs"] = { 252862,252863 } 
    },
    {
        ["offsetX"]=177,
        ["textureHeight"] = 294,
        ["textureWidth"] = 273,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 252886,252887,440640,440641 } 
    },
    {
        ["offsetX"]=549,
        ["textureHeight"] = 249,
        ["textureWidth"] = 294,
        ["offsetY"] = 52,
        ["fileDataIDs"] = { 252880,252881 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 345,
        ["textureWidth"] = 310,
        ["offsetY"] = 311,
        ["fileDataIDs"] = { 252899,440647,440648,440649 } 
    },
    {
        ["offsetX"]=16,
        ["textureHeight"] = 289,
        ["textureWidth"] = 319,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 252882,252883,440638,440639 } 
    },
    {
        ["offsetX"]=340,
        ["textureHeight"] = 474,
        ["textureWidth"] = 330,
        ["offsetY"] = 81,
        ["fileDataIDs"] = { 252894,252895,252896,252897 } 
    },
    {
        ["offsetX"]=339,
        ["textureHeight"] = 200,
        ["textureWidth"] = 333,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440642,440643 } 
    },
    {
        ["offsetX"]=570,
        ["textureHeight"] = 292,
        ["textureWidth"] = 349,
        ["offsetY"] = 209,
        ["fileDataIDs"] = { 252890,252891,252892,252893 } 
    },
    {
        ["offsetX"]=481,
        ["textureHeight"] = 291,
        ["textureWidth"] = 397,
        ["offsetY"] = 296,
        ["fileDataIDs"] = { 252866,252867,440636,440637 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 295,
        ["textureWidth"] = 455,
        ["offsetY"] = 146,
        ["fileDataIDs"] = { 252898,440644,440645,440646 } 
    }
},
[54] = {
    {
        ["offsetX"]=445,
        ["textureHeight"] = 193,
        ["textureWidth"] = 189,
        ["offsetY"] = 286,
        ["fileDataIDs"] = { 440660 } 
    },
    {
        ["offsetX"]=350,
        ["textureHeight"] = 247,
        ["textureWidth"] = 228,
        ["offsetY"] = 139,
        ["fileDataIDs"] = { 272334 } 
    },
    {
        ["offsetX"]=480,
        ["textureHeight"] = 420,
        ["textureWidth"] = 228,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440672,440673 } 
    },
    {
        ["offsetX"]=688,
        ["textureHeight"] = 324,
        ["textureWidth"] = 306,
        ["offsetY"] = 283,
        ["fileDataIDs"] = { 440668,440669,440670,440671 } 
    },
    {
        ["offsetX"]=525,
        ["textureHeight"] = 182,
        ["textureWidth"] = 316,
        ["offsetY"] = 302,
        ["fileDataIDs"] = { 272347,272371 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 406,
        ["textureWidth"] = 323,
        ["offsetY"] = 256,
        ["fileDataIDs"] = { 272364,272348,272358,272359 } 
    },
    {
        ["offsetX"]=214,
        ["textureHeight"] = 246,
        ["textureWidth"] = 357,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272357,272342 } 
    },
    {
        ["offsetX"]=148,
        ["textureHeight"] = 352,
        ["textureWidth"] = 392,
        ["offsetY"] = 316,
        ["fileDataIDs"] = { 272344,272354,272350,272339 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 256,
        ["textureWidth"] = 410,
        ["offsetY"] = 110,
        ["fileDataIDs"] = { 272351,272340 } 
    },
    {
        ["offsetX"]=37,
        ["textureHeight"] = 292,
        ["textureWidth"] = 413,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272362,272356,440664,440665 } 
    },
    {
        ["offsetX"]=451,
        ["textureHeight"] = 291,
        ["textureWidth"] = 427,
        ["offsetY"] = 377,
        ["fileDataIDs"] = { 272369,272363,440666,440667 } 
    },
    {
        ["offsetX"]=574,
        ["textureHeight"] = 463,
        ["textureWidth"] = 428,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272372,440661,440662,440663 } 
    },
    {
        ["offsetX"]=81,
        ["textureHeight"] = 250,
        ["textureWidth"] = 464,
        ["offsetY"] = 214,
        ["fileDataIDs"] = { 272335,272343 } 
    }
},
[55] = {
    {
        ["offsetX"]=354,
        ["textureHeight"] = 150,
        ["textureWidth"] = 139,
        ["offsetY"] = 184,
        ["fileDataIDs"] = { 440798 } 
    },
    {
        ["offsetX"]=387,
        ["textureHeight"] = 173,
        ["textureWidth"] = 157,
        ["offsetY"] = 246,
        ["fileDataIDs"] = { 440805 } 
    },
    {
        ["offsetX"]=267,
        ["textureHeight"] = 137,
        ["textureWidth"] = 159,
        ["offsetY"] = 168,
        ["fileDataIDs"] = { 440793 } 
    },
    {
        ["offsetX"]=298,
        ["textureHeight"] = 179,
        ["textureWidth"] = 167,
        ["offsetY"] = 228,
        ["fileDataIDs"] = { 440797 } 
    },
    {
        ["offsetX"]=566,
        ["textureHeight"] = 176,
        ["textureWidth"] = 190,
        ["offsetY"] = 164,
        ["fileDataIDs"] = { 440795 } 
    },
    {
        ["offsetX"]=306,
        ["textureHeight"] = 190,
        ["textureWidth"] = 227,
        ["offsetY"] = 63,
        ["fileDataIDs"] = { 440807 } 
    },
    {
        ["offsetX"]=158,
        ["textureHeight"] = 265,
        ["textureWidth"] = 228,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440810,440811 } 
    },
    {
        ["offsetX"]=398,
        ["textureHeight"] = 170,
        ["textureWidth"] = 230,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 440796 } 
    },
    {
        ["offsetX"]=543,
        ["textureHeight"] = 206,
        ["textureWidth"] = 234,
        ["offsetY"] = 253,
        ["fileDataIDs"] = { 440806 } 
    },
    {
        ["offsetX"]=140,
        ["textureHeight"] = 224,
        ["textureWidth"] = 236,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 440812 } 
    },
    {
        ["offsetX"]=397,
        ["textureHeight"] = 205,
        ["textureWidth"] = 239,
        ["offsetY"] = 243,
        ["fileDataIDs"] = { 440794 } 
    },
    {
        ["offsetX"]=413,
        ["textureHeight"] = 228,
        ["textureWidth"] = 240,
        ["offsetY"] = 95,
        ["fileDataIDs"] = { 440800 } 
    },
    {
        ["offsetX"]=499,
        ["textureHeight"] = 238,
        ["textureWidth"] = 244,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440799 } 
    },
    {
        ["offsetX"]=306,
        ["textureHeight"] = 166,
        ["textureWidth"] = 302,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440808,440809 } 
    },
    {
        ["offsetX"]=9,
        ["textureHeight"] = 263,
        ["textureWidth"] = 324,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 440819,440820,440821,440822 } 
    },
    {
        ["offsetX"]=488,
        ["textureHeight"] = 259,
        ["textureWidth"] = 350,
        ["offsetY"] = 364,
        ["fileDataIDs"] = { 440801,440802,440803,440804 } 
    },
    {
        ["offsetX"]=626,
        ["textureHeight"] = 560,
        ["textureWidth"] = 376,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440813,440814,440815,440816,440817,440818 } 
    }
},
[56] = {
    {
        ["offsetX"]=703,
        ["textureHeight"] = 418,
        ["textureWidth"] = 229,
        ["offsetY"] = 80,
        ["fileDataIDs"] = { 272739,272746 } 
    },
    {
        ["offsetX"]=194,
        ["textureHeight"] = 343,
        ["textureWidth"] = 238,
        ["offsetY"] = 236,
        ["fileDataIDs"] = { 272747,272763 } 
    },
    {
        ["offsetX"]=575,
        ["textureHeight"] = 229,
        ["textureWidth"] = 257,
        ["offsetY"] = 238,
        ["fileDataIDs"] = { 272772,272760 } 
    },
    {
        ["offsetX"]=600,
        ["textureHeight"] = 193,
        ["textureWidth"] = 262,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 442700,442701 } 
    },
    {
        ["offsetX"]=161,
        ["textureHeight"] = 284,
        ["textureWidth"] = 266,
        ["offsetY"] = 79,
        ["fileDataIDs"] = { 272736,442717,442718,442719 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 285,
        ["textureWidth"] = 268,
        ["offsetY"] = 80,
        ["fileDataIDs"] = { 272759,272750,442713,442714 } 
    },
    {
        ["offsetX"]=7,
        ["textureHeight"] = 316,
        ["textureWidth"] = 268,
        ["offsetY"] = 242,
        ["fileDataIDs"] = { 442702,442703,442704,442705 } 
    },
    {
        ["offsetX"]=331,
        ["textureHeight"] = 360,
        ["textureWidth"] = 292,
        ["offsetY"] = 24,
        ["fileDataIDs"] = { 272768,272770,442720,442721 } 
    },
    {
        ["offsetX"]=478,
        ["textureHeight"] = 342,
        ["textureWidth"] = 330,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 442706,442707,442708,442709 } 
    },
    {
        ["offsetX"]=540,
        ["textureHeight"] = 303,
        ["textureWidth"] = 347,
        ["offsetY"] = 360,
        ["fileDataIDs"] = { 272740,272773,442715,442716 } 
    },
    {
        ["offsetX"]=297,
        ["textureHeight"] = 308,
        ["textureWidth"] = 357,
        ["offsetY"] = 258,
        ["fileDataIDs"] = { 272742,272751,272752,272764 } 
    },
    {
        ["offsetX"]=600,
        ["textureHeight"] = 668,
        ["textureWidth"] = 402,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272756,272737,272769,442710,442711,442712 } 
    }
},
[57] = {
    {
        ["offsetX"]=294,
        ["textureHeight"] = 217,
        ["textureWidth"] = 184,
        ["offsetY"] = 168,
        ["fileDataIDs"] = { 441034 } 
    },
    {
        ["offsetX"]=531,
        ["textureHeight"] = 273,
        ["textureWidth"] = 193,
        ["offsetY"] = 200,
        ["fileDataIDs"] = { 273125,441031 } 
    },
    {
        ["offsetX"]=311,
        ["textureHeight"] = 229,
        ["textureWidth"] = 196,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 441026 } 
    },
    {
        ["offsetX"]=394,
        ["textureHeight"] = 213,
        ["textureWidth"] = 197,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 273145 } 
    },
    {
        ["offsetX"]=203,
        ["textureHeight"] = 195,
        ["textureWidth"] = 201,
        ["offsetY"] = 376,
        ["fileDataIDs"] = { 273142 } 
    },
    {
        ["offsetX"]=474,
        ["textureHeight"] = 179,
        ["textureWidth"] = 202,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 273143 } 
    },
    {
        ["offsetX"]=348,
        ["textureHeight"] = 224,
        ["textureWidth"] = 202,
        ["offsetY"] = 118,
        ["fileDataIDs"] = { 273126 } 
    },
    {
        ["offsetX"]=221,
        ["textureHeight"] = 167,
        ["textureWidth"] = 211,
        ["offsetY"] = 477,
        ["fileDataIDs"] = { 273141 } 
    },
    {
        ["offsetX"]=404,
        ["textureHeight"] = 265,
        ["textureWidth"] = 229,
        ["offsetY"] = 226,
        ["fileDataIDs"] = { 273137,441027 } 
    },
    {
        ["offsetX"]=308,
        ["textureHeight"] = 213,
        ["textureWidth"] = 232,
        ["offsetY"] = 325,
        ["fileDataIDs"] = { 273130 } 
    },
    {
        ["offsetX"]=199,
        ["textureHeight"] = 306,
        ["textureWidth"] = 235,
        ["offsetY"] = 79,
        ["fileDataIDs"] = { 273149,441025 } 
    },
    {
        ["offsetX"]=451,
        ["textureHeight"] = 237,
        ["textureWidth"] = 244,
        ["offsetY"] = 81,
        ["fileDataIDs"] = { 273146 } 
    },
    {
        ["offsetX"]=303,
        ["textureHeight"] = 273,
        ["textureWidth"] = 292,
        ["offsetY"] = 395,
        ["fileDataIDs"] = { 273124,441028,441029,441030 } 
    },
    {
        ["offsetX"]=480,
        ["textureHeight"] = 261,
        ["textureWidth"] = 317,
        ["offsetY"] = 378,
        ["fileDataIDs"] = { 273131,273134,441032,441033 } 
    },
    {
        ["offsetX"]=167,
        ["textureHeight"] = 222,
        ["textureWidth"] = 346,
        ["offsetY"] = 263,
        ["fileDataIDs"] = { 273129,273133 } 
    }
},
[61] = {
    {
        ["offsetX"]=372,
        ["textureHeight"] = 224,
        ["textureWidth"] = 185,
        ["offsetY"] = 76,
        ["fileDataIDs"] = { 273173 } 
    },
    {
        ["offsetX"]=359,
        ["textureHeight"] = 256,
        ["textureWidth"] = 236,
        ["offsetY"] = 201,
        ["fileDataIDs"] = { 273159 } 
    },
    {
        ["offsetX"]=460,
        ["textureHeight"] = 269,
        ["textureWidth"] = 250,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 441042,441043 } 
    },
    {
        ["offsetX"]=218,
        ["textureHeight"] = 282,
        ["textureWidth"] = 250,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 441048,441049 } 
    },
    {
        ["offsetX"]=599,
        ["textureHeight"] = 245,
        ["textureWidth"] = 256,
        ["offsetY"] = 123,
        ["fileDataIDs"] = { 273181 } 
    },
    {
        ["offsetX"]=356,
        ["textureHeight"] = 185,
        ["textureWidth"] = 257,
        ["offsetY"] = 7,
        ["fileDataIDs"] = { 273164,441041 } 
    },
    {
        ["offsetX"]=371,
        ["textureHeight"] = 207,
        ["textureWidth"] = 258,
        ["offsetY"] = 335,
        ["fileDataIDs"] = { 273174,441054 } 
    },
    {
        ["offsetX"]=121,
        ["textureHeight"] = 243,
        ["textureWidth"] = 276,
        ["offsetY"] = 63,
        ["fileDataIDs"] = { 273178,273167 } 
    },
    {
        ["offsetX"]=346,
        ["textureHeight"] = 215,
        ["textureWidth"] = 298,
        ["offsetY"] = 419,
        ["fileDataIDs"] = { 441039,441040 } 
    },
    {
        ["offsetX"]=185,
        ["textureHeight"] = 447,
        ["textureWidth"] = 298,
        ["offsetY"] = 195,
        ["fileDataIDs"] = { 273155,441055,441056,441057 } 
    },
    {
        ["offsetX"]=532,
        ["textureHeight"] = 316,
        ["textureWidth"] = 300,
        ["offsetY"] = 352,
        ["fileDataIDs"] = { 441050,441051,441052,441053 } 
    },
    {
        ["offsetX"]=37,
        ["textureHeight"] = 232,
        ["textureWidth"] = 301,
        ["offsetY"] = 240,
        ["fileDataIDs"] = { 273163,441035 } 
    },
    {
        ["offsetX"]=31,
        ["textureHeight"] = 248,
        ["textureWidth"] = 321,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 273171,441036 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 363,
        ["textureWidth"] = 325,
        ["offsetY"] = 297,
        ["fileDataIDs"] = { 273156,441044,441045,441046 } 
    },
    {
        ["offsetX"]=506,
        ["textureHeight"] = 228,
        ["textureWidth"] = 329,
        ["offsetY"] = 34,
        ["fileDataIDs"] = { 441037,441038 } 
    },
    {
        ["offsetX"]=506,
        ["textureHeight"] = 235,
        ["textureWidth"] = 369,
        ["offsetY"] = 232,
        ["fileDataIDs"] = { 273177,441047 } 
    }
},
[62] = {
    {
        ["offsetX"]=345,
        ["textureHeight"] = 210,
        ["textureWidth"] = 140,
        ["offsetY"] = 243,
        ["fileDataIDs"] = { 272807 } 
    },
    {
        ["offsetX"]=432,
        ["textureHeight"] = 226,
        ["textureWidth"] = 144,
        ["offsetY"] = 109,
        ["fileDataIDs"] = { 440837 } 
    },
    {
        ["offsetX"]=382,
        ["textureHeight"] = 249,
        ["textureWidth"] = 165,
        ["offsetY"] = 83,
        ["fileDataIDs"] = { 272822 } 
    },
    {
        ["offsetX"]=374,
        ["textureHeight"] = 235,
        ["textureWidth"] = 175,
        ["offsetY"] = 221,
        ["fileDataIDs"] = { 272826 } 
    },
    {
        ["offsetX"]=466,
        ["textureHeight"] = 186,
        ["textureWidth"] = 178,
        ["offsetY"] = 237,
        ["fileDataIDs"] = { 440833 } 
    },
    {
        ["offsetX"]=544,
        ["textureHeight"] = 196,
        ["textureWidth"] = 187,
        ["offsetY"] = 217,
        ["fileDataIDs"] = { 272815 } 
    },
    {
        ["offsetX"]=276,
        ["textureHeight"] = 244,
        ["textureWidth"] = 194,
        ["offsetY"] = 90,
        ["fileDataIDs"] = { 272830 } 
    },
    {
        ["offsetX"]=347,
        ["textureHeight"] = 181,
        ["textureWidth"] = 198,
        ["offsetY"] = 355,
        ["fileDataIDs"] = { 272814 } 
    },
    {
        ["offsetX"]=481,
        ["textureHeight"] = 217,
        ["textureWidth"] = 241,
        ["offsetY"] = 104,
        ["fileDataIDs"] = { 272811 } 
    },
    {
        ["offsetX"]=422,
        ["textureHeight"] = 202,
        ["textureWidth"] = 289,
        ["offsetY"] = 310,
        ["fileDataIDs"] = { 272810,440834 } 
    },
    {
        ["offsetX"]=149,
        ["textureHeight"] = 337,
        ["textureWidth"] = 298,
        ["offsetY"] = 181,
        ["fileDataIDs"] = { 272806,272812,440831,440832 } 
    },
    {
        ["offsetX"]=329,
        ["textureHeight"] = 220,
        ["textureWidth"] = 317,
        ["offsetY"] = 448,
        ["fileDataIDs"] = { 440835,440836 } 
    }
},
[67] = {
    {
        ["offsetX"]=517,
        ["textureHeight"] = 263,
        ["textureWidth"] = 200,
        ["offsetY"] = 28,
        ["fileDataIDs"] = { 271043,438260 } 
    },
    {
        ["offsetX"]=280,
        ["textureHeight"] = 194,
        ["textureWidth"] = 203,
        ["offsetY"] = 182,
        ["fileDataIDs"] = { 438259 } 
    },
    {
        ["offsetX"]=207,
        ["textureHeight"] = 201,
        ["textureWidth"] = 244,
        ["offsetY"] = 467,
        ["fileDataIDs"] = { 438258 } 
    },
    {
        ["offsetX"]=565,
        ["textureHeight"] = 147,
        ["textureWidth"] = 245,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438262 } 
    },
    {
        ["offsetX"]=596,
        ["textureHeight"] = 241,
        ["textureWidth"] = 250,
        ["offsetY"] = 16,
        ["fileDataIDs"] = { 438261 } 
    },
    {
        ["offsetX"]=391,
        ["textureHeight"] = 281,
        ["textureWidth"] = 277,
        ["offsetY"] = 54,
        ["fileDataIDs"] = { 438254,438255,438256,438257 } 
    },
    {
        ["offsetX"]=277,
        ["textureHeight"] = 185,
        ["textureWidth"] = 303,
        ["offsetY"] = 483,
        ["fileDataIDs"] = { 271044,438263 } 
    },
    {
        ["offsetX"]=280,
        ["textureHeight"] = 193,
        ["textureWidth"] = 314,
        ["offsetY"] = 378,
        ["fileDataIDs"] = { 438264,438265 } 
    },
    {
        ["offsetX"]=294,
        ["textureHeight"] = 145,
        ["textureWidth"] = 326,
        ["offsetY"] = 330,
        ["fileDataIDs"] = { 271045,438251 } 
    },
    {
        ["offsetX"]=305,
        ["textureHeight"] = 250,
        ["textureWidth"] = 328,
        ["offsetY"] = 118,
        ["fileDataIDs"] = { 438266,438267 } 
    },
    {
        ["offsetX"]=300,
        ["textureHeight"] = 192,
        ["textureWidth"] = 330,
        ["offsetY"] = 239,
        ["fileDataIDs"] = { 438252,438253 } 
    }
},
[68] = {
    {
        ["offsetX"]=836,
        ["textureHeight"] = 211,
        ["textureWidth"] = 166,
        ["offsetY"] = 148,
        ["fileDataIDs"] = { 270387 } 
    },
    {
        ["offsetX"]=112,
        ["textureHeight"] = 232,
        ["textureWidth"] = 184,
        ["offsetY"] = 148,
        ["fileDataIDs"] = { 270380 } 
    },
    {
        ["offsetX"]=377,
        ["textureHeight"] = 310,
        ["textureWidth"] = 203,
        ["offsetY"] = 121,
        ["fileDataIDs"] = { 437337,437338 } 
    },
    {
        ["offsetX"]=595,
        ["textureHeight"] = 257,
        ["textureWidth"] = 221,
        ["offsetY"] = 253,
        ["fileDataIDs"] = { 270401,437321 } 
    },
    {
        ["offsetX"]=771,
        ["textureHeight"] = 223,
        ["textureWidth"] = 231,
        ["offsetY"] = 265,
        ["fileDataIDs"] = { 270390 } 
    },
    {
        ["offsetX"]=481,
        ["textureHeight"] = 256,
        ["textureWidth"] = 231,
        ["offsetY"] = 221,
        ["fileDataIDs"] = { 270402 } 
    },
    {
        ["offsetX"]=696,
        ["textureHeight"] = 236,
        ["textureWidth"] = 235,
        ["offsetY"] = 154,
        ["fileDataIDs"] = { 270388 } 
    },
    {
        ["offsetX"]=210,
        ["textureHeight"] = 271,
        ["textureWidth"] = 236,
        ["offsetY"] = 331,
        ["fileDataIDs"] = { 270398,437328 } 
    },
    {
        ["offsetX"]=143,
        ["textureHeight"] = 251,
        ["textureWidth"] = 244,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 437322 } 
    },
    {
        ["offsetX"]=188,
        ["textureHeight"] = 361,
        ["textureWidth"] = 246,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 437319,437320 } 
    },
    {
        ["offsetX"]=255,
        ["textureHeight"] = 271,
        ["textureWidth"] = 251,
        ["offsetY"] = 164,
        ["fileDataIDs"] = { 270386,437312 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 390,
        ["textureWidth"] = 262,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270376,437333,437334,437335 } 
    },
    {
        ["offsetX"]=714,
        ["textureHeight"] = 333,
        ["textureWidth"] = 277,
        ["offsetY"] = 317,
        ["fileDataIDs"] = { 270405,437316,437317,437318 } 
    },
    {
        ["offsetX"]=529,
        ["textureHeight"] = 276,
        ["textureWidth"] = 287,
        ["offsetY"] = 385,
        ["fileDataIDs"] = { 270375,437313,437314,437315 } 
    },
    {
        ["offsetX"]=40,
        ["textureHeight"] = 283,
        ["textureWidth"] = 306,
        ["offsetY"] = 275,
        ["fileDataIDs"] = { 437329,437330,437331,437332 } 
    },
    {
        ["offsetX"]=255,
        ["textureHeight"] = 241,
        ["textureWidth"] = 314,
        ["offsetY"] = 78,
        ["fileDataIDs"] = { 270389,437336 } 
    },
    {
        ["offsetX"]=473,
        ["textureHeight"] = 239,
        ["textureWidth"] = 325,
        ["offsetY"] = 97,
        ["fileDataIDs"] = { 270400,437327 } 
    },
    {
        ["offsetX"]=338,
        ["textureHeight"] = 308,
        ["textureWidth"] = 347,
        ["offsetY"] = 335,
        ["fileDataIDs"] = { 437323,437324,437325,437326 } 
    }
},
[69] = {
    {
        ["offsetX"]=527,
        ["textureHeight"] = 203,
        ["textureWidth"] = 234,
        ["offsetY"] = 465,
        ["fileDataIDs"] = { 442249 } 
    },
    {
        ["offsetX"]=756,
        ["textureHeight"] = 256,
        ["textureWidth"] = 246,
        ["offsetY"] = 412,
        ["fileDataIDs"] = { 442250 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 380,
        ["textureWidth"] = 246,
        ["offsetY"] = 134,
        ["fileDataIDs"] = { 272968,442244 } 
    },
    {
        ["offsetX"]=136,
        ["textureHeight"] = 232,
        ["textureWidth"] = 272,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272963,442255 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 325,
        ["textureWidth"] = 280,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 442268,442269,442270,442271 } 
    },
    {
        ["offsetX"]=169,
        ["textureHeight"] = 252,
        ["textureWidth"] = 317,
        ["offsetY"] = 116,
        ["fileDataIDs"] = { 272962,442240 } 
    },
    {
        ["offsetX"]=125,
        ["textureHeight"] = 418,
        ["textureWidth"] = 358,
        ["offsetY"] = 241,
        ["fileDataIDs"] = { 442264,442265,442266,442267 } 
    },
    {
        ["offsetX"]=298,
        ["textureHeight"] = 314,
        ["textureWidth"] = 361,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 442245,442246,442247,442248 } 
    },
    {
        ["offsetX"]=347,
        ["textureHeight"] = 339,
        ["textureWidth"] = 374,
        ["offsetY"] = 329,
        ["fileDataIDs"] = { 442260,442261,442262,442263 } 
    },
    {
        ["offsetX"]=591,
        ["textureHeight"] = 411,
        ["textureWidth"] = 411,
        ["offsetY"] = 257,
        ["fileDataIDs"] = { 442256,442257,442258,442259 } 
    },
    {
        ["offsetX"]=571,
        ["textureHeight"] = 410,
        ["textureWidth"] = 431,
        ["offsetY"] = 49,
        ["fileDataIDs"] = { 442251,442252,442253,442254 } 
    },
    {
        ["offsetX"]=276,
        ["textureHeight"] = 271,
        ["textureWidth"] = 436,
        ["offsetY"] = 186,
        ["fileDataIDs"] = { 272954,442241,442242,442243 } 
    }
},
[70] = {
    {
        ["offsetX"]=479,
        ["textureHeight"] = 258,
        ["textureWidth"] = 164,
        ["offsetY"] = 401,
        ["fileDataIDs"] = { 440778,440779 } 
    },
    {
        ["offsetX"]=516,
        ["textureHeight"] = 189,
        ["textureWidth"] = 176,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 440780 } 
    },
    {
        ["offsetX"]=588,
        ["textureHeight"] = 196,
        ["textureWidth"] = 183,
        ["offsetY"] = 341,
        ["fileDataIDs"] = { 440771 } 
    },
    {
        ["offsetX"]=532,
        ["textureHeight"] = 156,
        ["textureWidth"] = 194,
        ["offsetY"] = 512,
        ["fileDataIDs"] = { 272628 } 
    },
    {
        ["offsetX"]=252,
        ["textureHeight"] = 189,
        ["textureWidth"] = 210,
        ["offsetY"] = 121,
        ["fileDataIDs"] = { 440773 } 
    },
    {
        ["offsetX"]=618,
        ["textureHeight"] = 131,
        ["textureWidth"] = 211,
        ["offsetY"] = 537,
        ["fileDataIDs"] = { 272650 } 
    },
    {
        ["offsetX"]=367,
        ["textureHeight"] = 235,
        ["textureWidth"] = 221,
        ["offsetY"] = 411,
        ["fileDataIDs"] = { 440772 } 
    },
    {
        ["offsetX"]=353,
        ["textureHeight"] = 222,
        ["textureWidth"] = 222,
        ["offsetY"] = 285,
        ["fileDataIDs"] = { 272646 } 
    },
    {
        ["offsetX"]=366,
        ["textureHeight"] = 192,
        ["textureWidth"] = 241,
        ["offsetY"] = 95,
        ["fileDataIDs"] = { 440768 } 
    },
    {
        ["offsetX"]=417,
        ["textureHeight"] = 247,
        ["textureWidth"] = 244,
        ["offsetY"] = 143,
        ["fileDataIDs"] = { 272624 } 
    },
    {
        ["offsetX"]=654,
        ["textureHeight"] = 206,
        ["textureWidth"] = 265,
        ["offsetY"] = 369,
        ["fileDataIDs"] = { 440776,440777 } 
    },
    {
        ["offsetX"]=468,
        ["textureHeight"] = 352,
        ["textureWidth"] = 267,
        ["offsetY"] = 263,
        ["fileDataIDs"] = { 272648,272634,272635,272623 } 
    },
    {
        ["offsetX"]=199,
        ["textureHeight"] = 274,
        ["textureWidth"] = 277,
        ["offsetY"] = 368,
        ["fileDataIDs"] = { 272633,272647,440774,440775 } 
    },
    {
        ["offsetX"]=220,
        ["textureHeight"] = 297,
        ["textureWidth"] = 290,
        ["offsetY"] = 189,
        ["fileDataIDs"] = { 440764,440765,440766,440767 } 
    },
    {
        ["offsetX"]=265,
        ["textureHeight"] = 244,
        ["textureWidth"] = 305,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272632,272641 } 
    },
    {
        ["offsetX"]=602,
        ["textureHeight"] = 220,
        ["textureWidth"] = 322,
        ["offsetY"] = 448,
        ["fileDataIDs"] = { 440769,440770 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 287,
        ["textureWidth"] = 374,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 272630,272649,272642,272636 } 
    }
},
[71] = {
    {
        ["offsetX"]=210,
        ["textureHeight"] = 141,
        ["textureWidth"] = 161,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438321 } 
    },
    {
        ["offsetX"]=275,
        ["textureHeight"] = 186,
        ["textureWidth"] = 212,
        ["offsetY"] = 376,
        ["fileDataIDs"] = { 438337 } 
    },
    {
        ["offsetX"]=440,
        ["textureHeight"] = 205,
        ["textureWidth"] = 220,
        ["offsetY"] = 49,
        ["fileDataIDs"] = { 271111 } 
    },
    {
        ["offsetX"]=142,
        ["textureHeight"] = 299,
        ["textureWidth"] = 222,
        ["offsetY"] = 369,
        ["fileDataIDs"] = { 271125,438327 } 
    },
    {
        ["offsetX"]=573,
        ["textureHeight"] = 257,
        ["textureWidth"] = 231,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271114,438320 } 
    },
    {
        ["offsetX"]=360,
        ["textureHeight"] = 215,
        ["textureWidth"] = 250,
        ["offsetY"] = 273,
        ["fileDataIDs"] = { 271127 } 
    },
    {
        ["offsetX"]=399,
        ["textureHeight"] = 145,
        ["textureWidth"] = 274,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271126,438336 } 
    },
    {
        ["offsetX"]=207,
        ["textureHeight"] = 196,
        ["textureWidth"] = 274,
        ["offsetY"] = 472,
        ["fileDataIDs"] = { 271122,438317 } 
    },
    {
        ["offsetX"]=613,
        ["textureHeight"] = 244,
        ["textureWidth"] = 289,
        ["offsetY"] = 170,
        ["fileDataIDs"] = { 438318,438319 } 
    },
    {
        ["offsetX"]=637,
        ["textureHeight"] = 266,
        ["textureWidth"] = 292,
        ["offsetY"] = 402,
        ["fileDataIDs"] = { 271105,438324,438325,438326 } 
    },
    {
        ["offsetX"]=589,
        ["textureHeight"] = 349,
        ["textureWidth"] = 309,
        ["offsetY"] = 319,
        ["fileDataIDs"] = { 438328,438329,438330,438331 } 
    },
    {
        ["offsetX"]=415,
        ["textureHeight"] = 285,
        ["textureWidth"] = 312,
        ["offsetY"] = 156,
        ["fileDataIDs"] = { 438313,438314,438315,438316 } 
    },
    {
        ["offsetX"]=655,
        ["textureHeight"] = 293,
        ["textureWidth"] = 317,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271104,271124,438322,438323 } 
    },
    {
        ["offsetX"]=170,
        ["textureHeight"] = 275,
        ["textureWidth"] = 321,
        ["offsetY"] = 196,
        ["fileDataIDs"] = { 271106,271129,438338,438339 } 
    },
    {
        ["offsetX"]=381,
        ["textureHeight"] = 311,
        ["textureWidth"] = 326,
        ["offsetY"] = 357,
        ["fileDataIDs"] = { 271108,271112,271113,271109 } 
    },
    {
        ["offsetX"]=208,
        ["textureHeight"] = 342,
        ["textureWidth"] = 338,
        ["offsetY"] = 24,
        ["fileDataIDs"] = { 438332,438333,438334,438335 } 
    }
},
[74] = {
    {
        ["offsetX"]=607,
        ["textureHeight"] = 218,
        ["textureWidth"] = 159,
        ["offsetY"] = 170,
        ["fileDataIDs"] = { 440592 } 
    },
    {
        ["offsetX"]=568,
        ["textureHeight"] = 198,
        ["textureWidth"] = 172,
        ["offsetY"] = 287,
        ["fileDataIDs"] = { 440586 } 
    },
    {
        ["offsetX"]=671,
        ["textureHeight"] = 220,
        ["textureWidth"] = 174,
        ["offsetY"] = 181,
        ["fileDataIDs"] = { 271675 } 
    },
    {
        ["offsetX"]=457,
        ["textureHeight"] = 179,
        ["textureWidth"] = 191,
        ["offsetY"] = 281,
        ["fileDataIDs"] = { 440591 } 
    },
    {
        ["offsetX"]=663,
        ["textureHeight"] = 157,
        ["textureWidth"] = 192,
        ["offsetY"] = 116,
        ["fileDataIDs"] = { 271696 } 
    },
    {
        ["offsetX"]=375,
        ["textureHeight"] = 304,
        ["textureWidth"] = 194,
        ["offsetY"] = 343,
        ["fileDataIDs"] = { 271700,271682 } 
    },
    {
        ["offsetX"]=467,
        ["textureHeight"] = 237,
        ["textureWidth"] = 206,
        ["offsetY"] = 354,
        ["fileDataIDs"] = { 271699 } 
    },
    {
        ["offsetX"]=756,
        ["textureHeight"] = 209,
        ["textureWidth"] = 207,
        ["offsetY"] = 191,
        ["fileDataIDs"] = { 271680 } 
    },
    {
        ["offsetX"]=186,
        ["textureHeight"] = 204,
        ["textureWidth"] = 208,
        ["offsetY"] = 229,
        ["fileDataIDs"] = { 440593 } 
    },
    {
        ["offsetX"]=362,
        ["textureHeight"] = 192,
        ["textureWidth"] = 217,
        ["offsetY"] = 237,
        ["fileDataIDs"] = { 440590 } 
    },
    {
        ["offsetX"]=652,
        ["textureHeight"] = 206,
        ["textureWidth"] = 232,
        ["offsetY"] = 298,
        ["fileDataIDs"] = { 440596 } 
    },
    {
        ["offsetX"]=485,
        ["textureHeight"] = 284,
        ["textureWidth"] = 265,
        ["offsetY"] = 101,
        ["fileDataIDs"] = { 271687,440587,440588,440589 } 
    },
    {
        ["offsetX"]=271,
        ["textureHeight"] = 334,
        ["textureWidth"] = 350,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271705,271686,440594,440595 } 
    }
},
[75] = {
    {
        ["offsetX"]=656,
        ["textureHeight"] = 200,
        ["textureWidth"] = 206,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 271494 } 
    },
    {
        ["offsetX"]=428,
        ["textureHeight"] = 353,
        ["textureWidth"] = 270,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271507,271504,438410,438411 } 
    },
    {
        ["offsetX"]=358,
        ["textureHeight"] = 301,
        ["textureWidth"] = 279,
        ["offsetY"] = 169,
        ["fileDataIDs"] = { 438397,438398,438399,438400 } 
    },
    {
        ["offsetX"]=542,
        ["textureHeight"] = 247,
        ["textureWidth"] = 305,
        ["offsetY"] = 223,
        ["fileDataIDs"] = { 271500,438407 } 
    },
    {
        ["offsetX"]=137,
        ["textureHeight"] = 230,
        ["textureWidth"] = 317,
        ["offsetY"] = 188,
        ["fileDataIDs"] = { 438405,438406 } 
    },
    {
        ["offsetX"]=199,
        ["textureHeight"] = 183,
        ["textureWidth"] = 344,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438393,438394 } 
    },
    {
        ["offsetX"]=133,
        ["textureHeight"] = 249,
        ["textureWidth"] = 384,
        ["offsetY"] = 59,
        ["fileDataIDs"] = { 438395,438396 } 
    },
    {
        ["offsetX"]=109,
        ["textureHeight"] = 351,
        ["textureWidth"] = 433,
        ["offsetY"] = 313,
        ["fileDataIDs"] = { 438401,438402,438403,438404 } 
    },
    {
        ["offsetX"]=359,
        ["textureHeight"] = 299,
        ["textureWidth"] = 436,
        ["offsetY"] = 369,
        ["fileDataIDs"] = { 271503,271509,438408,438409 } 
    }
},
[76] = {
    {
        ["offsetX"]=380,
        ["textureHeight"] = 163,
        ["textureWidth"] = 173,
        ["offsetY"] = 341,
        ["fileDataIDs"] = { 272798 } 
    },
    {
        ["offsetX"]=615,
        ["textureHeight"] = 243,
        ["textureWidth"] = 178,
        ["offsetY"] = 201,
        ["fileDataIDs"] = { 440825 } 
    },
    {
        ["offsetX"]=258,
        ["textureHeight"] = 190,
        ["textureWidth"] = 179,
        ["offsetY"] = 211,
        ["fileDataIDs"] = { 272792 } 
    },
    {
        ["offsetX"]=412,
        ["textureHeight"] = 180,
        ["textureWidth"] = 189,
        ["offsetY"] = 92,
        ["fileDataIDs"] = { 272774 } 
    },
    {
        ["offsetX"]=413,
        ["textureHeight"] = 163,
        ["textureWidth"] = 195,
        ["offsetY"] = 211,
        ["fileDataIDs"] = { 272800 } 
    },
    {
        ["offsetX"]=507,
        ["textureHeight"] = 173,
        ["textureWidth"] = 213,
        ["offsetY"] = 238,
        ["fileDataIDs"] = { 272789 } 
    },
    {
        ["offsetX"]=293,
        ["textureHeight"] = 149,
        ["textureWidth"] = 214,
        ["offsetY"] = 99,
        ["fileDataIDs"] = { 272776 } 
    },
    {
        ["offsetX"]=185,
        ["textureHeight"] = 293,
        ["textureWidth"] = 221,
        ["offsetY"] = 280,
        ["fileDataIDs"] = { 272781,440827 } 
    },
    {
        ["offsetX"]=431,
        ["textureHeight"] = 216,
        ["textureWidth"] = 224,
        ["offsetY"] = 452,
        ["fileDataIDs"] = { 272801 } 
    },
    {
        ["offsetX"]=448,
        ["textureHeight"] = 187,
        ["textureWidth"] = 225,
        ["offsetY"] = 364,
        ["fileDataIDs"] = { 272805 } 
    },
    {
        ["offsetX"]=305,
        ["textureHeight"] = 177,
        ["textureWidth"] = 231,
        ["offsetY"] = 257,
        ["fileDataIDs"] = { 272782 } 
    },
    {
        ["offsetX"]=301,
        ["textureHeight"] = 211,
        ["textureWidth"] = 232,
        ["offsetY"] = 349,
        ["fileDataIDs"] = { 272784 } 
    },
    {
        ["offsetX"]=479,
        ["textureHeight"] = 341,
        ["textureWidth"] = 254,
        ["offsetY"] = 9,
        ["fileDataIDs"] = { 440823,440824 } 
    },
    {
        ["offsetX"]=297,
        ["textureHeight"] = 194,
        ["textureWidth"] = 255,
        ["offsetY"] = 148,
        ["fileDataIDs"] = { 272799 } 
    },
    {
        ["offsetX"]=255,
        ["textureHeight"] = 190,
        ["textureWidth"] = 269,
        ["offsetY"] = 431,
        ["fileDataIDs"] = { 440828,440829 } 
    },
    {
        ["offsetX"]=437,
        ["textureHeight"] = 186,
        ["textureWidth"] = 274,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 272795,440826 } 
    },
    {
        ["offsetX"]=184,
        ["textureHeight"] = 190,
        ["textureWidth"] = 315,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272788,440830 } 
    }
},
[81] = {
    {
        ["offsetX"]=353,
        ["textureHeight"] = 213,
        ["textureWidth"] = 184,
        ["offsetY"] = 396,
        ["fileDataIDs"] = { 438209 } 
    },
    {
        ["offsetX"]=316,
        ["textureHeight"] = 329,
        ["textureWidth"] = 206,
        ["offsetY"] = 168,
        ["fileDataIDs"] = { 270412,438210 } 
    },
    {
        ["offsetX"]=407,
        ["textureHeight"] = 232,
        ["textureWidth"] = 207,
        ["offsetY"] = 403,
        ["fileDataIDs"] = { 438208 } 
    },
    {
        ["offsetX"]=245,
        ["textureHeight"] = 232,
        ["textureWidth"] = 210,
        ["offsetY"] = 377,
        ["fileDataIDs"] = { 270409 } 
    },
    {
        ["offsetX"]=228,
        ["textureHeight"] = 237,
        ["textureWidth"] = 218,
        ["offsetY"] = 229,
        ["fileDataIDs"] = { 270414 } 
    },
    {
        ["offsetX"]=575,
        ["textureHeight"] = 193,
        ["textureWidth"] = 219,
        ["offsetY"] = 121,
        ["fileDataIDs"] = { 438207 } 
    },
    {
        ["offsetX"]=343,
        ["textureHeight"] = 262,
        ["textureWidth"] = 243,
        ["offsetY"] = 3,
        ["fileDataIDs"] = { 438197,438198 } 
    },
    {
        ["offsetX"]=70,
        ["textureHeight"] = 230,
        ["textureWidth"] = 250,
        ["offsetY"] = 222,
        ["fileDataIDs"] = { 438199 } 
    },
    {
        ["offsetX"]=113,
        ["textureHeight"] = 224,
        ["textureWidth"] = 256,
        ["offsetY"] = 141,
        ["fileDataIDs"] = { 438185 } 
    },
    {
        ["offsetX"]=204,
        ["textureHeight"] = 267,
        ["textureWidth"] = 260,
        ["offsetY"] = 53,
        ["fileDataIDs"] = { 438193,438194,438195,438196 } 
    },
    {
        ["offsetX"]=476,
        ["textureHeight"] = 267,
        ["textureWidth"] = 295,
        ["offsetY"] = 401,
        ["fileDataIDs"] = { 270410,438204,438205,438206 } 
    },
    {
        ["offsetX"]=684,
        ["textureHeight"] = 337,
        ["textureWidth"] = 306,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 270434,438211,438212,438213 } 
    },
    {
        ["offsetX"]=477,
        ["textureHeight"] = 247,
        ["textureWidth"] = 321,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270432,438192 } 
    },
    {
        ["offsetX"]=22,
        ["textureHeight"] = 274,
        ["textureWidth"] = 352,
        ["offsetY"] = 344,
        ["fileDataIDs"] = { 438200,438201,438202,438203 } 
    },
    {
        ["offsetX"]=395,
        ["textureHeight"] = 381,
        ["textureWidth"] = 587,
        ["offsetY"] = 127,
        ["fileDataIDs"] = { 438186,438187,438188,438189,438190,438191 } 
    }
},
[82] = {
    {
        ["offsetX"]=410,
        ["textureHeight"] = 163,
        ["textureWidth"] = 173,
        ["offsetY"] = 505,
        ["fileDataIDs"] = { 271658 } 
    },
    {
        ["offsetX"]=476,
        ["textureHeight"] = 176,
        ["textureWidth"] = 187,
        ["offsetY"] = 484,
        ["fileDataIDs"] = { 271657 } 
    },
    {
        ["offsetX"]=531,
        ["textureHeight"] = 226,
        ["textureWidth"] = 209,
        ["offsetY"] = 57,
        ["fileDataIDs"] = { 271653 } 
    },
    {
        ["offsetX"]=288,
        ["textureHeight"] = 210,
        ["textureWidth"] = 229,
        ["offsetY"] = 458,
        ["fileDataIDs"] = { 271663 } 
    },
    {
        ["offsetX"]=406,
        ["textureHeight"] = 273,
        ["textureWidth"] = 261,
        ["offsetY"] = 55,
        ["fileDataIDs"] = { 271673,438433,438434,438435 } 
    },
    {
        ["offsetX"]=303,
        ["textureHeight"] = 199,
        ["textureWidth"] = 263,
        ["offsetY"] = 9,
        ["fileDataIDs"] = { 271652,438436 } 
    },
    {
        ["offsetX"]=278,
        ["textureHeight"] = 214,
        ["textureWidth"] = 268,
        ["offsetY"] = 359,
        ["fileDataIDs"] = { 271664,438438 } 
    },
    {
        ["offsetX"]=394,
        ["textureHeight"] = 212,
        ["textureWidth"] = 274,
        ["offsetY"] = 382,
        ["fileDataIDs"] = { 271659,438431 } 
    },
    {
        ["offsetX"]=471,
        ["textureHeight"] = 161,
        ["textureWidth"] = 307,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271660,438432 } 
    },
    {
        ["offsetX"]=234,
        ["textureHeight"] = 176,
        ["textureWidth"] = 319,
        ["offsetY"] = 317,
        ["fileDataIDs"] = { 271669,438437 } 
    },
    {
        ["offsetX"]=243,
        ["textureHeight"] = 250,
        ["textureWidth"] = 343,
        ["offsetY"] = 107,
        ["fileDataIDs"] = { 271665,438439 } 
    },
    {
        ["offsetX"]=220,
        ["textureHeight"] = 192,
        ["textureWidth"] = 345,
        ["offsetY"] = 231,
        ["fileDataIDs"] = { 271666,438430 } 
    }
},
[83] = {
    {
        ["offsetX"]=328,
        ["textureHeight"] = 185,
        ["textureWidth"] = 186,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 440938 } 
    },
    {
        ["offsetX"]=706,
        ["textureHeight"] = 222,
        ["textureWidth"] = 197,
        ["offsetY"] = 201,
        ["fileDataIDs"] = { 273051 } 
    },
    {
        ["offsetX"]=462,
        ["textureHeight"] = 170,
        ["textureWidth"] = 204,
        ["offsetY"] = 330,
        ["fileDataIDs"] = { 440937 } 
    },
    {
        ["offsetX"]=557,
        ["textureHeight"] = 191,
        ["textureWidth"] = 224,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440936 } 
    },
    {
        ["offsetX"]=573,
        ["textureHeight"] = 412,
        ["textureWidth"] = 263,
        ["offsetY"] = 256,
        ["fileDataIDs"] = { 273072,273039,273037,273063 } 
    },
    {
        ["offsetX"]=145,
        ["textureHeight"] = 277,
        ["textureWidth"] = 309,
        ["offsetY"] = 226,
        ["fileDataIDs"] = { 273043,273075,273069,273061 } 
    },
    {
        ["offsetX"]=162,
        ["textureHeight"] = 293,
        ["textureWidth"] = 316,
        ["offsetY"] = 357,
        ["fileDataIDs"] = { 273046,273053,273071,273047 } 
    },
    {
        ["offsetX"]=356,
        ["textureHeight"] = 288,
        ["textureWidth"] = 321,
        ["offsetY"] = 192,
        ["fileDataIDs"] = { 273042,273065,273050,273036 } 
    },
    {
        ["offsetX"]=157,
        ["textureHeight"] = 332,
        ["textureWidth"] = 332,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440943,440944,440945,440946 } 
    },
    {
        ["offsetX"]=565,
        ["textureHeight"] = 321,
        ["textureWidth"] = 337,
        ["offsetY"] = 39,
        ["fileDataIDs"] = { 440939,440940,440941,440942 } 
    },
    {
        ["offsetX"]=335,
        ["textureHeight"] = 274,
        ["textureWidth"] = 381,
        ["offsetY"] = 384,
        ["fileDataIDs"] = { 273059,273066,273073,273054 } 
    },
    {
        ["offsetX"]=305,
        ["textureHeight"] = 294,
        ["textureWidth"] = 432,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 273052,273062,273057,273058 } 
    }
},
[85] = {
    {
        ["offsetX"]=209,
        ["textureHeight"] = 296,
        ["textureWidth"] = 271,
        ["offsetY"] = 91,
        ["fileDataIDs"] = { 440652,440653,440654,440655 } 
    },
    {
        ["offsetX"]=542,
        ["textureHeight"] = 346,
        ["textureWidth"] = 275,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 440656,440657,440658,440659 } 
    },
    {
        ["offsetX"]=370,
        ["textureHeight"] = 244,
        ["textureWidth"] = 346,
        ["offsetY"] = 135,
        ["fileDataIDs"] = { 440650,440651 } 
    },
    {
        ["offsetX"]=219,
        ["textureHeight"] = 319,
        ["textureWidth"] = 431,
        ["offsetY"] = 273,
        ["fileDataIDs"] = { 252844,252845,252846,252847 } 
    }
},
[86] = {
    {
        ["offsetX"]=427,
        ["textureHeight"] = 260,
        ["textureWidth"] = 292,
        ["offsetY"] = 143,
        ["fileDataIDs"] = { 440714,440715,440716,440717 } 
    },
    {
        ["offsetX"]=550,
        ["textureHeight"] = 243,
        ["textureWidth"] = 309,
        ["offsetY"] = 181,
        ["fileDataIDs"] = { 272580,272544 } 
    },
    {
        ["offsetX"]=614,
        ["textureHeight"] = 285,
        ["textureWidth"] = 315,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440721,440722,440723,440724 } 
    },
    {
        ["offsetX"]=126,
        ["textureHeight"] = 246,
        ["textureWidth"] = 329,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272581,272562 } 
    },
    {
        ["offsetX"]=345,
        ["textureHeight"] = 267,
        ["textureWidth"] = 405,
        ["offsetY"] = 4,
        ["fileDataIDs"] = { 272565,272566,272577,272546 } 
    },
    {
        ["offsetX"]=100,
        ["textureHeight"] = 231,
        ["textureWidth"] = 434,
        ["offsetY"] = 151,
        ["fileDataIDs"] = { 272573,272545 } 
    },
    {
        ["offsetX"]=380,
        ["textureHeight"] = 358,
        ["textureWidth"] = 489,
        ["offsetY"] = 310,
        ["fileDataIDs"] = { 272567,272547,272555,272548 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 367,
        ["textureWidth"] = 542,
        ["offsetY"] = 206,
        ["fileDataIDs"] = { 272559,272543,272574,272575,440718,440719 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 213,
        ["textureWidth"] = 580,
        ["offsetY"] = 455,
        ["fileDataIDs"] = { 272564,272553,440720 } 
    }
},
[88] = {
    {
        ["offsetX"]=482,
        ["textureHeight"] = 229,
        ["textureWidth"] = 194,
        ["offsetY"] = 195,
        ["fileDataIDs"] = { 273191 } 
    },
    {
        ["offsetX"]=588,
        ["textureHeight"] = 209,
        ["textureWidth"] = 221,
        ["offsetY"] = 181,
        ["fileDataIDs"] = { 273200 } 
    },
    {
        ["offsetX"]=581,
        ["textureHeight"] = 217,
        ["textureWidth"] = 249,
        ["offsetY"] = 314,
        ["fileDataIDs"] = { 273206 } 
    },
    {
        ["offsetX"]=556,
        ["textureHeight"] = 150,
        ["textureWidth"] = 254,
        ["offsetY"] = 439,
        ["fileDataIDs"] = { 273199 } 
    },
    {
        ["offsetX"]=399,
        ["textureHeight"] = 238,
        ["textureWidth"] = 257,
        ["offsetY"] = 340,
        ["fileDataIDs"] = { 273185,445588 } 
    },
    {
        ["offsetX"]=372,
        ["textureHeight"] = 258,
        ["textureWidth"] = 271,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 273192,445585,445586,445587 } 
    },
    {
        ["offsetX"]=424,
        ["textureHeight"] = 183,
        ["textureWidth"] = 317,
        ["offsetY"] = 474,
        ["fileDataIDs"] = { 273198,445584 } 
    },
    {
        ["offsetX"]=304,
        ["textureHeight"] = 268,
        ["textureWidth"] = 332,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 273184,445581,445582,445583 } 
    },
    {
        ["offsetX"]=500,
        ["textureHeight"] = 255,
        ["textureWidth"] = 333,
        ["offsetY"] = 17,
        ["fileDataIDs"] = { 273203,445592 } 
    },
    {
        ["offsetX"]=92,
        ["textureHeight"] = 252,
        ["textureWidth"] = 362,
        ["offsetY"] = 302,
        ["fileDataIDs"] = { 273187,445593 } 
    },
    {
        ["offsetX"]=229,
        ["textureHeight"] = 340,
        ["textureWidth"] = 367,
        ["offsetY"] = 33,
        ["fileDataIDs"] = { 273207,445589,445590,445591 } 
    },
    {
        ["offsetX"]=93,
        ["textureHeight"] = 289,
        ["textureWidth"] = 376,
        ["offsetY"] = 118,
        ["fileDataIDs"] = { 273202,445578,445579,445580 } 
    }
},
[99] = {
    {
        ["offsetX"]=554,
        ["textureHeight"] = 193,
        ["textureWidth"] = 128,
        ["offsetY"] = 475,
        ["fileDataIDs"] = { 271603 } 
    },
    {
        ["offsetX"]=584,
        ["textureHeight"] = 197,
        ["textureWidth"] = 128,
        ["offsetY"] = 471,
        ["fileDataIDs"] = { 271598 } 
    },
    {
        ["offsetX"]=511,
        ["textureHeight"] = 248,
        ["textureWidth"] = 128,
        ["offsetY"] = 420,
        ["fileDataIDs"] = { 271592 } 
    },
    {
        ["offsetX"]=183,
        ["textureHeight"] = 253,
        ["textureWidth"] = 128,
        ["offsetY"] = 415,
        ["fileDataIDs"] = { 271625 } 
    },
    {
        ["offsetX"]=292,
        ["textureHeight"] = 256,
        ["textureWidth"] = 128,
        ["offsetY"] = 319,
        ["fileDataIDs"] = { 271633 } 
    },
    {
        ["offsetX"]=580,
        ["textureHeight"] = 256,
        ["textureWidth"] = 128,
        ["offsetY"] = 399,
        ["fileDataIDs"] = { 271630 } 
    },
    {
        ["offsetX"]=231,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 404,
        ["fileDataIDs"] = { 271627 } 
    },
    {
        ["offsetX"]=243,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 469,
        ["fileDataIDs"] = { 271635 } 
    },
    {
        ["offsetX"]=255,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 507,
        ["fileDataIDs"] = { 271596 } 
    },
    {
        ["offsetX"]=524,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 359,
        ["fileDataIDs"] = { 271591 } 
    },
    {
        ["offsetX"]=539,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 305,
        ["fileDataIDs"] = { 271628 } 
    },
    {
        ["offsetX"]=378,
        ["textureHeight"] = 172,
        ["textureWidth"] = 256,
        ["offsetY"] = 496,
        ["fileDataIDs"] = { 271614 } 
    },
    {
        ["offsetX"]=464,
        ["textureHeight"] = 174,
        ["textureWidth"] = 256,
        ["offsetY"] = 494,
        ["fileDataIDs"] = { 271615 } 
    },
    {
        ["offsetX"]=215,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 298,
        ["fileDataIDs"] = { 271601 } 
    },
    {
        ["offsetX"]=307,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 136,
        ["fileDataIDs"] = { 271608 } 
    },
    {
        ["offsetX"]=324,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 384,
        ["fileDataIDs"] = { 271599 } 
    },
    {
        ["offsetX"]=361,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 298,
        ["fileDataIDs"] = { 271637 } 
    },
    {
        ["offsetX"]=386,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 386,
        ["fileDataIDs"] = { 271612 } 
    },
    {
        ["offsetX"]=460,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 373,
        ["fileDataIDs"] = { 271588 } 
    },
    {
        ["offsetX"]=474,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 314,
        ["fileDataIDs"] = { 271610 } 
    },
    {
        ["offsetX"]=605,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 253,
        ["fileDataIDs"] = { 271604 } 
    },
    {
        ["offsetX"]=669,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 228,
        ["fileDataIDs"] = { 271586 } 
    },
    {
        ["offsetX"]=648,
        ["textureHeight"] = 353,
        ["textureWidth"] = 256,
        ["offsetY"] = 315,
        ["fileDataIDs"] = { 271587,271590 } 
    },
    {
        ["offsetX"]=195,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 5,
        ["fileDataIDs"] = { 271619,271602,271589,271638 } 
    },
    {
        ["offsetX"]=440,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 87,
        ["fileDataIDs"] = { 271632,271600,271617,271618 } 
    }
},
[100] = {
    {
        ["offsetX"]=40,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 287,
        ["fileDataIDs"] = { 271752 } 
    },
    {
        ["offsetX"]=184,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 238,
        ["fileDataIDs"] = { 271744 } 
    },
    {
        ["offsetX"]=210,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 126,
        ["fileDataIDs"] = { 271716 } 
    },
    {
        ["offsetX"]=585,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271761 } 
    },
    {
        ["offsetX"]=364,
        ["textureHeight"] = 262,
        ["textureWidth"] = 256,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 271711,271717 } 
    },
    {
        ["offsetX"]=340,
        ["textureHeight"] = 449,
        ["textureWidth"] = 256,
        ["offsetY"] = 219,
        ["fileDataIDs"] = { 271740,271730 } 
    },
    {
        ["offsetX"]=60,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 117,
        ["fileDataIDs"] = { 271754,271733 } 
    },
    {
        ["offsetX"]=365,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 2,
        ["fileDataIDs"] = { 271762,271751 } 
    },
    {
        ["offsetX"]=448,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 150,
        ["fileDataIDs"] = { 271741,271723 } 
    },
    {
        ["offsetX"]=598,
        ["textureHeight"] = 436,
        ["textureWidth"] = 404,
        ["offsetY"] = 232,
        ["fileDataIDs"] = { 271742,271728,271758,271706 } 
    },
    {
        ["offsetX"]=575,
        ["textureHeight"] = 256,
        ["textureWidth"] = 427,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271735,271736 } 
    },
    {
        ["offsetX"]=573,
        ["textureHeight"] = 256,
        ["textureWidth"] = 429,
        ["offsetY"] = 136,
        ["fileDataIDs"] = { 271715,271745 } 
    },
    {
        ["offsetX"]=326,
        ["textureHeight"] = 256,
        ["textureWidth"] = 512,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271729,271707 } 
    },
    {
        ["offsetX"]=460,
        ["textureHeight"] = 256,
        ["textureWidth"] = 512,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271731,271719 } 
    },
    {
        ["offsetX"]=95,
        ["textureHeight"] = 293,
        ["textureWidth"] = 512,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 271721,271725,271714,271737 } 
    },
    {
        ["offsetX"]=466,
        ["textureHeight"] = 431,
        ["textureWidth"] = 512,
        ["offsetY"] = 237,
        ["fileDataIDs"] = { 271712,271757,271713,271734 } 
    },
    {
        ["offsetX"]=44,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271726,271756,271727,271710 } 
    }
},
[102] = {
    {
        ["offsetX"]=462,
        ["textureHeight"] = 256,
        ["textureWidth"] = 128,
        ["offsetY"] = 349,
        ["fileDataIDs"] = { 270497 } 
    },
    {
        ["offsetX"]=356,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270493 } 
    },
    {
        ["offsetX"]=23,
        ["textureHeight"] = 222,
        ["textureWidth"] = 256,
        ["offsetY"] = 446,
        ["fileDataIDs"] = { 270498 } 
    },
    {
        ["offsetX"]=220,
        ["textureHeight"] = 247,
        ["textureWidth"] = 256,
        ["offsetY"] = 421,
        ["fileDataIDs"] = { 270482 } 
    },
    {
        ["offsetX"]=174,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 363,
        ["fileDataIDs"] = { 270492 } 
    },
    {
        ["offsetX"]=176,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 303,
        ["fileDataIDs"] = { 270463 } 
    },
    {
        ["offsetX"]=281,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 305,
        ["fileDataIDs"] = { 270509 } 
    },
    {
        ["offsetX"]=291,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 3,
        ["fileDataIDs"] = { 270510 } 
    },
    {
        ["offsetX"]=352,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 378,
        ["fileDataIDs"] = { 270481 } 
    },
    {
        ["offsetX"]=365,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 49,
        ["fileDataIDs"] = { 270488 } 
    },
    {
        ["offsetX"]=383,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 249,
        ["fileDataIDs"] = { 270513 } 
    },
    {
        ["offsetX"]=449,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 183,
        ["fileDataIDs"] = { 270508 } 
    },
    {
        ["offsetX"]=488,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 24,
        ["fileDataIDs"] = { 270474 } 
    },
    {
        ["offsetX"]=507,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 350,
        ["fileDataIDs"] = { 270512 } 
    },
    {
        ["offsetX"]=515,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 279,
        ["fileDataIDs"] = { 270476 } 
    },
    {
        ["offsetX"]=527,
        ["textureHeight"] = 512,
        ["textureWidth"] = 475,
        ["offsetY"] = 104,
        ["fileDataIDs"] = { 270511,270483,270489,270484 } 
    },
    {
        ["offsetX"]=74,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 85,
        ["fileDataIDs"] = { 270475,270515,270495,270505 } 
    }
},
[105] = {
    {
        ["offsetX"]=34,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 142,
        ["fileDataIDs"] = { 271836 } 
    },
    {
        ["offsetX"]=182,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 412,
        ["fileDataIDs"] = { 271830 } 
    },
    {
        ["offsetX"]=206,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 110,
        ["fileDataIDs"] = { 271835 } 
    },
    {
        ["offsetX"]=467,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 154,
        ["fileDataIDs"] = { 271852 } 
    },
    {
        ["offsetX"]=469,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 298,
        ["fileDataIDs"] = { 271848 } 
    },
    {
        ["offsetX"]=705,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 368,
        ["fileDataIDs"] = { 271843 } 
    },
    {
        ["offsetX"]=308,
        ["textureHeight"] = 260,
        ["textureWidth"] = 256,
        ["offsetY"] = 408,
        ["fileDataIDs"] = { 271838,271861 } 
    },
    {
        ["offsetX"]=25,
        ["textureHeight"] = 378,
        ["textureWidth"] = 256,
        ["offsetY"] = 290,
        ["fileDataIDs"] = { 271850,271864 } 
    },
    {
        ["offsetX"]=338,
        ["textureHeight"] = 458,
        ["textureWidth"] = 256,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 271855,271833 } 
    },
    {
        ["offsetX"]=326,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 45,
        ["fileDataIDs"] = { 271840,271849 } 
    },
    {
        ["offsetX"]=579,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 128,
        ["fileDataIDs"] = { 271866,271821 } 
    },
    {
        ["offsetX"]=737,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 156,
        ["fileDataIDs"] = { 271854,271825 } 
    },
    {
        ["offsetX"]=580,
        ["textureHeight"] = 238,
        ["textureWidth"] = 422,
        ["offsetY"] = 430,
        ["fileDataIDs"] = { 271826,271822 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 255,
        ["textureWidth"] = 512,
        ["offsetY"] = 413,
        ["fileDataIDs"] = { 271856,271820 } 
    },
    {
        ["offsetX"]=477,
        ["textureHeight"] = 256,
        ["textureWidth"] = 512,
        ["offsetY"] = 6,
        ["fileDataIDs"] = { 271867,271842 } 
    },
    {
        ["offsetX"]=183,
        ["textureHeight"] = 342,
        ["textureWidth"] = 512,
        ["offsetY"] = 326,
        ["fileDataIDs"] = { 271862,271844,271823,271831 } 
    },
    {
        ["offsetX"]=38,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 152,
        ["fileDataIDs"] = { 271851,271841,271865,271853 } 
    },
    {
        ["offsetX"]=478,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 25,
        ["fileDataIDs"] = { 271863,271857,271845,271839 } 
    }
},
[107] = {
    {
        ["offsetX"]=124,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 273241 } 
    },
    {
        ["offsetX"]=720,
        ["textureHeight"] = 207,
        ["textureWidth"] = 256,
        ["offsetY"] = 461,
        ["fileDataIDs"] = { 273266 } 
    },
    {
        ["offsetX"]=31,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 339,
        ["fileDataIDs"] = { 273262 } 
    },
    {
        ["offsetX"]=81,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 152,
        ["fileDataIDs"] = { 273222 } 
    },
    {
        ["offsetX"]=88,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 50,
        ["fileDataIDs"] = { 273235 } 
    },
    {
        ["offsetX"]=175,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 232,
        ["fileDataIDs"] = { 273267 } 
    },
    {
        ["offsetX"]=342,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 249,
        ["fileDataIDs"] = { 273233 } 
    },
    {
        ["offsetX"]=512,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 303,
        ["fileDataIDs"] = { 273271 } 
    },
    {
        ["offsetX"]=596,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 412,
        ["fileDataIDs"] = { 273280 } 
    },
    {
        ["offsetX"]=141,
        ["textureHeight"] = 343,
        ["textureWidth"] = 256,
        ["offsetY"] = 325,
        ["fileDataIDs"] = { 273224,273225 } 
    },
    {
        ["offsetX"]=219,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 51,
        ["fileDataIDs"] = { 273268,273226 } 
    },
    {
        ["offsetX"]=329,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 25,
        ["fileDataIDs"] = { 273223,273272 } 
    },
    {
        ["offsetX"]=462,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 90,
        ["fileDataIDs"] = { 273253,273242 } 
    },
    {
        ["offsetX"]=569,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 112,
        ["fileDataIDs"] = { 273249,273238 } 
    },
    {
        ["offsetX"]=716,
        ["textureHeight"] = 512,
        ["textureWidth"] = 286,
        ["offsetY"] = 128,
        ["fileDataIDs"] = { 273243,273273,273250,273251 } 
    },
    {
        ["offsetX"]=694,
        ["textureHeight"] = 256,
        ["textureWidth"] = 308,
        ["offsetY"] = 321,
        ["fileDataIDs"] = { 273276,273246 } 
    },
    {
        ["offsetX"]=20,
        ["textureHeight"] = 256,
        ["textureWidth"] = 512,
        ["offsetY"] = 202,
        ["fileDataIDs"] = { 273248,273279 } 
    },
    {
        ["offsetX"]=314,
        ["textureHeight"] = 336,
        ["textureWidth"] = 512,
        ["offsetY"] = 332,
        ["fileDataIDs"] = { 273221,273269,273236,273277 } 
    }
},
[109] = {
    {
        ["offsetX"]=143,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 256,
        ["fileDataIDs"] = { 272431 } 
    },
    {
        ["offsetX"]=520,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 93,
        ["fileDataIDs"] = { 272421 } 
    },
    {
        ["offsetX"]=554,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 308,
        ["fileDataIDs"] = { 272461 } 
    },
    {
        ["offsetX"]=290,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 129,
        ["fileDataIDs"] = { 272451,272471 } 
    },
    {
        ["offsetX"]=606,
        ["textureHeight"] = 512,
        ["textureWidth"] = 396,
        ["offsetY"] = 126,
        ["fileDataIDs"] = { 272429,272470,272446,272450 } 
    },
    {
        ["offsetX"]=510,
        ["textureHeight"] = 223,
        ["textureWidth"] = 492,
        ["offsetY"] = 445,
        ["fileDataIDs"] = { 272442,272443 } 
    },
    {
        ["offsetX"]=343,
        ["textureHeight"] = 358,
        ["textureWidth"] = 512,
        ["offsetY"] = 310,
        ["fileDataIDs"] = { 272454,272426,272439,272455 } 
    },
    {
        ["offsetX"]=469,
        ["textureHeight"] = 410,
        ["textureWidth"] = 512,
        ["offsetY"] = 258,
        ["fileDataIDs"] = { 272448,272449,272469,272452 } 
    },
    {
        ["offsetX"]=168,
        ["textureHeight"] = 439,
        ["textureWidth"] = 512,
        ["offsetY"] = 229,
        ["fileDataIDs"] = { 272430,272460,272434,272435 } 
    },
    {
        ["offsetX"]=104,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 155,
        ["fileDataIDs"] = { 272436,272440,272441,272427 } 
    },
    {
        ["offsetX"]=116,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 35,
        ["fileDataIDs"] = { 272428,272424,272433,272445 } 
    },
    {
        ["offsetX"]=348,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 8,
        ["fileDataIDs"] = { 272467,272465,272422,272453 } 
    },
    {
        ["offsetX"]=394,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 90,
        ["fileDataIDs"] = { 272459,272438,272463,272447 } 
    }
},
[110] = {
    {
        ["offsetX"]=563,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 151,
        ["fileDataIDs"] = { 270643 } 
    },
    {
        ["offsetX"]=271,
        ["textureHeight"] = 240,
        ["textureWidth"] = 256,
        ["offsetY"] = 428,
        ["fileDataIDs"] = { 270622 } 
    },
    {
        ["offsetX"]=446,
        ["textureHeight"] = 254,
        ["textureWidth"] = 256,
        ["offsetY"] = 414,
        ["fileDataIDs"] = { 270642 } 
    },
    {
        ["offsetX"]=254,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 176,
        ["fileDataIDs"] = { 270663 } 
    },
    {
        ["offsetX"]=286,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 28,
        ["fileDataIDs"] = { 270625 } 
    },
    {
        ["offsetX"]=412,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 95,
        ["fileDataIDs"] = { 270631 } 
    },
    {
        ["offsetX"]=422,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270665 } 
    },
    {
        ["offsetX"]=439,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 270649 } 
    },
    {
        ["offsetX"]=527,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 81,
        ["fileDataIDs"] = { 270611 } 
    },
    {
        ["offsetX"]=585,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270651 } 
    },
    {
        ["offsetX"]=623,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 147,
        ["fileDataIDs"] = { 270666 } 
    },
    {
        ["offsetX"]=629,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 270667 } 
    },
    {
        ["offsetX"]=658,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 297,
        ["fileDataIDs"] = { 270655 } 
    },
    {
        ["offsetX"]=673,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 71,
        ["fileDataIDs"] = { 270626 } 
    },
    {
        ["offsetX"]=733,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 109,
        ["fileDataIDs"] = { 270609 } 
    },
    {
        ["offsetX"]=342,
        ["textureHeight"] = 297,
        ["textureWidth"] = 256,
        ["offsetY"] = 371,
        ["fileDataIDs"] = { 270669,270657 } 
    },
    {
        ["offsetX"]=289,
        ["textureHeight"] = 318,
        ["textureWidth"] = 256,
        ["offsetY"] = 350,
        ["fileDataIDs"] = { 270638,270630 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 336,
        ["textureWidth"] = 256,
        ["offsetY"] = 332,
        ["fileDataIDs"] = { 270612,270658 } 
    },
    {
        ["offsetX"]=405,
        ["textureHeight"] = 396,
        ["textureWidth"] = 256,
        ["offsetY"] = 272,
        ["fileDataIDs"] = { 270664,270659 } 
    },
    {
        ["offsetX"]=554,
        ["textureHeight"] = 410,
        ["textureWidth"] = 256,
        ["offsetY"] = 258,
        ["fileDataIDs"] = { 270629,270606 } 
    },
    {
        ["offsetX"]=512,
        ["textureHeight"] = 419,
        ["textureWidth"] = 256,
        ["offsetY"] = 249,
        ["fileDataIDs"] = { 270644,270610 } 
    },
    {
        ["offsetX"]=166,
        ["textureHeight"] = 462,
        ["textureWidth"] = 256,
        ["offsetY"] = 206,
        ["fileDataIDs"] = { 270652,270653 } 
    },
    {
        ["offsetX"]=314,
        ["textureHeight"] = 507,
        ["textureWidth"] = 256,
        ["offsetY"] = 161,
        ["fileDataIDs"] = { 270619,270620 } 
    },
    {
        ["offsetX"]=479,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 98,
        ["fileDataIDs"] = { 270616,270617 } 
    },
    {
        ["offsetX"]=586,
        ["textureHeight"] = 256,
        ["textureWidth"] = 416,
        ["offsetY"] = 147,
        ["fileDataIDs"] = { 270628,270605 } 
    },
    {
        ["offsetX"]=144,
        ["textureHeight"] = 252,
        ["textureWidth"] = 512,
        ["offsetY"] = 416,
        ["fileDataIDs"] = { 270662,270632 } 
    },
    {
        ["offsetX"]=214,
        ["textureHeight"] = 256,
        ["textureWidth"] = 512,
        ["offsetY"] = 55,
        ["fileDataIDs"] = { 270621,270633 } 
    }
},
[111] = {
    {
        ["offsetX"]=180,
        ["textureHeight"] = 128,
        ["textureWidth"] = 128,
        ["offsetY"] = 216,
        ["fileDataIDs"] = { 270671 } 
    },
    {
        ["offsetX"]=763,
        ["textureHeight"] = 256,
        ["textureWidth"] = 239,
        ["offsetY"] = 256,
        ["fileDataIDs"] = { 270710 } 
    },
    {
        ["offsetX"]=309,
        ["textureHeight"] = 185,
        ["textureWidth"] = 256,
        ["offsetY"] = 483,
        ["fileDataIDs"] = { 270718 } 
    },
    {
        ["offsetX"]=503,
        ["textureHeight"] = 198,
        ["textureWidth"] = 256,
        ["offsetY"] = 470,
        ["fileDataIDs"] = { 270687 } 
    },
    {
        ["offsetX"]=205,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 39,
        ["fileDataIDs"] = { 270701 } 
    },
    {
        ["offsetX"]=221,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 136,
        ["fileDataIDs"] = { 270676 } 
    },
    {
        ["offsetX"]=232,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 242,
        ["fileDataIDs"] = { 270703 } 
    },
    {
        ["offsetX"]=250,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 404,
        ["fileDataIDs"] = { 270739 } 
    },
    {
        ["offsetX"]=293,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 285,
        ["fileDataIDs"] = { 270728 } 
    },
    {
        ["offsetX"]=297,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 136,
        ["fileDataIDs"] = { 270733 } 
    },
    {
        ["offsetX"]=302,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 27,
        ["fileDataIDs"] = { 270727 } 
    },
    {
        ["offsetX"]=367,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 209,
        ["fileDataIDs"] = { 270679 } 
    },
    {
        ["offsetX"]=414,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 270700 } 
    },
    {
        ["offsetX"]=437,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 258,
        ["fileDataIDs"] = { 270698 } 
    },
    {
        ["offsetX"]=451,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 29,
        ["fileDataIDs"] = { 270734 } 
    },
    {
        ["offsetX"]=481,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 117,
        ["fileDataIDs"] = { 270720 } 
    },
    {
        ["offsetX"]=546,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 410,
        ["fileDataIDs"] = { 270699 } 
    },
    {
        ["offsetX"]=555,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 87,
        ["fileDataIDs"] = { 270741 } 
    },
    {
        ["offsetX"]=556,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 216,
        ["fileDataIDs"] = { 270740 } 
    },
    {
        ["offsetX"]=598,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 338,
        ["fileDataIDs"] = { 270677 } 
    },
    {
        ["offsetX"]=613,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 82,
        ["fileDataIDs"] = { 270709 } 
    },
    {
        ["offsetX"]=637,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270714 } 
    },
    {
        ["offsetX"]=657,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 78,
        ["fileDataIDs"] = { 270712 } 
    },
    {
        ["offsetX"]=729,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 54,
        ["fileDataIDs"] = { 270682 } 
    },
    {
        ["offsetX"]=44,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 62,
        ["fileDataIDs"] = { 270690,270729 } 
    },
    {
        ["offsetX"]=517,
        ["textureHeight"] = 141,
        ["textureWidth"] = 485,
        ["offsetY"] = 527,
        ["fileDataIDs"] = { 270711,270723 } 
    },
    {
        ["offsetX"]=177,
        ["textureHeight"] = 242,
        ["textureWidth"] = 512,
        ["offsetY"] = 426,
        ["fileDataIDs"] = { 270674,270731 } 
    },
    {
        ["offsetX"]=43,
        ["textureHeight"] = 430,
        ["textureWidth"] = 512,
        ["offsetY"] = 238,
        ["fileDataIDs"] = { 270692,270673,270702,270672 } 
    }
},
[112] = {
    {
        ["offsetX"]=558,
        ["textureHeight"] = 241,
        ["textureWidth"] = 256,
        ["offsetY"] = 427,
        ["fileDataIDs"] = { 272204 } 
    },
    {
        ["offsetX"]=157,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 32,
        ["fileDataIDs"] = { 272235 } 
    },
    {
        ["offsetX"]=162,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 154,
        ["fileDataIDs"] = { 272198 } 
    },
    {
        ["offsetX"]=219,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 199,
        ["fileDataIDs"] = { 272231 } 
    },
    {
        ["offsetX"]=277,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 54,
        ["fileDataIDs"] = { 272242 } 
    },
    {
        ["offsetX"]=335,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 193,
        ["fileDataIDs"] = { 272213 } 
    },
    {
        ["offsetX"]=351,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 52,
        ["fileDataIDs"] = { 272237 } 
    },
    {
        ["offsetX"]=387,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 390,
        ["fileDataIDs"] = { 272220 } 
    },
    {
        ["offsetX"]=391,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 258,
        ["fileDataIDs"] = { 272230 } 
    },
    {
        ["offsetX"]=431,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 143,
        ["fileDataIDs"] = { 272188 } 
    },
    {
        ["offsetX"]=504,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 53,
        ["fileDataIDs"] = { 272208 } 
    },
    {
        ["offsetX"]=532,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 363,
        ["fileDataIDs"] = { 272236 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 267,
        ["fileDataIDs"] = { 272206 } 
    },
    {
        ["offsetX"]=598,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 79,
        ["fileDataIDs"] = { 272232 } 
    },
    {
        ["offsetX"]=666,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 233,
        ["fileDataIDs"] = { 272244 } 
    },
    {
        ["offsetX"]=660,
        ["textureHeight"] = 334,
        ["textureWidth"] = 256,
        ["offsetY"] = 334,
        ["fileDataIDs"] = { 272196,272197 } 
    },
    {
        ["offsetX"]=10,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 107,
        ["fileDataIDs"] = { 272199,272200 } 
    },
    {
        ["offsetX"]=168,
        ["textureHeight"] = 334,
        ["textureWidth"] = 512,
        ["offsetY"] = 334,
        ["fileDataIDs"] = { 272205,272229,272190,272238 } 
    },
    {
        ["offsetX"]=36,
        ["textureHeight"] = 420,
        ["textureWidth"] = 512,
        ["offsetY"] = 248,
        ["fileDataIDs"] = { 272224,272233,272191,272212 } 
    }
},
[113] = {
    {
        ["offsetX"]=316,
        ["textureHeight"] = 256,
        ["textureWidth"] = 128,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 272840 } 
    },
    {
        ["offsetX"]=321,
        ["textureHeight"] = 208,
        ["textureWidth"] = 256,
        ["offsetY"] = 460,
        ["fileDataIDs"] = { 272889 } 
    },
    {
        ["offsetX"]=247,
        ["textureHeight"] = 234,
        ["textureWidth"] = 256,
        ["offsetY"] = 434,
        ["fileDataIDs"] = { 272843 } 
    },
    {
        ["offsetX"]=116,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 4,
        ["fileDataIDs"] = { 272878 } 
    },
    {
        ["offsetX"]=222,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 362,
        ["fileDataIDs"] = { 272846 } 
    },
    {
        ["offsetX"]=245,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 272881 } 
    },
    {
        ["offsetX"]=310,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 272887 } 
    },
    {
        ["offsetX"]=314,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272837 } 
    },
    {
        ["offsetX"]=377,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 272,
        ["fileDataIDs"] = { 272836 } 
    },
    {
        ["offsetX"]=397,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 165,
        ["fileDataIDs"] = { 272839 } 
    },
    {
        ["offsetX"]=417,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 327,
        ["fileDataIDs"] = { 272873 } 
    },
    {
        ["offsetX"]=478,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 19,
        ["fileDataIDs"] = { 272880 } 
    },
    {
        ["offsetX"]=480,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 277,
        ["fileDataIDs"] = { 272866 } 
    },
    {
        ["offsetX"]=505,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 154,
        ["fileDataIDs"] = { 272886 } 
    },
    {
        ["offsetX"]=521,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 275,
        ["fileDataIDs"] = { 272835 } 
    },
    {
        ["offsetX"]=103,
        ["textureHeight"] = 367,
        ["textureWidth"] = 256,
        ["offsetY"] = 301,
        ["fileDataIDs"] = { 272844,272847 } 
    },
    {
        ["offsetX"]=455,
        ["textureHeight"] = 512,
        ["textureWidth"] = 256,
        ["offsetY"] = 34,
        ["fileDataIDs"] = { 272879,272834 } 
    },
    {
        ["offsetX"]=617,
        ["textureHeight"] = 512,
        ["textureWidth"] = 385,
        ["offsetY"] = 149,
        ["fileDataIDs"] = { 272860,272855,272850,272856 } 
    },
    {
        ["offsetX"]=143,
        ["textureHeight"] = 256,
        ["textureWidth"] = 512,
        ["offsetY"] = 171,
        ["fileDataIDs"] = { 272851,272867 } 
    },
    {
        ["offsetX"]=449,
        ["textureHeight"] = 320,
        ["textureWidth"] = 512,
        ["offsetY"] = 348,
        ["fileDataIDs"] = { 272876,272888,272857,272877 } 
    },
    {
        ["offsetX"]=104,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 4,
        ["fileDataIDs"] = { 272861,272831,272883,272838 } 
    }
},
[114] = {
    {
        ["offsetX"]=241,
        ["textureHeight"] = 128,
        ["textureWidth"] = 256,
        ["offsetY"] = 388,
        ["fileDataIDs"] = { 272255 } 
    },
    {
        ["offsetX"]=490,
        ["textureHeight"] = 145,
        ["textureWidth"] = 256,
        ["offsetY"] = 523,
        ["fileDataIDs"] = { 272274 } 
    },
    {
        ["offsetX"]=357,
        ["textureHeight"] = 179,
        ["textureWidth"] = 256,
        ["offsetY"] = 489,
        ["fileDataIDs"] = { 272288 } 
    },
    {
        ["offsetX"]=239,
        ["textureHeight"] = 213,
        ["textureWidth"] = 256,
        ["offsetY"] = 455,
        ["fileDataIDs"] = { 272292 } 
    },
    {
        ["offsetX"]=454,
        ["textureHeight"] = 217,
        ["textureWidth"] = 256,
        ["offsetY"] = 451,
        ["fileDataIDs"] = { 272253 } 
    },
    {
        ["offsetX"]=132,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 294,
        ["fileDataIDs"] = { 272262 } 
    },
    {
        ["offsetX"]=171,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 155,
        ["fileDataIDs"] = { 272247 } 
    },
    {
        ["offsetX"]=229,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 38,
        ["fileDataIDs"] = { 272263 } 
    },
    {
        ["offsetX"]=237,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 272273 } 
    },
    {
        ["offsetX"]=253,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 301,
        ["fileDataIDs"] = { 272283 } 
    },
    {
        ["offsetX"]=298,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 134,
        ["fileDataIDs"] = { 272285 } 
    },
    {
        ["offsetX"]=328,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 397,
        ["fileDataIDs"] = { 272280 } 
    },
    {
        ["offsetX"]=356,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 261,
        ["fileDataIDs"] = { 272249 } 
    },
    {
        ["offsetX"]=396,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 10,
        ["fileDataIDs"] = { 272269 } 
    },
    {
        ["offsetX"]=411,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 20,
        ["fileDataIDs"] = { 272248 } 
    },
    {
        ["offsetX"]=465,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 336,
        ["fileDataIDs"] = { 272260 } 
    },
    {
        ["offsetX"]=481,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 272264 } 
    },
    {
        ["offsetX"]=513,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 138,
        ["fileDataIDs"] = { 272282 } 
    },
    {
        ["offsetX"]=644,
        ["textureHeight"] = 256,
        ["textureWidth"] = 256,
        ["offsetY"] = 173,
        ["fileDataIDs"] = { 272287 } 
    },
    {
        ["offsetX"]=147,
        ["textureHeight"] = 387,
        ["textureWidth"] = 256,
        ["offsetY"] = 281,
        ["fileDataIDs"] = { 272279,272265 } 
    },
    {
        ["offsetX"]=593,
        ["textureHeight"] = 384,
        ["textureWidth"] = 409,
        ["offsetY"] = 284,
        ["fileDataIDs"] = { 272267,272254,272268,272284 } 
    },
    {
        ["offsetX"]=354,
        ["textureHeight"] = 256,
        ["textureWidth"] = 512,
        ["offsetY"] = 49,
        ["fileDataIDs"] = { 272296,272294 } 
    }
},
[119] = {
    {
        ["offsetX"]=272,
        ["textureHeight"] = 276,
        ["textureWidth"] = 186,
        ["offsetY"] = 237,
        ["fileDataIDs"] = { 270870,270743 } 
    },
    {
        ["offsetX"]=662,
        ["textureHeight"] = 209,
        ["textureWidth"] = 203,
        ["offsetY"] = 11,
        ["fileDataIDs"] = { 270848 } 
    },
    {
        ["offsetX"]=325,
        ["textureHeight"] = 214,
        ["textureWidth"] = 244,
        ["offsetY"] = 140,
        ["fileDataIDs"] = { 270785 } 
    },
    {
        ["offsetX"]=397,
        ["textureHeight"] = 319,
        ["textureWidth"] = 244,
        ["offsetY"] = 66,
        ["fileDataIDs"] = { 270900,270819 } 
    },
    {
        ["offsetX"]=457,
        ["textureHeight"] = 302,
        ["textureWidth"] = 259,
        ["offsetY"] = 264,
        ["fileDataIDs"] = { 270903,270781,270794,270855 } 
    },
    {
        ["offsetX"]=329,
        ["textureHeight"] = 278,
        ["textureWidth"] = 260,
        ["offsetY"] = 237,
        ["fileDataIDs"] = { 270851,270871,270795,270769 } 
    },
    {
        ["offsetX"]=153,
        ["textureHeight"] = 378,
        ["textureWidth"] = 267,
        ["offsetY"] = 238,
        ["fileDataIDs"] = { 270822,270894,270835,270784 } 
    },
    {
        ["offsetX"]=707,
        ["textureHeight"] = 279,
        ["textureWidth"] = 289,
        ["offsetY"] = 181,
        ["fileDataIDs"] = { 270765,270824,270887,270801 } 
    },
    {
        ["offsetX"]=712,
        ["textureHeight"] = 292,
        ["textureWidth"] = 290,
        ["offsetY"] = 15,
        ["fileDataIDs"] = { 270826,270865,270759,270763 } 
    },
    {
        ["offsetX"]=480,
        ["textureHeight"] = 342,
        ["textureWidth"] = 375,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270869,270890,270764,270762 } 
    },
    {
        ["offsetX"]=293,
        ["textureHeight"] = 258,
        ["textureWidth"] = 382,
        ["offsetY"] = 383,
        ["fileDataIDs"] = { 270761,270879,270880,270787 } 
    },
    {
        ["offsetX"]=509,
        ["textureHeight"] = 316,
        ["textureWidth"] = 385,
        ["offsetY"] = 214,
        ["fileDataIDs"] = { 270898,270840,270899,270812 } 
    },
    {
        ["offsetX"]=314,
        ["textureHeight"] = 203,
        ["textureWidth"] = 396,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270806,270810 } 
    },
    {
        ["offsetX"]=50,
        ["textureHeight"] = 381,
        ["textureWidth"] = 460,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 270821,270758,270797,270775 } 
    }
},
[120] = {
    {
        ["offsetX"]=374,
        ["textureHeight"] = 211,
        ["textureWidth"] = 188,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 271192 } 
    },
    {
        ["offsetX"]=543,
        ["textureHeight"] = 218,
        ["textureWidth"] = 196,
        ["offsetY"] = 362,
        ["fileDataIDs"] = { 271358 } 
    },
    {
        ["offsetX"]=403,
        ["textureHeight"] = 219,
        ["textureWidth"] = 213,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271232 } 
    },
    {
        ["offsetX"]=614,
        ["textureHeight"] = 261,
        ["textureWidth"] = 214,
        ["offsetY"] = 358,
        ["fileDataIDs"] = { 271313,271133 } 
    },
    {
        ["offsetX"]=661,
        ["textureHeight"] = 212,
        ["textureWidth"] = 226,
        ["offsetY"] = 264,
        ["fileDataIDs"] = { 271378 } 
    },
    {
        ["offsetX"]=487,
        ["textureHeight"] = 259,
        ["textureWidth"] = 229,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271146,271257 } 
    },
    {
        ["offsetX"]=42,
        ["textureHeight"] = 299,
        ["textureWidth"] = 229,
        ["offsetY"] = 187,
        ["fileDataIDs"] = { 271267,271201 } 
    },
    {
        ["offsetX"]=134,
        ["textureHeight"] = 337,
        ["textureWidth"] = 235,
        ["offsetY"] = 165,
        ["fileDataIDs"] = { 271254,271233 } 
    },
    {
        ["offsetX"]=569,
        ["textureHeight"] = 354,
        ["textureWidth"] = 235,
        ["offsetY"] = 7,
        ["fileDataIDs"] = { 271149,271222 } 
    },
    {
        ["offsetX"]=258,
        ["textureHeight"] = 218,
        ["textureWidth"] = 236,
        ["offsetY"] = 203,
        ["fileDataIDs"] = { 271170 } 
    },
    {
        ["offsetX"]=433,
        ["textureHeight"] = 225,
        ["textureWidth"] = 258,
        ["offsetY"] = 118,
        ["fileDataIDs"] = { 271239,271157 } 
    },
    {
        ["offsetX"]=703,
        ["textureHeight"] = 278,
        ["textureWidth"] = 299,
        ["offsetY"] = 7,
        ["fileDataIDs"] = { 271351,271270,271175,271330 } 
    },
    {
        ["offsetX"]=698,
        ["textureHeight"] = 286,
        ["textureWidth"] = 301,
        ["offsetY"] = 332,
        ["fileDataIDs"] = { 271280,271346,271164,271387 } 
    },
    {
        ["offsetX"]=256,
        ["textureHeight"] = 203,
        ["textureWidth"] = 304,
        ["offsetY"] = 104,
        ["fileDataIDs"] = { 271352,271244 } 
    },
    {
        ["offsetX"]=210,
        ["textureHeight"] = 242,
        ["textureWidth"] = 306,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271187,271231 } 
    },
    {
        ["offsetX"]=691,
        ["textureHeight"] = 272,
        ["textureWidth"] = 311,
        ["offsetY"] = 160,
        ["fileDataIDs"] = { 271333,271199,271364,271162 } 
    },
    {
        ["offsetX"]=453,
        ["textureHeight"] = 353,
        ["textureWidth"] = 317,
        ["offsetY"] = 219,
        ["fileDataIDs"] = { 271205,271248,271252,271236 } 
    },
    {
        ["offsetX"]=217,
        ["textureHeight"] = 300,
        ["textureWidth"] = 356,
        ["offsetY"] = 313,
        ["fileDataIDs"] = { 271322,271298,271290,271337 } 
    }
},
[121] = {
    {
        ["offsetX"]=232,
        ["textureHeight"] = 235,
        ["textureWidth"] = 249,
        ["offsetY"] = 129,
        ["fileDataIDs"] = { 271764 } 
    },
    {
        ["offsetX"]=18,
        ["textureHeight"] = 207,
        ["textureWidth"] = 274,
        ["offsetY"] = 461,
        ["fileDataIDs"] = { 271794,271778 } 
    },
    {
        ["offsetX"]=217,
        ["textureHeight"] = 290,
        ["textureWidth"] = 278,
        ["offsetY"] = 244,
        ["fileDataIDs"] = { 271801,271773,271779,271806 } 
    },
    {
        ["offsetX"]=176,
        ["textureHeight"] = 247,
        ["textureWidth"] = 283,
        ["offsetY"] = 421,
        ["fileDataIDs"] = { 271789,271812 } 
    },
    {
        ["offsetX"]=358,
        ["textureHeight"] = 227,
        ["textureWidth"] = 294,
        ["offsetY"] = 187,
        ["fileDataIDs"] = { 271785,271817 } 
    },
    {
        ["offsetX"]=548,
        ["textureHeight"] = 265,
        ["textureWidth"] = 324,
        ["offsetY"] = 137,
        ["fileDataIDs"] = { 271790,271765,271766,271767 } 
    },
    {
        ["offsetX"]=331,
        ["textureHeight"] = 260,
        ["textureWidth"] = 328,
        ["offsetY"] = 32,
        ["fileDataIDs"] = { 271809,271771,271772,271776 } 
    },
    {
        ["offsetX"]=509,
        ["textureHeight"] = 246,
        ["textureWidth"] = 329,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271769,271770 } 
    },
    {
        ["offsetX"]=17,
        ["textureHeight"] = 294,
        ["textureWidth"] = 332,
        ["offsetY"] = 307,
        ["fileDataIDs"] = { 271768,271783,271795,271810 } 
    },
    {
        ["offsetX"]=607,
        ["textureHeight"] = 284,
        ["textureWidth"] = 351,
        ["offsetY"] = 41,
        ["fileDataIDs"] = { 271791,271807,271774,271796 } 
    },
    {
        ["offsetX"]=7,
        ["textureHeight"] = 224,
        ["textureWidth"] = 356,
        ["offsetY"] = 207,
        ["fileDataIDs"] = { 271781,271784 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 285,
        ["textureWidth"] = 382,
        ["offsetY"] = 46,
        ["fileDataIDs"] = { 271792,271775,271813,271797 } 
    },
    {
        ["offsetX"]=547,
        ["textureHeight"] = 400,
        ["textureWidth"] = 455,
        ["offsetY"] = 257,
        ["fileDataIDs"] = { 271798,271780,271814,271799 } 
    },
    {
        ["offsetX"]=312,
        ["textureHeight"] = 362,
        ["textureWidth"] = 475,
        ["offsetY"] = 294,
        ["fileDataIDs"] = { 271803,271788,271816,271805 } 
    }
},
[122] = {
    {
        ["offsetX"]=576,
        ["textureHeight"] = 173,
        ["textureWidth"] = 174,
        ["offsetY"] = 170,
        ["fileDataIDs"] = { 271946 } 
    },
    {
        ["offsetX"]=342,
        ["textureHeight"] = 191,
        ["textureWidth"] = 177,
        ["offsetY"] = 351,
        ["fileDataIDs"] = { 271992 } 
    },
    {
        ["offsetX"]=595,
        ["textureHeight"] = 208,
        ["textureWidth"] = 178,
        ["offsetY"] = 240,
        ["fileDataIDs"] = { 271945 } 
    },
    {
        ["offsetX"]=490,
        ["textureHeight"] = 178,
        ["textureWidth"] = 181,
        ["offsetY"] = 161,
        ["fileDataIDs"] = { 271993 } 
    },
    {
        ["offsetX"]=397,
        ["textureHeight"] = 263,
        ["textureWidth"] = 187,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 271980,271994 } 
    },
    {
        ["offsetX"]=668,
        ["textureHeight"] = 201,
        ["textureWidth"] = 193,
        ["offsetY"] = 223,
        ["fileDataIDs"] = { 271950 } 
    },
    {
        ["offsetX"]=283,
        ["textureHeight"] = 256,
        ["textureWidth"] = 213,
        ["offsetY"] = 203,
        ["fileDataIDs"] = { 271976 } 
    },
    {
        ["offsetX"]=222,
        ["textureHeight"] = 168,
        ["textureWidth"] = 222,
        ["offsetY"] = 100,
        ["fileDataIDs"] = { 271959 } 
    },
    {
        ["offsetX"]=354,
        ["textureHeight"] = 209,
        ["textureWidth"] = 223,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271957 } 
    },
    {
        ["offsetX"]=664,
        ["textureHeight"] = 338,
        ["textureWidth"] = 223,
        ["offsetY"] = 25,
        ["fileDataIDs"] = { 271956,271974 } 
    },
    {
        ["offsetX"]=585,
        ["textureHeight"] = 216,
        ["textureWidth"] = 232,
        ["offsetY"] = 336,
        ["fileDataIDs"] = { 271941 } 
    },
    {
        ["offsetX"]=343,
        ["textureHeight"] = 232,
        ["textureWidth"] = 238,
        ["offsetY"] = 108,
        ["fileDataIDs"] = { 271984 } 
    },
    {
        ["offsetX"]=225,
        ["textureHeight"] = 189,
        ["textureWidth"] = 242,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271954 } 
    },
    {
        ["offsetX"]=621,
        ["textureHeight"] = 305,
        ["textureWidth"] = 244,
        ["offsetY"] = 327,
        ["fileDataIDs"] = { 271969,271989 } 
    },
    {
        ["offsetX"]=477,
        ["textureHeight"] = 382,
        ["textureWidth"] = 248,
        ["offsetY"] = 216,
        ["fileDataIDs"] = { 271985,271968 } 
    },
    {
        ["offsetX"]=490,
        ["textureHeight"] = 192,
        ["textureWidth"] = 251,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271970 } 
    },
    {
        ["offsetX"]=99,
        ["textureHeight"] = 265,
        ["textureWidth"] = 263,
        ["offsetY"] = 37,
        ["fileDataIDs"] = { 271940,271975,271953,271991 } 
    },
    {
        ["offsetX"]=420,
        ["textureHeight"] = 210,
        ["textureWidth"] = 266,
        ["offsetY"] = 57,
        ["fileDataIDs"] = { 271952,271967 } 
    },
    {
        ["offsetX"]=415,
        ["textureHeight"] = 308,
        ["textureWidth"] = 284,
        ["offsetY"] = 360,
        ["fileDataIDs"] = { 271997,271998,271963,271964 } 
    },
    {
        ["offsetX"]=572,
        ["textureHeight"] = 306,
        ["textureWidth"] = 298,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 271977,271978,271979,271958 } 
    },
    {
        ["offsetX"]=99,
        ["textureHeight"] = 265,
        ["textureWidth"] = 333,
        ["offsetY"] = 278,
        ["fileDataIDs"] = { 271962,271987,271983,271988 } 
    },
    {
        ["offsetX"]=90,
        ["textureHeight"] = 220,
        ["textureWidth"] = 347,
        ["offsetY"] = 180,
        ["fileDataIDs"] = { 271986,271960 } 
    },
    {
        ["offsetX"]=168,
        ["textureHeight"] = 258,
        ["textureWidth"] = 350,
        ["offsetY"] = 410,
        ["fileDataIDs"] = { 271965,271966,271972,271973 } 
    }
},
[123] = {
    {
        ["offsetX"]=0,
        ["textureHeight"] = 268,
        ["textureWidth"] = 204,
        ["offsetY"] = 167,
        ["fileDataIDs"] = { 254677,254678 } 
    },
    {
        ["offsetX"]=218,
        ["textureHeight"] = 283,
        ["textureWidth"] = 219,
        ["offsetY"] = 291,
        ["fileDataIDs"] = { 254688,254689 } 
    },
    {
        ["offsetX"]=444,
        ["textureHeight"] = 207,
        ["textureWidth"] = 223,
        ["offsetY"] = 276,
        ["fileDataIDs"] = { 254695 } 
    },
    {
        ["offsetX"]=321,
        ["textureHeight"] = 399,
        ["textureWidth"] = 223,
        ["offsetY"] = 15,
        ["fileDataIDs"] = { 254690,254691 } 
    },
    {
        ["offsetX"]=327,
        ["textureHeight"] = 210,
        ["textureWidth"] = 227,
        ["offsetY"] = 305,
        ["fileDataIDs"] = { 254687 } 
    },
    {
        ["offsetX"]=217,
        ["textureHeight"] = 240,
        ["textureWidth"] = 238,
        ["offsetY"] = 50,
        ["fileDataIDs"] = { 254692 } 
    },
    {
        ["offsetX"]=690,
        ["textureHeight"] = 239,
        ["textureWidth"] = 245,
        ["offsetY"] = 267,
        ["fileDataIDs"] = { 254679 } 
    },
    {
        ["offsetX"]=538,
        ["textureHeight"] = 243,
        ["textureWidth"] = 248,
        ["offsetY"] = 181,
        ["fileDataIDs"] = { 254684 } 
    },
    {
        ["offsetX"]=715,
        ["textureHeight"] = 217,
        ["textureWidth"] = 269,
        ["offsetY"] = 390,
        ["fileDataIDs"] = { 254693,254694 } 
    },
    {
        ["offsetX"]=558,
        ["textureHeight"] = 231,
        ["textureWidth"] = 283,
        ["offsetY"] = 329,
        ["fileDataIDs"] = { 254685,254686 } 
    },
    {
        ["offsetX"]=626,
        ["textureHeight"] = 343,
        ["textureWidth"] = 300,
        ["offsetY"] = 31,
        ["fileDataIDs"] = { 254680,254681,254682,254683 } 
    },
    {
        ["offsetX"]=392,
        ["textureHeight"] = 202,
        ["textureWidth"] = 308,
        ["offsetY"] = 466,
        ["fileDataIDs"] = { 254659,254660 } 
    },
    {
        ["offsetX"]=342,
        ["textureHeight"] = 212,
        ["textureWidth"] = 308,
        ["offsetY"] = 392,
        ["fileDataIDs"] = { 254657,254658 } 
    },
    {
        ["offsetX"]=616,
        ["textureHeight"] = 224,
        ["textureWidth"] = 314,
        ["offsetY"] = 30,
        ["fileDataIDs"] = { 294026,294027 } 
    },
    {
        ["offsetX"]=355,
        ["textureHeight"] = 375,
        ["textureWidth"] = 373,
        ["offsetY"] = 37,
        ["fileDataIDs"] = { 254653,254654,254655,254656 } 
    },
    {
        ["offsetX"]=22,
        ["textureHeight"] = 474,
        ["textureWidth"] = 393,
        ["offsetY"] = 122,
        ["fileDataIDs"] = { 254673,254674,254675,254676 } 
    }
},
[124] = {
    {
        ["offsetX"]=427,
        ["textureHeight"] = 235,
        ["textureWidth"] = 207,
        ["offsetY"] = 244,
        ["fileDataIDs"] = { 272524 } 
    },
    {
        ["offsetX"]=705,
        ["textureHeight"] = 286,
        ["textureWidth"] = 233,
        ["offsetY"] = 236,
        ["fileDataIDs"] = { 272529,272506 } 
    },
    {
        ["offsetX"]=265,
        ["textureHeight"] = 313,
        ["textureWidth"] = 239,
        ["offsetY"] = 355,
        ["fileDataIDs"] = { 272530,272516 } 
    },
    {
        ["offsetX"]=172,
        ["textureHeight"] = 248,
        ["textureWidth"] = 249,
        ["offsetY"] = 135,
        ["fileDataIDs"] = { 272507 } 
    },
    {
        ["offsetX"]=138,
        ["textureHeight"] = 288,
        ["textureWidth"] = 268,
        ["offsetY"] = 58,
        ["fileDataIDs"] = { 272517,272534,272496,272502 } 
    },
    {
        ["offsetX"]=396,
        ["textureHeight"] = 229,
        ["textureWidth"] = 293,
        ["offsetY"] = 51,
        ["fileDataIDs"] = { 272500,272501 } 
    },
    {
        ["offsetX"]=308,
        ["textureHeight"] = 327,
        ["textureWidth"] = 294,
        ["offsetY"] = 34,
        ["fileDataIDs"] = { 272523,272487,272539,272532 } 
    },
    {
        ["offsetX"]=501,
        ["textureHeight"] = 369,
        ["textureWidth"] = 312,
        ["offsetY"] = 134,
        ["fileDataIDs"] = { 272494,272495,272504,272533 } 
    },
    {
        ["offsetX"]=596,
        ["textureHeight"] = 265,
        ["textureWidth"] = 322,
        ["offsetY"] = 92,
        ["fileDataIDs"] = { 272521,272515,272522,272499 } 
    },
    {
        ["offsetX"]=76,
        ["textureHeight"] = 293,
        ["textureWidth"] = 329,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 272509,272491,272520,272484 } 
    },
    {
        ["offsetX"]=82,
        ["textureHeight"] = 316,
        ["textureWidth"] = 455,
        ["offsetY"] = 186,
        ["fileDataIDs"] = { 272535,272518,272490,272519 } 
    },
    {
        ["offsetX"]=359,
        ["textureHeight"] = 329,
        ["textureWidth"] = 468,
        ["offsetY"] = 339,
        ["fileDataIDs"] = { 272498,272531,272510,272541 } 
    }
},
[125] = {
    {
        ["offsetX"]=239,
        ["textureHeight"] = 164,
        ["textureWidth"] = 169,
        ["offsetY"] = 301,
        ["fileDataIDs"] = { 272922 } 
    },
    {
        ["offsetX"]=214,
        ["textureHeight"] = 239,
        ["textureWidth"] = 180,
        ["offsetY"] = 144,
        ["fileDataIDs"] = { 272933 } 
    },
    {
        ["offsetX"]=570,
        ["textureHeight"] = 270,
        ["textureWidth"] = 182,
        ["offsetY"] = 113,
        ["fileDataIDs"] = { 272927,272910 } 
    },
    {
        ["offsetX"]=395,
        ["textureHeight"] = 191,
        ["textureWidth"] = 184,
        ["offsetY"] = 470,
        ["fileDataIDs"] = { 272909 } 
    },
    {
        ["offsetX"]=162,
        ["textureHeight"] = 232,
        ["textureWidth"] = 205,
        ["offsetY"] = 143,
        ["fileDataIDs"] = { 272920 } 
    },
    {
        ["offsetX"]=316,
        ["textureHeight"] = 179,
        ["textureWidth"] = 210,
        ["offsetY"] = 296,
        ["fileDataIDs"] = { 272945 } 
    },
    {
        ["offsetX"]=108,
        ["textureHeight"] = 200,
        ["textureWidth"] = 221,
        ["offsetY"] = 206,
        ["fileDataIDs"] = { 272906 } 
    },
    {
        ["offsetX"]=98,
        ["textureHeight"] = 158,
        ["textureWidth"] = 228,
        ["offsetY"] = 318,
        ["fileDataIDs"] = { 272924 } 
    },
    {
        ["offsetX"]=134,
        ["textureHeight"] = 220,
        ["textureWidth"] = 244,
        ["offsetY"] = 429,
        ["fileDataIDs"] = { 272919 } 
    },
    {
        ["offsetX"]=242,
        ["textureHeight"] = 200,
        ["textureWidth"] = 251,
        ["offsetY"] = 468,
        ["fileDataIDs"] = { 272921 } 
    },
    {
        ["offsetX"]=339,
        ["textureHeight"] = 298,
        ["textureWidth"] = 305,
        ["offsetY"] = 370,
        ["fileDataIDs"] = { 272904,272925,272926,272952 } 
    },
    {
        ["offsetX"]=627,
        ["textureHeight"] = 484,
        ["textureWidth"] = 306,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 272934,272923,272908,272930 } 
    },
    {
        ["offsetX"]=481,
        ["textureHeight"] = 383,
        ["textureWidth"] = 309,
        ["offsetY"] = 285,
        ["fileDataIDs"] = { 272939,272953,272905,272935 } 
    },
    {
        ["offsetX"]=109,
        ["textureHeight"] = 195,
        ["textureWidth"] = 322,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 272948,272950 } 
    },
    {
        ["offsetX"]=292,
        ["textureHeight"] = 341,
        ["textureWidth"] = 363,
        ["offsetY"] = 122,
        ["fileDataIDs"] = { 272912,272913,272914,272946 } 
    },
    {
        ["offsetX"]=218,
        ["textureHeight"] = 265,
        ["textureWidth"] = 369,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 272943,272944,272931,272917 } 
    }
},
[126] = {
    {
        ["offsetX"]=174,
        ["textureHeight"] = 291,
        ["textureWidth"] = 218,
        ["offsetY"] = 191,
        ["fileDataIDs"] = { 273324,273292 } 
    },
    {
        ["offsetX"]=288,
        ["textureHeight"] = 248,
        ["textureWidth"] = 237,
        ["offsetY"] = 168,
        ["fileDataIDs"] = { 273329 } 
    },
    {
        ["offsetX"]=431,
        ["textureHeight"] = 304,
        ["textureWidth"] = 247,
        ["offsetY"] = 127,
        ["fileDataIDs"] = { 273322,273320 } 
    },
    {
        ["offsetX"]=479,
        ["textureHeight"] = 258,
        ["textureWidth"] = 249,
        ["offsetY"] = 241,
        ["fileDataIDs"] = { 273304,273305 } 
    },
    {
        ["offsetX"]=607,
        ["textureHeight"] = 288,
        ["textureWidth"] = 261,
        ["offsetY"] = 251,
        ["fileDataIDs"] = { 273309,273286,273310,273328 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 257,
        ["textureWidth"] = 265,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 273296,273300,273285,273287 } 
    },
    {
        ["offsetX"]=289,
        ["textureHeight"] = 254,
        ["textureWidth"] = 266,
        ["offsetY"] = 287,
        ["fileDataIDs"] = { 273330,273291 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 268,
        ["textureWidth"] = 272,
        ["offsetY"] = 247,
        ["fileDataIDs"] = { 273318,273298,273336,273303 } 
    },
    {
        ["offsetX"]=326,
        ["textureHeight"] = 265,
        ["textureWidth"] = 286,
        ["offsetY"] = 358,
        ["fileDataIDs"] = { 273311,273297,273331,273317 } 
    },
    {
        ["offsetX"]=380,
        ["textureHeight"] = 231,
        ["textureWidth"] = 302,
        ["offsetY"] = 437,
        ["fileDataIDs"] = { 273323,273289 } 
    },
    {
        ["offsetX"]=7,
        ["textureHeight"] = 256,
        ["textureWidth"] = 307,
        ["offsetY"] = 412,
        ["fileDataIDs"] = { 273326,273333 } 
    },
    {
        ["offsetX"]=575,
        ["textureHeight"] = 317,
        ["textureWidth"] = 311,
        ["offsetY"] = 88,
        ["fileDataIDs"] = { 273325,273307,273308,273319 } 
    },
    {
        ["offsetX"]=181,
        ["textureHeight"] = 305,
        ["textureWidth"] = 321,
        ["offsetY"] = 363,
        ["fileDataIDs"] = { 273312,273332,273282,273302 } 
    },
    {
        ["offsetX"]=629,
        ["textureHeight"] = 297,
        ["textureWidth"] = 336,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 273295,273301,273321,273288 } 
    }
},
[127] = {
    {
        ["offsetX"]=252,
        ["textureHeight"] = 416,
        ["textureWidth"] = 512,
        ["offsetY"] = 252,
        ["fileDataIDs"] = { 272721,272732,272715,272722 } 
    },
    {
        ["offsetX"]=251,
        ["textureHeight"] = 512,
        ["textureWidth"] = 512,
        ["offsetY"] = 4,
        ["fileDataIDs"] = { 272716,272728,272723,272733 } 
    }
},
[132] = {
    {
        ["offsetX"]=0,
        ["textureHeight"] = 260,
        ["textureWidth"] = 252,
        ["offsetY"] = 91,
        ["fileDataIDs"] = { 270966,271005 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 303,
        ["textureWidth"] = 264,
        ["offsetY"] = 176,
        ["fileDataIDs"] = { 270987,270962,270973,270997 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 222,
        ["textureWidth"] = 288,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 253268,271000 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 424,
        ["textureWidth"] = 416,
        ["offsetY"] = 244,
        ["fileDataIDs"] = { 270970,270961,270971,270996 } 
    },
    {
        ["offsetX"]=536,
        ["textureHeight"] = 369,
        ["textureWidth"] = 446,
        ["offsetY"] = 40,
        ["fileDataIDs"] = { 253267,270960,270995,270989 } 
    },
    {
        ["offsetX"]=500,
        ["textureHeight"] = 477,
        ["textureWidth"] = 502,
        ["offsetY"] = 105,
        ["fileDataIDs"] = { 253269,270985,253270,270986 } 
    },
    {
        ["offsetX"]=129,
        ["textureHeight"] = 668,
        ["textureWidth"] = 544,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 253264,271003,270968,270965,253265,253266,271002,271004,270984 } 
    },
    {
        ["offsetX"]=444,
        ["textureHeight"] = 285,
        ["textureWidth"] = 558,
        ["offsetY"] = 383,
        ["fileDataIDs"] = { 253271,253272,270974,270975,271001,270980 } 
    }
},
[179] = {
    {
        ["offsetX"]=377,
        ["textureHeight"] = 133,
        ["textureWidth"] = 142,
        ["offsetY"] = 359,
        ["fileDataIDs"] = { 440843 } 
    },
    {
        ["offsetX"]=433,
        ["textureHeight"] = 142,
        ["textureWidth"] = 156,
        ["offsetY"] = 11,
        ["fileDataIDs"] = { 440842 } 
    },
    {
        ["offsetX"]=264,
        ["textureHeight"] = 230,
        ["textureWidth"] = 159,
        ["offsetY"] = 144,
        ["fileDataIDs"] = { 440863 } 
    },
    {
        ["offsetX"]=416,
        ["textureHeight"] = 205,
        ["textureWidth"] = 168,
        ["offsetY"] = 368,
        ["fileDataIDs"] = { 440853 } 
    },
    {
        ["offsetX"]=189,
        ["textureHeight"] = 175,
        ["textureWidth"] = 172,
        ["offsetY"] = 408,
        ["fileDataIDs"] = { 440859 } 
    },
    {
        ["offsetX"]=351,
        ["textureHeight"] = 180,
        ["textureWidth"] = 173,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 440840 } 
    },
    {
        ["offsetX"]=129,
        ["textureHeight"] = 172,
        ["textureWidth"] = 177,
        ["offsetY"] = 348,
        ["fileDataIDs"] = { 440838 } 
    },
    {
        ["offsetX"]=416,
        ["textureHeight"] = 186,
        ["textureWidth"] = 190,
        ["offsetY"] = 131,
        ["fileDataIDs"] = { 440860 } 
    },
    {
        ["offsetX"]=492,
        ["textureHeight"] = 258,
        ["textureWidth"] = 210,
        ["offsetY"] = 161,
        ["fileDataIDs"] = { 440851,440852 } 
    },
    {
        ["offsetX"]=279,
        ["textureHeight"] = 193,
        ["textureWidth"] = 212,
        ["offsetY"] = 68,
        ["fileDataIDs"] = { 440862 } 
    },
    {
        ["offsetX"]=440,
        ["textureHeight"] = 216,
        ["textureWidth"] = 212,
        ["offsetY"] = 452,
        ["fileDataIDs"] = { 440854 } 
    },
    {
        ["offsetX"]=508,
        ["textureHeight"] = 211,
        ["textureWidth"] = 221,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 440850 } 
    },
    {
        ["offsetX"]=244,
        ["textureHeight"] = 190,
        ["textureWidth"] = 222,
        ["offsetY"] = 458,
        ["fileDataIDs"] = { 440841 } 
    },
    {
        ["offsetX"]=213,
        ["textureHeight"] = 216,
        ["textureWidth"] = 231,
        ["offsetY"] = 325,
        ["fileDataIDs"] = { 440861 } 
    },
    {
        ["offsetX"]=462,
        ["textureHeight"] = 209,
        ["textureWidth"] = 248,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 440839 } 
    },
    {
        ["offsetX"]=323,
        ["textureHeight"] = 288,
        ["textureWidth"] = 305,
        ["offsetY"] = 185,
        ["fileDataIDs"] = { 440855,440856,440857,440858 } 
    },
    {
        ["offsetX"]=581,
        ["textureHeight"] = 517,
        ["textureWidth"] = 350,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 440844,440845,440846,440847,440848,440849 } 
    }
},
[184] = {
    {
        ["offsetX"]=293,
        ["textureHeight"] = 219,
        ["textureWidth"] = 177,
        ["offsetY"] = 449,
        ["fileDataIDs"] = { 438477 } 
    },
    {
        ["offsetX"]=167,
        ["textureHeight"] = 236,
        ["textureWidth"] = 194,
        ["offsetY"] = 352,
        ["fileDataIDs"] = { 438476 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 166,
        ["textureWidth"] = 210,
        ["offsetY"] = 427,
        ["fileDataIDs"] = { 438440 } 
    },
    {
        ["offsetX"]=393,
        ["textureHeight"] = 268,
        ["textureWidth"] = 222,
        ["offsetY"] = 386,
        ["fileDataIDs"] = { 438482,438483 } 
    },
    {
        ["offsetX"]=141,
        ["textureHeight"] = 241,
        ["textureWidth"] = 244,
        ["offsetY"] = 202,
        ["fileDataIDs"] = { 438475 } 
    },
    {
        ["offsetX"]=387,
        ["textureHeight"] = 314,
        ["textureWidth"] = 267,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438484,438485,438486,438487 } 
    },
    {
        ["offsetX"]=504,
        ["textureHeight"] = 224,
        ["textureWidth"] = 280,
        ["offsetY"] = 394,
        ["fileDataIDs"] = { 438498,438499 } 
    },
    {
        ["offsetX"]=298,
        ["textureHeight"] = 342,
        ["textureWidth"] = 280,
        ["offsetY"] = 95,
        ["fileDataIDs"] = { 438478,438479,438480,438481 } 
    },
    {
        ["offsetX"]=639,
        ["textureHeight"] = 351,
        ["textureWidth"] = 281,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 438443,438444,438445,438446 } 
    },
    {
        ["offsetX"]=483,
        ["textureHeight"] = 263,
        ["textureWidth"] = 282,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 438447,438448,438449,438450 } 
    },
    {
        ["offsetX"]=482,
        ["textureHeight"] = 298,
        ["textureWidth"] = 282,
        ["offsetY"] = 14,
        ["fileDataIDs"] = { 438488,438489,438490,438491 } 
    },
    {
        ["offsetX"]=272,
        ["textureHeight"] = 178,
        ["textureWidth"] = 286,
        ["offsetY"] = 333,
        ["fileDataIDs"] = { 438441,438442 } 
    },
    {
        ["offsetX"]=516,
        ["textureHeight"] = 203,
        ["textureWidth"] = 321,
        ["offsetY"] = 465,
        ["fileDataIDs"] = { 438492,438493 } 
    },
    {
        ["offsetX"]=160,
        ["textureHeight"] = 336,
        ["textureWidth"] = 328,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438500,438501,438502,438503 } 
    },
    {
        ["offsetX"]=652,
        ["textureHeight"] = 345,
        ["textureWidth"] = 350,
        ["offsetY"] = 290,
        ["fileDataIDs"] = { 438494,438495,438496,438497 } 
    }
},
[199] = {
    {
        ["offsetX"]=0,
        ["textureHeight"] = 664,
        ["textureWidth"] = 1002,
        ["offsetY"] = 4,
        ["fileDataIDs"] = { 466830,466834,466835,466836,466837,466838,466839,466840,466841,466831,466832,466833 } 
    }
},
[203] = {
    {
        ["offsetX"]=303,
        ["textureHeight"] = 173,
        ["textureWidth"] = 270,
        ["offsetY"] = 197,
        ["fileDataIDs"] = { 438644,438645 } 
    },
    {
        ["offsetX"]=320,
        ["textureHeight"] = 300,
        ["textureWidth"] = 270,
        ["offsetY"] = 5,
        ["fileDataIDs"] = { 438632,438633,438634,438635 } 
    },
    {
        ["offsetX"]=622,
        ["textureHeight"] = 334,
        ["textureWidth"] = 272,
        ["offsetY"] = 320,
        ["fileDataIDs"] = { 438646,438647,438648,438649 } 
    },
    {
        ["offsetX"]=139,
        ["textureHeight"] = 232,
        ["textureWidth"] = 277,
        ["offsetY"] = 436,
        ["fileDataIDs"] = { 438668,438669 } 
    },
    {
        ["offsetX"]=6,
        ["textureHeight"] = 418,
        ["textureWidth"] = 282,
        ["offsetY"] = 78,
        ["fileDataIDs"] = { 438636,438637,438638,438639 } 
    },
    {
        ["offsetX"]=116,
        ["textureHeight"] = 321,
        ["textureWidth"] = 291,
        ["offsetY"] = 17,
        ["fileDataIDs"] = { 438670,438671,438672,438673 } 
    },
    {
        ["offsetX"]=682,
        ["textureHeight"] = 471,
        ["textureWidth"] = 320,
        ["offsetY"] = 128,
        ["fileDataIDs"] = { 438640,438641,438642,438643 } 
    },
    {
        ["offsetX"]=411,
        ["textureHeight"] = 264,
        ["textureWidth"] = 365,
        ["offsetY"] = 216,
        ["fileDataIDs"] = { 438678,438679,438680,438681 } 
    },
    {
        ["offsetX"]=318,
        ["textureHeight"] = 290,
        ["textureWidth"] = 419,
        ["offsetY"] = 378,
        ["fileDataIDs"] = { 438682,438683,438684,438685 } 
    },
    {
        ["offsetX"]=52,
        ["textureHeight"] = 319,
        ["textureWidth"] = 441,
        ["offsetY"] = 253,
        ["fileDataIDs"] = { 438674,438675,438676,438677 } 
    },
    {
        ["offsetX"]=392,
        ["textureHeight"] = 323,
        ["textureWidth"] = 537,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438662,438663,438664,438665,438666,438667 } 
    }
},
[204] = {
    {
        ["offsetX"]=273,
        ["textureHeight"] = 140,
        ["textureWidth"] = 214,
        ["offsetY"] = 528,
        ["fileDataIDs"] = { 440758 } 
    },
    {
        ["offsetX"]=423,
        ["textureHeight"] = 172,
        ["textureWidth"] = 216,
        ["offsetY"] = 251,
        ["fileDataIDs"] = { 440749 } 
    },
    {
        ["offsetX"]=300,
        ["textureHeight"] = 178,
        ["textureWidth"] = 218,
        ["offsetY"] = 64,
        ["fileDataIDs"] = { 440753 } 
    },
    {
        ["offsetX"]=269,
        ["textureHeight"] = 195,
        ["textureWidth"] = 242,
        ["offsetY"] = 436,
        ["fileDataIDs"] = { 440750 } 
    },
    {
        ["offsetX"]=267,
        ["textureHeight"] = 214,
        ["textureWidth"] = 254,
        ["offsetY"] = 196,
        ["fileDataIDs"] = { 440763 } 
    },
    {
        ["offsetX"]=398,
        ["textureHeight"] = 211,
        ["textureWidth"] = 269,
        ["offsetY"] = 457,
        ["fileDataIDs"] = { 440745,440746 } 
    },
    {
        ["offsetX"]=548,
        ["textureHeight"] = 279,
        ["textureWidth"] = 280,
        ["offsetY"] = 147,
        ["fileDataIDs"] = { 440754,440755,440756,440757 } 
    },
    {
        ["offsetX"]=244,
        ["textureHeight"] = 171,
        ["textureWidth"] = 285,
        ["offsetY"] = 286,
        ["fileDataIDs"] = { 440759,440760 } 
    },
    {
        ["offsetX"]=201,
        ["textureHeight"] = 170,
        ["textureWidth"] = 315,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440751,440752 } 
    },
    {
        ["offsetX"]=289,
        ["textureHeight"] = 226,
        ["textureWidth"] = 355,
        ["offsetY"] = 117,
        ["fileDataIDs"] = { 440761,440762 } 
    },
    {
        ["offsetX"]=274,
        ["textureHeight"] = 248,
        ["textureWidth"] = 384,
        ["offsetY"] = 307,
        ["fileDataIDs"] = { 440747,440748 } 
    }
},
[206] = {
    {
        ["offsetX"]=528,
        ["textureHeight"] = 189,
        ["textureWidth"] = 220,
        ["offsetY"] = 228,
        ["fileDataIDs"] = { 440974 } 
    },
    {
        ["offsetX"]=399,
        ["textureHeight"] = 207,
        ["textureWidth"] = 227,
        ["offsetY"] = 280,
        ["fileDataIDs"] = { 440977 } 
    },
    {
        ["offsetX"]=210,
        ["textureHeight"] = 315,
        ["textureWidth"] = 278,
        ["offsetY"] = 35,
        ["fileDataIDs"] = { 440984,440985,440986,440987 } 
    },
    {
        ["offsetX"]=380,
        ["textureHeight"] = 206,
        ["textureWidth"] = 291,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 440982,440983 } 
    },
    {
        ["offsetX"]=451,
        ["textureHeight"] = 217,
        ["textureWidth"] = 311,
        ["offsetY"] = 325,
        ["fileDataIDs"] = { 440975,440976 } 
    },
    {
        ["offsetX"]=456,
        ["textureHeight"] = 267,
        ["textureWidth"] = 316,
        ["offsetY"] = 401,
        ["fileDataIDs"] = { 440978,440979,440980,440981 } 
    },
    {
        ["offsetX"]=365,
        ["textureHeight"] = 225,
        ["textureWidth"] = 340,
        ["offsetY"] = 162,
        ["fileDataIDs"] = { 440988,440989 } 
    }
},
[209] = {
    {
        ["offsetX"]=415,
        ["textureHeight"] = 250,
        ["textureWidth"] = 225,
        ["offsetY"] = 183,
        ["fileDataIDs"] = { 440973 } 
    },
    {
        ["offsetX"]=266,
        ["textureHeight"] = 374,
        ["textureWidth"] = 267,
        ["offsetY"] = 280,
        ["fileDataIDs"] = { 440955,440956,440957,440958 } 
    },
    {
        ["offsetX"]=315,
        ["textureHeight"] = 251,
        ["textureWidth"] = 298,
        ["offsetY"] = 110,
        ["fileDataIDs"] = { 440963,440964 } 
    },
    {
        ["offsetX"]=162,
        ["textureHeight"] = 293,
        ["textureWidth"] = 306,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 440969,440970,440971,440972 } 
    },
    {
        ["offsetX"]=275,
        ["textureHeight"] = 262,
        ["textureWidth"] = 363,
        ["offsetY"] = 32,
        ["fileDataIDs"] = { 440959,440960,440961,440962 } 
    },
    {
        ["offsetX"]=412,
        ["textureHeight"] = 385,
        ["textureWidth"] = 370,
        ["offsetY"] = 283,
        ["fileDataIDs"] = { 440965,440966,440967,440968 } 
    },
    {
        ["offsetX"]=50,
        ["textureHeight"] = 394,
        ["textureWidth"] = 371,
        ["offsetY"] = 263,
        ["fileDataIDs"] = { 440947,440948,440949,440950 } 
    },
    {
        ["offsetX"]=497,
        ["textureHeight"] = 470,
        ["textureWidth"] = 491,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 440951,440952,440953,440954 } 
    }
},
[210] = {
    {
        ["offsetX"]=554,
        ["textureHeight"] = 223,
        ["textureWidth"] = 197,
        ["offsetY"] = 175,
        ["fileDataIDs"] = { 440998 } 
    },
    {
        ["offsetX"]=270,
        ["textureHeight"] = 180,
        ["textureWidth"] = 272,
        ["offsetY"] = 222,
        ["fileDataIDs"] = { 440992,440993 } 
    },
    {
        ["offsetX"]=460,
        ["textureHeight"] = 269,
        ["textureWidth"] = 286,
        ["offsetY"] = 261,
        ["fileDataIDs"] = { 440994,440995,440996,440997 } 
    },
    {
        ["offsetX"]=407,
        ["textureHeight"] = 223,
        ["textureWidth"] = 335,
        ["offsetY"] = 445,
        ["fileDataIDs"] = { 440990,440991 } 
    },
    {
        ["offsetX"]=400,
        ["textureHeight"] = 278,
        ["textureWidth"] = 339,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 441003,441004,441005,441006 } 
    },
    {
        ["offsetX"]=217,
        ["textureHeight"] = 361,
        ["textureWidth"] = 349,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 440999,441000,441001,441002 } 
    },
    {
        ["offsetX"]=150,
        ["textureHeight"] = 319,
        ["textureWidth"] = 480,
        ["offsetY"] = 32,
        ["fileDataIDs"] = { 441007,441008,441009,441010 } 
    }
},
[212] = {
    {
        ["offsetX"]=297,
        ["textureHeight"] = 198,
        ["textureWidth"] = 237,
        ["offsetY"] = 384,
        ["fileDataIDs"] = { 438312 } 
    },
    {
        ["offsetX"]=434,
        ["textureHeight"] = 156,
        ["textureWidth"] = 274,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438306,438307 } 
    },
    {
        ["offsetX"]=458,
        ["textureHeight"] = 285,
        ["textureWidth"] = 292,
        ["offsetY"] = 383,
        ["fileDataIDs"] = { 438294,438295,438296,438297 } 
    },
    {
        ["offsetX"]=287,
        ["textureHeight"] = 345,
        ["textureWidth"] = 355,
        ["offsetY"] = 177,
        ["fileDataIDs"] = { 438298,438299,438300,438301 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 285,
        ["textureWidth"] = 370,
        ["offsetY"] = 146,
        ["fileDataIDs"] = { 438280,438281,438282,438283 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 354,
        ["textureWidth"] = 371,
        ["offsetY"] = 314,
        ["fileDataIDs"] = { 438290,438291,438292,438293 } 
    },
    {
        ["offsetX"]=20,
        ["textureHeight"] = 359,
        ["textureWidth"] = 378,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438276,438277,438278,438279 } 
    },
    {
        ["offsetX"]=570,
        ["textureHeight"] = 248,
        ["textureWidth"] = 411,
        ["offsetY"] = 420,
        ["fileDataIDs"] = { 438310,438311 } 
    },
    {
        ["offsetX"]=141,
        ["textureHeight"] = 230,
        ["textureWidth"] = 430,
        ["offsetY"] = 438,
        ["fileDataIDs"] = { 438308,438309 } 
    },
    {
        ["offsetX"]=549,
        ["textureHeight"] = 343,
        ["textureWidth"] = 454,
        ["offsetY"] = 297,
        ["fileDataIDs"] = { 438272,438273,438274,438275 } 
    },
    {
        ["offsetX"]=540,
        ["textureHeight"] = 400,
        ["textureWidth"] = 462,
        ["offsetY"] = 12,
        ["fileDataIDs"] = { 438268,438269,438270,438271 } 
    },
    {
        ["offsetX"]=85,
        ["textureHeight"] = 273,
        ["textureWidth"] = 467,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438302,438303,438304,438305 } 
    },
    {
        ["offsetX"]=448,
        ["textureHeight"] = 287,
        ["textureWidth"] = 516,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438284,438285,438286,438287,438288,438289 } 
    }
},
[215] = {
    {
        ["offsetX"]=468,
        ["textureHeight"] = 221,
        ["textureWidth"] = 155,
        ["offsetY"] = 119,
        ["fileDataIDs"] = { 438752 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 176,
        ["textureWidth"] = 184,
        ["offsetY"] = 181,
        ["fileDataIDs"] = { 438751 } 
    },
    {
        ["offsetX"]=289,
        ["textureHeight"] = 255,
        ["textureWidth"] = 225,
        ["offsetY"] = 341,
        ["fileDataIDs"] = { 438740 } 
    },
    {
        ["offsetX"]=340,
        ["textureHeight"] = 276,
        ["textureWidth"] = 236,
        ["offsetY"] = 392,
        ["fileDataIDs"] = { 438754,438755 } 
    },
    {
        ["offsetX"]=345,
        ["textureHeight"] = 260,
        ["textureWidth"] = 238,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438743,438744 } 
    },
    {
        ["offsetX"]=471,
        ["textureHeight"] = 264,
        ["textureWidth"] = 240,
        ["offsetY"] = 404,
        ["fileDataIDs"] = { 438747,438748 } 
    },
    {
        ["offsetX"]=452,
        ["textureHeight"] = 209,
        ["textureWidth"] = 244,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438753 } 
    },
    {
        ["offsetX"]=292,
        ["textureHeight"] = 221,
        ["textureWidth"] = 246,
        ["offsetY"] = 213,
        ["fileDataIDs"] = { 438750 } 
    },
    {
        ["offsetX"]=408,
        ["textureHeight"] = 242,
        ["textureWidth"] = 253,
        ["offsetY"] = 248,
        ["fileDataIDs"] = { 438749 } 
    },
    {
        ["offsetX"]=528,
        ["textureHeight"] = 204,
        ["textureWidth"] = 271,
        ["offsetY"] = 73,
        ["fileDataIDs"] = { 438741,438742 } 
    },
    {
        ["offsetX"]=208,
        ["textureHeight"] = 221,
        ["textureWidth"] = 356,
        ["offsetY"] = 116,
        ["fileDataIDs"] = { 438745,438746 } 
    }
},
[216] = {
    {
        ["offsetX"]=293,
        ["textureHeight"] = 219,
        ["textureWidth"] = 177,
        ["offsetY"] = 449,
        ["fileDataIDs"] = { 438541 } 
    },
    {
        ["offsetX"]=167,
        ["textureHeight"] = 236,
        ["textureWidth"] = 194,
        ["offsetY"] = 352,
        ["fileDataIDs"] = { 438540 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 166,
        ["textureWidth"] = 210,
        ["offsetY"] = 427,
        ["fileDataIDs"] = { 438504 } 
    },
    {
        ["offsetX"]=393,
        ["textureHeight"] = 268,
        ["textureWidth"] = 222,
        ["offsetY"] = 386,
        ["fileDataIDs"] = { 438546,438547 } 
    },
    {
        ["offsetX"]=141,
        ["textureHeight"] = 241,
        ["textureWidth"] = 244,
        ["offsetY"] = 202,
        ["fileDataIDs"] = { 438539 } 
    },
    {
        ["offsetX"]=482,
        ["textureHeight"] = 298,
        ["textureWidth"] = 250,
        ["offsetY"] = 14,
        ["fileDataIDs"] = { 438552,438553 } 
    },
    {
        ["offsetX"]=387,
        ["textureHeight"] = 314,
        ["textureWidth"] = 267,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438548,438549,438550,438551 } 
    },
    {
        ["offsetX"]=504,
        ["textureHeight"] = 224,
        ["textureWidth"] = 280,
        ["offsetY"] = 394,
        ["fileDataIDs"] = { 438562,438563 } 
    },
    {
        ["offsetX"]=298,
        ["textureHeight"] = 342,
        ["textureWidth"] = 280,
        ["offsetY"] = 95,
        ["fileDataIDs"] = { 438542,438543,438544,438545 } 
    },
    {
        ["offsetX"]=639,
        ["textureHeight"] = 351,
        ["textureWidth"] = 281,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 438507,438508,438509,438510 } 
    },
    {
        ["offsetX"]=483,
        ["textureHeight"] = 263,
        ["textureWidth"] = 282,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 438523,438524,438525,438526 } 
    },
    {
        ["offsetX"]=272,
        ["textureHeight"] = 178,
        ["textureWidth"] = 286,
        ["offsetY"] = 333,
        ["fileDataIDs"] = { 438505,438506 } 
    },
    {
        ["offsetX"]=516,
        ["textureHeight"] = 203,
        ["textureWidth"] = 321,
        ["offsetY"] = 465,
        ["fileDataIDs"] = { 438556,438557 } 
    },
    {
        ["offsetX"]=160,
        ["textureHeight"] = 336,
        ["textureWidth"] = 328,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438564,438565,438566,438567 } 
    },
    {
        ["offsetX"]=652,
        ["textureHeight"] = 345,
        ["textureWidth"] = 350,
        ["offsetY"] = 290,
        ["fileDataIDs"] = { 438558,438559,438560,438561 } 
    }
},
[220] = {
    {
        ["offsetX"]=293,
        ["textureHeight"] = 219,
        ["textureWidth"] = 177,
        ["offsetY"] = 449,
        ["fileDataIDs"] = { 438605 } 
    },
    {
        ["offsetX"]=167,
        ["textureHeight"] = 236,
        ["textureWidth"] = 194,
        ["offsetY"] = 352,
        ["fileDataIDs"] = { 438604 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 166,
        ["textureWidth"] = 210,
        ["offsetY"] = 427,
        ["fileDataIDs"] = { 438568 } 
    },
    {
        ["offsetX"]=393,
        ["textureHeight"] = 268,
        ["textureWidth"] = 222,
        ["offsetY"] = 386,
        ["fileDataIDs"] = { 438610,438611 } 
    },
    {
        ["offsetX"]=141,
        ["textureHeight"] = 241,
        ["textureWidth"] = 244,
        ["offsetY"] = 202,
        ["fileDataIDs"] = { 438603 } 
    },
    {
        ["offsetX"]=387,
        ["textureHeight"] = 314,
        ["textureWidth"] = 267,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438612,438613,438614,438615 } 
    },
    {
        ["offsetX"]=504,
        ["textureHeight"] = 224,
        ["textureWidth"] = 280,
        ["offsetY"] = 394,
        ["fileDataIDs"] = { 438626,438627 } 
    },
    {
        ["offsetX"]=298,
        ["textureHeight"] = 342,
        ["textureWidth"] = 280,
        ["offsetY"] = 95,
        ["fileDataIDs"] = { 438606,438607,438608,438609 } 
    },
    {
        ["offsetX"]=639,
        ["textureHeight"] = 351,
        ["textureWidth"] = 281,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 438571,438572,438573,438574 } 
    },
    {
        ["offsetX"]=483,
        ["textureHeight"] = 263,
        ["textureWidth"] = 282,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 438587,438588,438589,438590 } 
    },
    {
        ["offsetX"]=482,
        ["textureHeight"] = 298,
        ["textureWidth"] = 282,
        ["offsetY"] = 14,
        ["fileDataIDs"] = { 438616,438617,438618,438619 } 
    },
    {
        ["offsetX"]=272,
        ["textureHeight"] = 178,
        ["textureWidth"] = 286,
        ["offsetY"] = 333,
        ["fileDataIDs"] = { 438569,438570 } 
    },
    {
        ["offsetX"]=516,
        ["textureHeight"] = 203,
        ["textureWidth"] = 321,
        ["offsetY"] = 465,
        ["fileDataIDs"] = { 438620,438621 } 
    },
    {
        ["offsetX"]=160,
        ["textureHeight"] = 336,
        ["textureWidth"] = 328,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438628,438629,438630,438631 } 
    },
    {
        ["offsetX"]=652,
        ["textureHeight"] = 345,
        ["textureWidth"] = 350,
        ["offsetY"] = 290,
        ["fileDataIDs"] = { 438622,438623,438624,438625 } 
    }
},
[225] = {
    {
        ["offsetX"]=377,
        ["textureHeight"] = 133,
        ["textureWidth"] = 142,
        ["offsetY"] = 359,
        ["fileDataIDs"] = { 457676 } 
    },
    {
        ["offsetX"]=433,
        ["textureHeight"] = 142,
        ["textureWidth"] = 156,
        ["offsetY"] = 11,
        ["fileDataIDs"] = { 457675 } 
    },
    {
        ["offsetX"]=264,
        ["textureHeight"] = 230,
        ["textureWidth"] = 159,
        ["offsetY"] = 144,
        ["fileDataIDs"] = { 457696 } 
    },
    {
        ["offsetX"]=416,
        ["textureHeight"] = 205,
        ["textureWidth"] = 168,
        ["offsetY"] = 368,
        ["fileDataIDs"] = { 457686 } 
    },
    {
        ["offsetX"]=189,
        ["textureHeight"] = 175,
        ["textureWidth"] = 172,
        ["offsetY"] = 408,
        ["fileDataIDs"] = { 457692 } 
    },
    {
        ["offsetX"]=351,
        ["textureHeight"] = 180,
        ["textureWidth"] = 173,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 457673 } 
    },
    {
        ["offsetX"]=129,
        ["textureHeight"] = 172,
        ["textureWidth"] = 177,
        ["offsetY"] = 348,
        ["fileDataIDs"] = { 457671 } 
    },
    {
        ["offsetX"]=416,
        ["textureHeight"] = 186,
        ["textureWidth"] = 190,
        ["offsetY"] = 131,
        ["fileDataIDs"] = { 457693 } 
    },
    {
        ["offsetX"]=492,
        ["textureHeight"] = 258,
        ["textureWidth"] = 210,
        ["offsetY"] = 161,
        ["fileDataIDs"] = { 457684,457685 } 
    },
    {
        ["offsetX"]=279,
        ["textureHeight"] = 193,
        ["textureWidth"] = 212,
        ["offsetY"] = 68,
        ["fileDataIDs"] = { 457695 } 
    },
    {
        ["offsetX"]=440,
        ["textureHeight"] = 216,
        ["textureWidth"] = 212,
        ["offsetY"] = 452,
        ["fileDataIDs"] = { 457687 } 
    },
    {
        ["offsetX"]=508,
        ["textureHeight"] = 211,
        ["textureWidth"] = 221,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 457683 } 
    },
    {
        ["offsetX"]=244,
        ["textureHeight"] = 190,
        ["textureWidth"] = 222,
        ["offsetY"] = 458,
        ["fileDataIDs"] = { 457674 } 
    },
    {
        ["offsetX"]=213,
        ["textureHeight"] = 216,
        ["textureWidth"] = 231,
        ["offsetY"] = 325,
        ["fileDataIDs"] = { 457694 } 
    },
    {
        ["offsetX"]=462,
        ["textureHeight"] = 209,
        ["textureWidth"] = 248,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 457672 } 
    },
    {
        ["offsetX"]=323,
        ["textureHeight"] = 288,
        ["textureWidth"] = 305,
        ["offsetY"] = 185,
        ["fileDataIDs"] = { 457688,457689,457690,457691 } 
    },
    {
        ["offsetX"]=581,
        ["textureHeight"] = 517,
        ["textureWidth"] = 350,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 457677,457678,457679,457680,457681,457682 } 
    }
},
[226] = {
    {
        ["offsetX"]=377,
        ["textureHeight"] = 133,
        ["textureWidth"] = 142,
        ["offsetY"] = 359,
        ["fileDataIDs"] = { 440869 } 
    },
    {
        ["offsetX"]=433,
        ["textureHeight"] = 142,
        ["textureWidth"] = 156,
        ["offsetY"] = 11,
        ["fileDataIDs"] = { 440868 } 
    },
    {
        ["offsetX"]=264,
        ["textureHeight"] = 230,
        ["textureWidth"] = 159,
        ["offsetY"] = 144,
        ["fileDataIDs"] = { 440913 } 
    },
    {
        ["offsetX"]=416,
        ["textureHeight"] = 205,
        ["textureWidth"] = 168,
        ["offsetY"] = 368,
        ["fileDataIDs"] = { 440879 } 
    },
    {
        ["offsetX"]=189,
        ["textureHeight"] = 175,
        ["textureWidth"] = 172,
        ["offsetY"] = 408,
        ["fileDataIDs"] = { 440885 } 
    },
    {
        ["offsetX"]=351,
        ["textureHeight"] = 180,
        ["textureWidth"] = 173,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 440866 } 
    },
    {
        ["offsetX"]=129,
        ["textureHeight"] = 172,
        ["textureWidth"] = 177,
        ["offsetY"] = 348,
        ["fileDataIDs"] = { 440864 } 
    },
    {
        ["offsetX"]=416,
        ["textureHeight"] = 186,
        ["textureWidth"] = 190,
        ["offsetY"] = 131,
        ["fileDataIDs"] = { 440886 } 
    },
    {
        ["offsetX"]=492,
        ["textureHeight"] = 258,
        ["textureWidth"] = 210,
        ["offsetY"] = 161,
        ["fileDataIDs"] = { 440877,440878 } 
    },
    {
        ["offsetX"]=279,
        ["textureHeight"] = 193,
        ["textureWidth"] = 212,
        ["offsetY"] = 68,
        ["fileDataIDs"] = { 440912 } 
    },
    {
        ["offsetX"]=440,
        ["textureHeight"] = 216,
        ["textureWidth"] = 212,
        ["offsetY"] = 452,
        ["fileDataIDs"] = { 440880 } 
    },
    {
        ["offsetX"]=508,
        ["textureHeight"] = 211,
        ["textureWidth"] = 221,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 440876 } 
    },
    {
        ["offsetX"]=244,
        ["textureHeight"] = 190,
        ["textureWidth"] = 222,
        ["offsetY"] = 458,
        ["fileDataIDs"] = { 440867 } 
    },
    {
        ["offsetX"]=213,
        ["textureHeight"] = 216,
        ["textureWidth"] = 231,
        ["offsetY"] = 325,
        ["fileDataIDs"] = { 440911 } 
    },
    {
        ["offsetX"]=462,
        ["textureHeight"] = 209,
        ["textureWidth"] = 248,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 440865 } 
    },
    {
        ["offsetX"]=323,
        ["textureHeight"] = 288,
        ["textureWidth"] = 305,
        ["offsetY"] = 185,
        ["fileDataIDs"] = { 440881,440882,440883,440884 } 
    },
    {
        ["offsetX"]=581,
        ["textureHeight"] = 517,
        ["textureWidth"] = 350,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 440870,440871,440872,440873,440874,440875 } 
    }
},
[227] = {
    {
        ["offsetX"]=303,
        ["textureHeight"] = 173,
        ["textureWidth"] = 270,
        ["offsetY"] = 197,
        ["fileDataIDs"] = { 438698,438699 } 
    },
    {
        ["offsetX"]=320,
        ["textureHeight"] = 300,
        ["textureWidth"] = 270,
        ["offsetY"] = 5,
        ["fileDataIDs"] = { 438686,438687,438688,438689 } 
    },
    {
        ["offsetX"]=622,
        ["textureHeight"] = 334,
        ["textureWidth"] = 272,
        ["offsetY"] = 320,
        ["fileDataIDs"] = { 438700,438701,438702,438703 } 
    },
    {
        ["offsetX"]=139,
        ["textureHeight"] = 232,
        ["textureWidth"] = 277,
        ["offsetY"] = 436,
        ["fileDataIDs"] = { 438722,438723 } 
    },
    {
        ["offsetX"]=6,
        ["textureHeight"] = 418,
        ["textureWidth"] = 282,
        ["offsetY"] = 78,
        ["fileDataIDs"] = { 438690,438691,438692,438693 } 
    },
    {
        ["offsetX"]=116,
        ["textureHeight"] = 321,
        ["textureWidth"] = 291,
        ["offsetY"] = 17,
        ["fileDataIDs"] = { 438724,438725,438726,438727 } 
    },
    {
        ["offsetX"]=682,
        ["textureHeight"] = 471,
        ["textureWidth"] = 320,
        ["offsetY"] = 128,
        ["fileDataIDs"] = { 438694,438695,438696,438697 } 
    },
    {
        ["offsetX"]=411,
        ["textureHeight"] = 264,
        ["textureWidth"] = 365,
        ["offsetY"] = 216,
        ["fileDataIDs"] = { 438732,438733,438734,438735 } 
    },
    {
        ["offsetX"]=318,
        ["textureHeight"] = 290,
        ["textureWidth"] = 419,
        ["offsetY"] = 378,
        ["fileDataIDs"] = { 438736,438737,438738,438739 } 
    },
    {
        ["offsetX"]=52,
        ["textureHeight"] = 319,
        ["textureWidth"] = 441,
        ["offsetY"] = 253,
        ["fileDataIDs"] = { 438728,438729,438730,438731 } 
    },
    {
        ["offsetX"]=392,
        ["textureHeight"] = 323,
        ["textureWidth"] = 537,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 438716,438717,438718,438719,438720,438721 } 
    }
},
[228] = {
    {
        ["offsetX"]=0,
        ["textureHeight"] = 668,
        ["textureWidth"] = 1002,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 464052,464056,464057,464058,464059,464060,464061,464062,464063,464053,464054,464055 } 
    }
},
[252] = {
    {
        ["offsetX"]=344,
        ["textureHeight"] = 141,
        ["textureWidth"] = 143,
        ["offsetY"] = 89,
        ["fileDataIDs"] = { 458560 } 
    },
    {
        ["offsetX"]=327,
        ["textureHeight"] = 199,
        ["textureWidth"] = 165,
        ["offsetY"] = 356,
        ["fileDataIDs"] = { 458579 } 
    },
    {
        ["offsetX"]=291,
        ["textureHeight"] = 190,
        ["textureWidth"] = 174,
        ["offsetY"] = 89,
        ["fileDataIDs"] = { 458554 } 
    },
    {
        ["offsetX"]=269,
        ["textureHeight"] = 180,
        ["textureWidth"] = 175,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 458572 } 
    },
    {
        ["offsetX"]=302,
        ["textureHeight"] = 159,
        ["textureWidth"] = 177,
        ["offsetY"] = 306,
        ["fileDataIDs"] = { 458587 } 
    },
    {
        ["offsetX"]=370,
        ["textureHeight"] = 195,
        ["textureWidth"] = 182,
        ["offsetY"] = 447,
        ["fileDataIDs"] = { 458548 } 
    },
    {
        ["offsetX"]=205,
        ["textureHeight"] = 198,
        ["textureWidth"] = 191,
        ["offsetY"] = 232,
        ["fileDataIDs"] = { 458589 } 
    },
    {
        ["offsetX"]=543,
        ["textureHeight"] = 170,
        ["textureWidth"] = 194,
        ["offsetY"] = 220,
        ["fileDataIDs"] = { 458555 } 
    },
    {
        ["offsetX"]=395,
        ["textureHeight"] = 218,
        ["textureWidth"] = 197,
        ["offsetY"] = 367,
        ["fileDataIDs"] = { 458552 } 
    },
    {
        ["offsetX"]=622,
        ["textureHeight"] = 201,
        ["textureWidth"] = 198,
        ["offsetY"] = 169,
        ["fileDataIDs"] = { 458570 } 
    },
    {
        ["offsetX"]=312,
        ["textureHeight"] = 212,
        ["textureWidth"] = 199,
        ["offsetY"] = 192,
        ["fileDataIDs"] = { 458574 } 
    },
    {
        ["offsetX"]=387,
        ["textureHeight"] = 208,
        ["textureWidth"] = 203,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 458547 } 
    },
    {
        ["offsetX"]=296,
        ["textureHeight"] = 182,
        ["textureWidth"] = 206,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458569 } 
    },
    {
        ["offsetX"]=498,
        ["textureHeight"] = 210,
        ["textureWidth"] = 211,
        ["offsetY"] = 121,
        ["fileDataIDs"] = { 458571 } 
    },
    {
        ["offsetX"]=358,
        ["textureHeight"] = 190,
        ["textureWidth"] = 214,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458588 } 
    },
    {
        ["offsetX"]=416,
        ["textureHeight"] = 157,
        ["textureWidth"] = 215,
        ["offsetY"] = 205,
        ["fileDataIDs"] = { 458546 } 
    },
    {
        ["offsetX"]=499,
        ["textureHeight"] = 181,
        ["textureWidth"] = 215,
        ["offsetY"] = 265,
        ["fileDataIDs"] = { 458553 } 
    },
    {
        ["offsetX"]=697,
        ["textureHeight"] = 227,
        ["textureWidth"] = 220,
        ["offsetY"] = 403,
        ["fileDataIDs"] = { 458558 } 
    },
    {
        ["offsetX"]=654,
        ["textureHeight"] = 232,
        ["textureWidth"] = 226,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458573 } 
    },
    {
        ["offsetX"]=83,
        ["textureHeight"] = 276,
        ["textureWidth"] = 230,
        ["offsetY"] = 223,
        ["fileDataIDs"] = { 458556,458557 } 
    },
    {
        ["offsetX"]=374,
        ["textureHeight"] = 229,
        ["textureWidth"] = 238,
        ["offsetY"] = 93,
        ["fileDataIDs"] = { 458580 } 
    },
    {
        ["offsetX"]=482,
        ["textureHeight"] = 232,
        ["textureWidth"] = 239,
        ["offsetY"] = 330,
        ["fileDataIDs"] = { 458559 } 
    },
    {
        ["offsetX"]=631,
        ["textureHeight"] = 207,
        ["textureWidth"] = 251,
        ["offsetY"] = 245,
        ["fileDataIDs"] = { 458551 } 
    },
    {
        ["offsetX"]=610,
        ["textureHeight"] = 202,
        ["textureWidth"] = 260,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 458581,458582 } 
    },
    {
        ["offsetX"]=76,
        ["textureHeight"] = 206,
        ["textureWidth"] = 283,
        ["offsetY"] = 120,
        ["fileDataIDs"] = { 458549,458550 } 
    },
    {
        ["offsetX"]=482,
        ["textureHeight"] = 267,
        ["textureWidth"] = 308,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458561,458562,458563,458564 } 
    },
    {
        ["offsetX"]=71,
        ["textureHeight"] = 264,
        ["textureWidth"] = 324,
        ["offsetY"] = 16,
        ["fileDataIDs"] = { 458583,458584,458585,458586 } 
    },
    {
        ["offsetX"]=436,
        ["textureHeight"] = 288,
        ["textureWidth"] = 342,
        ["offsetY"] = 380,
        ["fileDataIDs"] = { 458565,458566,458567,458568 } 
    },
    {
        ["offsetX"]=151,
        ["textureHeight"] = 354,
        ["textureWidth"] = 361,
        ["offsetY"] = 314,
        ["fileDataIDs"] = { 458575,458576,458577,458578 } 
    }
},
[260] = {
    {
        ["offsetX"]=545,
        ["textureHeight"] = 159,
        ["textureWidth"] = 150,
        ["offsetY"] = 193,
        ["fileDataIDs"] = { 458658 } 
    },
    {
        ["offsetX"]=479,
        ["textureHeight"] = 144,
        ["textureWidth"] = 151,
        ["offsetY"] = 215,
        ["fileDataIDs"] = { 458668 } 
    },
    {
        ["offsetX"]=406,
        ["textureHeight"] = 193,
        ["textureWidth"] = 160,
        ["offsetY"] = 174,
        ["fileDataIDs"] = { 458641 } 
    },
    {
        ["offsetX"]=647,
        ["textureHeight"] = 236,
        ["textureWidth"] = 161,
        ["offsetY"] = 15,
        ["fileDataIDs"] = { 458663 } 
    },
    {
        ["offsetX"]=471,
        ["textureHeight"] = 185,
        ["textureWidth"] = 164,
        ["offsetY"] = 277,
        ["fileDataIDs"] = { 458634 } 
    },
    {
        ["offsetX"]=551,
        ["textureHeight"] = 170,
        ["textureWidth"] = 196,
        ["offsetY"] = 121,
        ["fileDataIDs"] = { 458646 } 
    },
    {
        ["offsetX"]=341,
        ["textureHeight"] = 169,
        ["textureWidth"] = 202,
        ["offsetY"] = 402,
        ["fileDataIDs"] = { 458635 } 
    },
    {
        ["offsetX"]=542,
        ["textureHeight"] = 215,
        ["textureWidth"] = 203,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458638 } 
    },
    {
        ["offsetX"]=217,
        ["textureHeight"] = 249,
        ["textureWidth"] = 203,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 458653 } 
    },
    {
        ["offsetX"]=657,
        ["textureHeight"] = 204,
        ["textureWidth"] = 206,
        ["offsetY"] = 349,
        ["fileDataIDs"] = { 458664 } 
    },
    {
        ["offsetX"]=407,
        ["textureHeight"] = 254,
        ["textureWidth"] = 209,
        ["offsetY"] = 384,
        ["fileDataIDs"] = { 458643 } 
    },
    {
        ["offsetX"]=656,
        ["textureHeight"] = 195,
        ["textureWidth"] = 213,
        ["offsetY"] = 473,
        ["fileDataIDs"] = { 458665 } 
    },
    {
        ["offsetX"]=411,
        ["textureHeight"] = 227,
        ["textureWidth"] = 228,
        ["offsetY"] = 67,
        ["fileDataIDs"] = { 458650 } 
    },
    {
        ["offsetX"]=527,
        ["textureHeight"] = 321,
        ["textureWidth"] = 233,
        ["offsetY"] = 291,
        ["fileDataIDs"] = { 458639,458640 } 
    },
    {
        ["offsetX"]=583,
        ["textureHeight"] = 194,
        ["textureWidth"] = 237,
        ["offsetY"] = 162,
        ["fileDataIDs"] = { 458642 } 
    },
    {
        ["offsetX"]=752,
        ["textureHeight"] = 316,
        ["textureWidth"] = 237,
        ["offsetY"] = 170,
        ["fileDataIDs"] = { 458661,458662 } 
    },
    {
        ["offsetX"]=264,
        ["textureHeight"] = 243,
        ["textureWidth"] = 249,
        ["offsetY"] = 136,
        ["fileDataIDs"] = { 458649 } 
    },
    {
        ["offsetX"]=340,
        ["textureHeight"] = 203,
        ["textureWidth"] = 269,
        ["offsetY"] = 282,
        ["fileDataIDs"] = { 458647,458648 } 
    },
    {
        ["offsetX"]=599,
        ["textureHeight"] = 242,
        ["textureWidth"] = 269,
        ["offsetY"] = 184,
        ["fileDataIDs"] = { 458636,458637 } 
    },
    {
        ["offsetX"]=229,
        ["textureHeight"] = 229,
        ["textureWidth"] = 270,
        ["offsetY"] = 433,
        ["fileDataIDs"] = { 458666,458667 } 
    },
    {
        ["offsetX"]=365,
        ["textureHeight"] = 173,
        ["textureWidth"] = 278,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458651,458652 } 
    },
    {
        ["offsetX"]=132,
        ["textureHeight"] = 209,
        ["textureWidth"] = 296,
        ["offsetY"] = 127,
        ["fileDataIDs"] = { 458659,458660 } 
    },
    {
        ["offsetX"]=28,
        ["textureHeight"] = 289,
        ["textureWidth"] = 312,
        ["offsetY"] = 221,
        ["fileDataIDs"] = { 458654,458655,458656,458657 } 
    },
    {
        ["offsetX"]=110,
        ["textureHeight"] = 224,
        ["textureWidth"] = 400,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458644,458645 } 
    }
},
[289] = {
    {
        ["offsetX"]=545,
        ["textureHeight"] = 159,
        ["textureWidth"] = 150,
        ["offsetY"] = 193,
        ["fileDataIDs"] = { 458693 } 
    },
    {
        ["offsetX"]=479,
        ["textureHeight"] = 144,
        ["textureWidth"] = 151,
        ["offsetY"] = 215,
        ["fileDataIDs"] = { 458715 } 
    },
    {
        ["offsetX"]=406,
        ["textureHeight"] = 193,
        ["textureWidth"] = 160,
        ["offsetY"] = 174,
        ["fileDataIDs"] = { 458676 } 
    },
    {
        ["offsetX"]=647,
        ["textureHeight"] = 236,
        ["textureWidth"] = 161,
        ["offsetY"] = 15,
        ["fileDataIDs"] = { 458698 } 
    },
    {
        ["offsetX"]=471,
        ["textureHeight"] = 185,
        ["textureWidth"] = 164,
        ["offsetY"] = 277,
        ["fileDataIDs"] = { 458669 } 
    },
    {
        ["offsetX"]=551,
        ["textureHeight"] = 170,
        ["textureWidth"] = 196,
        ["offsetY"] = 121,
        ["fileDataIDs"] = { 458681 } 
    },
    {
        ["offsetX"]=341,
        ["textureHeight"] = 169,
        ["textureWidth"] = 202,
        ["offsetY"] = 402,
        ["fileDataIDs"] = { 458670 } 
    },
    {
        ["offsetX"]=542,
        ["textureHeight"] = 215,
        ["textureWidth"] = 203,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458673 } 
    },
    {
        ["offsetX"]=217,
        ["textureHeight"] = 249,
        ["textureWidth"] = 203,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 458688 } 
    },
    {
        ["offsetX"]=657,
        ["textureHeight"] = 204,
        ["textureWidth"] = 206,
        ["offsetY"] = 349,
        ["fileDataIDs"] = { 458699 } 
    },
    {
        ["offsetX"]=407,
        ["textureHeight"] = 254,
        ["textureWidth"] = 209,
        ["offsetY"] = 384,
        ["fileDataIDs"] = { 458678 } 
    },
    {
        ["offsetX"]=656,
        ["textureHeight"] = 195,
        ["textureWidth"] = 213,
        ["offsetY"] = 473,
        ["fileDataIDs"] = { 458700 } 
    },
    {
        ["offsetX"]=411,
        ["textureHeight"] = 227,
        ["textureWidth"] = 228,
        ["offsetY"] = 67,
        ["fileDataIDs"] = { 458685 } 
    },
    {
        ["offsetX"]=527,
        ["textureHeight"] = 321,
        ["textureWidth"] = 233,
        ["offsetY"] = 291,
        ["fileDataIDs"] = { 458674,458675 } 
    },
    {
        ["offsetX"]=583,
        ["textureHeight"] = 194,
        ["textureWidth"] = 237,
        ["offsetY"] = 162,
        ["fileDataIDs"] = { 458677 } 
    },
    {
        ["offsetX"]=752,
        ["textureHeight"] = 316,
        ["textureWidth"] = 237,
        ["offsetY"] = 170,
        ["fileDataIDs"] = { 458696,458697 } 
    },
    {
        ["offsetX"]=264,
        ["textureHeight"] = 243,
        ["textureWidth"] = 249,
        ["offsetY"] = 136,
        ["fileDataIDs"] = { 458684 } 
    },
    {
        ["offsetX"]=340,
        ["textureHeight"] = 203,
        ["textureWidth"] = 269,
        ["offsetY"] = 282,
        ["fileDataIDs"] = { 458682,458683 } 
    },
    {
        ["offsetX"]=599,
        ["textureHeight"] = 242,
        ["textureWidth"] = 269,
        ["offsetY"] = 184,
        ["fileDataIDs"] = { 458671,458672 } 
    },
    {
        ["offsetX"]=229,
        ["textureHeight"] = 229,
        ["textureWidth"] = 270,
        ["offsetY"] = 433,
        ["fileDataIDs"] = { 458701,458702 } 
    },
    {
        ["offsetX"]=365,
        ["textureHeight"] = 173,
        ["textureWidth"] = 278,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458686,458687 } 
    },
    {
        ["offsetX"]=132,
        ["textureHeight"] = 209,
        ["textureWidth"] = 296,
        ["offsetY"] = 127,
        ["fileDataIDs"] = { 458694,458695 } 
    },
    {
        ["offsetX"]=28,
        ["textureHeight"] = 289,
        ["textureWidth"] = 312,
        ["offsetY"] = 221,
        ["fileDataIDs"] = { 458689,458690,458691,458692 } 
    },
    {
        ["offsetX"]=110,
        ["textureHeight"] = 224,
        ["textureWidth"] = 400,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458679,458680 } 
    }
},
[338] = {
    {
        ["offsetX"]=344,
        ["textureHeight"] = 141,
        ["textureWidth"] = 143,
        ["offsetY"] = 89,
        ["fileDataIDs"] = { 458604 } 
    },
    {
        ["offsetX"]=327,
        ["textureHeight"] = 199,
        ["textureWidth"] = 165,
        ["offsetY"] = 356,
        ["fileDataIDs"] = { 458623 } 
    },
    {
        ["offsetX"]=291,
        ["textureHeight"] = 190,
        ["textureWidth"] = 174,
        ["offsetY"] = 89,
        ["fileDataIDs"] = { 458598 } 
    },
    {
        ["offsetX"]=269,
        ["textureHeight"] = 180,
        ["textureWidth"] = 175,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 458616 } 
    },
    {
        ["offsetX"]=302,
        ["textureHeight"] = 159,
        ["textureWidth"] = 177,
        ["offsetY"] = 306,
        ["fileDataIDs"] = { 458631 } 
    },
    {
        ["offsetX"]=370,
        ["textureHeight"] = 195,
        ["textureWidth"] = 182,
        ["offsetY"] = 447,
        ["fileDataIDs"] = { 458592 } 
    },
    {
        ["offsetX"]=205,
        ["textureHeight"] = 198,
        ["textureWidth"] = 191,
        ["offsetY"] = 232,
        ["fileDataIDs"] = { 458633 } 
    },
    {
        ["offsetX"]=543,
        ["textureHeight"] = 170,
        ["textureWidth"] = 194,
        ["offsetY"] = 220,
        ["fileDataIDs"] = { 458599 } 
    },
    {
        ["offsetX"]=395,
        ["textureHeight"] = 218,
        ["textureWidth"] = 197,
        ["offsetY"] = 367,
        ["fileDataIDs"] = { 458596 } 
    },
    {
        ["offsetX"]=622,
        ["textureHeight"] = 201,
        ["textureWidth"] = 198,
        ["offsetY"] = 169,
        ["fileDataIDs"] = { 458614 } 
    },
    {
        ["offsetX"]=312,
        ["textureHeight"] = 212,
        ["textureWidth"] = 199,
        ["offsetY"] = 192,
        ["fileDataIDs"] = { 458618 } 
    },
    {
        ["offsetX"]=387,
        ["textureHeight"] = 208,
        ["textureWidth"] = 203,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 458591 } 
    },
    {
        ["offsetX"]=296,
        ["textureHeight"] = 182,
        ["textureWidth"] = 206,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458613 } 
    },
    {
        ["offsetX"]=498,
        ["textureHeight"] = 210,
        ["textureWidth"] = 211,
        ["offsetY"] = 121,
        ["fileDataIDs"] = { 458615 } 
    },
    {
        ["offsetX"]=358,
        ["textureHeight"] = 190,
        ["textureWidth"] = 214,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458632 } 
    },
    {
        ["offsetX"]=416,
        ["textureHeight"] = 157,
        ["textureWidth"] = 215,
        ["offsetY"] = 205,
        ["fileDataIDs"] = { 458590 } 
    },
    {
        ["offsetX"]=499,
        ["textureHeight"] = 181,
        ["textureWidth"] = 215,
        ["offsetY"] = 265,
        ["fileDataIDs"] = { 458597 } 
    },
    {
        ["offsetX"]=697,
        ["textureHeight"] = 227,
        ["textureWidth"] = 220,
        ["offsetY"] = 403,
        ["fileDataIDs"] = { 458602 } 
    },
    {
        ["offsetX"]=654,
        ["textureHeight"] = 232,
        ["textureWidth"] = 226,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458617 } 
    },
    {
        ["offsetX"]=83,
        ["textureHeight"] = 276,
        ["textureWidth"] = 230,
        ["offsetY"] = 223,
        ["fileDataIDs"] = { 458600,458601 } 
    },
    {
        ["offsetX"]=374,
        ["textureHeight"] = 229,
        ["textureWidth"] = 238,
        ["offsetY"] = 93,
        ["fileDataIDs"] = { 458624 } 
    },
    {
        ["offsetX"]=482,
        ["textureHeight"] = 232,
        ["textureWidth"] = 239,
        ["offsetY"] = 330,
        ["fileDataIDs"] = { 458603 } 
    },
    {
        ["offsetX"]=631,
        ["textureHeight"] = 207,
        ["textureWidth"] = 251,
        ["offsetY"] = 245,
        ["fileDataIDs"] = { 458595 } 
    },
    {
        ["offsetX"]=610,
        ["textureHeight"] = 202,
        ["textureWidth"] = 260,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 458625,458626 } 
    },
    {
        ["offsetX"]=76,
        ["textureHeight"] = 206,
        ["textureWidth"] = 283,
        ["offsetY"] = 120,
        ["fileDataIDs"] = { 458593,458594 } 
    },
    {
        ["offsetX"]=482,
        ["textureHeight"] = 267,
        ["textureWidth"] = 308,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 458605,458606,458607,458608 } 
    },
    {
        ["offsetX"]=71,
        ["textureHeight"] = 264,
        ["textureWidth"] = 324,
        ["offsetY"] = 16,
        ["fileDataIDs"] = { 458627,458628,458629,458630 } 
    },
    {
        ["offsetX"]=436,
        ["textureHeight"] = 288,
        ["textureWidth"] = 342,
        ["offsetY"] = 380,
        ["fileDataIDs"] = { 458609,458610,458611,458612 } 
    },
    {
        ["offsetX"]=151,
        ["textureHeight"] = 354,
        ["textureWidth"] = 361,
        ["offsetY"] = 314,
        ["fileDataIDs"] = { 458619,458620,458621,458622 } 
    }
},
[339] = {
    {
        ["offsetX"]=115,
        ["textureHeight"] = 668,
        ["textureWidth"] = 887,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 462974,462978,462979,462980,462981,462982,462983,462984,462985,462975,462976,462977 } 
    }
},
[383] = {
    {
        ["offsetX"]=428,
        ["textureHeight"] = 180,
        ["textureWidth"] = 179,
        ["offsetY"] = 416,
        ["fileDataIDs"] = { 614290 } 
    },
    {
        ["offsetX"]=388,
        ["textureHeight"] = 216,
        ["textureWidth"] = 191,
        ["offsetY"] = 299,
        ["fileDataIDs"] = { 614289 } 
    },
    {
        ["offsetX"]=316,
        ["textureHeight"] = 158,
        ["textureWidth"] = 196,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 614288 } 
    },
    {
        ["offsetX"]=181,
        ["textureHeight"] = 166,
        ["textureWidth"] = 196,
        ["offsetY"] = 75,
        ["fileDataIDs"] = { 614284 } 
    },
    {
        ["offsetX"]=430,
        ["textureHeight"] = 204,
        ["textureWidth"] = 202,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 614278 } 
    },
    {
        ["offsetX"]=202,
        ["textureHeight"] = 158,
        ["textureWidth"] = 210,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 614297 } 
    },
    {
        ["offsetX"]=474,
        ["textureHeight"] = 148,
        ["textureWidth"] = 218,
        ["offsetY"] = 520,
        ["fileDataIDs"] = { 614277 } 
    },
    {
        ["offsetX"]=346,
        ["textureHeight"] = 186,
        ["textureWidth"] = 219,
        ["offsetY"] = 482,
        ["fileDataIDs"] = { 614294 } 
    },
    {
        ["offsetX"]=189,
        ["textureHeight"] = 205,
        ["textureWidth"] = 219,
        ["offsetY"] = 151,
        ["fileDataIDs"] = { 614287 } 
    },
    {
        ["offsetX"]=290,
        ["textureHeight"] = 256,
        ["textureWidth"] = 219,
        ["offsetY"] = 330,
        ["fileDataIDs"] = { 614286 } 
    },
    {
        ["offsetX"]=300,
        ["textureHeight"] = 198,
        ["textureWidth"] = 227,
        ["offsetY"] = 56,
        ["fileDataIDs"] = { 614275 } 
    },
    {
        ["offsetX"]=325,
        ["textureHeight"] = 210,
        ["textureWidth"] = 234,
        ["offsetY"] = 178,
        ["fileDataIDs"] = { 614276 } 
    },
    {
        ["offsetX"]=400,
        ["textureHeight"] = 142,
        ["textureWidth"] = 236,
        ["offsetY"] = 146,
        ["fileDataIDs"] = { 614285 } 
    },
    {
        ["offsetX"]=481,
        ["textureHeight"] = 210,
        ["textureWidth"] = 242,
        ["offsetY"] = 215,
        ["fileDataIDs"] = { 614293 } 
    },
    {
        ["offsetX"]=539,
        ["textureHeight"] = 348,
        ["textureWidth"] = 251,
        ["offsetY"] = 43,
        ["fileDataIDs"] = { 614295,614296 } 
    },
    {
        ["offsetX"]=182,
        ["textureHeight"] = 229,
        ["textureWidth"] = 253,
        ["offsetY"] = 214,
        ["fileDataIDs"] = { 614283 } 
    },
    {
        ["offsetX"]=468,
        ["textureHeight"] = 211,
        ["textureWidth"] = 264,
        ["offsetY"] = 295,
        ["fileDataIDs"] = { 614291,614292 } 
    },
    {
        ["offsetX"]=525,
        ["textureHeight"] = 310,
        ["textureWidth"] = 278,
        ["offsetY"] = 358,
        ["fileDataIDs"] = { 614279,614280,614281,614282 } 
    }
},
[388] = {
    {
        ["offsetX"]=170,
        ["textureHeight"] = 291,
        ["textureWidth"] = 175,
        ["offsetY"] = 130,
        ["fileDataIDs"] = { 615423,615424 } 
    },
    {
        ["offsetX"]=224,
        ["textureHeight"] = 304,
        ["textureWidth"] = 199,
        ["offsetY"] = 74,
        ["fileDataIDs"] = { 615411,615412 } 
    },
    {
        ["offsetX"]=438,
        ["textureHeight"] = 245,
        ["textureWidth"] = 206,
        ["offsetY"] = 177,
        ["fileDataIDs"] = { 615408 } 
    },
    {
        ["offsetX"]=438,
        ["textureHeight"] = 292,
        ["textureWidth"] = 208,
        ["offsetY"] = 41,
        ["fileDataIDs"] = { 615404,615405 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 308,
        ["textureWidth"] = 209,
        ["offsetY"] = 343,
        ["fileDataIDs"] = { 615402,615403 } 
    },
    {
        ["offsetX"]=513,
        ["textureHeight"] = 246,
        ["textureWidth"] = 213,
        ["offsetY"] = 58,
        ["fileDataIDs"] = { 615418 } 
    },
    {
        ["offsetX"]=561,
        ["textureHeight"] = 217,
        ["textureWidth"] = 230,
        ["offsetY"] = 161,
        ["fileDataIDs"] = { 615413 } 
    },
    {
        ["offsetX"]=104,
        ["textureHeight"] = 342,
        ["textureWidth"] = 249,
        ["offsetY"] = 326,
        ["fileDataIDs"] = { 615414,615415 } 
    },
    {
        ["offsetX"]=530,
        ["textureHeight"] = 259,
        ["textureWidth"] = 254,
        ["offsetY"] = 253,
        ["fileDataIDs"] = { 615421,615422 } 
    },
    {
        ["offsetX"]=227,
        ["textureHeight"] = 288,
        ["textureWidth"] = 257,
        ["offsetY"] = 380,
        ["fileDataIDs"] = { 615425,615426,615427,615428 } 
    },
    {
        ["offsetX"]=5,
        ["textureHeight"] = 251,
        ["textureWidth"] = 260,
        ["offsetY"] = 239,
        ["fileDataIDs"] = { 615409,615410 } 
    },
    {
        ["offsetX"]=12,
        ["textureHeight"] = 246,
        ["textureWidth"] = 273,
        ["offsetY"] = 105,
        ["fileDataIDs"] = { 615416,615417 } 
    },
    {
        ["offsetX"]=582,
        ["textureHeight"] = 245,
        ["textureWidth"] = 277,
        ["offsetY"] = 301,
        ["fileDataIDs"] = { 615419,615420 } 
    },
    {
        ["offsetX"]=253,
        ["textureHeight"] = 392,
        ["textureWidth"] = 286,
        ["offsetY"] = 75,
        ["fileDataIDs"] = { 615429,615430,615431,615432 } 
    },
    {
        ["offsetX"]=699,
        ["textureHeight"] = 323,
        ["textureWidth"] = 303,
        ["offsetY"] = 114,
        ["fileDataIDs"] = { 615437,615438,615439,615440 } 
    },
    {
        ["offsetX"]=334,
        ["textureHeight"] = 212,
        ["textureWidth"] = 314,
        ["offsetY"] = 325,
        ["fileDataIDs"] = { 615406,615407 } 
    },
    {
        ["offsetX"]=622,
        ["textureHeight"] = 317,
        ["textureWidth"] = 380,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 615433,615434,615435,615436 } 
    },
    {
        ["offsetX"]=215,
        ["textureHeight"] = 264,
        ["textureWidth"] = 510,
        ["offsetY"] = 404,
        ["fileDataIDs"] = { 615398,615399,615400,615401 } 
    }
},
[390] = {
    {
        ["offsetX"]=297,
        ["textureHeight"] = 188,
        ["textureWidth"] = 220,
        ["offsetY"] = 324,
        ["fileDataIDs"] = { 538846 } 
    },
    {
        ["offsetX"]=134,
        ["textureHeight"] = 286,
        ["textureWidth"] = 234,
        ["offsetY"] = 9,
        ["fileDataIDs"] = { 538829,571508 } 
    },
    {
        ["offsetX"]=203,
        ["textureHeight"] = 315,
        ["textureWidth"] = 261,
        ["offsetY"] = 36,
        ["fileDataIDs"] = { 538836,538837,538838,538839 } 
    },
    {
        ["offsetX"]=183,
        ["textureHeight"] = 321,
        ["textureWidth"] = 313,
        ["offsetY"] = 198,
        ["fileDataIDs"] = { 538847,538848,538849,538850 } 
    },
    {
        ["offsetX"]=124,
        ["textureHeight"] = 263,
        ["textureWidth"] = 346,
        ["offsetY"] = 405,
        ["fileDataIDs"] = { 538851,538852,538853,538854 } 
    },
    {
        ["offsetX"]=545,
        ["textureHeight"] = 475,
        ["textureWidth"] = 372,
        ["offsetY"] = 12,
        ["fileDataIDs"] = { 538874,538875,538876,538877 } 
    },
    {
        ["offsetX"]=504,
        ["textureHeight"] = 373,
        ["textureWidth"] = 385,
        ["offsetY"] = 295,
        ["fileDataIDs"] = { 538870,538871,538872,538873 } 
    },
    {
        ["offsetX"]=395,
        ["textureHeight"] = 461,
        ["textureWidth"] = 607,
        ["offsetY"] = 182,
        ["fileDataIDs"] = { 538855,538856,538857,538858,538859,538860 } 
    },
    {
        ["offsetX"]=392,
        ["textureHeight"] = 374,
        ["textureWidth"] = 610,
        ["offsetY"] = 294,
        ["fileDataIDs"] = { 538830,538831,538832,538833,538834,538835 } 
    },
    {
        ["offsetX"]=351,
        ["textureHeight"] = 262,
        ["textureWidth"] = 651,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 538840,538841,538842,538843,538844,538845 } 
    },
    {
        ["offsetX"]=325,
        ["textureHeight"] = 668,
        ["textureWidth"] = 677,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 538861,538862,538863,538864,538865,538866,538867,538868,538869 } 
    },
    {
        ["offsetX"]=13,
        ["textureHeight"] = 466,
        ["textureWidth"] = 989,
        ["offsetY"] = 202,
        ["fileDataIDs"] = { 538890,538891,538892,538893,538894,538895,538896,538897 } 
    }
},
[391] = {
    {
        ["offsetX"]=322,
        ["textureHeight"] = 172,
        ["textureWidth"] = 224,
        ["offsetY"] = 496,
        ["fileDataIDs"] = { 614341 } 
    },
    {
        ["offsetX"]=453,
        ["textureHeight"] = 241,
        ["textureWidth"] = 224,
        ["offsetY"] = 191,
        ["fileDataIDs"] = { 614367 } 
    },
    {
        ["offsetX"]=603,
        ["textureHeight"] = 262,
        ["textureWidth"] = 229,
        ["offsetY"] = 313,
        ["fileDataIDs"] = { 614351,614352 } 
    },
    {
        ["offsetX"]=607,
        ["textureHeight"] = 198,
        ["textureWidth"] = 240,
        ["offsetY"] = 470,
        ["fileDataIDs"] = { 614340 } 
    },
    {
        ["offsetX"]=587,
        ["textureHeight"] = 260,
        ["textureWidth"] = 250,
        ["offsetY"] = 170,
        ["fileDataIDs"] = { 614361,614362 } 
    },
    {
        ["offsetX"]=233,
        ["textureHeight"] = 257,
        ["textureWidth"] = 252,
        ["offsetY"] = 360,
        ["fileDataIDs"] = { 614346,614347 } 
    },
    {
        ["offsetX"]=462,
        ["textureHeight"] = 208,
        ["textureWidth"] = 253,
        ["offsetY"] = 411,
        ["fileDataIDs"] = { 614348 } 
    },
    {
        ["offsetX"]=602,
        ["textureHeight"] = 233,
        ["textureWidth"] = 259,
        ["offsetY"] = 4,
        ["fileDataIDs"] = { 614344,614345 } 
    },
    {
        ["offsetX"]=449,
        ["textureHeight"] = 162,
        ["textureWidth"] = 261,
        ["offsetY"] = 506,
        ["fileDataIDs"] = { 614342,614343 } 
    },
    {
        ["offsetX"]=333,
        ["textureHeight"] = 277,
        ["textureWidth"] = 287,
        ["offsetY"] = 63,
        ["fileDataIDs"] = { 614353,614354,614355,614356 } 
    },
    {
        ["offsetX"]=502,
        ["textureHeight"] = 219,
        ["textureWidth"] = 298,
        ["offsetY"] = 64,
        ["fileDataIDs"] = { 614368,614369 } 
    },
    {
        ["offsetX"]=398,
        ["textureHeight"] = 276,
        ["textureWidth"] = 310,
        ["offsetY"] = 310,
        ["fileDataIDs"] = { 614363,614364,614365,614366 } 
    },
    {
        ["offsetX"]=228,
        ["textureHeight"] = 208,
        ["textureWidth"] = 313,
        ["offsetY"] = 264,
        ["fileDataIDs"] = { 614349,614350 } 
    },
    {
        ["offsetX"]=88,
        ["textureHeight"] = 385,
        ["textureWidth"] = 385,
        ["offsetY"] = 92,
        ["fileDataIDs"] = { 614357,614358,614359,614360 } 
    }
},
[400] = {
    {
        ["offsetX"]=413,
        ["textureHeight"] = 170,
        ["textureWidth"] = 213,
        ["offsetY"] = 385,
        ["fileDataIDs"] = { 614385 } 
    },
    {
        ["offsetX"]=560,
        ["textureHeight"] = 296,
        ["textureWidth"] = 238,
        ["offsetY"] = 185,
        ["fileDataIDs"] = { 614379,614380 } 
    },
    {
        ["offsetX"]=417,
        ["textureHeight"] = 221,
        ["textureWidth"] = 247,
        ["offsetY"] = 447,
        ["fileDataIDs"] = { 614374 } 
    },
    {
        ["offsetX"]=420,
        ["textureHeight"] = 269,
        ["textureWidth"] = 255,
        ["offsetY"] = 209,
        ["fileDataIDs"] = { 614372,614373 } 
    },
    {
        ["offsetX"]=306,
        ["textureHeight"] = 235,
        ["textureWidth"] = 261,
        ["offsetY"] = 433,
        ["fileDataIDs"] = { 614388,614389 } 
    },
    {
        ["offsetX"]=545,
        ["textureHeight"] = 205,
        ["textureWidth"] = 271,
        ["offsetY"] = 369,
        ["fileDataIDs"] = { 614394,614395 } 
    },
    {
        ["offsetX"]=692,
        ["textureHeight"] = 306,
        ["textureWidth"] = 282,
        ["offsetY"] = 362,
        ["fileDataIDs"] = { 614381,614382,614383,614384 } 
    },
    {
        ["offsetX"]=92,
        ["textureHeight"] = 283,
        ["textureWidth"] = 294,
        ["offsetY"] = 192,
        ["fileDataIDs"] = { 614390,614391,614392,614393 } 
    },
    {
        ["offsetX"]=213,
        ["textureHeight"] = 359,
        ["textureWidth"] = 296,
        ["offsetY"] = 241,
        ["fileDataIDs"] = { 614375,614376,614377,614378 } 
    },
    {
        ["offsetX"]=125,
        ["textureHeight"] = 246,
        ["textureWidth"] = 300,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 614386,614387 } 
    },
    {
        ["offsetX"]=546,
        ["textureHeight"] = 200,
        ["textureWidth"] = 353,
        ["offsetY"] = 468,
        ["fileDataIDs"] = { 614370,614371 } 
    }
},
[402] = {
    {
        ["offsetX"]=328,
        ["textureHeight"] = 254,
        ["textureWidth"] = 242,
        ["offsetY"] = 16,
        ["fileDataIDs"] = { 614447 } 
    },
    {
        ["offsetX"]=278,
        ["textureHeight"] = 281,
        ["textureWidth"] = 267,
        ["offsetY"] = 170,
        ["fileDataIDs"] = { 614466,614467,614468,614469 } 
    },
    {
        ["offsetX"]=349,
        ["textureHeight"] = 308,
        ["textureWidth"] = 267,
        ["offsetY"] = 316,
        ["fileDataIDs"] = { 614458,614459,614460,614461 } 
    },
    {
        ["offsetX"]=444,
        ["textureHeight"] = 522,
        ["textureWidth"] = 272,
        ["offsetY"] = 97,
        ["fileDataIDs"] = { 614452,614453,614454,614455,614456,614457 } 
    },
    {
        ["offsetX"]=482,
        ["textureHeight"] = 262,
        ["textureWidth"] = 298,
        ["offsetY"] = 10,
        ["fileDataIDs"] = { 614462,614463,614464,614465 } 
    },
    {
        ["offsetX"]=200,
        ["textureHeight"] = 305,
        ["textureWidth"] = 310,
        ["offsetY"] = 363,
        ["fileDataIDs"] = { 614435,614436,614437,614438 } 
    },
    {
        ["offsetX"]=87,
        ["textureHeight"] = 349,
        ["textureWidth"] = 337,
        ["offsetY"] = 3,
        ["fileDataIDs"] = { 614431,614432,614433,614434 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 429,
        ["textureWidth"] = 350,
        ["offsetY"] = 234,
        ["fileDataIDs"] = { 614443,614444,614445,614446 } 
    },
    {
        ["offsetX"]=4,
        ["textureHeight"] = 333,
        ["textureWidth"] = 361,
        ["offsetY"] = 107,
        ["fileDataIDs"] = { 614470,614471,614472,614473 } 
    },
    {
        ["offsetX"]=629,
        ["textureHeight"] = 385,
        ["textureWidth"] = 373,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 614439,614440,614441,614442 } 
    },
    {
        ["offsetX"]=556,
        ["textureHeight"] = 359,
        ["textureWidth"] = 446,
        ["offsetY"] = 267,
        ["fileDataIDs"] = { 614448,614449,614450,614451 } 
    }
},
[430] = {
    {
        ["offsetX"]=397,
        ["textureHeight"] = 412,
        ["textureWidth"] = 188,
        ["offsetY"] = 59,
        ["fileDataIDs"] = { 614501,614502 } 
    },
    {
        ["offsetX"]=513,
        ["textureHeight"] = 282,
        ["textureWidth"] = 190,
        ["offsetY"] = 3,
        ["fileDataIDs"] = { 614482,614483 } 
    },
    {
        ["offsetX"]=444,
        ["textureHeight"] = 383,
        ["textureWidth"] = 204,
        ["offsetY"] = 44,
        ["fileDataIDs"] = { 614495,614496 } 
    },
    {
        ["offsetX"]=125,
        ["textureHeight"] = 395,
        ["textureWidth"] = 211,
        ["offsetY"] = 88,
        ["fileDataIDs"] = { 614497,614498 } 
    },
    {
        ["offsetX"]=317,
        ["textureHeight"] = 265,
        ["textureWidth"] = 212,
        ["offsetY"] = 63,
        ["fileDataIDs"] = { 614493,614494 } 
    },
    {
        ["offsetX"]=218,
        ["textureHeight"] = 393,
        ["textureWidth"] = 214,
        ["offsetY"] = 77,
        ["fileDataIDs"] = { 614484,614485 } 
    },
    {
        ["offsetX"]=589,
        ["textureHeight"] = 279,
        ["textureWidth"] = 217,
        ["offsetY"] = 27,
        ["fileDataIDs"] = { 614490,614491 } 
    },
    {
        ["offsetX"]=300,
        ["textureHeight"] = 259,
        ["textureWidth"] = 219,
        ["offsetY"] = 215,
        ["fileDataIDs"] = { 614499,614500 } 
    },
    {
        ["offsetX"]=343,
        ["textureHeight"] = 240,
        ["textureWidth"] = 246,
        ["offsetY"] = 373,
        ["fileDataIDs"] = { 614492 } 
    },
    {
        ["offsetX"]=23,
        ["textureHeight"] = 313,
        ["textureWidth"] = 252,
        ["offsetY"] = 267,
        ["fileDataIDs"] = { 614507,614508 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 300,
        ["textureWidth"] = 257,
        ["offsetY"] = 79,
        ["fileDataIDs"] = { 614503,614504,614505,614506 } 
    },
    {
        ["offsetX"]=330,
        ["textureHeight"] = 170,
        ["textureWidth"] = 258,
        ["offsetY"] = 498,
        ["fileDataIDs"] = { 614509,614510 } 
    },
    {
        ["offsetX"]=545,
        ["textureHeight"] = 194,
        ["textureWidth"] = 265,
        ["offsetY"] = 205,
        ["fileDataIDs"] = { 614478,614479 } 
    },
    {
        ["offsetX"]=176,
        ["textureHeight"] = 250,
        ["textureWidth"] = 272,
        ["offsetY"] = 376,
        ["fileDataIDs"] = { 614480,614481 } 
    },
    {
        ["offsetX"]=701,
        ["textureHeight"] = 268,
        ["textureWidth"] = 286,
        ["offsetY"] = 19,
        ["fileDataIDs"] = { 614486,614487,614488,614489 } 
    },
    {
        ["offsetX"]=612,
        ["textureHeight"] = 204,
        ["textureWidth"] = 306,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 614511,614512 } 
    }
},
[434] = {
    {
        ["offsetX"]=593,
        ["textureHeight"] = 234,
        ["textureWidth"] = 209,
        ["offsetY"] = 92,
        ["fileDataIDs"] = { 642686 } 
    },
    {
        ["offsetX"]=341,
        ["textureHeight"] = 318,
        ["textureWidth"] = 209,
        ["offsetY"] = 125,
        ["fileDataIDs"] = { 642670,642671 } 
    },
    {
        ["offsetX"]=236,
        ["textureHeight"] = 186,
        ["textureWidth"] = 218,
        ["offsetY"] = 32,
        ["fileDataIDs"] = { 642683 } 
    },
    {
        ["offsetX"]=458,
        ["textureHeight"] = 206,
        ["textureWidth"] = 236,
        ["offsetY"] = 110,
        ["fileDataIDs"] = { 642680 } 
    },
    {
        ["offsetX"]=351,
        ["textureHeight"] = 218,
        ["textureWidth"] = 250,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 642665 } 
    },
    {
        ["offsetX"]=191,
        ["textureHeight"] = 293,
        ["textureWidth"] = 262,
        ["offsetY"] = 122,
        ["fileDataIDs"] = { 642674,642675,642676,642677 } 
    },
    {
        ["offsetX"]=450,
        ["textureHeight"] = 241,
        ["textureWidth"] = 268,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 642684,642685 } 
    },
    {
        ["offsetX"]=162,
        ["textureHeight"] = 283,
        ["textureWidth"] = 290,
        ["offsetY"] = 385,
        ["fileDataIDs"] = { 642687,642688,642689,642690 } 
    },
    {
        ["offsetX"]=437,
        ["textureHeight"] = 211,
        ["textureWidth"] = 322,
        ["offsetY"] = 313,
        ["fileDataIDs"] = { 642672,642673 } 
    },
    {
        ["offsetX"]=441,
        ["textureHeight"] = 194,
        ["textureWidth"] = 323,
        ["offsetY"] = 224,
        ["fileDataIDs"] = { 642678,642679 } 
    },
    {
        ["offsetX"]=485,
        ["textureHeight"] = 190,
        ["textureWidth"] = 325,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 642681,642682 } 
    },
    {
        ["offsetX"]=214,
        ["textureHeight"] = 270,
        ["textureWidth"] = 325,
        ["offsetY"] = 311,
        ["fileDataIDs"] = { 642666,642667,642668,642669 } 
    }
},
[445] = {
    {
        ["offsetX"]=412,
        ["textureHeight"] = 191,
        ["textureWidth"] = 290,
        ["offsetY"] = 477,
        ["fileDataIDs"] = { 615054,615055 } 
    },
    {
        ["offsetX"]=433,
        ["textureHeight"] = 220,
        ["textureWidth"] = 294,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 614718,614719 } 
    },
    {
        ["offsetX"]=371,
        ["textureHeight"] = 493,
        ["textureWidth"] = 479,
        ["offsetY"] = 175,
        ["fileDataIDs"] = { 614714,614715,614716,614717 } 
    }
},
[498] = {
    {
        ["offsetX"]=656,
        ["textureHeight"] = 200,
        ["textureWidth"] = 206,
        ["offsetY"] = 21,
        ["fileDataIDs"] = { 656197 } 
    },
    {
        ["offsetX"]=428,
        ["textureHeight"] = 353,
        ["textureWidth"] = 270,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 656230,656231,656232,656233 } 
    },
    {
        ["offsetX"]=358,
        ["textureHeight"] = 301,
        ["textureWidth"] = 279,
        ["offsetY"] = 169,
        ["fileDataIDs"] = { 656202,656203,656204,656205 } 
    },
    {
        ["offsetX"]=542,
        ["textureHeight"] = 247,
        ["textureWidth"] = 305,
        ["offsetY"] = 223,
        ["fileDataIDs"] = { 656224,656225 } 
    },
    {
        ["offsetX"]=137,
        ["textureHeight"] = 230,
        ["textureWidth"] = 317,
        ["offsetY"] = 188,
        ["fileDataIDs"] = { 656222,656223 } 
    },
    {
        ["offsetX"]=199,
        ["textureHeight"] = 183,
        ["textureWidth"] = 344,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 656198,656199 } 
    },
    {
        ["offsetX"]=133,
        ["textureHeight"] = 249,
        ["textureWidth"] = 384,
        ["offsetY"] = 59,
        ["fileDataIDs"] = { 656200,656201 } 
    },
    {
        ["offsetX"]=109,
        ["textureHeight"] = 351,
        ["textureWidth"] = 433,
        ["offsetY"] = 313,
        ["fileDataIDs"] = { 656218,656219,656220,656221 } 
    },
    {
        ["offsetX"]=359,
        ["textureHeight"] = 299,
        ["textureWidth"] = 436,
        ["offsetY"] = 369,
        ["fileDataIDs"] = { 656226,656227,656228,656229 } 
    }
},
[499] = {
    {
        ["offsetX"]=397,
        ["textureHeight"] = 412,
        ["textureWidth"] = 188,
        ["offsetY"] = 59,
        ["fileDataIDs"] = { 660517,660518 } 
    },
    {
        ["offsetX"]=513,
        ["textureHeight"] = 282,
        ["textureWidth"] = 190,
        ["offsetY"] = 3,
        ["fileDataIDs"] = { 660486,660487 } 
    },
    {
        ["offsetX"]=444,
        ["textureHeight"] = 383,
        ["textureWidth"] = 204,
        ["offsetY"] = 44,
        ["fileDataIDs"] = { 660511,660512 } 
    },
    {
        ["offsetX"]=125,
        ["textureHeight"] = 395,
        ["textureWidth"] = 211,
        ["offsetY"] = 88,
        ["fileDataIDs"] = { 660513,660514 } 
    },
    {
        ["offsetX"]=317,
        ["textureHeight"] = 265,
        ["textureWidth"] = 212,
        ["offsetY"] = 63,
        ["fileDataIDs"] = { 660509,660510 } 
    },
    {
        ["offsetX"]=218,
        ["textureHeight"] = 393,
        ["textureWidth"] = 214,
        ["offsetY"] = 77,
        ["fileDataIDs"] = { 660488,660489 } 
    },
    {
        ["offsetX"]=589,
        ["textureHeight"] = 279,
        ["textureWidth"] = 217,
        ["offsetY"] = 27,
        ["fileDataIDs"] = { 660506,660507 } 
    },
    {
        ["offsetX"]=300,
        ["textureHeight"] = 259,
        ["textureWidth"] = 219,
        ["offsetY"] = 215,
        ["fileDataIDs"] = { 660515,660516 } 
    },
    {
        ["offsetX"]=343,
        ["textureHeight"] = 240,
        ["textureWidth"] = 246,
        ["offsetY"] = 373,
        ["fileDataIDs"] = { 660508 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 300,
        ["textureWidth"] = 257,
        ["offsetY"] = 79,
        ["fileDataIDs"] = { 660519,660520,660521,660522 } 
    },
    {
        ["offsetX"]=330,
        ["textureHeight"] = 170,
        ["textureWidth"] = 258,
        ["offsetY"] = 498,
        ["fileDataIDs"] = { 660527,660528 } 
    },
    {
        ["offsetX"]=176,
        ["textureHeight"] = 250,
        ["textureWidth"] = 272,
        ["offsetY"] = 376,
        ["fileDataIDs"] = { 660484,660485 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 329,
        ["textureWidth"] = 275,
        ["offsetY"] = 267,
        ["fileDataIDs"] = { 660523,660524,660525,660526 } 
    },
    {
        ["offsetX"]=701,
        ["textureHeight"] = 293,
        ["textureWidth"] = 295,
        ["offsetY"] = 19,
        ["fileDataIDs"] = { 660490,660491,660492,660493 } 
    },
    {
        ["offsetX"]=612,
        ["textureHeight"] = 204,
        ["textureWidth"] = 306,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 660529,660530 } 
    },
    {
        ["offsetX"]=545,
        ["textureHeight"] = 199,
        ["textureWidth"] = 347,
        ["offsetY"] = 200,
        ["fileDataIDs"] = { 660482,660483 } 
    }
},
[542] = {
    {
        ["offsetX"]=597,
        ["textureHeight"] = 203,
        ["textureWidth"] = 178,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 1003336 } 
    },
    {
        ["offsetX"]=641,
        ["textureHeight"] = 335,
        ["textureWidth"] = 199,
        ["offsetY"] = 304,
        ["fileDataIDs"] = { 1003346,1003347 } 
    },
    {
        ["offsetX"]=609,
        ["textureHeight"] = 278,
        ["textureWidth"] = 213,
        ["offsetY"] = 33,
        ["fileDataIDs"] = { 1003352,1003353 } 
    },
    {
        ["offsetX"]=483,
        ["textureHeight"] = 239,
        ["textureWidth"] = 217,
        ["offsetY"] = 33,
        ["fileDataIDs"] = { 1003341 } 
    },
    {
        ["offsetX"]=306,
        ["textureHeight"] = 191,
        ["textureWidth"] = 251,
        ["offsetY"] = 281,
        ["fileDataIDs"] = { 1003354 } 
    },
    {
        ["offsetX"]=284,
        ["textureHeight"] = 191,
        ["textureWidth"] = 255,
        ["offsetY"] = 91,
        ["fileDataIDs"] = { 1003333 } 
    },
    {
        ["offsetX"]=290,
        ["textureHeight"] = 210,
        ["textureWidth"] = 256,
        ["offsetY"] = 192,
        ["fileDataIDs"] = { 1003355 } 
    },
    {
        ["offsetX"]=311,
        ["textureHeight"] = 217,
        ["textureWidth"] = 258,
        ["offsetY"] = 4,
        ["fileDataIDs"] = { 1003327,1003328 } 
    },
    {
        ["offsetX"]=439,
        ["textureHeight"] = 293,
        ["textureWidth"] = 266,
        ["offsetY"] = 137,
        ["fileDataIDs"] = { 1003356,1003357,1003358,1003359 } 
    },
    {
        ["offsetX"]=729,
        ["textureHeight"] = 349,
        ["textureWidth"] = 273,
        ["offsetY"] = 319,
        ["fileDataIDs"] = { 1003329,1003330,1003331,1003332 } 
    },
    {
        ["offsetX"]=121,
        ["textureHeight"] = 214,
        ["textureWidth"] = 274,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1003334,1003335 } 
    },
    {
        ["offsetX"]=505,
        ["textureHeight"] = 341,
        ["textureWidth"] = 282,
        ["offsetY"] = 323,
        ["fileDataIDs"] = { 1003337,1003338,1003339,1003340 } 
    },
    {
        ["offsetX"]=72,
        ["textureHeight"] = 233,
        ["textureWidth"] = 317,
        ["offsetY"] = 292,
        ["fileDataIDs"] = { 1003360,1003361 } 
    },
    {
        ["offsetX"]=673,
        ["textureHeight"] = 294,
        ["textureWidth"] = 329,
        ["offsetY"] = 156,
        ["fileDataIDs"] = { 1003348,1003349,1003350,1003351 } 
    },
    {
        ["offsetX"]=38,
        ["textureHeight"] = 303,
        ["textureWidth"] = 356,
        ["offsetY"] = 117,
        ["fileDataIDs"] = { 1003323,1003324,1003325,1003326 } 
    }
},
[551] = {
    {
        ["offsetX"]=81,
        ["textureHeight"] = 208,
        ["textureWidth"] = 174,
        ["offsetY"] = 367,
        ["fileDataIDs"] = { 1126684 } 
    },
    {
        ["offsetX"]=303,
        ["textureHeight"] = 294,
        ["textureWidth"] = 189,
        ["offsetY"] = 62,
        ["fileDataIDs"] = { 1126693,1126694 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 245,
        ["textureWidth"] = 209,
        ["offsetY"] = 264,
        ["fileDataIDs"] = { 1126692 } 
    },
    {
        ["offsetX"]=392,
        ["textureHeight"] = 183,
        ["textureWidth"] = 223,
        ["offsetY"] = 187,
        ["fileDataIDs"] = { 1126689 } 
    },
    {
        ["offsetX"]=501,
        ["textureHeight"] = 229,
        ["textureWidth"] = 238,
        ["offsetY"] = 171,
        ["fileDataIDs"] = { 1126706 } 
    },
    {
        ["offsetX"]=296,
        ["textureHeight"] = 218,
        ["textureWidth"] = 246,
        ["offsetY"] = 383,
        ["fileDataIDs"] = { 1126703 } 
    },
    {
        ["offsetX"]=170,
        ["textureHeight"] = 314,
        ["textureWidth"] = 248,
        ["offsetY"] = 354,
        ["fileDataIDs"] = { 1126704,1126705 } 
    },
    {
        ["offsetX"]=465,
        ["textureHeight"] = 208,
        ["textureWidth"] = 270,
        ["offsetY"] = 313,
        ["fileDataIDs"] = { 1126701,1126702 } 
    },
    {
        ["offsetX"]=118,
        ["textureHeight"] = 251,
        ["textureWidth"] = 274,
        ["offsetY"] = 194,
        ["fileDataIDs"] = { 1126707,1126708 } 
    },
    {
        ["offsetX"]=254,
        ["textureHeight"] = 241,
        ["textureWidth"] = 327,
        ["offsetY"] = 262,
        ["fileDataIDs"] = { 1126690,1126691 } 
    },
    {
        ["offsetX"]=637,
        ["textureHeight"] = 437,
        ["textureWidth"] = 333,
        ["offsetY"] = 136,
        ["fileDataIDs"] = { 1126680,1126681,1126682,1126683 } 
    },
    {
        ["offsetX"]=54,
        ["textureHeight"] = 254,
        ["textureWidth"] = 338,
        ["offsetY"] = 94,
        ["fileDataIDs"] = { 1126699,1126700 } 
    },
    {
        ["offsetX"]=429,
        ["textureHeight"] = 264,
        ["textureWidth"] = 343,
        ["offsetY"] = 392,
        ["fileDataIDs"] = { 1126685,1126686,1126687,1126688 } 
    },
    {
        ["offsetX"]=392,
        ["textureHeight"] = 276,
        ["textureWidth"] = 365,
        ["offsetY"] = 23,
        ["fileDataIDs"] = { 1126695,1126696,1126697,1126698 } 
    }
},
[552] = {
    {
        ["offsetX"]=472,
        ["textureHeight"] = 224,
        ["textureWidth"] = 225,
        ["offsetY"] = 148,
        ["fileDataIDs"] = { 1036473 } 
    },
    {
        ["offsetX"]=546,
        ["textureHeight"] = 280,
        ["textureWidth"] = 252,
        ["offsetY"] = 228,
        ["fileDataIDs"] = { 1036441,1036442 } 
    },
    {
        ["offsetX"]=165,
        ["textureHeight"] = 270,
        ["textureWidth"] = 278,
        ["offsetY"] = 364,
        ["fileDataIDs"] = { 1036451,1036452,1036453,1036454 } 
    },
    {
        ["offsetX"]=427,
        ["textureHeight"] = 267,
        ["textureWidth"] = 279,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1036457,1036458,1036459,1036460 } 
    },
    {
        ["offsetX"]=713,
        ["textureHeight"] = 277,
        ["textureWidth"] = 287,
        ["offsetY"] = 35,
        ["fileDataIDs"] = { 1036474,1036475,1036476,1036477 } 
    },
    {
        ["offsetX"]=567,
        ["textureHeight"] = 235,
        ["textureWidth"] = 292,
        ["offsetY"] = 42,
        ["fileDataIDs"] = { 1036445,1036446 } 
    },
    {
        ["offsetX"]=150,
        ["textureHeight"] = 229,
        ["textureWidth"] = 307,
        ["offsetY"] = 264,
        ["fileDataIDs"] = { 1036443,1036444 } 
    },
    {
        ["offsetX"]=685,
        ["textureHeight"] = 276,
        ["textureWidth"] = 308,
        ["offsetY"] = 298,
        ["fileDataIDs"] = { 1036461,1036462,1036463,1036464 } 
    },
    {
        ["offsetX"]=338,
        ["textureHeight"] = 262,
        ["textureWidth"] = 309,
        ["offsetY"] = 356,
        ["fileDataIDs"] = { 1036437,1036438,1036439,1036440 } 
    },
    {
        ["offsetX"]=352,
        ["textureHeight"] = 212,
        ["textureWidth"] = 326,
        ["offsetY"] = 271,
        ["fileDataIDs"] = { 1036471,1036472 } 
    },
    {
        ["offsetX"]=597,
        ["textureHeight"] = 234,
        ["textureWidth"] = 389,
        ["offsetY"] = 178,
        ["fileDataIDs"] = { 1036435,1036436 } 
    },
    {
        ["offsetX"]=571,
        ["textureHeight"] = 149,
        ["textureWidth"] = 398,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1036455,1036456 } 
    },
    {
        ["offsetX"]=173,
        ["textureHeight"] = 367,
        ["textureWidth"] = 406,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 1036465,1036466,1036467,1036468 } 
    },
    {
        ["offsetX"]=548,
        ["textureHeight"] = 290,
        ["textureWidth"] = 423,
        ["offsetY"] = 378,
        ["fileDataIDs"] = { 1036447,1036448,1036449,1036450 } 
    },
    {
        ["offsetX"]=207,
        ["textureHeight"] = 157,
        ["textureWidth"] = 497,
        ["offsetY"] = 511,
        ["fileDataIDs"] = { 1036469,1036470 } 
    }
},
[556] = {
    {
        ["offsetX"]=309,
        ["textureHeight"] = 160,
        ["textureWidth"] = 173,
        ["offsetY"] = 460,
        ["fileDataIDs"] = { 1037676 } 
    },
    {
        ["offsetX"]=383,
        ["textureHeight"] = 201,
        ["textureWidth"] = 202,
        ["offsetY"] = 411,
        ["fileDataIDs"] = { 1037683 } 
    },
    {
        ["offsetX"]=319,
        ["textureHeight"] = 240,
        ["textureWidth"] = 229,
        ["offsetY"] = 5,
        ["fileDataIDs"] = { 1037665 } 
    },
    {
        ["offsetX"]=26,
        ["textureHeight"] = 309,
        ["textureWidth"] = 260,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1037666,1037667,1037668,1037669 } 
    },
    {
        ["offsetX"]=468,
        ["textureHeight"] = 201,
        ["textureWidth"] = 282,
        ["offsetY"] = 467,
        ["fileDataIDs"] = { 1037655,1037656 } 
    },
    {
        ["offsetX"]=259,
        ["textureHeight"] = 225,
        ["textureWidth"] = 282,
        ["offsetY"] = 315,
        ["fileDataIDs"] = { 1037677,1037678 } 
    },
    {
        ["offsetX"]=453,
        ["textureHeight"] = 261,
        ["textureWidth"] = 288,
        ["offsetY"] = 306,
        ["fileDataIDs"] = { 1037679,1037680,1037681,1037682 } 
    },
    {
        ["offsetX"]=426,
        ["textureHeight"] = 266,
        ["textureWidth"] = 291,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1037657,1037658,1037659,1037660 } 
    },
    {
        ["offsetX"]=140,
        ["textureHeight"] = 264,
        ["textureWidth"] = 309,
        ["offsetY"] = 160,
        ["fileDataIDs"] = { 1037651,1037652,1037653,1037654 } 
    },
    {
        ["offsetX"]=270,
        ["textureHeight"] = 252,
        ["textureWidth"] = 346,
        ["offsetY"] = 158,
        ["fileDataIDs"] = { 1037661,1037662 } 
    },
    {
        ["offsetX"]=537,
        ["textureHeight"] = 318,
        ["textureWidth"] = 393,
        ["offsetY"] = 150,
        ["fileDataIDs"] = { 1037670,1037671,1037672,1037673 } 
    }
},
[559] = {
    {
        ["offsetX"]=374,
        ["textureHeight"] = 178,
        ["textureWidth"] = 169,
        ["offsetY"] = 276,
        ["fileDataIDs"] = { 1037704 } 
    },
    {
        ["offsetX"]=649,
        ["textureHeight"] = 244,
        ["textureWidth"] = 182,
        ["offsetY"] = 155,
        ["fileDataIDs"] = { 1037688 } 
    },
    {
        ["offsetX"]=444,
        ["textureHeight"] = 190,
        ["textureWidth"] = 188,
        ["offsetY"] = 255,
        ["fileDataIDs"] = { 1037686 } 
    },
    {
        ["offsetX"]=282,
        ["textureHeight"] = 187,
        ["textureWidth"] = 190,
        ["offsetY"] = 261,
        ["fileDataIDs"] = { 1037689 } 
    },
    {
        ["offsetX"]=429,
        ["textureHeight"] = 284,
        ["textureWidth"] = 196,
        ["offsetY"] = 84,
        ["fileDataIDs"] = { 1037702,1037703 } 
    },
    {
        ["offsetX"]=310,
        ["textureHeight"] = 179,
        ["textureWidth"] = 197,
        ["offsetY"] = 328,
        ["fileDataIDs"] = { 1037705 } 
    },
    {
        ["offsetX"]=521,
        ["textureHeight"] = 232,
        ["textureWidth"] = 198,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 1037707 } 
    },
    {
        ["offsetX"]=334,
        ["textureHeight"] = 154,
        ["textureWidth"] = 209,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 1037684 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 224,
        ["textureWidth"] = 217,
        ["offsetY"] = 382,
        ["fileDataIDs"] = { 1037687 } 
    },
    {
        ["offsetX"]=465,
        ["textureHeight"] = 193,
        ["textureWidth"] = 226,
        ["offsetY"] = 475,
        ["fileDataIDs"] = { 1037708 } 
    },
    {
        ["offsetX"]=197,
        ["textureHeight"] = 213,
        ["textureWidth"] = 229,
        ["offsetY"] = 198,
        ["fileDataIDs"] = { 1037709 } 
    },
    {
        ["offsetX"]=410,
        ["textureHeight"] = 246,
        ["textureWidth"] = 229,
        ["offsetY"] = 350,
        ["fileDataIDs"] = { 1037685 } 
    },
    {
        ["offsetX"]=520,
        ["textureHeight"] = 295,
        ["textureWidth"] = 238,
        ["offsetY"] = 127,
        ["fileDataIDs"] = { 1037698,1037699 } 
    },
    {
        ["offsetX"]=281,
        ["textureHeight"] = 230,
        ["textureWidth"] = 252,
        ["offsetY"] = 83,
        ["fileDataIDs"] = { 1037706 } 
    },
    {
        ["offsetX"]=102,
        ["textureHeight"] = 304,
        ["textureWidth"] = 314,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1037694,1037695,1037696,1037697 } 
    },
    {
        ["offsetX"]=289,
        ["textureHeight"] = 174,
        ["textureWidth"] = 371,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1037700,1037701 } 
    },
    {
        ["offsetX"]=459,
        ["textureHeight"] = 274,
        ["textureWidth"] = 382,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1037690,1037691,1037692,1037693 } 
    }
},
[560] = {
    {
        ["offsetX"]=383,
        ["textureHeight"] = 161,
        ["textureWidth"] = 166,
        ["offsetY"] = 371,
        ["fileDataIDs"] = { 1036374 } 
    },
    {
        ["offsetX"]=275,
        ["textureHeight"] = 142,
        ["textureWidth"] = 208,
        ["offsetY"] = 416,
        ["fileDataIDs"] = { 1036391 } 
    },
    {
        ["offsetX"]=411,
        ["textureHeight"] = 225,
        ["textureWidth"] = 209,
        ["offsetY"] = 250,
        ["fileDataIDs"] = { 1036382 } 
    },
    {
        ["offsetX"]=525,
        ["textureHeight"] = 193,
        ["textureWidth"] = 210,
        ["offsetY"] = 260,
        ["fileDataIDs"] = { 1036375 } 
    },
    {
        ["offsetX"]=455,
        ["textureHeight"] = 221,
        ["textureWidth"] = 211,
        ["offsetY"] = 74,
        ["fileDataIDs"] = { 1036378 } 
    },
    {
        ["offsetX"]=259,
        ["textureHeight"] = 178,
        ["textureWidth"] = 217,
        ["offsetY"] = 335,
        ["fileDataIDs"] = { 1036390 } 
    },
    {
        ["offsetX"]=454,
        ["textureHeight"] = 180,
        ["textureWidth"] = 217,
        ["offsetY"] = 183,
        ["fileDataIDs"] = { 1036379 } 
    },
    {
        ["offsetX"]=312,
        ["textureHeight"] = 232,
        ["textureWidth"] = 250,
        ["offsetY"] = 77,
        ["fileDataIDs"] = { 1036392 } 
    },
    {
        ["offsetX"]=444,
        ["textureHeight"] = 198,
        ["textureWidth"] = 253,
        ["offsetY"] = 323,
        ["fileDataIDs"] = { 1036389 } 
    },
    {
        ["offsetX"]=451,
        ["textureHeight"] = 221,
        ["textureWidth"] = 262,
        ["offsetY"] = 372,
        ["fileDataIDs"] = { 1036393,1036394 } 
    },
    {
        ["offsetX"]=258,
        ["textureHeight"] = 241,
        ["textureWidth"] = 279,
        ["offsetY"] = 213,
        ["fileDataIDs"] = { 1036380,1036381 } 
    },
    {
        ["offsetX"]=547,
        ["textureHeight"] = 323,
        ["textureWidth"] = 285,
        ["offsetY"] = 73,
        ["fileDataIDs"] = { 1036383,1036384,1036385,1036386 } 
    },
    {
        ["offsetX"]=281,
        ["textureHeight"] = 181,
        ["textureWidth"] = 297,
        ["offsetY"] = 444,
        ["fileDataIDs"] = { 1036376,1036377 } 
    },
    {
        ["offsetX"]=350,
        ["textureHeight"] = 180,
        ["textureWidth"] = 315,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1036387,1036388 } 
    },
    {
        ["offsetX"]=283,
        ["textureHeight"] = 161,
        ["textureWidth"] = 324,
        ["offsetY"] = 507,
        ["fileDataIDs"] = { 1036372,1036373 } 
    }
},
[567] = {
    {
        ["offsetX"]=239,
        ["textureHeight"] = 191,
        ["textureWidth"] = 234,
        ["offsetY"] = 259,
        ["fileDataIDs"] = { 1036395 } 
    },
    {
        ["offsetX"]=283,
        ["textureHeight"] = 242,
        ["textureWidth"] = 236,
        ["offsetY"] = 354,
        ["fileDataIDs"] = { 1036410 } 
    },
    {
        ["offsetX"]=766,
        ["textureHeight"] = 372,
        ["textureWidth"] = 236,
        ["offsetY"] = 118,
        ["fileDataIDs"] = { 1036404,1036405 } 
    },
    {
        ["offsetX"]=753,
        ["textureHeight"] = 288,
        ["textureWidth"] = 249,
        ["offsetY"] = 380,
        ["fileDataIDs"] = { 1036413,1036414 } 
    },
    {
        ["offsetX"]=746,
        ["textureHeight"] = 287,
        ["textureWidth"] = 250,
        ["offsetY"] = 25,
        ["fileDataIDs"] = { 1036415,1036416 } 
    },
    {
        ["offsetX"]=600,
        ["textureHeight"] = 301,
        ["textureWidth"] = 256,
        ["offsetY"] = 367,
        ["fileDataIDs"] = { 1036402,1036403 } 
    },
    {
        ["offsetX"]=366,
        ["textureHeight"] = 266,
        ["textureWidth"] = 262,
        ["offsetY"] = 323,
        ["fileDataIDs"] = { 1036417,1036418,1036419,1036420 } 
    },
    {
        ["offsetX"]=430,
        ["textureHeight"] = 287,
        ["textureWidth"] = 263,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1036421,1036422,1036423,1036424 } 
    },
    {
        ["offsetX"]=312,
        ["textureHeight"] = 254,
        ["textureWidth"] = 274,
        ["offsetY"] = 98,
        ["fileDataIDs"] = { 1036429,1036430 } 
    },
    {
        ["offsetX"]=588,
        ["textureHeight"] = 274,
        ["textureWidth"] = 286,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1036398,1036399,1036400,1036401 } 
    },
    {
        ["offsetX"]=461,
        ["textureHeight"] = 272,
        ["textureWidth"] = 296,
        ["offsetY"] = 353,
        ["fileDataIDs"] = { 1036431,1036432,1036433,1036434 } 
    },
    {
        ["offsetX"]=256,
        ["textureHeight"] = 227,
        ["textureWidth"] = 305,
        ["offsetY"] = 12,
        ["fileDataIDs"] = { 1036396,1036397 } 
    },
    {
        ["offsetX"]=382,
        ["textureHeight"] = 221,
        ["textureWidth"] = 316,
        ["offsetY"] = 187,
        ["fileDataIDs"] = { 1036411,1036412 } 
    },
    {
        ["offsetX"]=523,
        ["textureHeight"] = 315,
        ["textureWidth"] = 354,
        ["offsetY"] = 159,
        ["fileDataIDs"] = { 1036425,1036426,1036427,1036428 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 437,
        ["textureWidth"] = 471,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1036406,1036407,1036408,1036409 } 
    }
},
[628] = {
    {
        ["offsetX"]=375,
        ["textureHeight"] = 170,
        ["textureWidth"] = 168,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 1085238 } 
    },
    {
        ["offsetX"]=436,
        ["textureHeight"] = 199,
        ["textureWidth"] = 195,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1085237 } 
    },
    {
        ["offsetX"]=333,
        ["textureHeight"] = 191,
        ["textureWidth"] = 199,
        ["offsetY"] = 474,
        ["fileDataIDs"] = { 1085244 } 
    },
    {
        ["offsetX"]=459,
        ["textureHeight"] = 183,
        ["textureWidth"] = 218,
        ["offsetY"] = 97,
        ["fileDataIDs"] = { 1085239 } 
    },
    {
        ["offsetX"]=386,
        ["textureHeight"] = 266,
        ["textureWidth"] = 233,
        ["offsetY"] = 374,
        ["fileDataIDs"] = { 1085242,1085243 } 
    },
    {
        ["offsetX"]=327,
        ["textureHeight"] = 188,
        ["textureWidth"] = 235,
        ["offsetY"] = 182,
        ["fileDataIDs"] = { 1085234 } 
    },
    {
        ["offsetX"]=225,
        ["textureHeight"] = 195,
        ["textureWidth"] = 238,
        ["offsetY"] = 110,
        ["fileDataIDs"] = { 1085231 } 
    },
    {
        ["offsetX"]=578,
        ["textureHeight"] = 270,
        ["textureWidth"] = 240,
        ["offsetY"] = 91,
        ["fileDataIDs"] = { 1085240,1085241 } 
    },
    {
        ["offsetX"]=533,
        ["textureHeight"] = 354,
        ["textureWidth"] = 268,
        ["offsetY"] = 268,
        ["fileDataIDs"] = { 1085249,1085250,1085251,1085252 } 
    },
    {
        ["offsetX"]=258,
        ["textureHeight"] = 206,
        ["textureWidth"] = 272,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1085232,1085233 } 
    },
    {
        ["offsetX"]=530,
        ["textureHeight"] = 205,
        ["textureWidth"] = 295,
        ["offsetY"] = 6,
        ["fileDataIDs"] = { 1085235,1085236 } 
    },
    {
        ["offsetX"]=144,
        ["textureHeight"] = 226,
        ["textureWidth"] = 308,
        ["offsetY"] = 175,
        ["fileDataIDs"] = { 1085257,1085258 } 
    },
    {
        ["offsetX"]=132,
        ["textureHeight"] = 357,
        ["textureWidth"] = 348,
        ["offsetY"] = 311,
        ["fileDataIDs"] = { 1085253,1085254,1085255,1085256 } 
    },
    {
        ["offsetX"]=368,
        ["textureHeight"] = 298,
        ["textureWidth"] = 370,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 1085245,1085246,1085247,1085248 } 
    }
},
[653] = {
    {
        ["offsetX"]=481,
        ["textureHeight"] = 243,
        ["textureWidth"] = 181,
        ["offsetY"] = 340,
        ["fileDataIDs"] = { 1414545 } 
    },
    {
        ["offsetX"]=396,
        ["textureHeight"] = 266,
        ["textureWidth"] = 206,
        ["offsetY"] = 244,
        ["fileDataIDs"] = { 1414541,1414542 } 
    },
    {
        ["offsetX"]=523,
        ["textureHeight"] = 288,
        ["textureWidth"] = 220,
        ["offsetY"] = 233,
        ["fileDataIDs"] = { 1414543,1414544 } 
    },
    {
        ["offsetX"]=594,
        ["textureHeight"] = 303,
        ["textureWidth"] = 239,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414528,1414529 } 
    },
    {
        ["offsetX"]=450,
        ["textureHeight"] = 184,
        ["textureWidth"] = 247,
        ["offsetY"] = 95,
        ["fileDataIDs"] = { 1414530 } 
    },
    {
        ["offsetX"]=441,
        ["textureHeight"] = 192,
        ["textureWidth"] = 272,
        ["offsetY"] = 173,
        ["fileDataIDs"] = { 1414539,1414540 } 
    },
    {
        ["offsetX"]=477,
        ["textureHeight"] = 195,
        ["textureWidth"] = 288,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414546,1414547 } 
    },
    {
        ["offsetX"]=257,
        ["textureHeight"] = 185,
        ["textureWidth"] = 315,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414537,1414538 } 
    },
    {
        ["offsetX"]=281,
        ["textureHeight"] = 267,
        ["textureWidth"] = 321,
        ["offsetY"] = 401,
        ["fileDataIDs"] = { 1414531,1414532,1414533,1414534 } 
    },
    {
        ["offsetX"]=166,
        ["textureHeight"] = 265,
        ["textureWidth"] = 330,
        ["offsetY"] = 202,
        ["fileDataIDs"] = { 1414524,1414525,1414526,1414527 } 
    },
    {
        ["offsetX"]=219,
        ["textureHeight"] = 245,
        ["textureWidth"] = 351,
        ["offsetY"] = 69,
        ["fileDataIDs"] = { 1414535,1414536 } 
    }
},
[657] = {
    {
        ["offsetX"]=689,
        ["textureHeight"] = 145,
        ["textureWidth"] = 132,
        ["offsetY"] = 266,
        ["fileDataIDs"] = { 1414600 } 
    },
    {
        ["offsetX"]=623,
        ["textureHeight"] = 162,
        ["textureWidth"] = 135,
        ["offsetY"] = 81,
        ["fileDataIDs"] = { 1414615 } 
    },
    {
        ["offsetX"]=741,
        ["textureHeight"] = 180,
        ["textureWidth"] = 150,
        ["offsetY"] = 313,
        ["fileDataIDs"] = { 1414613 } 
    },
    {
        ["offsetX"]=648,
        ["textureHeight"] = 163,
        ["textureWidth"] = 173,
        ["offsetY"] = 339,
        ["fileDataIDs"] = { 1414601 } 
    },
    {
        ["offsetX"]=506,
        ["textureHeight"] = 169,
        ["textureWidth"] = 177,
        ["offsetY"] = 345,
        ["fileDataIDs"] = { 1414618 } 
    },
    {
        ["offsetX"]=510,
        ["textureHeight"] = 160,
        ["textureWidth"] = 180,
        ["offsetY"] = 118,
        ["fileDataIDs"] = { 1414619 } 
    },
    {
        ["offsetX"]=522,
        ["textureHeight"] = 158,
        ["textureWidth"] = 186,
        ["offsetY"] = 288,
        ["fileDataIDs"] = { 1414623 } 
    },
    {
        ["offsetX"]=592,
        ["textureHeight"] = 214,
        ["textureWidth"] = 194,
        ["offsetY"] = 226,
        ["fileDataIDs"] = { 1414616 } 
    },
    {
        ["offsetX"]=361,
        ["textureHeight"] = 185,
        ["textureWidth"] = 199,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 1414596 } 
    },
    {
        ["offsetX"]=612,
        ["textureHeight"] = 174,
        ["textureWidth"] = 200,
        ["offsetY"] = 187,
        ["fileDataIDs"] = { 1414604 } 
    },
    {
        ["offsetX"]=479,
        ["textureHeight"] = 199,
        ["textureWidth"] = 205,
        ["offsetY"] = 183,
        ["fileDataIDs"] = { 1414622 } 
    },
    {
        ["offsetX"]=457,
        ["textureHeight"] = 247,
        ["textureWidth"] = 215,
        ["offsetY"] = 412,
        ["fileDataIDs"] = { 1414599 } 
    },
    {
        ["offsetX"]=345,
        ["textureHeight"] = 194,
        ["textureWidth"] = 241,
        ["offsetY"] = 95,
        ["fileDataIDs"] = { 1414614 } 
    },
    {
        ["offsetX"]=585,
        ["textureHeight"] = 280,
        ["textureWidth"] = 252,
        ["offsetY"] = 372,
        ["fileDataIDs"] = { 1414602,1414603 } 
    },
    {
        ["offsetX"]=689,
        ["textureHeight"] = 172,
        ["textureWidth"] = 289,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414617,1417748 } 
    },
    {
        ["offsetX"]=316,
        ["textureHeight"] = 208,
        ["textureWidth"] = 291,
        ["offsetY"] = 282,
        ["fileDataIDs"] = { 1414620,1414621 } 
    },
    {
        ["offsetX"]=154,
        ["textureHeight"] = 210,
        ["textureWidth"] = 297,
        ["offsetY"] = 129,
        ["fileDataIDs"] = { 1414597,1414598 } 
    },
    {
        ["offsetX"]=56,
        ["textureHeight"] = 314,
        ["textureWidth"] = 386,
        ["offsetY"] = 185,
        ["fileDataIDs"] = { 1414624,1414625,1414626,1414627 } 
    },
    {
        ["offsetX"]=17,
        ["textureHeight"] = 251,
        ["textureWidth"] = 509,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414611,1414612 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 315,
        ["textureWidth"] = 631,
        ["offsetY"] = 353,
        ["fileDataIDs"] = { 1414605,1414606,1414607,1414608,1414609,1414610 } 
    }
},
[664] = {
    {
        ["offsetX"]=457,
        ["textureHeight"] = 150,
        ["textureWidth"] = 171,
        ["offsetY"] = 351,
        ["fileDataIDs"] = { 1414675 } 
    },
    {
        ["offsetX"]=467,
        ["textureHeight"] = 156,
        ["textureWidth"] = 177,
        ["offsetY"] = 413,
        ["fileDataIDs"] = { 1414676 } 
    },
    {
        ["offsetX"]=459,
        ["textureHeight"] = 219,
        ["textureWidth"] = 216,
        ["offsetY"] = 240,
        ["fileDataIDs"] = { 1414689 } 
    },
    {
        ["offsetX"]=342,
        ["textureHeight"] = 168,
        ["textureWidth"] = 218,
        ["offsetY"] = 416,
        ["fileDataIDs"] = { 1414690 } 
    },
    {
        ["offsetX"]=136,
        ["textureHeight"] = 301,
        ["textureWidth"] = 239,
        ["offsetY"] = 274,
        ["fileDataIDs"] = { 1414673,1414674 } 
    },
    {
        ["offsetX"]=587,
        ["textureHeight"] = 240,
        ["textureWidth"] = 241,
        ["offsetY"] = 250,
        ["fileDataIDs"] = { 1414665 } 
    },
    {
        ["offsetX"]=262,
        ["textureHeight"] = 253,
        ["textureWidth"] = 250,
        ["offsetY"] = 175,
        ["fileDataIDs"] = { 1414666 } 
    },
    {
        ["offsetX"]=549,
        ["textureHeight"] = 281,
        ["textureWidth"] = 254,
        ["offsetY"] = 380,
        ["fileDataIDs"] = { 1414681,1414682 } 
    },
    {
        ["offsetX"]=610,
        ["textureHeight"] = 344,
        ["textureWidth"] = 274,
        ["offsetY"] = 18,
        ["fileDataIDs"] = { 1414677,1414678,1414679,1414680 } 
    },
    {
        ["offsetX"]=283,
        ["textureHeight"] = 364,
        ["textureWidth"] = 294,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414669,1414670,1414671,1414672 } 
    },
    {
        ["offsetX"]=259,
        ["textureHeight"] = 244,
        ["textureWidth"] = 311,
        ["offsetY"] = 275,
        ["fileDataIDs"] = { 1414667,1414668 } 
    },
    {
        ["offsetX"]=419,
        ["textureHeight"] = 360,
        ["textureWidth"] = 326,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414683,1414684,1414685,1414686 } 
    },
    {
        ["offsetX"]=324,
        ["textureHeight"] = 188,
        ["textureWidth"] = 341,
        ["offsetY"] = 480,
        ["fileDataIDs"] = { 1414687,1414688 } 
    }
},
[669] = {
    {
        ["offsetX"]=220,
        ["textureHeight"] = 245,
        ["textureWidth"] = 182,
        ["offsetY"] = 260,
        ["fileDataIDs"] = { 1597370 } 
    },
    {
        ["offsetX"]=350,
        ["textureHeight"] = 213,
        ["textureWidth"] = 276,
        ["offsetY"] = 13,
        ["fileDataIDs"] = { 1597172,1597166 } 
    },
    {
        ["offsetX"]=632,
        ["textureHeight"] = 244,
        ["textureWidth"] = 308,
        ["offsetY"] = 169,
        ["fileDataIDs"] = { 1414556,1414557 } 
    },
    {
        ["offsetX"]=500,
        ["textureHeight"] = 301,
        ["textureWidth"] = 312,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414560,1414561,1414562,1414563 } 
    },
    {
        ["offsetX"]=596,
        ["textureHeight"] = 276,
        ["textureWidth"] = 332,
        ["offsetY"] = 100,
        ["fileDataIDs"] = { 1597182,1597179,1597167,1597186 } 
    },
    {
        ["offsetX"]=389,
        ["textureHeight"] = 270,
        ["textureWidth"] = 338,
        ["offsetY"] = 180,
        ["fileDataIDs"] = { 1597181,1597168,1597171,1597187 } 
    },
    {
        ["offsetX"]=254,
        ["textureHeight"] = 322,
        ["textureWidth"] = 338,
        ["offsetY"] = 84,
        ["fileDataIDs"] = { 1597169,1597369,1597185,1597180 } 
    },
    {
        ["offsetX"]=312,
        ["textureHeight"] = 314,
        ["textureWidth"] = 387,
        ["offsetY"] = 302,
        ["fileDataIDs"] = { 1597371,1597184,1597183,1597170 } 
    }
},
[674] = {
    {
        ["offsetX"]=249,
        ["textureHeight"] = 204,
        ["textureWidth"] = 172,
        ["offsetY"] = 236,
        ["fileDataIDs"] = { 1414595 } 
    },
    {
        ["offsetX"]=391,
        ["textureHeight"] = 213,
        ["textureWidth"] = 186,
        ["offsetY"] = 408,
        ["fileDataIDs"] = { 1414568 } 
    },
    {
        ["offsetX"]=469,
        ["textureHeight"] = 302,
        ["textureWidth"] = 207,
        ["offsetY"] = 45,
        ["fileDataIDs"] = { 1414580,1414581 } 
    },
    {
        ["offsetX"]=314,
        ["textureHeight"] = 308,
        ["textureWidth"] = 214,
        ["offsetY"] = 360,
        ["fileDataIDs"] = { 1414578,1414579 } 
    },
    {
        ["offsetX"]=323,
        ["textureHeight"] = 148,
        ["textureWidth"] = 217,
        ["offsetY"] = 249,
        ["fileDataIDs"] = { 1414577 } 
    },
    {
        ["offsetX"]=332,
        ["textureHeight"] = 199,
        ["textureWidth"] = 244,
        ["offsetY"] = 302,
        ["fileDataIDs"] = { 1414594 } 
    },
    {
        ["offsetX"]=172,
        ["textureHeight"] = 326,
        ["textureWidth"] = 256,
        ["offsetY"] = 31,
        ["fileDataIDs"] = { 1414566,1414567 } 
    },
    {
        ["offsetX"]=331,
        ["textureHeight"] = 170,
        ["textureWidth"] = 283,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414582,1414583 } 
    },
    {
        ["offsetX"]=452,
        ["textureHeight"] = 258,
        ["textureWidth"] = 288,
        ["offsetY"] = 410,
        ["fileDataIDs"] = { 1414569,1414570,1414571,1414572 } 
    },
    {
        ["offsetX"]=307,
        ["textureHeight"] = 250,
        ["textureWidth"] = 297,
        ["offsetY"] = 75,
        ["fileDataIDs"] = { 1414564,1414565 } 
    },
    {
        ["offsetX"]=357,
        ["textureHeight"] = 229,
        ["textureWidth"] = 311,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 1414584,1414585 } 
    },
    {
        ["offsetX"]=494,
        ["textureHeight"] = 328,
        ["textureWidth"] = 341,
        ["offsetY"] = 236,
        ["fileDataIDs"] = { 1414586,1414587,1414588,1414589 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 295,
        ["textureWidth"] = 344,
        ["offsetY"] = 244,
        ["fileDataIDs"] = { 1414573,1414574,1414575,1414576 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 326,
        ["textureWidth"] = 445,
        ["offsetY"] = 342,
        ["fileDataIDs"] = { 1414590,1414591,1414592,1414593 } 
    }
},
[700] = {
    {
        ["offsetX"]=0,
        ["textureHeight"] = 364,
        ["textureWidth"] = 376,
        ["offsetY"] = 212,
        ["fileDataIDs"] = { 1445120,1445121,1445122,1445123 } 
    }
},
[704] = {
    {
        ["offsetX"]=264,
        ["textureHeight"] = 224,
        ["textureWidth"] = 221,
        ["offsetY"] = 226,
        ["fileDataIDs"] = { 1414656 } 
    },
    {
        ["offsetX"]=132,
        ["textureHeight"] = 311,
        ["textureWidth"] = 222,
        ["offsetY"] = 179,
        ["fileDataIDs"] = { 1414628,1414629 } 
    },
    {
        ["offsetX"]=23,
        ["textureHeight"] = 317,
        ["textureWidth"] = 248,
        ["offsetY"] = 136,
        ["fileDataIDs"] = { 1414634,1414635 } 
    },
    {
        ["offsetX"]=183,
        ["textureHeight"] = 363,
        ["textureWidth"] = 289,
        ["offsetY"] = 305,
        ["fileDataIDs"] = { 1414636,1414637,1414638,1414639 } 
    },
    {
        ["offsetX"]=492,
        ["textureHeight"] = 381,
        ["textureWidth"] = 327,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414630,1414631,1414632,1414633 } 
    },
    {
        ["offsetX"]=344,
        ["textureHeight"] = 291,
        ["textureWidth"] = 355,
        ["offsetY"] = 285,
        ["fileDataIDs"] = { 1414640,1414641,1414642,1414643 } 
    },
    {
        ["offsetX"]=327,
        ["textureHeight"] = 372,
        ["textureWidth"] = 387,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414661,1414662,1414663,1414664 } 
    },
    {
        ["offsetX"]=583,
        ["textureHeight"] = 538,
        ["textureWidth"] = 419,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414644,1414645,1414646,1414647,1414648,1414649 } 
    },
    {
        ["offsetX"]=201,
        ["textureHeight"] = 316,
        ["textureWidth"] = 428,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414652,1414653,1414654,1414655 } 
    },
    {
        ["offsetX"]=390,
        ["textureHeight"] = 337,
        ["textureWidth"] = 470,
        ["offsetY"] = 331,
        ["fileDataIDs"] = { 1414657,1414658,1414659,1414660 } 
    },
    {
        ["offsetX"]=58,
        ["textureHeight"] = 245,
        ["textureWidth"] = 480,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1414650,1414651 } 
    }
},
[815] = {
    {
        ["offsetX"]=39,
        ["textureHeight"] = 668,
        ["textureWidth"] = 848,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1417775,1417779,1417780,1417781,1417782,1417783,1417784,1417785,1417786,1417776,1417777,1417778 } 
    }
},
[855] = {
    {
        ["offsetX"]=371,
        ["textureHeight"] = 336,
        ["textureWidth"] = 296,
        ["offsetY"] = 178,
        ["fileDataIDs"] = { 1710644,1710645,1710646,1710647 } 
    },
    {
        ["offsetX"]=428,
        ["textureHeight"] = 304,
        ["textureWidth"] = 307,
        ["offsetY"] = 364,
        ["fileDataIDs"] = { 1710648,1710649,1710650,1710651 } 
    },
    {
        ["offsetX"]=557,
        ["textureHeight"] = 379,
        ["textureWidth"] = 445,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 1710660,1710661,1710662,1710663 } 
    },
    {
        ["offsetX"]=37,
        ["textureHeight"] = 530,
        ["textureWidth"] = 498,
        ["offsetY"] = 138,
        ["fileDataIDs"] = { 1710664,1710665,1710666,1710667,1710668,1710669 } 
    },
    {
        ["offsetX"]=167,
        ["textureHeight"] = 422,
        ["textureWidth"] = 835,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1710652,1710653,1710654,1710655,1710656,1710657,1710658,1710659 } 
    }
},
[887] = {
    {
        ["offsetX"]=1815,
        ["textureHeight"] = 1207,
        ["textureWidth"] = 699,
        ["offsetY"] = 260,
        ["fileDataIDs"] = { 2034238,2034245,2034246,2034247,2034248,2034249,2034250,2034251,2034252,2034239,2034240,2034241,2034242,2034243,2034244 } 
    },
    {
        ["offsetX"]=2631,
        ["textureHeight"] = 617,
        ["textureWidth"] = 726,
        ["offsetY"] = 1023,
        ["fileDataIDs"] = { 2034361,2034362,2034363,2034364,2034365,2034366,2034367,2034368,2034369 } 
    },
    {
        ["offsetX"]=2107,
        ["textureHeight"] = 967,
        ["textureWidth"] = 769,
        ["offsetY"] = 327,
        ["fileDataIDs"] = { 2034321,2034329,2034330,2034331,2034332,2034333,2034334,2034335,2034336,2034322,2034323,2034324,2034325,2034326,2034327,2034328 } 
    },
    {
        ["offsetX"]=2685,
        ["textureHeight"] = 668,
        ["textureWidth"] = 793,
        ["offsetY"] = 633,
        ["fileDataIDs"] = { 2034211,2034215,2034216,2034217,2034218,2034219,2034220,2034221,2034222,2034212,2034213,2034214 } 
    },
    {
        ["offsetX"]=1312,
        ["textureHeight"] = 1512,
        ["textureWidth"] = 888,
        ["offsetY"] = 82,
        ["fileDataIDs"] = { 2034269,2034280,2034286,2034287,2034288,2034289,2034290,2034291,2034292,2034270,2034271,2034272,2034273,2034274,2034275,2034276,2034277,2034278,2034279,2034281,2034282,2034283,2034284,2034285 } 
    },
    {
        ["offsetX"]=2325,
        ["textureHeight"] = 830,
        ["textureWidth"] = 934,
        ["offsetY"] = 1270,
        ["fileDataIDs"] = { 2034253,2034261,2034262,2034263,2034264,2034265,2034266,2034267,2034268,2034254,2034255,2034256,2034257,2034258,2034259,2034260 } 
    },
    {
        ["offsetX"]=2144,
        ["textureHeight"] = 1559,
        ["textureWidth"] = 943,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2034293,2034304,2034314,2034315,2034316,2034317,2034318,2034319,2034320,2034294,2034295,2034296,2034297,2034298,2034299,2034300,2034301,2034302,2034303,2034305,2034306,2034307,2034308,2034309,2034310,2034311,2034312,2034313 } 
    },
    {
        ["offsetX"]=2409,
        ["textureHeight"] = 912,
        ["textureWidth"] = 979,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2034400,2034408,2034409,2034410,2034411,2034412,2034413,2034414,2034415,2034401,2034402,2034403,2034404,2034405,2034406,2034407 } 
    },
    {
        ["offsetX"]=1825,
        ["textureHeight"] = 1344,
        ["textureWidth"] = 999,
        ["offsetY"] = 1216,
        ["fileDataIDs"] = { 2034337,2034348,2034354,2034355,2034356,2034357,2034358,2034359,2034360,2034338,2034339,2034340,2034341,2034342,2034343,2034344,2034345,2034346,2034347,2034349,2034350,2034351,2034352,2034353 } 
    },
    {
        ["offsetX"]=1357,
        ["textureHeight"] = 672,
        ["textureWidth"] = 1130,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2034223,2034230,2034231,2034232,2034233,2034234,2034235,2034236,2034237,2034224,2034225,2034226,2034227,2034228,2034229 } 
    },
    {
        ["offsetX"]=1046,
        ["textureHeight"] = 1287,
        ["textureWidth"] = 1243,
        ["offsetY"] = 1273,
        ["fileDataIDs"] = { 2034370,2034381,2034392,2034394,2034395,2034396,2034397,2034398,2034399,2034371,2034372,2034373,2034374,2034375,2034376,2034377,2034378,2034379,2034380,2034382,2034383,2034384,2034385,2034386,2034387,2034388,2034389,2034390,2034391,2034393 } 
    },
    {
        ["offsetX"]=321,
        ["textureHeight"] = 1565,
        ["textureWidth"] = 1650,
        ["offsetY"] = 378,
        ["fileDataIDs"] = { 2034162,2034173,2034184,2034195,2034206,2034207,2034208,2034209,2034210,2034163,2034164,2034165,2034166,2034167,2034168,2034169,2034170,2034171,2034172,2034174,2034175,2034176,2034177,2034178,2034179,2034180,2034181,2034182,2034183,2034185,2034186,2034187,2034188,2034189,2034190,2034191,2034192,2034193,2034194,2034196,2034197,2034198,2034199,2034200,2034201,2034202,2034203,2034204,2034205 } 
    }
},
[888] = {
    {
        ["offsetX"]=1298,
        ["textureHeight"] = 709,
        ["textureWidth"] = 534,
        ["offsetY"] = 1561,
        ["fileDataIDs"] = { 2024042,2024043,2024044,2024045,2024046,2024047,2024048,2024049,2024050 } 
    },
    {
        ["offsetX"]=1511,
        ["textureHeight"] = 991,
        ["textureWidth"] = 800,
        ["offsetY"] = 1043,
        ["fileDataIDs"] = { 2023713,2023721,2023722,2023723,2023724,2023725,2023726,2023727,2023728,2023714,2023715,2023716,2023717,2023718,2023719,2023720 } 
    },
    {
        ["offsetX"]=1807,
        ["textureHeight"] = 1075,
        ["textureWidth"] = 841,
        ["offsetY"] = 1043,
        ["fileDataIDs"] = { 2023997,2024008,2024010,2024011,2024012,2024013,2024014,2024015,2024016,2023998,2023999,2024000,2024001,2024002,2024003,2024004,2024005,2024006,2024007,2024009 } 
    },
    {
        ["offsetX"]=2309,
        ["textureHeight"] = 1103,
        ["textureWidth"] = 1065,
        ["offsetY"] = 210,
        ["fileDataIDs"] = { 2023868,2023879,2023886,2023887,2023888,2023889,2023890,2023891,2023892,2023869,2023870,2023871,2023872,2023873,2023874,2023875,2023876,2023877,2023878,2023880,2023881,2023882,2023883,2023884,2023885 } 
    },
    {
        ["offsetX"]=2349,
        ["textureHeight"] = 996,
        ["textureWidth"] = 1098,
        ["offsetY"] = 871,
        ["fileDataIDs"] = { 2023693,2023704,2023706,2023707,2023708,2023709,2023710,2023711,2023712,2023694,2023695,2023696,2023697,2023698,2023699,2023700,2023701,2023702,2023703,2023705 } 
    },
    {
        ["offsetX"]=484,
        ["textureHeight"] = 967,
        ["textureWidth"] = 1157,
        ["offsetY"] = 1539,
        ["fileDataIDs"] = { 2023923,2023934,2023936,2023937,2023938,2023939,2023940,2023941,2023942,2023924,2023925,2023926,2023927,2023928,2023929,2023930,2023931,2023932,2023933,2023935 } 
    },
    {
        ["offsetX"]=620,
        ["textureHeight"] = 1249,
        ["textureWidth"] = 1225,
        ["offsetY"] = 565,
        ["fileDataIDs"] = { 2024017,2024028,2024035,2024036,2024037,2024038,2024039,2024040,2024041,2024018,2024019,2024020,2024021,2024022,2024023,2024024,2024025,2024026,2024027,2024029,2024030,2024031,2024032,2024033,2024034 } 
    },
    {
        ["offsetX"]=1072,
        ["textureHeight"] = 809,
        ["textureWidth"] = 1289,
        ["offsetY"] = 1676,
        ["fileDataIDs"] = { 2023943,2023954,2023960,2023961,2023962,2023963,2023964,2023965,2023966,2023944,2023945,2023946,2023947,2023948,2023949,2023950,2023951,2023952,2023953,2023955,2023956,2023957,2023958,2023959 } 
    },
    {
        ["offsetX"]=1682,
        ["textureHeight"] = 1029,
        ["textureWidth"] = 1349,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2023967,2023978,2023989,2023991,2023992,2023993,2023994,2023995,2023996,2023968,2023969,2023970,2023971,2023972,2023973,2023974,2023975,2023976,2023977,2023979,2023980,2023981,2023982,2023983,2023984,2023985,2023986,2023987,2023988,2023990 } 
    },
    {
        ["offsetX"]=1097,
        ["textureHeight"] = 1119,
        ["textureWidth"] = 1534,
        ["offsetY"] = 281,
        ["fileDataIDs"] = { 2023893,2023904,2023915,2023917,2023918,2023919,2023920,2023921,2023922,2023894,2023895,2023896,2023897,2023898,2023899,2023900,2023901,2023902,2023903,2023905,2023906,2023907,2023908,2023909,2023910,2023911,2023912,2023913,2023914,2023916 } 
    }
},
[889] = {
    {
        ["offsetX"]=1180,
        ["textureHeight"] = 856,
        ["textureWidth"] = 666,
        ["offsetY"] = 1255,
        ["fileDataIDs"] = { 2033961,2033965,2033966,2033967,2033968,2033969,2033970,2033971,2033972,2033962,2033963,2033964 } 
    },
    {
        ["offsetX"]=739,
        ["textureHeight"] = 816,
        ["textureWidth"] = 769,
        ["offsetY"] = 1332,
        ["fileDataIDs"] = { 2033973,2033981,2033982,2033983,2033984,2033985,2033986,2033987,2033988,2033974,2033975,2033976,2033977,2033978,2033979,2033980 } 
    },
    {
        ["offsetX"]=1362,
        ["textureHeight"] = 542,
        ["textureWidth"] = 794,
        ["offsetY"] = 2018,
        ["fileDataIDs"] = { 2033949,2033953,2033954,2033955,2033956,2033957,2033958,2033959,2033960,2033950,2033951,2033952 } 
    },
    {
        ["offsetX"]=1316,
        ["textureHeight"] = 672,
        ["textureWidth"] = 849,
        ["offsetY"] = 895,
        ["fileDataIDs"] = { 2033865,2033869,2033870,2033871,2033872,2033873,2033874,2033875,2033876,2033866,2033867,2033868 } 
    },
    {
        ["offsetX"]=1006,
        ["textureHeight"] = 897,
        ["textureWidth"] = 881,
        ["offsetY"] = 341,
        ["fileDataIDs"] = { 2033917,2033925,2033926,2033927,2033928,2033929,2033930,2033931,2033932,2033918,2033919,2033920,2033921,2033922,2033923,2033924 } 
    },
    {
        ["offsetX"]=2063,
        ["textureHeight"] = 727,
        ["textureWidth"] = 913,
        ["offsetY"] = 517,
        ["fileDataIDs"] = { 2033877,2033881,2033882,2033883,2033884,2033885,2033886,2033887,2033888,2033878,2033879,2033880 } 
    },
    {
        ["offsetX"]=1579,
        ["textureHeight"] = 966,
        ["textureWidth"] = 915,
        ["offsetY"] = 220,
        ["fileDataIDs"] = { 2033933,2033941,2033942,2033943,2033944,2033945,2033946,2033947,2033948,2033934,2033935,2033936,2033937,2033938,2033939,2033940 } 
    },
    {
        ["offsetX"]=807,
        ["textureHeight"] = 688,
        ["textureWidth"] = 926,
        ["offsetY"] = 1801,
        ["fileDataIDs"] = { 2033905,2033909,2033910,2033911,2033912,2033913,2033914,2033915,2033916,2033906,2033907,2033908 } 
    },
    {
        ["offsetX"]=1880,
        ["textureHeight"] = 835,
        ["textureWidth"] = 969,
        ["offsetY"] = 859,
        ["fileDataIDs"] = { 2033889,2033897,2033898,2033899,2033900,2033901,2033902,2033903,2033904,2033890,2033891,2033892,2033893,2033894,2033895,2033896 } 
    },
    {
        ["offsetX"]=576,
        ["textureHeight"] = 703,
        ["textureWidth"] = 1086,
        ["offsetY"] = 902,
        ["fileDataIDs"] = { 2033989,2033996,2033997,2033998,2033999,2034000,2034001,2034002,2034003,2033990,2033991,2033992,2033993,2033994,2033995 } 
    },
    {
        ["offsetX"]=1569,
        ["textureHeight"] = 822,
        ["textureWidth"] = 1139,
        ["offsetY"] = 1281,
        ["fileDataIDs"] = { 2033845,2033856,2033858,2033859,2033860,2033861,2033862,2033863,2033864,2033846,2033847,2033848,2033849,2033850,2033851,2033852,2033853,2033854,2033855,2033857 } 
    },
    {
        ["offsetX"]=1733,
        ["textureHeight"] = 843,
        ["textureWidth"] = 1223,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2034004,2034015,2034017,2034018,2034019,2034020,2034021,2034022,2034023,2034005,2034006,2034007,2034008,2034009,2034010,2034011,2034012,2034013,2034014,2034016 } 
    },
    {
        ["offsetX"]=1469,
        ["textureHeight"] = 876,
        ["textureWidth"] = 1287,
        ["offsetY"] = 1684,
        ["fileDataIDs"] = { 2033821,2033832,2033838,2033839,2033840,2033841,2033842,2033843,2033844,2033822,2033823,2033824,2033825,2033826,2033827,2033828,2033829,2033830,2033831,2033833,2033834,2033835,2033836,2033837 } 
    }
},
[907] = {
    {
        ["offsetX"]=278,
        ["textureHeight"] = 310,
        ["textureWidth"] = 265,
        ["offsetY"] = 284,
        ["fileDataIDs"] = { 1710620,1710621,1710622,1710623 } 
    },
    {
        ["offsetX"]=410,
        ["textureHeight"] = 264,
        ["textureWidth"] = 284,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 1710634,1710635,1710636,1710637 } 
    },
    {
        ["offsetX"]=498,
        ["textureHeight"] = 353,
        ["textureWidth"] = 313,
        ["offsetY"] = 111,
        ["fileDataIDs"] = { 1710616,1710617,1710618,1710619 } 
    },
    {
        ["offsetX"]=265,
        ["textureHeight"] = 519,
        ["textureWidth"] = 463,
        ["offsetY"] = 54,
        ["fileDataIDs"] = { 1710624,1710625,1710626,1710627,1710628,1710629 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 461,
        ["textureWidth"] = 498,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1710630,1710631,1710632,1710633 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 323,
        ["textureWidth"] = 701,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1710638,1710639,1710640,1710641,1710642,1710643 } 
    }
},
[910] = {
    {
        ["offsetX"]=535,
        ["textureHeight"] = 430,
        ["textureWidth"] = 467,
        ["offsetY"] = 238,
        ["fileDataIDs"] = { 1710612,1710613,1710614,1710615 } 
    },
    {
        ["offsetX"]=293,
        ["textureHeight"] = 385,
        ["textureWidth"] = 626,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1710597,1710598,1710599,1710600,1710601,1710602 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 668,
        ["textureWidth"] = 660,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 1710603,1710604,1710605,1710606,1710607,1710608,1710609,1710610,1710611 } 
    }
},
[920] = {
    {
        ["offsetX"]=766,
        ["textureHeight"] = 899,
        ["textureWidth"] = 828,
        ["offsetY"] = 100,
        ["fileDataIDs"] = { 2033569,2033577,2033578,2033579,2033580,2033581,2033582,2033583,2033584,2033570,2033571,2033572,2033573,2033574,2033575,2033576 } 
    },
    {
        ["offsetX"]=1108,
        ["textureHeight"] = 788,
        ["textureWidth"] = 859,
        ["offsetY"] = 451,
        ["fileDataIDs"] = { 2033457,2033465,2033466,2033467,2033468,2033469,2033470,2033471,2033472,2033458,2033459,2033460,2033461,2033462,2033463,2033464 } 
    },
    {
        ["offsetX"]=2852,
        ["textureHeight"] = 1057,
        ["textureWidth"] = 891,
        ["offsetY"] = 1503,
        ["fileDataIDs"] = { 2033625,2033636,2033638,2033639,2033640,2033641,2033642,2033643,2033644,2033626,2033627,2033628,2033629,2033630,2033631,2033632,2033633,2033634,2033635,2033637 } 
    },
    {
        ["offsetX"]=1538,
        ["textureHeight"] = 1284,
        ["textureWidth"] = 908,
        ["offsetY"] = 176,
        ["fileDataIDs"] = { 2033545,2033556,2033562,2033563,2033564,2033565,2033566,2033567,2033568,2033546,2033547,2033548,2033549,2033550,2033551,2033552,2033553,2033554,2033555,2033557,2033558,2033559,2033560,2033561 } 
    },
    {
        ["offsetX"]=1772,
        ["textureHeight"] = 1223,
        ["textureWidth"] = 953,
        ["offsetY"] = 1199,
        ["fileDataIDs"] = { 2033783,2033794,2033796,2033797,2033798,2033799,2033800,2033801,2033802,2033784,2033785,2033786,2033787,2033788,2033789,2033790,2033791,2033792,2033793,2033795 } 
    },
    {
        ["offsetX"]=2054,
        ["textureHeight"] = 1171,
        ["textureWidth"] = 978,
        ["offsetY"] = 995,
        ["fileDataIDs"] = { 2033585,2033596,2033598,2033599,2033600,2033601,2033602,2033603,2033604,2033586,2033587,2033588,2033589,2033590,2033591,2033592,2033593,2033594,2033595,2033597 } 
    },
    {
        ["offsetX"]=2314,
        ["textureHeight"] = 821,
        ["textureWidth"] = 1047,
        ["offsetY"] = 1739,
        ["fileDataIDs"] = { 2033525,2033536,2033538,2033539,2033540,2033541,2033542,2033543,2033544,2033526,2033527,2033528,2033529,2033530,2033531,2033532,2033533,2033534,2033535,2033537 } 
    },
    {
        ["offsetX"]=2451,
        ["textureHeight"] = 944,
        ["textureWidth"] = 1242,
        ["offsetY"] = 1035,
        ["fileDataIDs"] = { 2033605,2033616,2033618,2033619,2033620,2033621,2033622,2033623,2033624,2033606,2033607,2033608,2033609,2033610,2033611,2033612,2033613,2033614,2033615,2033617 } 
    },
    {
        ["offsetX"]=802,
        ["textureHeight"] = 678,
        ["textureWidth"] = 1306,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2033803,2033813,2033814,2033815,2033816,2033817,2033818,2033819,2033820,2033804,2033805,2033806,2033807,2033808,2033809,2033810,2033811,2033812 } 
    },
    {
        ["offsetX"]=2117,
        ["textureHeight"] = 1009,
        ["textureWidth"] = 1432,
        ["offsetY"] = 332,
        ["fileDataIDs"] = { 2033473,2033484,2033490,2033491,2033492,2033493,2033494,2033495,2033496,2033474,2033475,2033476,2033477,2033478,2033479,2033480,2033481,2033482,2033483,2033485,2033486,2033487,2033488,2033489 } 
    },
    {
        ["offsetX"]=1806,
        ["textureHeight"] = 900,
        ["textureWidth"] = 1777,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2033497,2033508,2033518,2033519,2033520,2033521,2033522,2033523,2033524,2033498,2033499,2033500,2033501,2033502,2033503,2033504,2033505,2033506,2033507,2033509,2033510,2033511,2033512,2033513,2033514,2033515,2033516,2033517 } 
    }
},
[921] = {
    {
        ["offsetX"]=2386,
        ["textureHeight"] = 1181,
        ["textureWidth"] = 770,
        ["offsetY"] = 1049,
        ["fileDataIDs"] = { 2038067,2038078,2038080,2038081,2038082,2038083,2038084,2038085,2038086,2038068,2038069,2038070,2038071,2038072,2038073,2038074,2038075,2038076,2038077,2038079 } 
    },
    {
        ["offsetX"]=1644,
        ["textureHeight"] = 1081,
        ["textureWidth"] = 948,
        ["offsetY"] = 361,
        ["fileDataIDs"] = { 2038047,2038058,2038060,2038061,2038062,2038063,2038064,2038065,2038066,2038048,2038049,2038050,2038051,2038052,2038053,2038054,2038055,2038056,2038057,2038059 } 
    },
    {
        ["offsetX"]=1261,
        ["textureHeight"] = 1204,
        ["textureWidth"] = 1079,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2038112,2038123,2038130,2038131,2038132,2038133,2038134,2038135,2038136,2038113,2038114,2038115,2038116,2038117,2038118,2038119,2038120,2038121,2038122,2038124,2038125,2038126,2038127,2038128,2038129 } 
    },
    {
        ["offsetX"]=1847,
        ["textureHeight"] = 1169,
        ["textureWidth"] = 1090,
        ["offsetY"] = 1025,
        ["fileDataIDs"] = { 2038087,2038098,2038105,2038106,2038107,2038108,2038109,2038110,2038111,2038088,2038089,2038090,2038091,2038092,2038093,2038094,2038095,2038096,2038097,2038099,2038100,2038101,2038102,2038103,2038104 } 
    },
    {
        ["offsetX"]=1812,
        ["textureHeight"] = 880,
        ["textureWidth"] = 1125,
        ["offsetY"] = 760,
        ["fileDataIDs"] = { 2037819,2037830,2037832,2037833,2037834,2037835,2037836,2037837,2037838,2037820,2037821,2037822,2037823,2037824,2037825,2037826,2037827,2037828,2037829,2037831 } 
    },
    {
        ["offsetX"]=377,
        ["textureHeight"] = 1154,
        ["textureWidth"] = 1139,
        ["offsetY"] = 939,
        ["fileDataIDs"] = { 2037884,2037895,2037902,2037903,2037904,2037905,2037906,2037907,2037908,2037885,2037886,2037887,2037888,2037889,2037890,2037891,2037892,2037893,2037894,2037896,2037897,2037898,2037899,2037900,2037901 } 
    },
    {
        ["offsetX"]=1839,
        ["textureHeight"] = 1059,
        ["textureWidth"] = 1154,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2037839,2037850,2037857,2037858,2037859,2037860,2037861,2037862,2037863,2037840,2037841,2037842,2037843,2037844,2037845,2037846,2037847,2037848,2037849,2037851,2037852,2037853,2037854,2037855,2037856 } 
    },
    {
        ["offsetX"]=933,
        ["textureHeight"] = 1421,
        ["textureWidth"] = 1188,
        ["offsetY"] = 863,
        ["fileDataIDs"] = { 2037789,2037800,2037811,2037813,2037814,2037815,2037816,2037817,2037818,2037790,2037791,2037792,2037793,2037794,2037795,2037796,2037797,2037798,2037799,2037801,2037802,2037803,2037804,2037805,2037806,2037807,2037808,2037809,2037810,2037812 } 
    },
    {
        ["offsetX"]=388,
        ["textureHeight"] = 839,
        ["textureWidth"] = 1239,
        ["offsetY"] = 570,
        ["fileDataIDs"] = { 2037864,2037875,2037877,2037878,2037879,2037880,2037881,2037882,2037883,2037865,2037866,2037867,2037868,2037869,2037870,2037871,2037872,2037873,2037874,2037876 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 1010,
        ["textureWidth"] = 1373,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2038137,2038148,2038154,2038155,2038156,2038157,2038158,2038159,2038160,2038138,2038139,2038140,2038141,2038142,2038143,2038144,2038145,2038146,2038147,2038149,2038150,2038151,2038152,2038153 } 
    },
    {
        ["offsetX"]=438,
        ["textureHeight"] = 1026,
        ["textureWidth"] = 1424,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2038197,2038208,2038219,2038221,2038222,2038223,2038224,2038225,2038226,2038198,2038199,2038200,2038201,2038202,2038203,2038204,2038205,2038206,2038207,2038209,2038210,2038211,2038212,2038213,2038214,2038215,2038216,2038217,2038218,2038220 } 
    },
    {
        ["offsetX"]=1212,
        ["textureHeight"] = 1323,
        ["textureWidth"] = 1521,
        ["offsetY"] = 1237,
        ["fileDataIDs"] = { 2038161,2038172,2038183,2038191,2038192,2038193,2038194,2038195,2038196,2038162,2038163,2038164,2038165,2038166,2038167,2038168,2038169,2038170,2038171,2038173,2038174,2038175,2038176,2038177,2038178,2038179,2038180,2038181,2038182,2038184,2038185,2038186,2038187,2038188,2038189,2038190 } 
    }
},
[967] = {
    {
        ["offsetX"]=840,
        ["textureHeight"] = 1050,
        ["textureWidth"] = 859,
        ["offsetY"] = 475,
        ["fileDataIDs"] = { 2033179,2033190,2033192,2033193,2033194,2033195,2033196,2033197,2033198,2033180,2033181,2033182,2033183,2033184,2033185,2033186,2033187,2033188,2033189,2033191 } 
    },
    {
        ["offsetX"]=1365,
        ["textureHeight"] = 1380,
        ["textureWidth"] = 929,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2033137,2033148,2033154,2033155,2033156,2033157,2033158,2033159,2033160,2033138,2033139,2033140,2033141,2033142,2033143,2033144,2033145,2033146,2033147,2033149,2033150,2033151,2033152,2033153 } 
    },
    {
        ["offsetX"]=1288,
        ["textureHeight"] = 1134,
        ["textureWidth"] = 1030,
        ["offsetY"] = 1426,
        ["fileDataIDs"] = { 2033070,2033081,2033088,2033089,2033090,2033091,2033092,2033093,2033094,2033071,2033072,2033073,2033074,2033075,2033076,2033077,2033078,2033079,2033080,2033082,2033083,2033084,2033085,2033086,2033087 } 
    },
    {
        ["offsetX"]=1918,
        ["textureHeight"] = 1466,
        ["textureWidth"] = 1052,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2033199,2033210,2033221,2033223,2033224,2033225,2033226,2033227,2033228,2033200,2033201,2033202,2033203,2033204,2033205,2033206,2033207,2033208,2033209,2033211,2033212,2033213,2033214,2033215,2033216,2033217,2033218,2033219,2033220,2033222 } 
    },
    {
        ["offsetX"]=1750,
        ["textureHeight"] = 1224,
        ["textureWidth"] = 1167,
        ["offsetY"] = 1336,
        ["fileDataIDs"] = { 2033045,2033056,2033063,2033064,2033065,2033066,2033067,2033068,2033069,2033046,2033047,2033048,2033049,2033050,2033051,2033052,2033053,2033054,2033055,2033057,2033058,2033059,2033060,2033061,2033062 } 
    },
    {
        ["offsetX"]=2515,
        ["textureHeight"] = 1981,
        ["textureWidth"] = 1325,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 2033229,2033240,2033251,2033262,2033272,2033273,2033274,2033275,2033276,2033230,2033231,2033232,2033233,2033234,2033235,2033236,2033237,2033238,2033239,2033241,2033242,2033243,2033244,2033245,2033246,2033247,2033248,2033249,2033250,2033252,2033253,2033254,2033255,2033256,2033257,2033258,2033259,2033260,2033261,2033263,2033264,2033265,2033266,2033267,2033268,2033269,2033270,2033271 } 
    },
    {
        ["offsetX"]=1153,
        ["textureHeight"] = 711,
        ["textureWidth"] = 1403,
        ["offsetY"] = 1056,
        ["fileDataIDs"] = { 2033161,2033171,2033172,2033173,2033174,2033175,2033176,2033177,2033178,2033162,2033163,2033164,2033165,2033166,2033167,2033168,2033169,2033170 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 1457,
        ["textureWidth"] = 1628,
        ["offsetY"] = 1103,
        ["fileDataIDs"] = { 2033415,2033426,2033437,2033448,2033452,2033453,2033454,2033455,2033456,2033416,2033417,2033418,2033419,2033420,2033421,2033422,2033423,2033424,2033425,2033427,2033428,2033429,2033430,2033431,2033432,2033433,2033434,2033435,2033436,2033438,2033439,2033440,2033441,2033442,2033443,2033444,2033445,2033446,2033447,2033449,2033450,2033451 } 
    },
    {
        ["offsetX"]=2181,
        ["textureHeight"] = 1491,
        ["textureWidth"] = 1659,
        ["offsetY"] = 1069,
        ["fileDataIDs"] = { 2033095,2033106,2033117,2033128,2033132,2033133,2033134,2033135,2033136,2033096,2033097,2033098,2033099,2033100,2033101,2033102,2033103,2033104,2033105,2033107,2033108,2033109,2033110,2033111,2033112,2033113,2033114,2033115,2033116,2033118,2033119,2033120,2033121,2033122,2033123,2033124,2033125,2033126,2033127,2033129,2033130,2033131 } 
    }
},
[1186] = {
    {
        ["offsetX"]=1653,
        ["textureHeight"] = 520,
        ["textureWidth"] = 510,
        ["offsetY"] = 708,
        ["fileDataIDs"] = { 3020618,3020619,3020620,3020621,3020622,3020623 } 
    },
    {
        ["offsetX"]=1987,
        ["textureHeight"] = 528,
        ["textureWidth"] = 527,
        ["offsetY"] = 49,
        ["fileDataIDs"] = { 3020682,3020683,3020684,3020685,3020686,3020687,3020688,3020689,3020690 } 
    },
    {
        ["offsetX"]=1297,
        ["textureHeight"] = 602,
        ["textureWidth"] = 558,
        ["offsetY"] = 693,
        ["fileDataIDs"] = { 3020732,3020733,3020734,3020735,3020736,3020737,3020738,3020739,3020740 } 
    },
    {
        ["offsetX"]=2321,
        ["textureHeight"] = 800,
        ["textureWidth"] = 583,
        ["offsetY"] = 57,
        ["fileDataIDs"] = { 3020574,3020578,3020579,3020580,3020581,3020582,3020583,3020584,3020585,3020575,3020576,3020577 } 
    },
    {
        ["offsetX"]=1876,
        ["textureHeight"] = 650,
        ["textureWidth"] = 648,
        ["offsetY"] = 340,
        ["fileDataIDs"] = { 3020549,3020550,3020551,3020552,3020553,3020554,3020555,3020556,3020557 } 
    },
    {
        ["offsetX"]=2213,
        ["textureHeight"] = 905,
        ["textureWidth"] = 703,
        ["offsetY"] = 691,
        ["fileDataIDs"] = { 3020658,3020662,3020663,3020664,3020665,3020666,3020667,3020668,3020669,3020659,3020660,3020661 } 
    },
    {
        ["offsetX"]=1570,
        ["textureHeight"] = 461,
        ["textureWidth"] = 737,
        ["offsetY"] = 1432,
        ["fileDataIDs"] = { 3020676,3020677,3020678,3020679,3020680,3020681 } 
    },
    {
        ["offsetX"]=1007,
        ["textureHeight"] = 490,
        ["textureWidth"] = 738,
        ["offsetY"] = 1200,
        ["fileDataIDs"] = { 3020670,3020671,3020672,3020673,3020674,3020675 } 
    },
    {
        ["offsetX"]=1110,
        ["textureHeight"] = 835,
        ["textureWidth"] = 770,
        ["offsetY"] = 118,
        ["fileDataIDs"] = { 3020716,3020724,3020725,3020726,3020727,3020728,3020729,3020730,3020731,3020717,3020718,3020719,3020720,3020721,3020722,3020723 } 
    },
    {
        ["offsetX"]=2574,
        ["textureHeight"] = 597,
        ["textureWidth"] = 783,
        ["offsetY"] = 909,
        ["fileDataIDs"] = { 3020598,3020602,3020603,3020604,3020605,3020606,3020607,3020608,3020609,3020599,3020600,3020601 } 
    },
    {
        ["offsetX"]=1360,
        ["textureHeight"] = 517,
        ["textureWidth"] = 790,
        ["offsetY"] = 1027,
        ["fileDataIDs"] = { 3020586,3020590,3020591,3020592,3020593,3020594,3020595,3020596,3020597,3020587,3020588,3020589 } 
    },
    {
        ["offsetX"]=1863,
        ["textureHeight"] = 866,
        ["textureWidth"] = 795,
        ["offsetY"] = 804,
        ["fileDataIDs"] = { 3020558,3020566,3020567,3020568,3020569,3020570,3020571,3020572,3020573,3020559,3020560,3020561,3020562,3020563,3020564,3020565 } 
    },
    {
        ["offsetX"]=729,
        ["textureHeight"] = 1065,
        ["textureWidth"] = 815,
        ["offsetY"] = 315,
        ["fileDataIDs"] = { 3020529,3020540,3020542,3020543,3020544,3020545,3020546,3020547,3020548,3020530,3020531,3020532,3020533,3020534,3020535,3020536,3020537,3020538,3020539,3020541 } 
    },
    {
        ["offsetX"]=1469,
        ["textureHeight"] = 835,
        ["textureWidth"] = 850,
        ["offsetY"] = 50,
        ["fileDataIDs"] = { 3020624,3020632,3020633,3020634,3020635,3020636,3020637,3020638,3020639,3020625,3020626,3020627,3020628,3020629,3020630,3020631 } 
    },
    {
        ["offsetX"]=2502,
        ["textureHeight"] = 480,
        ["textureWidth"] = 979,
        ["offsetY"] = 692,
        ["fileDataIDs"] = { 3020610,3020611,3020612,3020613,3020614,3020615,3020616,3020617 } 
    },
    {
        ["offsetX"]=2490,
        ["textureHeight"] = 564,
        ["textureWidth"] = 990,
        ["offsetY"] = 365,
        ["fileDataIDs"] = { 3020741,3020745,3020746,3020747,3020748,3020749,3020750,3020751,3020752,3020742,3020743,3020744 } 
    },
    {
        ["offsetX"]=935,
        ["textureHeight"] = 1131,
        ["textureWidth"] = 1224,
        ["offsetY"] = 1429,
        ["fileDataIDs"] = { 3020691,3020702,3020709,3020710,3020711,3020712,3020713,3020714,3020715,3020692,3020693,3020694,3020695,3020696,3020697,3020698,3020699,3020700,3020701,3020703,3020704,3020705,3020706,3020707,3020708 } 
    },
    {
        ["offsetX"]=895,
        ["textureHeight"] = 710,
        ["textureWidth"] = 1411,
        ["offsetY"] = 1151,
        ["fileDataIDs"] = { 3020640,3020650,3020651,3020652,3020653,3020654,3020655,3020656,3020657,3020641,3020642,3020643,3020644,3020645,3020646,3020647,3020648,3020649 } 
    }
},
[1276] = {
    {
        ["offsetX"]=1910,
        ["textureHeight"] = 1191,
        ["textureWidth"] = 1009,
        ["offsetY"] = 557,
        ["fileDataIDs"] = { 3022276,3022287,3022289,3022290,3022291,3022292,3022293,3022294,3022295,3022277,3022278,3022279,3022280,3022281,3022282,3022283,3022284,3022285,3022286,3022288 } 
    },
    {
        ["offsetX"]=2513,
        ["textureHeight"] = 1022,
        ["textureWidth"] = 1014,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 3022368,3022376,3022377,3022378,3022379,3022380,3022381,3022382,3022383,3022369,3022370,3022371,3022372,3022373,3022374,3022375 } 
    },
    {
        ["offsetX"]=2791,
        ["textureHeight"] = 1055,
        ["textureWidth"] = 1049,
        ["offsetY"] = 121,
        ["fileDataIDs"] = { 3022412,3022423,3022430,3022431,3022432,3022433,3022434,3022435,3022436,3022413,3022414,3022415,3022416,3022417,3022418,3022419,3022420,3022421,3022422,3022424,3022425,3022426,3022427,3022428,3022429 } 
    },
    {
        ["offsetX"]=1154,
        ["textureHeight"] = 1264,
        ["textureWidth"] = 1169,
        ["offsetY"] = 496,
        ["fileDataIDs"] = { 3022251,3022262,3022269,3022270,3022271,3022272,3022273,3022274,3022275,3022252,3022253,3022254,3022255,3022256,3022257,3022258,3022259,3022260,3022261,3022263,3022264,3022265,3022266,3022267,3022268 } 
    },
    {
        ["offsetX"]=2172,
        ["textureHeight"] = 1426,
        ["textureWidth"] = 1366,
        ["offsetY"] = 1134,
        ["fileDataIDs"] = { 3022332,3022343,3022354,3022362,3022363,3022364,3022365,3022366,3022367,3022333,3022334,3022335,3022336,3022337,3022338,3022339,3022340,3022341,3022342,3022344,3022345,3022346,3022347,3022348,3022349,3022350,3022351,3022352,3022353,3022355,3022356,3022357,3022358,3022359,3022360,3022361 } 
    },
    {
        ["offsetX"]=46,
        ["textureHeight"] = 1511,
        ["textureWidth"] = 1424,
        ["offsetY"] = 978,
        ["fileDataIDs"] = { 3022437,3022448,3022459,3022467,3022468,3022469,3022470,3022471,3022472,3022438,3022439,3022440,3022441,3022442,3022443,3022444,3022445,3022446,3022447,3022449,3022450,3022451,3022452,3022453,3022454,3022455,3022456,3022457,3022458,3022460,3022461,3022462,3022463,3022464,3022465,3022466 } 
    },
    {
        ["offsetX"]=1125,
        ["textureHeight"] = 1338,
        ["textureWidth"] = 1479,
        ["offsetY"] = 1222,
        ["fileDataIDs"] = { 3022296,3022307,3022318,3022326,3022327,3022328,3022329,3022330,3022331,3022297,3022298,3022299,3022300,3022301,3022302,3022303,3022304,3022305,3022306,3022308,3022309,3022310,3022311,3022312,3022313,3022314,3022315,3022316,3022317,3022319,3022320,3022321,3022322,3022323,3022324,3022325 } 
    },
    {
        ["offsetX"]=1315,
        ["textureHeight"] = 945,
        ["textureWidth"] = 1723,
        ["offsetY"] = 40,
        ["fileDataIDs"] = { 3022384,3022395,3022405,3022406,3022407,3022408,3022409,3022410,3022411,3022385,3022386,3022387,3022388,3022389,3022390,3022391,3022392,3022393,3022394,3022396,3022397,3022398,3022399,3022400,3022401,3022402,3022403,3022404 } 
    }
},
[1306] = {
    {
        ["offsetX"]=1306,
        ["textureHeight"] = 1091,
        ["textureWidth"] = 586,
        ["offsetY"] = 555,
        ["fileDataIDs"] = { 3730641,3730648,3730649,3730650,3730651,3730652,3730653,3730657,3730669,3730642,3730643,3730644,3730645,3730646,3730647 } 
    },
    {
        ["offsetX"]=1527,
        ["textureHeight"] = 688,
        ["textureWidth"] = 685,
        ["offsetY"] = 300,
        ["fileDataIDs"] = { 3730768,3730769,3730770,3730771,3730772,3730773,3730774,3730775,3730776 } 
    },
    {
        ["offsetX"]=1987,
        ["textureHeight"] = 1183,
        ["textureWidth"] = 711,
        ["offsetY"] = 1377,
        ["fileDataIDs"] = { 3730628,3730633,3730634,3730635,3730636,3730637,3730638,3730639,3730640,3730629,3730630,3730631,3730722,3730723,3730632 } 
    },
    {
        ["offsetX"]=2597,
        ["textureHeight"] = 847,
        ["textureWidth"] = 718,
        ["offsetY"] = 1316,
        ["fileDataIDs"] = { 3730596,3730600,3730601,3730602,3730603,3730604,3730605,3730606,3730607,3730597,3730598,3730599 } 
    },
    {
        ["offsetX"]=1487,
        ["textureHeight"] = 578,
        ["textureWidth"] = 720,
        ["offsetY"] = 1982,
        ["fileDataIDs"] = { 3730777,3730778,3730779,3730780,3730781,3730782,3730783,3730784,3730785 } 
    },
    {
        ["offsetX"]=2324,
        ["textureHeight"] = 1040,
        ["textureWidth"] = 835,
        ["offsetY"] = 1520,
        ["fileDataIDs"] = { 3730786,3730797,3730799,3730800,3730801,3730802,3730803,3730804,3730805,3730787,3730788,3730789,3730790,3730791,3730792,3730793,3730794,3730795,3730796,3730798 } 
    },
    {
        ["offsetX"]=1647,
        ["textureHeight"] = 1060,
        ["textureWidth"] = 885,
        ["offsetY"] = 484,
        ["fileDataIDs"] = { 3730608,3730619,3730621,3730622,3730623,3730624,3730625,3730626,3730627,3730609,3730610,3730611,3730612,3730613,3730614,3730615,3730616,3730617,3730618,3730620 } 
    },
    {
        ["offsetX"]=2290,
        ["textureHeight"] = 737,
        ["textureWidth"] = 1019,
        ["offsetY"] = 474,
        ["fileDataIDs"] = { 3730584,3730588,3730589,3730590,3730591,3730592,3730593,3730594,3730595,3730585,3730586,3730587 } 
    },
    {
        ["offsetX"]=1200,
        ["textureHeight"] = 1129,
        ["textureWidth"] = 1030,
        ["offsetY"] = 1407,
        ["fileDataIDs"] = { 3730837,3730848,3730855,3730856,3730857,3730858,3730859,3730860,3730861,3730838,3730839,3730840,3730841,3730842,3730843,3730844,3730845,3730846,3730847,3730849,3730850,3730851,3730852,3730853,3730854 } 
    },
    {
        ["offsetX"]=869,
        ["textureHeight"] = 878,
        ["textureWidth"] = 1087,
        ["offsetY"] = 1682,
        ["fileDataIDs"] = { 3730730,3730741,3730743,3730744,3730745,3730746,3730747,3730748,3730749,3730731,3730732,3730733,3730734,3730735,3730736,3730737,3730738,3730739,3730740,3730742 } 
    },
    {
        ["offsetX"]=485,
        ["textureHeight"] = 963,
        ["textureWidth"] = 1192,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3730707,3730718,3730720,3730721,3730725,3730726,3730727,3730728,3730729,3730708,3730709,3730710,3730711,3730712,3730713,3730714,3730715,3730716,3730717,3730719 } 
    },
    {
        ["offsetX"]=433,
        ["textureHeight"] = 1465,
        ["textureWidth"] = 1207,
        ["offsetY"] = 596,
        ["fileDataIDs"] = { 3730807,3730818,3730829,3730831,3730832,3730833,3730834,3730835,3730836,3730808,3730809,3730810,3730811,3730812,3730813,3730814,3730815,3730816,3730817,3730819,3730820,3730821,3730822,3730823,3730824,3730825,3730826,3730827,3730828,3730830 } 
    },
    {
        ["offsetX"]=1974,
        ["textureHeight"] = 746,
        ["textureWidth"] = 1339,
        ["offsetY"] = 919,
        ["fileDataIDs"] = { 3730750,3730760,3730761,3730762,3730763,3730764,3730765,3730766,3730767,3730751,3730752,3730753,3730754,3730755,3730756,3730757,3730758,3730759 } 
    }
},
[1321] = {
    {
        ["offsetX"]=1566,
        ["textureHeight"] = 503,
        ["textureWidth"] = 591,
        ["offsetY"] = 1551,
        ["fileDataIDs"] = { 3192856,3192857,3192858,3192859,3192860,3192861 } 
    },
    {
        ["offsetX"]=1793,
        ["textureHeight"] = 528,
        ["textureWidth"] = 746,
        ["offsetY"] = 1220,
        ["fileDataIDs"] = { 3192941,3192942,3192943,3192944,3192945,3192946,3192947,3192948,3192949 } 
    },
    {
        ["offsetX"]=1167,
        ["textureHeight"] = 542,
        ["textureWidth"] = 783,
        ["offsetY"] = 1387,
        ["fileDataIDs"] = { 3192986,3192990,3192991,3192992,3192993,3192994,3192995,3192996,3192997,3192987,3192988,3192989 } 
    },
    {
        ["offsetX"]=1626,
        ["textureHeight"] = 564,
        ["textureWidth"] = 804,
        ["offsetY"] = 1949,
        ["fileDataIDs"] = { 3192862,3192866,3192867,3192868,3192869,3192870,3192871,3192872,3192873,3192863,3192864,3192865 } 
    },
    {
        ["offsetX"]=2004,
        ["textureHeight"] = 494,
        ["textureWidth"] = 826,
        ["offsetY"] = 1590,
        ["fileDataIDs"] = { 3192962,3192963,3192964,3192965,3192966,3192967,3192968,3192969 } 
    },
    {
        ["offsetX"]=1068,
        ["textureHeight"] = 558,
        ["textureWidth"] = 839,
        ["offsetY"] = 1768,
        ["fileDataIDs"] = { 3192998,3193002,3193003,3193004,3193005,3193006,3193007,3193008,3193009,3192999,3193000,3193001 } 
    },
    {
        ["offsetX"]=2110,
        ["textureHeight"] = 911,
        ["textureWidth"] = 881,
        ["offsetY"] = 588,
        ["fileDataIDs"] = { 3192970,3192978,3192979,3192980,3192981,3192982,3192983,3192984,3192985,3192971,3192972,3192973,3192974,3192975,3192976,3192977 } 
    },
    {
        ["offsetX"]=1975,
        ["textureHeight"] = 763,
        ["textureWidth"] = 892,
        ["offsetY"] = 155,
        ["fileDataIDs"] = { 3192913,3192917,3192918,3192919,3192920,3192921,3192922,3192923,3192924,3192914,3192915,3192916 } 
    },
    {
        ["offsetX"]=1400,
        ["textureHeight"] = 847,
        ["textureWidth"] = 984,
        ["offsetY"] = 48,
        ["fileDataIDs"] = { 3192925,3192933,3192934,3192935,3192936,3192937,3192938,3192939,3192940,3192926,3192927,3192928,3192929,3192930,3192931,3192932 } 
    },
    {
        ["offsetX"]=1475,
        ["textureHeight"] = 652,
        ["textureWidth"] = 985,
        ["offsetY"] = 706,
        ["fileDataIDs"] = { 3192950,3192954,3192955,3192956,3192957,3192958,3192959,3192960,3192961,3192951,3192952,3192953 } 
    },
    {
        ["offsetX"]=881,
        ["textureHeight"] = 704,
        ["textureWidth"] = 1115,
        ["offsetY"] = 993,
        ["fileDataIDs"] = { 3192874,3192881,3192882,3192883,3192884,3192885,3192886,3192887,3192888,3192875,3192876,3192877,3192878,3192879,3192880 } 
    },
    {
        ["offsetX"]=495,
        ["textureHeight"] = 856,
        ["textureWidth"] = 1357,
        ["offsetY"] = 250,
        ["fileDataIDs"] = { 3192889,3192900,3192906,3192907,3192908,3192909,3192910,3192911,3192912,3192890,3192891,3192892,3192893,3192894,3192895,3192896,3192897,3192898,3192899,3192901,3192902,3192903,3192904,3192905 } 
    }
},
[1323] = {
    {
        ["offsetX"]=1171,
        ["textureHeight"] = 788,
        ["textureWidth"] = 673,
        ["offsetY"] = 836,
        ["fileDataIDs"] = { 3745341,3745345,3745346,3745347,3745348,3745349,3745350,3745351,3745352,3745342,3745343,3745344 } 
    },
    {
        ["offsetX"]=1815,
        ["textureHeight"] = 666,
        ["textureWidth"] = 694,
        ["offsetY"] = 517,
        ["fileDataIDs"] = { 3745132,3745133,3745134,3745135,3745136,3745137,3745138,3745139,3745140 } 
    },
    {
        ["offsetX"]=2028,
        ["textureHeight"] = 802,
        ["textureWidth"] = 719,
        ["offsetY"] = 894,
        ["fileDataIDs"] = { 3745141,3745145,3745146,3745147,3745148,3745149,3745150,3745151,3745152,3745142,3745143,3745144 } 
    },
    {
        ["offsetX"]=1566,
        ["textureHeight"] = 730,
        ["textureWidth"] = 730,
        ["offsetY"] = 862,
        ["fileDataIDs"] = { 3745383,3745384,3745385,3745386,3745387,3745388,3745389,3745390,3745391 } 
    },
    {
        ["offsetX"]=1551,
        ["textureHeight"] = 985,
        ["textureWidth"] = 757,
        ["offsetY"] = 1342,
        ["fileDataIDs"] = { 3745309,3745313,3745314,3745315,3745316,3745317,3745318,3745319,3745320,3745310,3745311,3745312 } 
    },
    {
        ["offsetX"]=1202,
        ["textureHeight"] = 1178,
        ["textureWidth"] = 858,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3745321,3745332,3745334,3745335,3745336,3745337,3745338,3745339,3745340,3745322,3745323,3745324,3745325,3745326,3745327,3745328,3745329,3745330,3745331,3745333 } 
    },
    {
        ["offsetX"]=1692,
        ["textureHeight"] = 919,
        ["textureWidth"] = 932,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3745173,3745181,3745182,3745183,3745184,3745185,3745186,3745187,3745188,3745174,3745175,3745176,3745177,3745178,3745179,3745180 } 
    },
    {
        ["offsetX"]=631,
        ["textureHeight"] = 1071,
        ["textureWidth"] = 951,
        ["offsetY"] = 46,
        ["fileDataIDs"] = { 3745153,3745164,3745166,3745167,3745168,3745169,3745170,3745171,3745172,3745154,3745155,3745156,3745157,3745158,3745159,3745160,3745161,3745162,3745163,3745165 } 
    },
    {
        ["offsetX"]=284,
        ["textureHeight"] = 703,
        ["textureWidth"] = 1149,
        ["offsetY"] = 1085,
        ["fileDataIDs"] = { 3745117,3745124,3745125,3745126,3745127,3745128,3745129,3745130,3745131,3745118,3745119,3745120,3745121,3745122,3745123 } 
    },
    {
        ["offsetX"]=2438,
        ["textureHeight"] = 998,
        ["textureWidth"] = 1194,
        ["offsetY"] = 785,
        ["fileDataIDs"] = { 3745289,3745300,3745302,3745303,3745304,3745305,3745306,3745307,3745308,3745290,3745291,3745292,3745293,3745294,3745295,3745296,3745297,3745298,3745299,3745301 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 1391,
        ["textureWidth"] = 1231,
        ["offsetY"] = 65,
        ["fileDataIDs"] = { 3745353,3745364,3745375,3745377,3745378,3745379,3745380,3745381,3745382,3745354,3745355,3745356,3745357,3745358,3745359,3745360,3745361,3745362,3745363,3745365,3745366,3745367,3745368,3745369,3745370,3745371,3745372,3745373,3745374,3745376 } 
    },
    {
        ["offsetX"]=2232,
        ["textureHeight"] = 1137,
        ["textureWidth"] = 1363,
        ["offsetY"] = 13,
        ["fileDataIDs"] = { 3745189,3745200,3745211,3745213,3745214,3745215,3745216,3745217,3745218,3745190,3745191,3745192,3745193,3745194,3745195,3745196,3745197,3745198,3745199,3745201,3745202,3745203,3745204,3745205,3745206,3745207,3745208,3745209,3745210,3745212 } 
    },
    {
        ["offsetX"]=330,
        ["textureHeight"] = 1209,
        ["textureWidth"] = 1508,
        ["offsetY"] = 1351,
        ["fileDataIDs"] = { 3745219,3745230,3745241,3745243,3745244,3745245,3745246,3745247,3745248,3745220,3745221,3745222,3745223,3745224,3745225,3745226,3745227,3745228,3745229,3745231,3745232,3745233,3745234,3745235,3745236,3745237,3745238,3745239,3745240,3745242 } 
    },
    {
        ["offsetX"]=1582,
        ["textureHeight"] = 1136,
        ["textureWidth"] = 1925,
        ["offsetY"] = 1424,
        ["fileDataIDs"] = { 3745249,3745260,3745271,3745282,3745284,3745285,3745286,3745287,3745288,3745250,3745251,3745252,3745253,3745254,3745255,3745256,3745257,3745258,3745259,3745261,3745262,3745263,3745264,3745265,3745266,3745267,3745268,3745269,3745270,3745272,3745273,3745274,3745275,3745276,3745277,3745278,3745279,3745280,3745281,3745283 } 
    }
},
[1329] = {
    {
        ["offsetX"]=1404,
        ["textureHeight"] = 729,
        ["textureWidth"] = 928,
        ["offsetY"] = 1831,
        ["fileDataIDs"] = { 3745988,3745992,3745993,3745994,3745995,3745996,3745997,3745998,3745999,3745989,3745990,3745991 } 
    },
    {
        ["offsetX"]=808,
        ["textureHeight"] = 1359,
        ["textureWidth"] = 928,
        ["offsetY"] = 1201,
        ["fileDataIDs"] = { 3746000,3746011,3746017,3746018,3746019,3746020,3746021,3746022,3746023,3746001,3746002,3746003,3746004,3746005,3746006,3746007,3746008,3746009,3746010,3746012,3746013,3746014,3746015,3746016 } 
    },
    {
        ["offsetX"]=262,
        ["textureHeight"] = 1076,
        ["textureWidth"] = 954,
        ["offsetY"] = 1423,
        ["fileDataIDs"] = { 3745812,3745823,3745825,3745826,3745827,3745828,3745829,3745830,3745831,3745813,3745814,3745815,3745816,3745817,3745818,3745819,3745820,3745821,3745822,3745824 } 
    },
    {
        ["offsetX"]=1442,
        ["textureHeight"] = 835,
        ["textureWidth"] = 1009,
        ["offsetY"] = 1262,
        ["fileDataIDs"] = { 4178838,4178839,4178840,4178841,4178842,4178843,4178844,4178845,4178846,4178847,4178848,4178849,4178850,4178851,4178852,4178853 } 
    },
    {
        ["offsetX"]=49,
        ["textureHeight"] = 934,
        ["textureWidth"] = 1053,
        ["offsetY"] = 918,
        ["fileDataIDs"] = { 3745893,3745904,3745906,3745907,3745908,3745909,3745910,3745911,3745912,3745894,3745895,3745896,3745897,3745898,3745899,3745900,3745901,3745902,3745903,3745905 } 
    },
    {
        ["offsetX"]=772,
        ["textureHeight"] = 824,
        ["textureWidth"] = 1078,
        ["offsetY"] = 598,
        ["fileDataIDs"] = { 3746082,3746093,3746095,3746096,3746097,3746098,3746099,3746100,3746101,3746083,3746084,3746085,3746086,3746087,3746088,3746089,3746090,3746091,3746092,3746094 } 
    },
    {
        ["offsetX"]=1100,
        ["textureHeight"] = 821,
        ["textureWidth"] = 1186,
        ["offsetY"] = 696,
        ["fileDataIDs"] = { 3745873,3745884,3745886,3745887,3745888,3745889,3745890,3745891,3745892,3745874,3745875,3745876,3745877,3745878,3745879,3745880,3745881,3745882,3745883,3745885 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 1236,
        ["textureWidth"] = 1232,
        ["offsetY"] = 342,
        ["fileDataIDs"] = { 3745848,3745859,3745866,3745867,3745868,3745869,3745870,3745871,3745872,3745849,3745850,3745851,3745852,3745853,3745854,3745855,3745856,3745857,3745858,3745860,3745861,3745862,3745863,3745864,3745865 } 
    },
    {
        ["offsetX"]=183,
        ["textureHeight"] = 932,
        ["textureWidth"] = 1395,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3746024,3746035,3746041,3746042,3746043,3746044,3746045,3746046,3746047,3746025,3746026,3746027,3746028,3746029,3746030,3746031,3746032,3746033,3746034,3746036,3746037,3746038,3746039,3746040 } 
    },
    {
        ["offsetX"]=1856,
        ["textureHeight"] = 988,
        ["textureWidth"] = 1408,
        ["offsetY"] = 1572,
        ["fileDataIDs"] = { 3746048,3746059,3746065,3746066,3746067,3746068,3746069,3746070,3746071,3746049,3746050,3746051,3746052,3746053,3746054,3746055,3746056,3746057,3746058,3746060,3746061,3746062,3746063,3746064 } 
    },
    {
        ["offsetX"]=1797,
        ["textureHeight"] = 1946,
        ["textureWidth"] = 1488,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3745913,3745924,3745935,3745948,3745959,3745960,3745961,3745962,3745963,3745914,3745915,3745916,3745917,3745918,3745919,3745920,3745921,3745922,3745923,3745925,3745926,3745927,3745928,3745929,3745930,3745931,3745932,3745933,3745934,3745936,3745937,3745938,3745939,3745940,3745942,3745943,3745944,3745946,3745947,3745949,3745950,3745951,3745953,3745954,3745955,3745956,3745957,3745958 } 
    },
    {
        ["offsetX"]=1171,
        ["textureHeight"] = 929,
        ["textureWidth"] = 1504,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3745964,3745975,3745981,3745982,3745983,3745984,3745985,3745986,3745987,3745965,3745966,3745967,3745968,3745969,3745970,3745971,3745972,3745973,3745974,3745976,3745977,3745978,3745979,3745980 } 
    }
},
[1338] = {
    {
        ["offsetX"]=2107,
        ["textureHeight"] = 685,
        ["textureWidth"] = 563,
        ["offsetY"] = 638,
        ["fileDataIDs"] = { 3604377,3604378,3604379,3604380,3604381,3604382,3604383,3604384,3604385 } 
    },
    {
        ["offsetX"]=1993,
        ["textureHeight"] = 747,
        ["textureWidth"] = 669,
        ["offsetY"] = 885,
        ["fileDataIDs"] = { 3604302,3604303,3604304,3604305,3604306,3604307,3604308,3604309,3604310 } 
    },
    {
        ["offsetX"]=1487,
        ["textureHeight"] = 742,
        ["textureWidth"] = 686,
        ["offsetY"] = 945,
        ["fileDataIDs"] = { 3604293,3604294,3604295,3604296,3604297,3604298,3604299,3604300,3604301 } 
    },
    {
        ["offsetX"]=1679,
        ["textureHeight"] = 1139,
        ["textureWidth"] = 688,
        ["offsetY"] = 54,
        ["fileDataIDs"] = { 3604262,3604269,3604270,3604271,3604272,3604273,3604274,3604275,3604276,3604263,3604264,3604265,3604266,3604267,3604268 } 
    },
    {
        ["offsetX"]=1736,
        ["textureHeight"] = 603,
        ["textureWidth"] = 770,
        ["offsetY"] = 1234,
        ["fileDataIDs"] = { 3604341,3604345,3604346,3604347,3604348,3604349,3604350,3604351,3604352,3604342,3604343,3604344 } 
    },
    {
        ["offsetX"]=1701,
        ["textureHeight"] = 896,
        ["textureWidth"] = 798,
        ["offsetY"] = 1607,
        ["fileDataIDs"] = { 3604277,3604285,3604286,3604287,3604288,3604289,3604290,3604291,3604292,3604278,3604279,3604280,3604281,3604282,3604283,3604284 } 
    },
    {
        ["offsetX"]=2211,
        ["textureHeight"] = 645,
        ["textureWidth"] = 803,
        ["offsetY"] = 168,
        ["fileDataIDs"] = { 3604353,3604357,3604358,3604359,3604360,3604361,3604362,3604363,3604364,3604354,3604355,3604356 } 
    },
    {
        ["offsetX"]=1190,
        ["textureHeight"] = 1048,
        ["textureWidth"] = 845,
        ["offsetY"] = 1242,
        ["fileDataIDs"] = { 3604226,3604237,3604239,3604240,3604241,3604242,3604243,3604244,3604245,3604227,3604228,3604229,3604230,3604231,3604232,3604233,3604234,3604235,3604236,3604238 } 
    },
    {
        ["offsetX"]=1036,
        ["textureHeight"] = 783,
        ["textureWidth"] = 847,
        ["offsetY"] = 316,
        ["fileDataIDs"] = { 3604198,3604206,3604207,3604208,3604209,3604210,3604211,3604212,3604213,3604199,3604200,3604201,3604202,3604203,3604204,3604205 } 
    },
    {
        ["offsetX"]=946,
        ["textureHeight"] = 650,
        ["textureWidth"] = 864,
        ["offsetY"] = 723,
        ["fileDataIDs"] = { 3604365,3604369,3604370,3604371,3604372,3604373,3604374,3604375,3604376,3604366,3604367,3604368 } 
    },
    {
        ["offsetX"]=2339,
        ["textureHeight"] = 821,
        ["textureWidth"] = 886,
        ["offsetY"] = 1049,
        ["fileDataIDs"] = { 3604246,3604254,3604255,3604256,3604257,3604258,3604259,3604260,3604261,3604247,3604248,3604249,3604250,3604251,3604252,3604253 } 
    },
    {
        ["offsetX"]=2338,
        ["textureHeight"] = 714,
        ["textureWidth"] = 904,
        ["offsetY"] = 474,
        ["fileDataIDs"] = { 3604214,3604218,3604219,3604220,3604221,3604222,3604223,3604224,3604225,3604215,3604216,3604217 } 
    },
    {
        ["offsetX"]=379,
        ["textureHeight"] = 1340,
        ["textureWidth"] = 1179,
        ["offsetY"] = 811,
        ["fileDataIDs"] = { 3604311,3604322,3604333,3604335,3604336,3604337,3604338,3604339,3604340,3604312,3604313,3604314,3604315,3604316,3604317,3604318,3604319,3604320,3604321,3604323,3604324,3604325,3604326,3604327,3604328,3604329,3604330,3604331,3604332,3604334 } 
    }
},
[1375] = {
    {
        ["offsetX"]=1207,
        ["textureHeight"] = 1035,
        ["textureWidth"] = 636,
        ["offsetY"] = 9,
        ["fileDataIDs"] = { 3767878,3767891,3767893,3767895,3767897,3767899,3767901,3767903,3767905,3767879,3767881,3767883,3767885,3767887,3767889 } 
    },
    {
        ["offsetX"]=594,
        ["textureHeight"] = 937,
        ["textureWidth"] = 665,
        ["offsetY"] = 1017,
        ["fileDataIDs"] = { 3767938,3767945,3767947,3767949,3767951,3767953,3767955,3767957,3767959,3767940,3767942,3767943 } 
    },
    {
        ["offsetX"]=677,
        ["textureHeight"] = 1107,
        ["textureWidth"] = 699,
        ["offsetY"] = 56,
        ["fileDataIDs"] = { 3767848,3767862,3767864,3767866,3767868,3767870,3767872,3767874,3767876,3767850,3767852,3767854,3767856,3767858,3767860 } 
    },
    {
        ["offsetX"]=1693,
        ["textureHeight"] = 918,
        ["textureWidth"] = 1022,
        ["offsetY"] = 66,
        ["fileDataIDs"] = { 3767907,3767922,3767924,3767926,3767928,3767930,3767932,3767934,3767936,3767909,3767911,3767913,3767915,3767916,3767918,3767920 } 
    },
    {
        ["offsetX"]=1982,
        ["textureHeight"] = 818,
        ["textureWidth"] = 1064,
        ["offsetY"] = 1742,
        ["fileDataIDs"] = { 3768002,3768023,3768027,3768029,3768031,3768033,3768035,3768036,3768038,3768004,3768006,3768008,3768010,3768012,3768014,3768016,3768017,3768019,3768021,3768025 } 
    },
    {
        ["offsetX"]=577,
        ["textureHeight"] = 723,
        ["textureWidth"] = 1539,
        ["offsetY"] = 1835,
        ["fileDataIDs"] = { 3767961,3767983,3767989,3767991,3767993,3767995,3767997,3767998,3768000,3767963,3767965,3767967,3767970,3767971,3767973,3767975,3767977,3767979,3767981,3767985,3767987 } 
    },
    {
        ["offsetX"]=1167,
        ["textureHeight"] = 1551,
        ["textureWidth"] = 1875,
        ["offsetY"] = 485,
        ["fileDataIDs"] = { 3768040,3768062,3768083,3768105,3768126,3768141,3768143,3768145,3768147,3768042,3768044,3768046,3768048,3768050,3768052,3768054,3768056,3768058,3768060,3768064,3768066,3768068,3768070,3768072,3768074,3768076,3768077,3768079,3768081,3768085,3768087,3768089,3768091,3768093,3768095,3768097,3768099,3768101,3768103,3768107,3768109,3768111,3768113,3768115,3768117,3768119,3768121,3768123,3768124,3768128,3768130,3768132,3768134,3768136,3768138,3768139 } 
    }
},
[1376] = {
    {
        ["offsetX"]=2283,
        ["textureHeight"] = 725,
        ["textureWidth"] = 476,
        ["offsetY"] = 1231,
        ["fileDataIDs"] = { 3770222,3770223,3770224,3770225,3770226,3770227 } 
    },
    {
        ["offsetX"]=2214,
        ["textureHeight"] = 1134,
        ["textureWidth"] = 537,
        ["offsetY"] = 233,
        ["fileDataIDs"] = { 3770172,3770179,3770180,3770181,3770182,3770183,3770184,3770185,3770186,3770173,3770174,3770175,3770176,3770177,3770178 } 
    },
    {
        ["offsetX"]=961,
        ["textureHeight"] = 769,
        ["textureWidth"] = 718,
        ["offsetY"] = 26,
        ["fileDataIDs"] = { 3770043,3770114,3770116,3770118,3770120,3770122,3770124,3770126,3770128,3770045,3770047,3770049 } 
    },
    {
        ["offsetX"]=642,
        ["textureHeight"] = 1103,
        ["textureWidth"] = 846,
        ["offsetY"] = 1186,
        ["fileDataIDs"] = { 3770187,3770198,3770200,3770201,3770202,3770203,3770204,3770205,3770206,3770188,3770189,3770190,3770191,3770192,3770193,3770194,3770195,3770196,3770197,3770199 } 
    },
    {
        ["offsetX"]=1383,
        ["textureHeight"] = 977,
        ["textureWidth"] = 943,
        ["offsetY"] = 26,
        ["fileDataIDs"] = { 3770156,3770164,3770165,3770166,3770167,3770168,3770169,3770170,3770171,3770157,3770158,3770159,3770160,3770161,3770162,3770163 } 
    },
    {
        ["offsetX"]=723,
        ["textureHeight"] = 680,
        ["textureWidth"] = 996,
        ["offsetY"] = 659,
        ["fileDataIDs"] = { 3770129,3770136,3770137,3770138,3770139,3770140,3770141,3770144,3770145,3770132,3770134,3770135 } 
    },
    {
        ["offsetX"]=1363,
        ["textureHeight"] = 709,
        ["textureWidth"] = 1033,
        ["offsetY"] = 1189,
        ["fileDataIDs"] = { 3770207,3770214,3770215,3770216,3770217,3770218,3770219,3770220,3770221,3770208,3770209,3770210,3770211,3770212,3770213 } 
    },
    {
        ["offsetX"]=1356,
        ["textureHeight"] = 464,
        ["textureWidth"] = 1046,
        ["offsetY"] = 892,
        ["fileDataIDs"] = { 3770146,3770148,3770149,3770150,3770151,3770152,3770153,3770154,3770155,3770147 } 
    },
    {
        ["offsetX"]=1382,
        ["textureHeight"] = 979,
        ["textureWidth"] = 1392,
        ["offsetY"] = 1562,
        ["fileDataIDs"] = { 3770228,3770239,3770245,3770246,3770247,3770248,3770249,3770250,3770251,3770229,3770230,3770231,3770232,3770233,3770234,3770235,3770236,3770237,3770238,3770240,3770241,3770242,3770243,3770244 } 
    }
},
[1377] = {
    {
        ["offsetX"]=1779,
        ["textureHeight"] = 705,
        ["textureWidth"] = 535,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3771050,3771051,3771052,3771053,3771054,3771055,3771056,3771057,3771058 } 
    },
    {
        ["offsetX"]=970,
        ["textureHeight"] = 647,
        ["textureWidth"] = 940,
        ["offsetY"] = 158,
        ["fileDataIDs"] = { 3771059,3771063,3771064,3771065,3771066,3771067,3771068,3771069,3771070,3771060,3771061,3771062 } 
    },
    {
        ["offsetX"]=960,
        ["textureHeight"] = 1029,
        ["textureWidth"] = 983,
        ["offsetY"] = 617,
        ["fileDataIDs"] = { 3771071,3771082,3771084,3771085,3771086,3771087,3771088,3771089,3771090,3771072,3771073,3771074,3771075,3771076,3771077,3771078,3771079,3771080,3771081,3771083 } 
    },
    {
        ["offsetX"]=1472,
        ["textureHeight"] = 1024,
        ["textureWidth"] = 1028,
        ["offsetY"] = 1536,
        ["fileDataIDs"] = { 3771119,3771133,3771135,3771136,3771137,3771138,3771139,3771140,3771141,3771120,3771121,3771122,3771126,3771127,3771128,3771129,3771130,3771131,3771132,3771134 } 
    },
    {
        ["offsetX"]=1809,
        ["textureHeight"] = 487,
        ["textureWidth"] = 1080,
        ["offsetY"] = 585,
        ["fileDataIDs"] = { 3771091,3771093,3771094,3771095,3771096,3771097,3771098,3771099,3771100,3771092 } 
    },
    {
        ["offsetX"]=1483,
        ["textureHeight"] = 734,
        ["textureWidth"] = 1434,
        ["offsetY"] = 920,
        ["fileDataIDs"] = { 3771101,3771111,3771112,3771113,3771114,3771115,3771116,3771117,3771118,3771102,3771103,3771104,3771105,3771106,3771107,3771108,3771109,3771110 } 
    }
},
[1378] = {
    {
        ["offsetX"]=2339,
        ["textureHeight"] = 1007,
        ["textureWidth"] = 571,
        ["offsetY"] = 1553,
        ["fileDataIDs"] = { 3771526,3771530,3771531,3771532,3771533,3771534,3771535,3771536,3771537,3771527,3771528,3771529 } 
    },
    {
        ["offsetX"]=1660,
        ["textureHeight"] = 1232,
        ["textureWidth"] = 830,
        ["offsetY"] = 728,
        ["fileDataIDs"] = { 3771490,3771501,3771503,3771504,3771505,3771506,3771507,3771508,3771509,3771491,3771492,3771493,3771494,3771495,3771496,3771497,3771498,3771499,3771500,3771502 } 
    },
    {
        ["offsetX"]=2008,
        ["textureHeight"] = 972,
        ["textureWidth"] = 889,
        ["offsetY"] = 697,
        ["fileDataIDs"] = { 3771510,3771518,3771519,3771520,3771521,3771522,3771523,3771524,3771525,3771511,3771512,3771513,3771514,3771515,3771516,3771517 } 
    },
    {
        ["offsetX"]=788,
        ["textureHeight"] = 1315,
        ["textureWidth"] = 988,
        ["offsetY"] = 648,
        ["fileDataIDs"] = { 3771442,3771453,3771459,3771460,3771461,3771462,3771463,3771464,3771465,3771443,3771444,3771445,3771446,3771447,3771448,3771449,3771450,3771451,3771452,3771454,3771455,3771456,3771457,3771458 } 
    },
    {
        ["offsetX"]=2050,
        ["textureHeight"] = 629,
        ["textureWidth"] = 1058,
        ["offsetY"] = 189,
        ["fileDataIDs"] = { 3771407,3771414,3771415,3771416,3771417,3771418,3771419,3771420,3771421,3771408,3771409,3771410,3771411,3771412,3771413 } 
    },
    {
        ["offsetX"]=1039,
        ["textureHeight"] = 804,
        ["textureWidth"] = 1134,
        ["offsetY"] = 30,
        ["fileDataIDs"] = { 3771422,3771433,3771435,3771436,3771437,3771438,3771439,3771440,3771441,3771423,3771424,3771425,3771426,3771427,3771428,3771429,3771430,3771431,3771432,3771434 } 
    },
    {
        ["offsetX"]=1004,
        ["textureHeight"] = 869,
        ["textureWidth"] = 1456,
        ["offsetY"] = 1691,
        ["fileDataIDs"] = { 3771466,3771477,3771483,3771484,3771485,3771486,3771487,3771488,3771489,3771467,3771468,3771469,3771470,3771471,3771472,3771473,3771474,3771475,3771476,3771478,3771479,3771480,3771481,3771482 } 
    }
},
[1379] = {
    {
        ["offsetX"]=834,
        ["textureHeight"] = 1023,
        ["textureWidth"] = 508,
        ["offsetY"] = 38,
        ["fileDataIDs"] = { 3771554,3771555,3771556,3771557,3771558,3771559,3771560,3771561 } 
    },
    {
        ["offsetX"]=2053,
        ["textureHeight"] = 1233,
        ["textureWidth"] = 589,
        ["offsetY"] = 6,
        ["fileDataIDs"] = { 3771574,3771581,3771582,3771583,3771584,3771585,3771586,3771587,3771588,3771575,3771576,3771577,3771578,3771579,3771580 } 
    },
    {
        ["offsetX"]=1215,
        ["textureHeight"] = 536,
        ["textureWidth"] = 957,
        ["offsetY"] = 16,
        ["fileDataIDs"] = { 3771562,3771566,3771567,3771568,3771569,3771570,3771571,3771572,3771573,3771563,3771564,3771565 } 
    },
    {
        ["offsetX"]=1869,
        ["textureHeight"] = 970,
        ["textureWidth"] = 983,
        ["offsetY"] = 1134,
        ["fileDataIDs"] = { 3771619,3771627,3771628,3771629,3771630,3771631,3771632,3771633,3771634,3771620,3771621,3771622,3771623,3771624,3771625,3771626 } 
    },
    {
        ["offsetX"]=815,
        ["textureHeight"] = 780,
        ["textureWidth"] = 1173,
        ["offsetY"] = 1389,
        ["fileDataIDs"] = { 3771635,3771646,3771648,3771649,3771650,3771651,3771652,3771653,3771654,3771636,3771637,3771638,3771639,3771640,3771641,3771642,3771643,3771644,3771645,3771647 } 
    },
    {
        ["offsetX"]=832,
        ["textureHeight"] = 1087,
        ["textureWidth"] = 1369,
        ["offsetY"] = 428,
        ["fileDataIDs"] = { 3771589,3771600,3771611,3771613,3771614,3771615,3771616,3771617,3771618,3771590,3771591,3771592,3771593,3771594,3771595,3771596,3771597,3771598,3771599,3771601,3771602,3771603,3771604,3771605,3771606,3771607,3771608,3771609,3771610,3771612 } 
    },
    {
        ["offsetX"]=798,
        ["textureHeight"] = 555,
        ["textureWidth"] = 1795,
        ["offsetY"] = 1995,
        ["fileDataIDs"] = { 3771655,3771666,3771672,3771673,3771674,3771675,3771676,3771677,3771678,3771656,3771657,3771658,3771659,3771660,3771661,3771662,3771663,3771664,3771665,3771667,3771668,3771669,3771670,3771671 } 
    }
},
[1381] = {
    {
        ["offsetX"]=1913,
        ["textureHeight"] = 1283,
        ["textureWidth"] = 444,
        ["offsetY"] = 873,
        ["fileDataIDs"] = { 3772307,3772311,3772312,3772313,3772314,3772315,3772316,3772317,3772318,3772308,3772309,3772310 } 
    },
    {
        ["offsetX"]=1766,
        ["textureHeight"] = 779,
        ["textureWidth"] = 696,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3772261,3772265,3772266,3772267,3772268,3772269,3772270,3772271,3772272,3772262,3772263,3772264 } 
    },
    {
        ["offsetX"]=1275,
        ["textureHeight"] = 686,
        ["textureWidth"] = 742,
        ["offsetY"] = 1523,
        ["fileDataIDs"] = { 3772375,3772376,3772377,3772378,3772379,3772380,3772381,3772382,3772383 } 
    },
    {
        ["offsetX"]=2499,
        ["textureHeight"] = 747,
        ["textureWidth"] = 746,
        ["offsetY"] = 1054,
        ["fileDataIDs"] = { 3772298,3772299,3772300,3772301,3772302,3772303,3772304,3772305,3772306 } 
    },
    {
        ["offsetX"]=553,
        ["textureHeight"] = 553,
        ["textureWidth"] = 840,
        ["offsetY"] = 1330,
        ["fileDataIDs"] = { 3772347,3772351,3772352,3772353,3772354,3772355,3772356,3772357,3772358,3772348,3772349,3772350 } 
    },
    {
        ["offsetX"]=1284,
        ["textureHeight"] = 770,
        ["textureWidth"] = 863,
        ["offsetY"] = 902,
        ["fileDataIDs"] = { 3772319,3772327,3772328,3772329,3772330,3772331,3772332,3772333,3772334,3772320,3772321,3772322,3772323,3772324,3772325,3772326 } 
    },
    {
        ["offsetX"]=656,
        ["textureHeight"] = 734,
        ["textureWidth"] = 976,
        ["offsetY"] = 695,
        ["fileDataIDs"] = { 3772335,3772339,3772340,3772341,3772342,3772343,3772344,3772345,3772346,3772336,3772337,3772338 } 
    },
    {
        ["offsetX"]=1728,
        ["textureHeight"] = 1040,
        ["textureWidth"] = 1005,
        ["offsetY"] = 1510,
        ["fileDataIDs"] = { 3772384,3772395,3772397,3772398,3772399,3772400,3772401,3772402,3772403,3772385,3772386,3772387,3772388,3772389,3772390,3772391,3772392,3772393,3772394,3772396 } 
    },
    {
        ["offsetX"]=814,
        ["textureHeight"] = 785,
        ["textureWidth"] = 1016,
        ["offsetY"] = 1775,
        ["fileDataIDs"] = { 3772359,3772367,3772368,3772369,3772370,3772371,3772372,3772373,3772374,3772360,3772361,3772362,3772363,3772364,3772365,3772366 } 
    },
    {
        ["offsetX"]=1936,
        ["textureHeight"] = 1228,
        ["textureWidth"] = 1158,
        ["offsetY"] = 397,
        ["fileDataIDs"] = { 3772273,3772284,3772291,3772292,3772293,3772294,3772295,3772296,3772297,3772274,3772275,3772276,3772277,3772278,3772279,3772280,3772281,3772282,3772283,3772285,3772286,3772287,3772288,3772289,3772290 } 
    }
},
[1382] = {
    {
        ["offsetX"]=237,
        ["textureHeight"] = 1116,
        ["textureWidth"] = 848,
        ["offsetY"] = 1426,
        ["fileDataIDs"] = { 3772527,3772538,3772540,3772541,3772542,3772543,3772544,3772545,3772546,3772528,3772529,3772530,3772531,3772532,3772533,3772534,3772535,3772536,3772537,3772539 } 
    },
    {
        ["offsetX"]=1631,
        ["textureHeight"] = 1721,
        ["textureWidth"] = 959,
        ["offsetY"] = 40,
        ["fileDataIDs"] = { 3772429,3772440,3772450,3772451,3772452,3772453,3772454,3772455,3772456,3772430,3772431,3772432,3772433,3772434,3772435,3772436,3772437,3772438,3772439,3772441,3772442,3772443,3772444,3772445,3772446,3772447,3772448,3772449 } 
    },
    {
        ["offsetX"]=890,
        ["textureHeight"] = 870,
        ["textureWidth"] = 1050,
        ["offsetY"] = 47,
        ["fileDataIDs"] = { 3772457,3772468,3772470,3772471,3772472,3772473,3772474,3772475,3772476,3772458,3772459,3772460,3772461,3772462,3772463,3772464,3772465,3772466,3772467,3772469 } 
    },
    {
        ["offsetX"]=2444,
        ["textureHeight"] = 1084,
        ["textureWidth"] = 1084,
        ["offsetY"] = 436,
        ["fileDataIDs"] = { 3772404,3772415,3772422,3772423,3772424,3772425,3772426,3772427,3772428,3772405,3772406,3772407,3772408,3772409,3772410,3772411,3772412,3772413,3772414,3772416,3772417,3772418,3772419,3772420,3772421 } 
    },
    {
        ["offsetX"]=963,
        ["textureHeight"] = 810,
        ["textureWidth"] = 1165,
        ["offsetY"] = 1719,
        ["fileDataIDs"] = { 3772507,3772518,3772520,3772521,3772522,3772523,3772524,3772525,3772526,3772508,3772509,3772510,3772511,3772512,3772513,3772514,3772515,3772516,3772517,3772519 } 
    },
    {
        ["offsetX"]=653,
        ["textureHeight"] = 1179,
        ["textureWidth"] = 1447,
        ["offsetY"] = 680,
        ["fileDataIDs"] = { 3772477,3772488,3772499,3772501,3772502,3772503,3772504,3772505,3772506,3772478,3772479,3772480,3772481,3772482,3772483,3772484,3772485,3772486,3772487,3772489,3772490,3772491,3772492,3772493,3772494,3772495,3772496,3772497,3772498,3772500 } 
    }
},
[1383] = {
    {
        ["offsetX"]=1748,
        ["textureHeight"] = 1404,
        ["textureWidth"] = 565,
        ["offsetY"] = 591,
        ["fileDataIDs"] = { 3774161,3774171,3774172,3774173,3774174,3774175,3774176,3774177,3774178,3774162,3774163,3774164,3774165,3774166,3774167,3774168,3774169,3774170 } 
    },
    {
        ["offsetX"]=1198,
        ["textureHeight"] = 1389,
        ["textureWidth"] = 677,
        ["offsetY"] = 595,
        ["fileDataIDs"] = { 3774179,3774189,3774190,3774191,3774192,3774193,3774194,3774195,3774196,3774180,3774181,3774182,3774183,3774184,3774185,3774186,3774187,3774188 } 
    },
    {
        ["offsetX"]=1817,
        ["textureHeight"] = 1469,
        ["textureWidth"] = 792,
        ["offsetY"] = 173,
        ["fileDataIDs"] = { 3774217,3774228,3774234,3774235,3774236,3774237,3774238,3774239,3774240,3774218,3774219,3774220,3774221,3774222,3774223,3774224,3774225,3774226,3774227,3774229,3774230,3774231,3774232,3774233 } 
    },
    {
        ["offsetX"]=1336,
        ["textureHeight"] = 1035,
        ["textureWidth"] = 802,
        ["offsetY"] = 1500,
        ["fileDataIDs"] = { 3774197,3774208,3774210,3774211,3774212,3774213,3774214,3774215,3774216,3774198,3774199,3774200,3774201,3774202,3774203,3774204,3774205,3774206,3774207,3774209 } 
    }
},
[1386] = {
    {
        ["offsetX"]=1306,
        ["textureHeight"] = 902,
        ["textureWidth"] = 519,
        ["offsetY"] = 384,
        ["fileDataIDs"] = { 3774323,3774327,3774328,3774329,3774330,3774331,3774332,3774333,3774334,3774324,3774325,3774326 } 
    },
    {
        ["offsetX"]=786,
        ["textureHeight"] = 1013,
        ["textureWidth"] = 688,
        ["offsetY"] = 529,
        ["fileDataIDs"] = { 3774311,3774315,3774316,3774317,3774318,3774319,3774320,3774321,3774322,3774312,3774313,3774314 } 
    },
    {
        ["offsetX"]=1710,
        ["textureHeight"] = 1344,
        ["textureWidth"] = 835,
        ["offsetY"] = 388,
        ["fileDataIDs"] = { 3774287,3774298,3774304,3774305,3774306,3774307,3774308,3774309,3774310,3774288,3774289,3774290,3774291,3774292,3774293,3774294,3774295,3774296,3774297,3774299,3774300,3774301,3774302,3774303 } 
    },
    {
        ["offsetX"]=858,
        ["textureHeight"] = 654,
        ["textureWidth"] = 931,
        ["offsetY"] = 1427,
        ["fileDataIDs"] = { 3774355,3774359,3774360,3774361,3774362,3774363,3774364,3774365,3774366,3774356,3774357,3774358 } 
    },
    {
        ["offsetX"]=1955,
        ["textureHeight"] = 1527,
        ["textureWidth"] = 999,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 3774263,3774274,3774280,3774281,3774282,3774283,3774284,3774285,3774286,3774264,3774265,3774266,3774267,3774268,3774269,3774270,3774271,3774272,3774273,3774275,3774276,3774277,3774278,3774279 } 
    },
    {
        ["offsetX"]=1161,
        ["textureHeight"] = 879,
        ["textureWidth"] = 1114,
        ["offsetY"] = 1076,
        ["fileDataIDs"] = { 3774335,3774346,3774348,3774349,3774350,3774351,3774352,3774353,3774354,3774336,3774337,3774338,3774339,3774340,3774341,3774342,3774343,3774344,3774345,3774347 } 
    },
    {
        ["offsetX"]=833,
        ["textureHeight"] = 756,
        ["textureWidth"] = 1290,
        ["offsetY"] = 1754,
        ["fileDataIDs"] = { 3774367,3774377,3774378,3774379,3774380,3774381,3774382,3774383,3774384,3774368,3774369,3774370,3774371,3774372,3774373,3774374,3774375,3774376 } 
    }
},
[1389] = {
    {
        ["offsetX"]=1819,
        ["textureHeight"] = 579,
        ["textureWidth"] = 603,
        ["offsetY"] = 1159,
        ["fileDataIDs"] = { 3776638,3776639,3776640,3776641,3776642,3776643,3776644,3776645,3776646 } 
    },
    {
        ["offsetX"]=400,
        ["textureHeight"] = 1244,
        ["textureWidth"] = 842,
        ["offsetY"] = 1273,
        ["fileDataIDs"] = { 3776704,3776715,3776717,3776718,3776719,3776720,3776721,3776722,3776723,3776705,3776706,3776707,3776708,3776709,3776710,3776711,3776712,3776713,3776714,3776716 } 
    },
    {
        ["offsetX"]=1741,
        ["textureHeight"] = 733,
        ["textureWidth"] = 1044,
        ["offsetY"] = 1635,
        ["fileDataIDs"] = { 3776647,3776654,3776655,3776656,3776657,3776658,3776659,3776660,3776661,3776648,3776649,3776650,3776651,3776652,3776653 } 
    },
    {
        ["offsetX"]=1943,
        ["textureHeight"] = 940,
        ["textureWidth"] = 1370,
        ["offsetY"] = 26,
        ["fileDataIDs"] = { 3776574,3776585,3776591,3776592,3776593,3776594,3776595,3776596,3776597,3776575,3776576,3776577,3776578,3776579,3776580,3776581,3776582,3776583,3776584,3776586,3776587,3776588,3776589,3776590 } 
    },
    {
        ["offsetX"]=483,
        ["textureHeight"] = 1606,
        ["textureWidth"] = 1439,
        ["offsetY"] = 810,
        ["fileDataIDs"] = { 3776662,3776673,3776684,3776695,3776699,3776700,3776701,3776702,3776703,3776663,3776664,3776665,3776666,3776667,3776668,3776669,3776670,3776671,3776672,3776674,3776675,3776676,3776677,3776678,3776679,3776680,3776681,3776682,3776683,3776685,3776686,3776687,3776688,3776689,3776690,3776691,3776692,3776693,3776694,3776696,3776697,3776698 } 
    },
    {
        ["offsetX"]=1807,
        ["textureHeight"] = 1221,
        ["textureWidth"] = 1873,
        ["offsetY"] = 812,
        ["fileDataIDs"] = { 3776598,3776609,3776620,3776631,3776633,3776634,3776635,3776636,3776637,3776599,3776600,3776601,3776602,3776603,3776604,3776605,3776606,3776607,3776608,3776610,3776611,3776612,3776613,3776614,3776615,3776616,3776617,3776618,3776619,3776621,3776622,3776623,3776624,3776625,3776626,3776627,3776628,3776629,3776630,3776632 } 
    }
},
[1393] = {
    {
        ["offsetX"]=1484,
        ["textureHeight"] = 1123,
        ["textureWidth"] = 839,
        ["offsetY"] = 1437,
        ["fileDataIDs"] = { 3776991,3777002,3777004,3777005,3777006,3777007,3777008,3777009,3777010,3776992,3776993,3776994,3776995,3776996,3776997,3776998,3776999,3777000,3777001,3777003 } 
    },
    {
        ["offsetX"]=1943,
        ["textureHeight"] = 668,
        ["textureWidth"] = 861,
        ["offsetY"] = 914,
        ["fileDataIDs"] = { 3776969,3776973,3776974,3776975,3776976,3776977,3776978,3776979,3776980,3776970,3776971,3776972 } 
    },
    {
        ["offsetX"]=1250,
        ["textureHeight"] = 400,
        ["textureWidth"] = 951,
        ["offsetY"] = 800,
        ["fileDataIDs"] = { 3776961,3776962,3776963,3776964,3776965,3776966,3776967,3776968 } 
    },
    {
        ["offsetX"]=1238,
        ["textureHeight"] = 440,
        ["textureWidth"] = 1048,
        ["offsetY"] = 1099,
        ["fileDataIDs"] = { 3776981,3776983,3776984,3776985,3776986,3776987,3776988,3776989,3776990,3776982 } 
    },
    {
        ["offsetX"]=1605,
        ["textureHeight"] = 960,
        ["textureWidth"] = 1131,
        ["offsetY"] = 57,
        ["fileDataIDs"] = { 3776941,3776952,3776954,3776955,3776956,3776957,3776958,3776959,3776960,3776942,3776943,3776944,3776945,3776946,3776947,3776948,3776949,3776950,3776951,3776953 } 
    }
},
[1439] = {
    {
        ["offsetX"]=2036,
        ["textureHeight"] = 330,
        ["textureWidth"] = 294,
        ["offsetY"] = 1272,
        ["fileDataIDs"] = { 3719472,3719473,3719474,3719475 } 
    },
    {
        ["offsetX"]=1381,
        ["textureHeight"] = 270,
        ["textureWidth"] = 298,
        ["offsetY"] = 453,
        ["fileDataIDs"] = { 3719397,3719398,3719399,3719400 } 
    },
    {
        ["offsetX"]=1657,
        ["textureHeight"] = 279,
        ["textureWidth"] = 303,
        ["offsetY"] = 1012,
        ["fileDataIDs"] = { 3719437,3719438,3719439,3719440 } 
    },
    {
        ["offsetX"]=2229,
        ["textureHeight"] = 359,
        ["textureWidth"] = 337,
        ["offsetY"] = 426,
        ["fileDataIDs"] = { 3719413,3719414,3719415,3719416 } 
    },
    {
        ["offsetX"]=1378,
        ["textureHeight"] = 394,
        ["textureWidth"] = 337,
        ["offsetY"] = 674,
        ["fileDataIDs"] = { 3719421,3719422,3719423,3719424 } 
    },
    {
        ["offsetX"]=2224,
        ["textureHeight"] = 534,
        ["textureWidth"] = 339,
        ["offsetY"] = 1619,
        ["fileDataIDs"] = { 3719507,3719508,3719509,3719510,3719511,3719512 } 
    },
    {
        ["offsetX"]=2232,
        ["textureHeight"] = 389,
        ["textureWidth"] = 344,
        ["offsetY"] = 676,
        ["fileDataIDs"] = { 3719425,3719426,3719427,3719428 } 
    },
    {
        ["offsetX"]=1394,
        ["textureHeight"] = 388,
        ["textureWidth"] = 371,
        ["offsetY"] = 1244,
        ["fileDataIDs"] = { 3719464,3719465,3719466,3719467 } 
    },
    {
        ["offsetX"]=1102,
        ["textureHeight"] = 378,
        ["textureWidth"] = 375,
        ["offsetY"] = 400,
        ["fileDataIDs"] = { 3719393,3719394,3719395,3719396 } 
    },
    {
        ["offsetX"]=1385,
        ["textureHeight"] = 402,
        ["textureWidth"] = 377,
        ["offsetY"] = 1520,
        ["fileDataIDs"] = { 3719480,3719481,3719482,3719483 } 
    },
    {
        ["offsetX"]=1099,
        ["textureHeight"] = 389,
        ["textureWidth"] = 383,
        ["offsetY"] = 679,
        ["fileDataIDs"] = { 3719417,3719418,3719419,3719420 } 
    },
    {
        ["offsetX"]=1104,
        ["textureHeight"] = 404,
        ["textureWidth"] = 383,
        ["offsetY"] = 1519,
        ["fileDataIDs"] = { 3719476,3719477,3719478,3719479 } 
    },
    {
        ["offsetX"]=1379,
        ["textureHeight"] = 335,
        ["textureWidth"] = 384,
        ["offsetY"] = 957,
        ["fileDataIDs"] = { 3719433,3719434,3719435,3719436 } 
    },
    {
        ["offsetX"]=1113,
        ["textureHeight"] = 328,
        ["textureWidth"] = 387,
        ["offsetY"] = 167,
        ["fileDataIDs"] = { 3719386,3719387,3719388,3719389 } 
    },
    {
        ["offsetX"]=2225,
        ["textureHeight"] = 763,
        ["textureWidth"] = 387,
        ["offsetY"] = 960,
        ["fileDataIDs"] = { 3719454,3719455,3719456,3719457,3719458,3719459 } 
    },
    {
        ["offsetX"]=989,
        ["textureHeight"] = 334,
        ["textureWidth"] = 457,
        ["offsetY"] = 1295,
        ["fileDataIDs"] = { 3719460,3719461,3719462,3719463 } 
    },
    {
        ["offsetX"]=1855,
        ["textureHeight"] = 430,
        ["textureWidth"] = 474,
        ["offsetY"] = 933,
        ["fileDataIDs"] = { 3719441,3719442,3719443,3719451 } 
    },
    {
        ["offsetX"]=1656,
        ["textureHeight"] = 419,
        ["textureWidth"] = 487,
        ["offsetY"] = 1228,
        ["fileDataIDs"] = { 3719468,3719469,3719470,3719471 } 
    },
    {
        ["offsetX"]=975,
        ["textureHeight"] = 321,
        ["textureWidth"] = 502,
        ["offsetY"] = 961,
        ["fileDataIDs"] = { 3719429,3719430,3719431,3719432 } 
    },
    {
        ["offsetX"]=1101,
        ["textureHeight"] = 338,
        ["textureWidth"] = 572,
        ["offsetY"] = 1815,
        ["fileDataIDs"] = { 3719484,3719485,3719486,3719487,3719488,3719489 } 
    },
    {
        ["offsetX"]=1582,
        ["textureHeight"] = 786,
        ["textureWidth"] = 749,
        ["offsetY"] = 204,
        ["fileDataIDs"] = { 3719401,3719405,3719406,3719407,3719408,3719409,3719410,3719411,3719412,3719402,3719403,3719404 } 
    },
    {
        ["offsetX"]=1568,
        ["textureHeight"] = 854,
        ["textureWidth"] = 763,
        ["offsetY"] = 1575,
        ["fileDataIDs"] = { 3719490,3719494,3719500,3719501,3719502,3719503,3719504,3719505,3719506,3719491,3719492,3719493 } 
    }
},
[1464] = {
    {
        ["offsetX"]=2373,
        ["textureHeight"] = 949,
        ["textureWidth"] = 651,
        ["offsetY"] = 1518,
        ["fileDataIDs"] = { 3765024,3765028,3765029,3765030,3765031,3765032,3765033,3765034,3765035,3765025,3765026,3765027 } 
    },
    {
        ["offsetX"]=1413,
        ["textureHeight"] = 729,
        ["textureWidth"] = 792,
        ["offsetY"] = 1021,
        ["fileDataIDs"] = { 3764988,3764992,3764993,3764994,3764995,3764996,3764997,3764998,3764999,3764989,3764990,3764991 } 
    },
    {
        ["offsetX"]=1483,
        ["textureHeight"] = 1017,
        ["textureWidth"] = 1520,
        ["offsetY"] = 1230,
        ["fileDataIDs"] = { 3765000,3765011,3765017,3765018,3765019,3765020,3765021,3765022,3765023,3765001,3765002,3765003,3765004,3765005,3765006,3765007,3765008,3765009,3765010,3765012,3765013,3765014,3765015,3765016 } 
    },
    {
        ["offsetX"]=600,
        ["textureHeight"] = 1356,
        ["textureWidth"] = 2447,
        ["offsetY"] = 85,
        ["fileDataIDs"] = { 3764928,3764939,3764950,3764961,3764972,3764983,3764985,3764986,3764987,3764929,3764930,3764931,3764932,3764933,3764934,3764935,3764936,3764937,3764938,3764940,3764941,3764942,3764943,3764944,3764945,3764946,3764947,3764948,3764949,3764951,3764952,3764953,3764954,3764955,3764956,3764957,3764958,3764959,3764960,3764962,3764963,3764964,3764965,3764966,3764967,3764968,3764969,3764970,3764971,3764973,3764974,3764975,3764976,3764977,3764978,3764979,3764980,3764981,3764982,3764984 } 
    }
},
[1465] = {
    {
        ["offsetX"]=1474,
        ["textureHeight"] = 808,
        ["textureWidth"] = 823,
        ["offsetY"] = 1747,
        ["fileDataIDs"] = { 3765304,3765320,3765322,3765324,3765326,3765328,3765330,3765332,3765334,3765306,3765308,3765310,3765312,3765314,3765316,3765318 } 
    },
    {
        ["offsetX"]=1140,
        ["textureHeight"] = 725,
        ["textureWidth"] = 1038,
        ["offsetY"] = 184,
        ["fileDataIDs"] = { 3765210,3765224,3765226,3765228,3765230,3765236,3765238,3765240,3765242,3765213,3765215,3765217,3765218,3765220,3765222 } 
    },
    {
        ["offsetX"]=1143,
        ["textureHeight"] = 710,
        ["textureWidth"] = 1134,
        ["offsetY"] = 1198,
        ["fileDataIDs"] = { 3765274,3765288,3765290,3765292,3765294,3765296,3765298,3765300,3765302,3765276,3765278,3765280,3765282,3765284,3765286 } 
    },
    {
        ["offsetX"]=1120,
        ["textureHeight"] = 615,
        ["textureWidth"] = 1135,
        ["offsetY"] = 749,
        ["fileDataIDs"] = { 3765244,3765258,3765260,3765262,3765264,3765266,3765268,3765270,3765272,3765246,3765248,3765250,3765252,3765254,3765256 } 
    }
},
[1474] = {
    {
        ["offsetX"]=756,
        ["textureHeight"] = 1464,
        ["textureWidth"] = 1079,
        ["offsetY"] = 212,
        ["fileDataIDs"] = { 3779767,3779778,3779789,3779791,3779792,3779793,3779794,3779795,3779796,3779768,3779769,3779770,3779771,3779772,3779773,3779774,3779775,3779776,3779777,3779779,3779780,3779781,3779782,3779783,3779784,3779785,3779786,3779787,3779788,3779790 } 
    },
    {
        ["offsetX"]=1710,
        ["textureHeight"] = 978,
        ["textureWidth"] = 1094,
        ["offsetY"] = 1545,
        ["fileDataIDs"] = { 3779817,3779828,3779830,3779831,3779832,3779833,3779834,3779835,3779836,3779818,3779819,3779820,3779821,3779822,3779823,3779824,3779825,3779826,3779827,3779829 } 
    },
    {
        ["offsetX"]=727,
        ["textureHeight"] = 973,
        ["textureWidth"] = 1106,
        ["offsetY"] = 1534,
        ["fileDataIDs"] = { 3779797,3779808,3779810,3779811,3779812,3779813,3779814,3779815,3779816,3779798,3779799,3779800,3779801,3779802,3779803,3779804,3779805,3779806,3779807,3779809 } 
    },
    {
        ["offsetX"]=1715,
        ["textureHeight"] = 1434,
        ["textureWidth"] = 1401,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 3779837,3779848,3779859,3779867,3779868,3779869,3779870,3779871,3779872,3779838,3779839,3779840,3779841,3779842,3779843,3779844,3779845,3779846,3779847,3779849,3779850,3779851,3779852,3779853,3779854,3779855,3779856,3779857,3779858,3779860,3779861,3779862,3779863,3779864,3779865,3779866 } 
    }
},
[1475] = {
    {
        ["offsetX"]=1478,
        ["textureHeight"] = 2425,
        ["textureWidth"] = 725,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 3780150,3780161,3780172,3780174,3780175,3780176,3780177,3780178,3780179,3780151,3780152,3780153,3780154,3780155,3780156,3780157,3780158,3780159,3780160,3780162,3780163,3780164,3780165,3780166,3780167,3780168,3780169,3780170,3780171,3780173 } 
    },
    {
        ["offsetX"]=61,
        ["textureHeight"] = 2440,
        ["textureWidth"] = 1562,
        ["offsetY"] = 90,
        ["fileDataIDs"] = { 3780023,3780063,3780074,3780106,3780117,3780135,3780146,3780148,3780149,3780032,3780033,3780034,3780035,3780036,3780037,3780038,3780042,3780043,3780054,3780064,3780065,3780066,3780067,3780068,3780069,3780070,3780071,3780072,3780073,3780075,3780076,3780077,3780078,3780079,3780080,3780081,3780082,3780087,3780105,3780107,3780108,3780109,3780110,3780111,3780112,3780113,3780114,3780115,3780116,3780118,3780119,3780120,3780121,3780122,3780123,3780124,3780125,3780126,3780134,3780136,3780137,3780138,3780139,3780140,3780141,3780142,3780143,3780144,3780145,3780147 } 
    },
    {
        ["offsetX"]=2076,
        ["textureHeight"] = 2374,
        ["textureWidth"] = 1660,
        ["offsetY"] = 111,
        ["fileDataIDs"] = { 3780180,3780191,3780202,3780213,3780224,3780238,3780249,3780251,3780252,3780181,3780182,3780183,3780184,3780185,3780186,3780187,3780188,3780189,3780190,3780192,3780193,3780194,3780195,3780196,3780197,3780198,3780199,3780200,3780201,3780203,3780204,3780205,3780206,3780207,3780208,3780209,3780210,3780211,3780212,3780214,3780215,3780216,3780217,3780218,3780219,3780220,3780221,3780222,3780223,3780225,3780229,3780230,3780231,3780232,3780233,3780234,3780235,3780236,3780237,3780239,3780240,3780241,3780242,3780243,3780244,3780245,3780246,3780247,3780248,3780250 } 
    }
},
[1477] = {
    {
        ["offsetX"]=1594,
        ["textureHeight"] = 1310,
        ["textureWidth"] = 647,
        ["offsetY"] = 934,
        ["fileDataIDs"] = { 3788409,3788419,3788420,3788421,3788422,3788423,3788424,3788425,3788426,3788410,3788411,3788412,3788413,3788414,3788415,3788416,3788417,3788418 } 
    },
    {
        ["offsetX"]=1587,
        ["textureHeight"] = 597,
        ["textureWidth"] = 669,
        ["offsetY"] = 449,
        ["fileDataIDs"] = { 3788469,3788470,3788471,3788472,3788473,3788474,3788475,3788476,3788477 } 
    },
    {
        ["offsetX"]=499,
        ["textureHeight"] = 1747,
        ["textureWidth"] = 1208,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 3788374,3788385,3788396,3788403,3788404,3788405,3788406,3788407,3788408,3788375,3788376,3788377,3788378,3788379,3788380,3788381,3788382,3788383,3788384,3788386,3788387,3788388,3788389,3788390,3788391,3788392,3788393,3788394,3788395,3788397,3788398,3788399,3788400,3788401,3788402 } 
    },
    {
        ["offsetX"]=2130,
        ["textureHeight"] = 1755,
        ["textureWidth"] = 1442,
        ["offsetY"] = 293,
        ["fileDataIDs"] = { 3788427,3788438,3788449,3788460,3788464,3788465,3788466,3788467,3788468,3788428,3788429,3788430,3788431,3788432,3788433,3788434,3788435,3788436,3788437,3788439,3788440,3788441,3788442,3788443,3788444,3788445,3788446,3788447,3788448,3788450,3788451,3788452,3788453,3788454,3788455,3788456,3788457,3788458,3788459,3788461,3788462,3788463 } 
    }
},
[1478] = {
    {
        ["offsetX"]=2055,
        ["textureHeight"] = 1052,
        ["textureWidth"] = 1117,
        ["offsetY"] = 1290,
        ["fileDataIDs"] = { 3788748,3788760,3788767,3788768,3788769,3788770,3788771,3788772,3788773,3788749,3788751,3788752,3788753,3788754,3788755,3788756,3788757,3788758,3788759,3788761,3788762,3788763,3788764,3788765,3788766 } 
    },
    {
        ["offsetX"]=892,
        ["textureHeight"] = 1210,
        ["textureWidth"] = 1290,
        ["offsetY"] = 1302,
        ["fileDataIDs"] = { 3788717,3788728,3788740,3788742,3788743,3788744,3788745,3788746,3788747,3788718,3788719,3788720,3788721,3788722,3788723,3788724,3788725,3788726,3788727,3788729,3788730,3788731,3788732,3788733,3788734,3788735,3788737,3788738,3788739,3788741 } 
    },
    {
        ["offsetX"]=415,
        ["textureHeight"] = 1281,
        ["textureWidth"] = 1592,
        ["offsetY"] = 134,
        ["fileDataIDs"] = { 3788675,3788686,3788697,3788708,3788712,3788713,3788714,3788715,3788716,3788676,3788677,3788678,3788679,3788680,3788681,3788682,3788683,3788684,3788685,3788687,3788688,3788689,3788690,3788691,3788692,3788693,3788694,3788695,3788696,3788698,3788699,3788700,3788701,3788702,3788703,3788704,3788705,3788706,3788707,3788709,3788710,3788711 } 
    },
    {
        ["offsetX"]=1912,
        ["textureHeight"] = 1114,
        ["textureWidth"] = 1811,
        ["offsetY"] = 287,
        ["fileDataIDs"] = { 3788774,3788785,3788796,3788807,3788809,3788810,3788811,3788812,3788813,3788775,3788776,3788777,3788778,3788779,3788780,3788781,3788782,3788783,3788784,3788786,3788787,3788788,3788789,3788790,3788791,3788792,3788793,3788794,3788795,3788797,3788798,3788799,3788800,3788801,3788802,3788803,3788804,3788805,3788806,3788808 } 
    }
},
[1479] = {
    {
        ["offsetX"]=2003,
        ["textureHeight"] = 1010,
        ["textureWidth"] = 854,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 3789127,3789135,3789136,3789137,3789138,3789139,3789140,3789141,3789142,3789128,3789129,3789130,3789131,3789132,3789133,3789134 } 
    },
    {
        ["offsetX"]=739,
        ["textureHeight"] = 1317,
        ["textureWidth"] = 876,
        ["offsetY"] = 152,
        ["fileDataIDs"] = { 3789079,3789090,3789096,3789097,3789098,3789099,3789100,3789101,3789102,3789080,3789081,3789082,3789083,3789084,3789085,3789086,3789087,3789088,3789089,3789091,3789092,3789093,3789094,3789095 } 
    },
    {
        ["offsetX"]=1496,
        ["textureHeight"] = 1372,
        ["textureWidth"] = 902,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3789103,3789114,3789120,3789121,3789122,3789123,3789124,3789125,3789126,3789104,3789105,3789106,3789107,3789108,3789109,3789110,3789111,3789112,3789113,3789115,3789116,3789117,3789118,3789119 } 
    },
    {
        ["offsetX"]=1106,
        ["textureHeight"] = 1253,
        ["textureWidth"] = 1384,
        ["offsetY"] = 1279,
        ["fileDataIDs"] = { 3789143,3789154,3789165,3789167,3789168,3789169,3789170,3789171,3789172,3789144,3789145,3789146,3789147,3789148,3789149,3789150,3789151,3789152,3789153,3789155,3789156,3789157,3789158,3789159,3789160,3789161,3789162,3789163,3789164,3789166 } 
    }
},
[1482] = {
    {
        ["offsetX"]=744,
        ["textureHeight"] = 2043,
        ["textureWidth"] = 775,
        ["offsetY"] = 116,
        ["fileDataIDs"] = { 3790754,3790775,3790800,3790808,3790810,3790812,3790814,3790816,3790818,3790756,3790758,3790760,3790762,3790764,3790766,3790768,3790769,3790771,3790773,3790777,3790779,3790781,3790783,3790785,3790787,3790788,3790790,3790792,3790798,3790802,3790804,3790806 } 
    },
    {
        ["offsetX"]=1610,
        ["textureHeight"] = 1314,
        ["textureWidth"] = 906,
        ["offsetY"] = 453,
        ["fileDataIDs"] = { 3790905,3790926,3790937,3790939,3790941,3790943,3790945,3790946,3790948,3790907,3790908,3790910,3790912,3790914,3790916,3790918,3790920,3790922,3790924,3790928,3790930,3790931,3790933,3790935 } 
    },
    {
        ["offsetX"]=1266,
        ["textureHeight"] = 1180,
        ["textureWidth"] = 977,
        ["offsetY"] = 1179,
        ["fileDataIDs"] = { 3790819,3790840,3790844,3790846,3790848,3790850,3790852,3790854,3790856,3790821,3790823,3790825,3790827,3790829,3790831,3790833,3790835,3790837,3790838,3790842 } 
    },
    {
        ["offsetX"]=2122,
        ["textureHeight"] = 1166,
        ["textureWidth"] = 1060,
        ["offsetY"] = 1027,
        ["fileDataIDs"] = { 3790858,3790879,3790892,3790894,3790896,3790897,3790899,3790901,3790903,3790860,3790862,3790864,3790866,3790867,3790869,3790871,3790873,3790875,3790877,3790881,3790882,3790884,3790886,3790888,3790890 } 
    },
    {
        ["offsetX"]=2059,
        ["textureHeight"] = 1131,
        ["textureWidth"] = 1166,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3790950,3790971,3790984,3790986,3790988,3790990,3790992,3790994,3790996,3790952,3790954,3790956,3790958,3790960,3790962,3790963,3790965,3790967,3790969,3790973,3790975,3790977,3790979,3790980,3790982 } 
    }
},
[1484] = {
    {
        ["offsetX"]=1745,
        ["textureHeight"] = 919,
        ["textureWidth"] = 1108,
        ["offsetY"] = 1408,
        ["fileDataIDs"] = { 3791457,3791468,3791470,3791471,3791472,3791473,3791474,3791475,3791476,3791458,3791459,3791460,3791461,3791462,3791463,3791464,3791465,3791466,3791467,3791469 } 
    },
    {
        ["offsetX"]=719,
        ["textureHeight"] = 1401,
        ["textureWidth"] = 1132,
        ["offsetY"] = 1038,
        ["fileDataIDs"] = { 3791427,3791438,3791449,3791451,3791452,3791453,3791454,3791455,3791456,3791428,3791429,3791430,3791431,3791432,3791433,3791434,3791435,3791436,3791437,3791439,3791440,3791441,3791442,3791443,3791444,3791445,3791446,3791447,3791448,3791450 } 
    },
    {
        ["offsetX"]=1727,
        ["textureHeight"] = 1490,
        ["textureWidth"] = 1338,
        ["offsetY"] = 18,
        ["fileDataIDs"] = { 3791477,3791488,3791499,3791507,3791508,3791509,3791510,3791511,3791512,3791478,3791479,3791480,3791481,3791482,3791483,3791484,3791485,3791486,3791487,3791489,3791490,3791491,3791492,3791493,3791494,3791495,3791496,3791497,3791498,3791500,3791501,3791502,3791503,3791504,3791505,3791506 } 
    }
},
[1485] = {
    {
        ["offsetX"]=1680,
        ["textureHeight"] = 1010,
        ["textureWidth"] = 938,
        ["offsetY"] = 49,
        ["fileDataIDs"] = { 3791686,3791694,3791695,3791696,3791697,3791698,3791699,3791700,3791701,3791687,3791688,3791689,3791690,3791691,3791692,3791693 } 
    },
    {
        ["offsetX"]=828,
        ["textureHeight"] = 1059,
        ["textureWidth"] = 945,
        ["offsetY"] = 56,
        ["fileDataIDs"] = { 3791666,3791677,3791679,3791680,3791681,3791682,3791683,3791684,3791685,3791667,3791668,3791669,3791670,3791671,3791672,3791673,3791674,3791675,3791676,3791678 } 
    },
    {
        ["offsetX"]=1559,
        ["textureHeight"] = 827,
        ["textureWidth"] = 971,
        ["offsetY"] = 1717,
        ["fileDataIDs"] = { 3791734,3791742,3791743,3791744,3791745,3791746,3791747,3791748,3791749,3791735,3791736,3791737,3791738,3791739,3791740,3791741 } 
    },
    {
        ["offsetX"]=1286,
        ["textureHeight"] = 872,
        ["textureWidth"] = 1807,
        ["offsetY"] = 951,
        ["fileDataIDs"] = { 3791702,3791713,3791724,3791728,3791729,3791730,3791731,3791732,3791733,3791703,3791704,3791705,3791706,3791707,3791708,3791709,3791710,3791711,3791712,3791714,3791715,3791716,3791717,3791718,3791719,3791720,3791721,3791722,3791723,3791725,3791726,3791727 } 
    }
},
[1492] = {
    {
        ["offsetX"]=1303,
        ["textureHeight"] = 1196,
        ["textureWidth"] = 1226,
        ["offsetY"] = 1301,
        ["fileDataIDs"] = { 3795577,3795588,3795595,3795596,3795597,3795598,3795599,3795600,3795601,3795578,3795579,3795580,3795581,3795582,3795583,3795584,3795585,3795586,3795587,3795589,3795590,3795591,3795592,3795593,3795594 } 
    },
    {
        ["offsetX"]=408,
        ["textureHeight"] = 1749,
        ["textureWidth"] = 3006,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 3795602,3795613,3795624,3795635,3795646,3795657,3795668,3795679,3795685,3795603,3795604,3795605,3795606,3795607,3795608,3795609,3795610,3795611,3795612,3795614,3795615,3795616,3795617,3795618,3795619,3795620,3795621,3795622,3795623,3795625,3795626,3795627,3795628,3795629,3795630,3795631,3795632,3795633,3795634,3795636,3795637,3795638,3795639,3795640,3795641,3795642,3795643,3795644,3795645,3795647,3795648,3795649,3795650,3795651,3795652,3795653,3795654,3795655,3795656,3795658,3795659,3795660,3795661,3795662,3795663,3795664,3795665,3795666,3795667,3795669,3795670,3795671,3795672,3795673,3795674,3795675,3795676,3795677,3795678,3795680,3795681,3795682,3795683,3795684 } 
    }
},
[1502] = {
    {
        ["offsetX"]=1319,
        ["textureHeight"] = 682,
        ["textureWidth"] = 810,
        ["offsetY"] = 877,
        ["fileDataIDs"] = { 3801018,3801026,3801028,3801030,3801032,3801034,3801036,3801038,3801040,3801020,3801022,3801024 } 
    },
    {
        ["offsetX"]=1227,
        ["textureHeight"] = 812,
        ["textureWidth"] = 877,
        ["offsetY"] = 184,
        ["fileDataIDs"] = { 3801072,3801088,3801090,3801091,3801093,3801095,3801097,3801099,3801101,3801074,3801076,3801078,3801080,3801082,3801084,3801086 } 
    },
    {
        ["offsetX"]=1144,
        ["textureHeight"] = 948,
        ["textureWidth"] = 964,
        ["offsetY"] = 1431,
        ["fileDataIDs"] = { 3801042,3801057,3801059,3801061,3801063,3801065,3801067,3801069,3801071,3801044,3801046,3801048,3801050,3801052,3801053,3801055 } 
    },
    {
        ["offsetX"]=2013,
        ["textureHeight"] = 954,
        ["textureWidth"] = 979,
        ["offsetY"] = 1428,
        ["fileDataIDs"] = { 3801170,3801185,3801187,3801189,3801191,3801193,3801195,3801197,3801199,3801172,3801174,3801176,3801178,3801179,3801181,3801183 } 
    },
    {
        ["offsetX"]=2011,
        ["textureHeight"] = 825,
        ["textureWidth"] = 1005,
        ["offsetY"] = 180,
        ["fileDataIDs"] = { 3801103,3801118,3801120,3801122,3801124,3801126,3801128,3801130,3801132,3801105,3801107,3801109,3801111,3801113,3801115,3801116 } 
    },
    {
        ["offsetX"]=501,
        ["textureHeight"] = 1487,
        ["textureWidth"] = 1014,
        ["offsetY"] = 486,
        ["fileDataIDs"] = { 3800970,3800993,3801005,3801007,3801008,3801010,3801012,3801014,3801016,3800973,3800975,3800977,3800979,3800981,3800983,3800985,3800987,3800989,3800991,3800995,3800997,3800999,3801001,3801003 } 
    },
    {
        ["offsetX"]=2000,
        ["textureHeight"] = 670,
        ["textureWidth"] = 1323,
        ["offsetY"] = 885,
        ["fileDataIDs"] = { 3801134,3801154,3801156,3801158,3801160,3801162,3801164,3801166,3801168,3801136,3801138,3801140,3801142,3801144,3801146,3801148,3801150,3801152 } 
    }
},
[1503] = {
    {
        ["offsetX"]=1274,
        ["textureHeight"] = 1871,
        ["textureWidth"] = 833,
        ["offsetY"] = 228,
        ["fileDataIDs"] = { 3802642,3802653,3802664,3802668,3802669,3802670,3802671,3802672,3802673,3802643,3802644,3802645,3802646,3802647,3802648,3802649,3802650,3802651,3802652,3802654,3802655,3802656,3802657,3802658,3802659,3802660,3802661,3802662,3802663,3802665,3802666,3802667 } 
    },
    {
        ["offsetX"]=467,
        ["textureHeight"] = 1460,
        ["textureWidth"] = 1007,
        ["offsetY"] = 612,
        ["fileDataIDs"] = { 3802618,3802629,3802635,3802636,3802637,3802638,3802639,3802640,3802641,3802619,3802620,3802621,3802622,3802623,3802624,3802625,3802626,3802627,3802628,3802630,3802631,3802632,3802633,3802634 } 
    },
    {
        ["offsetX"]=1920,
        ["textureHeight"] = 1924,
        ["textureWidth"] = 1586,
        ["offsetY"] = 448,
        ["fileDataIDs"] = { 3802674,3802685,3802696,3802707,3802718,3802726,3802727,3802728,3802729,3802675,3802676,3802677,3802678,3802679,3802680,3802681,3802682,3802683,3802684,3802686,3802687,3802688,3802689,3802690,3802691,3802692,3802693,3802694,3802695,3802697,3802698,3802699,3802700,3802701,3802702,3802703,3802704,3802705,3802706,3802708,3802709,3802710,3802711,3802712,3802713,3802714,3802715,3802716,3802717,3802719,3802720,3802721,3802722,3802723,3802724,3802725 } 
    }
},
[1510] = {
    {
        ["offsetX"]=1247,
        ["textureHeight"] = 978,
        ["textureWidth"] = 1480,
        ["offsetY"] = 1460,
        ["fileDataIDs"] = { 3804855,3804866,3804872,3804873,3804874,3804875,3804876,3804877,3804878,3804856,3804857,3804858,3804859,3804860,3804861,3804862,3804863,3804864,3804865,3804867,3804868,3804869,3804870,3804871 } 
    },
    {
        ["offsetX"]=1104,
        ["textureHeight"] = 1327,
        ["textureWidth"] = 1664,
        ["offsetY"] = 231,
        ["fileDataIDs"] = { 3804879,3804890,3804901,3804912,3804916,3804917,3804918,3804919,3804920,3804880,3804881,3804882,3804883,3804884,3804885,3804886,3804887,3804888,3804889,3804891,3804892,3804893,3804894,3804895,3804896,3804897,3804898,3804899,3804900,3804902,3804903,3804904,3804905,3804906,3804907,3804908,3804909,3804910,3804911,3804913,3804914,3804915 } 
    }
},
[1512] = {
    {
        ["offsetX"]=1521,
        ["textureHeight"] = 1489,
        ["textureWidth"] = 623,
        ["offsetY"] = 906,
        ["fileDataIDs"] = { 3805265,3805275,3805276,3805277,3805278,3805279,3805280,3805281,3805282,3805266,3805267,3805268,3805269,3805270,3805271,3805272,3805273,3805274 } 
    },
    {
        ["offsetX"]=1998,
        ["textureHeight"] = 1026,
        ["textureWidth"] = 1297,
        ["offsetY"] = 1191,
        ["fileDataIDs"] = { 3805283,3805294,3805305,3805307,3805308,3805309,3805310,3805311,3805312,3805284,3805285,3805286,3805287,3805288,3805289,3805290,3805291,3805292,3805293,3805295,3805296,3805297,3805298,3805299,3805300,3805301,3805302,3805303,3805304,3805306 } 
    },
    {
        ["offsetX"]=251,
        ["textureHeight"] = 1037,
        ["textureWidth"] = 1415,
        ["offsetY"] = 1197,
        ["fileDataIDs"] = { 3805235,3805246,3805257,3805259,3805260,3805261,3805262,3805263,3805264,3805236,3805237,3805238,3805239,3805240,3805241,3805242,3805243,3805244,3805245,3805247,3805248,3805249,3805250,3805251,3805252,3805253,3805254,3805255,3805256,3805258 } 
    },
    {
        ["offsetX"]=750,
        ["textureHeight"] = 1432,
        ["textureWidth"] = 2454,
        ["offsetY"] = 12,
        ["fileDataIDs"] = { 3805313,3805324,3805335,3805346,3805357,3805368,3805370,3805371,3805372,3805314,3805315,3805316,3805317,3805318,3805319,3805320,3805321,3805322,3805323,3805325,3805326,3805327,3805328,3805329,3805330,3805331,3805332,3805333,3805334,3805336,3805337,3805338,3805339,3805340,3805341,3805342,3805343,3805344,3805345,3805347,3805348,3805349,3805350,3805351,3805352,3805353,3805354,3805355,3805356,3805358,3805359,3805360,3805361,3805362,3805363,3805364,3805365,3805366,3805367,3805369 } 
    }
},
[1513] = {
    {
        ["offsetX"]=1547,
        ["textureHeight"] = -3142,
        ["textureWidth"] = 754,
        ["offsetY"] = 231,
        ["fileDataIDs"] = { 3805692,3805703,3805712,3805713,3805714,3805715,3805716,3805717,3805718,3805693,3805694,3805695,3805696,3805697,3805698,3805699,3805700,3805701,3805702,3805704,3805705,3805706,3805707,3805708,3805709,3805710,3805711,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 } 
    },
    {
        ["offsetX"]=959,
        ["textureHeight"] = 1894,
        ["textureWidth"] = 765,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 3805668,3805679,3805685,3805686,3805687,3805688,3805689,3805690,3805691,3805669,3805670,3805671,3805672,3805673,3805674,3805675,3805676,3805677,3805678,3805680,3805681,3805682,3805683,3805684 } 
    },
    {
        ["offsetX"]=2142,
        ["textureHeight"] = 1887,
        ["textureWidth"] = 786,
        ["offsetY"] = 396,
        ["fileDataIDs"] = { 3805719,3805730,3805742,3805747,3805748,3805749,3805750,3805751,3805752,3805720,3805721,3805722,3805723,3805724,3805725,3805726,3805727,3805728,3805729,3805731,3805732,3805733,3805734,3805735,3805737,3805738,3805739,3805740,3805741,3805743,3805745,3805746 } 
    }
},
[1514] = {
    {
        ["offsetX"]=1579,
        ["textureHeight"] = 1420,
        ["textureWidth"] = 727,
        ["offsetY"] = 396,
        ["fileDataIDs"] = { 3806132,3806142,3806143,3806144,3806145,3806146,3806147,3806148,3806149,3806133,3806134,3806135,3806136,3806137,3806138,3806139,3806140,3806141 } 
    },
    {
        ["offsetX"]=602,
        ["textureHeight"] = 465,
        ["textureWidth"] = 1156,
        ["offsetY"] = 1062,
        ["fileDataIDs"] = { 3806122,3806124,3806125,3806126,3806127,3806128,3806129,3806130,3806131,3806123 } 
    },
    {
        ["offsetX"]=489,
        ["textureHeight"] = 708,
        ["textureWidth"] = 1225,
        ["offsetY"] = 510,
        ["fileDataIDs"] = { 3806107,3806114,3806115,3806116,3806117,3806118,3806119,3806120,3806121,3806108,3806109,3806110,3806111,3806112,3806113 } 
    },
    {
        ["offsetX"]=2156,
        ["textureHeight"] = 509,
        ["textureWidth"] = 1259,
        ["offsetY"] = 653,
        ["fileDataIDs"] = { 3806150,3806152,3806153,3806154,3806155,3806156,3806157,3806158,3806159,3806151 } 
    },
    {
        ["offsetX"]=2151,
        ["textureHeight"] = 941,
        ["textureWidth"] = 1266,
        ["offsetY"] = 1041,
        ["fileDataIDs"] = { 3806160,3806171,3806173,3806174,3806175,3806176,3806177,3806178,3806179,3806161,3806162,3806163,3806164,3806165,3806166,3806167,3806168,3806169,3806170,3806172 } 
    }
},
[1515] = {
    {
        ["offsetX"]=724,
        ["textureHeight"] = 1285,
        ["textureWidth"] = 994,
        ["offsetY"] = 555,
        ["fileDataIDs"] = { 3811363,3811374,3811380,3811381,3811382,3811383,3811384,3811385,3811386,3811364,3811365,3811366,3811367,3811368,3811369,3811370,3811371,3811372,3811373,3811375,3811376,3811377,3811378,3811379 } 
    },
    {
        ["offsetX"]=1160,
        ["textureHeight"] = 1420,
        ["textureWidth"] = 1350,
        ["offsetY"] = 120,
        ["fileDataIDs"] = { 3811387,3811398,3811409,3811417,3811418,3811419,3811420,3811421,3811422,3811388,3811389,3811390,3811391,3811392,3811393,3811394,3811395,3811396,3811397,3811399,3811400,3811401,3811402,3811403,3811404,3811405,3811406,3811407,3811408,3811410,3811411,3811412,3811413,3811414,3811415,3811416 } 
    },
    {
        ["offsetX"]=1849,
        ["textureHeight"] = 1602,
        ["textureWidth"] = 1381,
        ["offsetY"] = 696,
        ["fileDataIDs"] = { 3811423,3811434,3811445,3811456,3811460,3811461,3811462,3811463,3811464,3811424,3811425,3811426,3811427,3811428,3811429,3811430,3811431,3811432,3811433,3811435,3811436,3811437,3811438,3811439,3811440,3811441,3811442,3811443,3811444,3811446,3811447,3811448,3811449,3811450,3811451,3811452,3811453,3811454,3811455,3811457,3811458,3811459 } 
    }
},
[1517] = {
    {
        ["offsetX"]=1775,
        ["textureHeight"] = 2391,
        ["textureWidth"] = 618,
        ["offsetY"] = 87,
        ["fileDataIDs"] = { 3806916,3806927,3806945,3806947,3806948,3806949,3806950,3806951,3806952,3806917,3806918,3806919,3806920,3806921,3806922,3806923,3806924,3806925,3806926,3806928,3806929,3806930,3806931,3806932,3806933,3806934,3806935,3806936,3806937,3806946 } 
    },
    {
        ["offsetX"]=2246,
        ["textureHeight"] = 1036,
        ["textureWidth"] = 949,
        ["offsetY"] = 872,
        ["fileDataIDs"] = { 3806953,3806964,3806966,3806967,3806968,3806969,3806970,3806971,3806972,3806954,3806955,3806956,3806957,3806958,3806959,3806960,3806961,3806962,3806963,3806965 } 
    },
    {
        ["offsetX"]=537,
        ["textureHeight"] = 1415,
        ["textureWidth"] = 1353,
        ["offsetY"] = 717,
        ["fileDataIDs"] = { 3806880,3806891,3806902,3806910,3806911,3806912,3806913,3806914,3806915,3806881,3806882,3806883,3806884,3806885,3806886,3806887,3806888,3806889,3806890,3806892,3806893,3806894,3806895,3806896,3806897,3806898,3806899,3806900,3806901,3806903,3806904,3806905,3806906,3806907,3806908,3806909 } 
    }
},
[1519] = {
    {
        ["offsetX"]=1589,
        ["textureHeight"] = 1052,
        ["textureWidth"] = 559,
        ["offsetY"] = 1508,
        ["fileDataIDs"] = { 3808775,3808782,3808783,3808784,3808785,3808786,3808787,3808788,3808789,3808776,3808777,3808778,3808779,3808780,3808781 } 
    },
    {
        ["offsetX"]=1574,
        ["textureHeight"] = 539,
        ["textureWidth"] = 571,
        ["offsetY"] = 1080,
        ["fileDataIDs"] = { 3808766,3808767,3808768,3808769,3808770,3808771,3808772,3808773,3808774 } 
    },
    {
        ["offsetX"]=1515,
        ["textureHeight"] = 1186,
        ["textureWidth"] = 673,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3808751,3808758,3808759,3808760,3808761,3808762,3808763,3808764,3808765,3808752,3808753,3808754,3808755,3808756,3808757 } 
    },
    {
        ["offsetX"]=2005,
        ["textureHeight"] = 507,
        ["textureWidth"] = 954,
        ["offsetY"] = 1105,
        ["fileDataIDs"] = { 3808820,3808821,3808822,3808823,3808824,3808825,3808826,3808827 } 
    },
    {
        ["offsetX"]=741,
        ["textureHeight"] = 475,
        ["textureWidth"] = 970,
        ["offsetY"] = 1119,
        ["fileDataIDs"] = { 3808713,3808714,3808715,3808716,3808717,3808718,3808719,3808720 } 
    },
    {
        ["offsetX"]=292,
        ["textureHeight"] = 1297,
        ["textureWidth"] = 1388,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 3808677,3808688,3808699,3808707,3808708,3808709,3808710,3808711,3808712,3808678,3808679,3808680,3808681,3808682,3808683,3808684,3808685,3808686,3808687,3808689,3808690,3808691,3808692,3808693,3808694,3808695,3808696,3808697,3808698,3808700,3808701,3808702,3808703,3808704,3808705,3808706 } 
    },
    {
        ["offsetX"]=288,
        ["textureHeight"] = 1211,
        ["textureWidth"] = 1408,
        ["offsetY"] = 1305,
        ["fileDataIDs"] = { 3808721,3808732,3808743,3808745,3808746,3808747,3808748,3808749,3808750,3808722,3808723,3808724,3808725,3808726,3808727,3808728,3808729,3808730,3808731,3808733,3808734,3808735,3808736,3808737,3808738,3808739,3808740,3808741,3808742,3808744 } 
    },
    {
        ["offsetX"]=2032,
        ["textureHeight"] = 1229,
        ["textureWidth"] = 1417,
        ["offsetY"] = 1306,
        ["fileDataIDs"] = { 3808790,3808801,3808812,3808814,3808815,3808816,3808817,3808818,3808819,3808791,3808792,3808793,3808794,3808795,3808796,3808797,3808798,3808799,3808800,3808802,3808803,3808804,3808805,3808806,3808807,3808808,3808809,3808810,3808811,3808813 } 
    },
    {
        ["offsetX"]=2024,
        ["textureHeight"] = 1315,
        ["textureWidth"] = 1432,
        ["offsetY"] = 85,
        ["fileDataIDs"] = { 3808828,3808839,3808850,3808858,3808859,3808860,3808861,3808862,3808863,3808829,3808830,3808831,3808832,3808833,3808834,3808835,3808836,3808837,3808838,3808840,3808841,3808842,3808843,3808844,3808845,3808846,3808847,3808848,3808849,3808851,3808852,3808853,3808854,3808855,3808856,3808857 } 
    }
},
[1525] = {
    {
        ["offsetX"]=2339,
        ["textureHeight"] = 1007,
        ["textureWidth"] = 571,
        ["offsetY"] = 1553,
        ["fileDataIDs"] = { 3816626,3816630,3816631,3816632,3816633,3816634,3816635,3816636,3816637,3816627,3816628,3816629 } 
    },
    {
        ["offsetX"]=1660,
        ["textureHeight"] = 1232,
        ["textureWidth"] = 830,
        ["offsetY"] = 728,
        ["fileDataIDs"] = { 3816589,3816600,3816602,3816603,3816604,3816605,3816606,3816607,3816609,3816590,3816591,3816592,3816593,3816594,3816595,3816596,3816597,3816598,3816599,3816601 } 
    },
    {
        ["offsetX"]=2008,
        ["textureHeight"] = 972,
        ["textureWidth"] = 889,
        ["offsetY"] = 697,
        ["fileDataIDs"] = { 3816610,3816618,3816619,3816620,3816621,3816622,3816623,3816624,3816625,3816611,3816612,3816613,3816614,3816615,3816616,3816617 } 
    },
    {
        ["offsetX"]=788,
        ["textureHeight"] = 1315,
        ["textureWidth"] = 988,
        ["offsetY"] = 648,
        ["fileDataIDs"] = { 3816541,3816552,3816558,3816559,3816560,3816561,3816562,3816563,3816564,3816542,3816543,3816544,3816545,3816546,3816547,3816548,3816549,3816550,3816551,3816553,3816554,3816555,3816556,3816557 } 
    },
    {
        ["offsetX"]=2050,
        ["textureHeight"] = 629,
        ["textureWidth"] = 1058,
        ["offsetY"] = 189,
        ["fileDataIDs"] = { 3816506,3816513,3816514,3816515,3816516,3816517,3816518,3816519,3816520,3816507,3816508,3816509,3816510,3816511,3816512 } 
    },
    {
        ["offsetX"]=1039,
        ["textureHeight"] = 804,
        ["textureWidth"] = 1134,
        ["offsetY"] = 30,
        ["fileDataIDs"] = { 3816521,3816532,3816534,3816535,3816536,3816537,3816538,3816539,3816540,3816522,3816523,3816524,3816525,3816526,3816527,3816528,3816529,3816530,3816531,3816533 } 
    },
    {
        ["offsetX"]=1004,
        ["textureHeight"] = 869,
        ["textureWidth"] = 1456,
        ["offsetY"] = 1691,
        ["fileDataIDs"] = { 3816565,3816576,3816582,3816583,3816584,3816585,3816586,3816587,3816588,3816566,3816567,3816568,3816569,3816570,3816571,3816572,3816573,3816574,3816575,3816577,3816578,3816579,3816580,3816581 } 
    }
},
[1526] = {
    {
        ["offsetX"]=834,
        ["textureHeight"] = 1023,
        ["textureWidth"] = 508,
        ["offsetY"] = 38,
        ["fileDataIDs"] = { 3816788,3816789,3816790,3816791,3816792,3816793,3816794,3816795 } 
    },
    {
        ["offsetX"]=2053,
        ["textureHeight"] = 1233,
        ["textureWidth"] = 589,
        ["offsetY"] = 6,
        ["fileDataIDs"] = { 3816808,3816815,3816816,3816817,3816818,3816819,3816820,3816821,3816822,3816809,3816810,3816811,3816812,3816813,3816814 } 
    },
    {
        ["offsetX"]=1215,
        ["textureHeight"] = 536,
        ["textureWidth"] = 957,
        ["offsetY"] = 16,
        ["fileDataIDs"] = { 3816796,3816800,3816801,3816802,3816803,3816804,3816805,3816806,3816807,3816797,3816798,3816799 } 
    },
    {
        ["offsetX"]=1869,
        ["textureHeight"] = 970,
        ["textureWidth"] = 983,
        ["offsetY"] = 1134,
        ["fileDataIDs"] = { 3816853,3816861,3816862,3816863,3816864,3816865,3816866,3816867,3816868,3816854,3816855,3816856,3816857,3816858,3816859,3816860 } 
    },
    {
        ["offsetX"]=815,
        ["textureHeight"] = 780,
        ["textureWidth"] = 1173,
        ["offsetY"] = 1389,
        ["fileDataIDs"] = { 3816869,3816880,3816882,3816883,3816884,3816885,3816886,3816887,3816888,3816870,3816871,3816872,3816873,3816874,3816875,3816876,3816877,3816878,3816879,3816881 } 
    },
    {
        ["offsetX"]=832,
        ["textureHeight"] = 1087,
        ["textureWidth"] = 1369,
        ["offsetY"] = 428,
        ["fileDataIDs"] = { 3816823,3816834,3816845,3816847,3816848,3816849,3816850,3816851,3816852,3816824,3816825,3816826,3816827,3816828,3816829,3816830,3816831,3816832,3816833,3816835,3816836,3816837,3816838,3816839,3816840,3816841,3816842,3816843,3816844,3816846 } 
    },
    {
        ["offsetX"]=798,
        ["textureHeight"] = 555,
        ["textureWidth"] = 1795,
        ["offsetY"] = 1995,
        ["fileDataIDs"] = { 3816889,3816900,3816906,3816907,3816908,3816909,3816910,3816911,3816912,3816890,3816891,3816892,3816893,3816894,3816895,3816896,3816897,3816898,3816899,3816901,3816902,3816903,3816904,3816905 } 
    }
},
[1528] = {
    {
        ["offsetX"]=1913,
        ["textureHeight"] = 1283,
        ["textureWidth"] = 444,
        ["offsetY"] = 873,
        ["fileDataIDs"] = { 3817262,3817266,3817267,3817268,3817269,3817270,3817271,3817272,3817273,3817263,3817264,3817265 } 
    },
    {
        ["offsetX"]=1766,
        ["textureHeight"] = 779,
        ["textureWidth"] = 696,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3817216,3817220,3817221,3817222,3817223,3817224,3817225,3817226,3817227,3817217,3817218,3817219 } 
    },
    {
        ["offsetX"]=1275,
        ["textureHeight"] = 686,
        ["textureWidth"] = 742,
        ["offsetY"] = 1523,
        ["fileDataIDs"] = { 3817330,3817331,3817332,3817333,3817334,3817335,3817336,3817337,3817338 } 
    },
    {
        ["offsetX"]=2499,
        ["textureHeight"] = 747,
        ["textureWidth"] = 746,
        ["offsetY"] = 1054,
        ["fileDataIDs"] = { 3817253,3817254,3817255,3817256,3817257,3817258,3817259,3817260,3817261 } 
    },
    {
        ["offsetX"]=553,
        ["textureHeight"] = 553,
        ["textureWidth"] = 840,
        ["offsetY"] = 1330,
        ["fileDataIDs"] = { 3817302,3817306,3817307,3817308,3817309,3817310,3817311,3817312,3817313,3817303,3817304,3817305 } 
    },
    {
        ["offsetX"]=1284,
        ["textureHeight"] = 770,
        ["textureWidth"] = 863,
        ["offsetY"] = 902,
        ["fileDataIDs"] = { 3817274,3817282,3817283,3817284,3817285,3817286,3817287,3817288,3817289,3817275,3817276,3817277,3817278,3817279,3817280,3817281 } 
    },
    {
        ["offsetX"]=656,
        ["textureHeight"] = 734,
        ["textureWidth"] = 976,
        ["offsetY"] = 695,
        ["fileDataIDs"] = { 3817290,3817294,3817295,3817296,3817297,3817298,3817299,3817300,3817301,3817291,3817292,3817293 } 
    },
    {
        ["offsetX"]=1728,
        ["textureHeight"] = 1040,
        ["textureWidth"] = 1005,
        ["offsetY"] = 1510,
        ["fileDataIDs"] = { 3817339,3817350,3817352,3817353,3817354,3817355,3817357,3817358,3817359,3817340,3817341,3817342,3817343,3817344,3817345,3817346,3817347,3817348,3817349,3817351 } 
    },
    {
        ["offsetX"]=814,
        ["textureHeight"] = 785,
        ["textureWidth"] = 1016,
        ["offsetY"] = 1775,
        ["fileDataIDs"] = { 3817314,3817322,3817323,3817324,3817325,3817326,3817327,3817328,0,3817315,3817316,3817317,3817318,3817319,3817320,3817321 } 
    },
    {
        ["offsetX"]=1936,
        ["textureHeight"] = 1228,
        ["textureWidth"] = 1158,
        ["offsetY"] = 397,
        ["fileDataIDs"] = { 3817228,3817239,3817246,3817247,3817248,3817249,3817250,3817251,3817252,3817229,3817230,3817231,3817232,3817233,3817234,3817235,3817236,3817237,3817238,3817240,3817241,3817242,3817243,3817244,3817245 } 
    }
},
[1530] = {
    {
        ["offsetX"]=237,
        ["textureHeight"] = 1116,
        ["textureWidth"] = 848,
        ["offsetY"] = 1426,
        ["fileDataIDs"] = { 3817636,3817647,3817649,3817650,3817651,3817652,3817653,3817654,3817655,3817637,3817638,3817639,3817640,3817641,3817642,3817643,3817644,3817645,3817646,3817648 } 
    },
    {
        ["offsetX"]=1631,
        ["textureHeight"] = 1721,
        ["textureWidth"] = 959,
        ["offsetY"] = 40,
        ["fileDataIDs"] = { 3817538,3817549,3817559,3817560,3817561,3817562,3817563,3817564,3817565,3817539,3817540,3817541,3817542,3817543,3817544,3817545,3817546,3817547,3817548,3817550,3817551,3817552,3817553,3817554,3817555,3817556,3817557,3817558 } 
    },
    {
        ["offsetX"]=890,
        ["textureHeight"] = 870,
        ["textureWidth"] = 1050,
        ["offsetY"] = 47,
        ["fileDataIDs"] = { 3817566,3817577,3817579,3817580,3817581,3817582,3817583,3817584,3817585,3817567,3817568,3817569,3817570,3817571,3817572,3817573,3817574,3817575,3817576,3817578 } 
    },
    {
        ["offsetX"]=2444,
        ["textureHeight"] = 1084,
        ["textureWidth"] = 1084,
        ["offsetY"] = 436,
        ["fileDataIDs"] = { 3817510,3817521,3817529,3817530,3817531,3817533,3817535,3817536,3817537,3817511,3817512,3817513,3817514,3817515,3817516,3817517,3817518,3817519,3817520,3817522,3817524,3817525,3817526,3817527,3817528 } 
    },
    {
        ["offsetX"]=963,
        ["textureHeight"] = 810,
        ["textureWidth"] = 1165,
        ["offsetY"] = 1719,
        ["fileDataIDs"] = { 3817616,3817627,3817629,3817630,3817631,3817632,3817633,3817634,3817635,3817617,3817618,3817619,3817620,3817621,3817622,3817623,3817624,3817625,3817626,3817628 } 
    },
    {
        ["offsetX"]=653,
        ["textureHeight"] = 1179,
        ["textureWidth"] = 1447,
        ["offsetY"] = 680,
        ["fileDataIDs"] = { 3817586,3817597,3817608,3817610,3817611,3817612,3817613,3817614,3817615,3817587,3817588,3817589,3817590,3817591,3817592,3817593,3817594,3817595,3817596,3817598,3817599,3817600,3817601,3817602,3817603,3817604,3817605,3817606,3817607,3817609 } 
    }
},
[1532] = {
    {
        ["offsetX"]=1484,
        ["textureHeight"] = 1123,
        ["textureWidth"] = 839,
        ["offsetY"] = 1437,
        ["fileDataIDs"] = { 3819479,3819490,3819492,3819493,3819494,3819495,3819496,3819497,3819498,3819480,3819481,3819482,3819483,3819484,3819485,3819486,3819487,3819488,3819489,3819491 } 
    },
    {
        ["offsetX"]=1943,
        ["textureHeight"] = 668,
        ["textureWidth"] = 861,
        ["offsetY"] = 914,
        ["fileDataIDs"] = { 3819457,3819461,3819462,3819463,3819464,3819465,3819466,3819467,3819468,3819458,3819459,3819460 } 
    },
    {
        ["offsetX"]=1250,
        ["textureHeight"] = 400,
        ["textureWidth"] = 951,
        ["offsetY"] = 800,
        ["fileDataIDs"] = { 3819449,3819450,3819451,3819452,3819453,3819454,3819455,3819456 } 
    },
    {
        ["offsetX"]=1238,
        ["textureHeight"] = 440,
        ["textureWidth"] = 1048,
        ["offsetY"] = 1099,
        ["fileDataIDs"] = { 3819469,3819471,3819472,3819473,3819474,3819475,3819476,3819477,3819478,3819470 } 
    },
    {
        ["offsetX"]=1605,
        ["textureHeight"] = 960,
        ["textureWidth"] = 1131,
        ["offsetY"] = 57,
        ["fileDataIDs"] = { 3819426,3819440,3819442,3819443,3819444,3819445,3819446,3819447,3819448,3819427,3819428,3819429,3819430,3819431,3819434,3819436,3819437,3819438,3819439,3819441 } 
    }
},
[1533] = {
    {
        ["offsetX"]=1748,
        ["textureHeight"] = 1404,
        ["textureWidth"] = 565,
        ["offsetY"] = 591,
        ["fileDataIDs"] = { 3817806,3817816,3817817,3817818,3817819,3817820,3817821,3817822,3817823,3817807,3817808,3817809,3817810,3817811,3817812,3817813,3817814,3817815 } 
    },
    {
        ["offsetX"]=1198,
        ["textureHeight"] = 1389,
        ["textureWidth"] = 677,
        ["offsetY"] = 595,
        ["fileDataIDs"] = { 3817824,3817834,3817835,3817836,3817837,3817838,3817839,3817840,3817841,3817825,3817826,3817827,3817828,3817829,3817830,3817831,3817832,3817833 } 
    },
    {
        ["offsetX"]=1817,
        ["textureHeight"] = 1469,
        ["textureWidth"] = 792,
        ["offsetY"] = 173,
        ["fileDataIDs"] = { 3817862,3817873,3817879,3817880,3817881,3817882,3817883,3817884,3817885,3817863,3817864,3817865,3817866,3817867,3817868,3817869,3817870,3817871,3817872,3817874,3817875,3817876,3817877,3817878 } 
    },
    {
        ["offsetX"]=1336,
        ["textureHeight"] = 1035,
        ["textureWidth"] = 802,
        ["offsetY"] = 1500,
        ["fileDataIDs"] = { 3817842,3817853,3817855,3817856,3817857,3817858,3817859,3817860,3817861,3817843,3817844,3817845,3817846,3817847,3817848,3817849,3817850,3817851,3817852,3817854 } 
    }
},
[1535] = {
    {
        ["offsetX"]=1306,
        ["textureHeight"] = 902,
        ["textureWidth"] = 519,
        ["offsetY"] = 384,
        ["fileDataIDs"] = { 3818446,3818450,3818451,3818452,3818453,3818454,3818455,3818456,3818457,3818447,3818448,3818449 } 
    },
    {
        ["offsetX"]=786,
        ["textureHeight"] = 1013,
        ["textureWidth"] = 688,
        ["offsetY"] = 529,
        ["fileDataIDs"] = { 3818434,3818438,3818439,3818440,3818441,3818442,3818443,3818444,3818445,3818435,3818436,3818437 } 
    },
    {
        ["offsetX"]=1710,
        ["textureHeight"] = 1344,
        ["textureWidth"] = 835,
        ["offsetY"] = 388,
        ["fileDataIDs"] = { 3818410,3818421,3818427,3818428,3818429,3818430,3818431,3818432,3818433,3818411,3818412,3818413,3818414,3818415,3818416,3818417,3818418,3818419,3818420,3818422,3818423,3818424,3818425,3818426 } 
    },
    {
        ["offsetX"]=858,
        ["textureHeight"] = 654,
        ["textureWidth"] = 931,
        ["offsetY"] = 1427,
        ["fileDataIDs"] = { 3818478,3818482,3818483,3818484,3818485,3818486,3818487,3818488,3818489,3818479,3818480,3818481 } 
    },
    {
        ["offsetX"]=1955,
        ["textureHeight"] = 1527,
        ["textureWidth"] = 999,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 3818386,3818397,3818403,3818404,3818405,3818406,3818407,3818408,3818409,3818387,3818388,3818389,3818390,3818391,3818392,3818393,3818394,3818395,3818396,3818398,3818399,3818400,3818401,3818402 } 
    },
    {
        ["offsetX"]=1161,
        ["textureHeight"] = 879,
        ["textureWidth"] = 1114,
        ["offsetY"] = 1076,
        ["fileDataIDs"] = { 3818458,3818469,3818471,3818472,3818473,3818474,3818475,3818476,3818477,3818459,3818460,3818461,3818462,3818463,3818464,3818465,3818466,3818467,3818468,3818470 } 
    },
    {
        ["offsetX"]=833,
        ["textureHeight"] = 756,
        ["textureWidth"] = 1290,
        ["offsetY"] = 1754,
        ["fileDataIDs"] = { 3818490,3818500,3818501,3818502,3818503,3818504,3818505,3818506,3818507,3818491,3818492,3818493,3818494,3818495,3818496,3818497,3818498,3818499 } 
    }
},
[1539] = {
    {
        ["offsetX"]=2373,
        ["textureHeight"] = 949,
        ["textureWidth"] = 651,
        ["offsetY"] = 1518,
        ["fileDataIDs"] = { 3815363,3815367,3815368,3815369,3815370,3815371,3815372,3815373,3815374,3815364,3815365,3815366 } 
    },
    {
        ["offsetX"]=1413,
        ["textureHeight"] = 729,
        ["textureWidth"] = 792,
        ["offsetY"] = 1021,
        ["fileDataIDs"] = { 3815327,3815331,3815332,3815333,3815334,3815335,3815336,3815337,3815338,3815328,3815329,3815330 } 
    },
    {
        ["offsetX"]=1483,
        ["textureHeight"] = 1017,
        ["textureWidth"] = 1520,
        ["offsetY"] = 1230,
        ["fileDataIDs"] = { 3815339,3815350,3815356,3815357,3815358,3815359,3815360,3815361,3815362,3815340,3815341,3815342,3815343,3815344,3815345,3815346,3815347,3815348,3815349,3815351,3815352,3815353,3815354,3815355 } 
    },
    {
        ["offsetX"]=600,
        ["textureHeight"] = 1356,
        ["textureWidth"] = 2447,
        ["offsetY"] = 85,
        ["fileDataIDs"] = { 3815255,3815270,3815281,3815296,3815307,3815322,3815324,3815325,3815326,3815256,3815261,3815262,3815263,3815264,3815265,3815266,3815267,3815268,3815269,3815271,3815272,3815273,3815274,3815275,3815276,3815277,3815278,3815279,3815280,3815282,3815283,3815284,3815285,3815286,3815287,3815292,3815293,3815294,3815295,3815297,3815298,3815299,3815300,3815301,3815302,3815303,3815304,3815305,3815306,3815308,3815309,3815310,3815311,3815312,3815313,3815314,3815315,3815320,3815321,3815323 } 
    }
},
[1540] = {
    {
        ["offsetX"]=1474,
        ["textureHeight"] = 808,
        ["textureWidth"] = 823,
        ["offsetY"] = 1747,
        ["fileDataIDs"] = { 3815578,3815586,3815587,3815588,3815589,3815590,3815591,3815592,3815593,3815579,3815580,3815581,3815582,3815583,3815584,3815585 } 
    },
    {
        ["offsetX"]=1140,
        ["textureHeight"] = 725,
        ["textureWidth"] = 1038,
        ["offsetY"] = 184,
        ["fileDataIDs"] = { 3815529,3815536,3815537,3815538,3815539,3815540,3815541,3815542,3815543,3815530,3815531,3815532,3815533,3815534,3815535 } 
    },
    {
        ["offsetX"]=1143,
        ["textureHeight"] = 710,
        ["textureWidth"] = 1134,
        ["offsetY"] = 1198,
        ["fileDataIDs"] = { 3815559,3815566,3815567,3815568,3815569,3815570,3815571,3815572,3815577,3815560,3815561,3815562,3815563,3815564,3815565 } 
    },
    {
        ["offsetX"]=1120,
        ["textureHeight"] = 615,
        ["textureWidth"] = 1135,
        ["offsetY"] = 749,
        ["fileDataIDs"] = { 3815544,3815551,3815552,3815553,3815554,3815555,3815556,3815557,3815558,3815545,3815546,3815547,3815548,3815549,3815550 } 
    }
},
[1549] = {
    {
        ["offsetX"]=756,
        ["textureHeight"] = 1464,
        ["textureWidth"] = 1079,
        ["offsetY"] = 212,
        ["fileDataIDs"] = { 3821078,3821089,3821100,3821102,3821103,3821104,3821105,3821106,3821107,3821079,3821080,3821081,3821082,3821083,3821084,3821085,3821086,3821087,3821088,3821090,3821091,3821092,3821093,3821094,3821095,3821096,3821097,3821098,3821099,3821101 } 
    },
    {
        ["offsetX"]=1710,
        ["textureHeight"] = 978,
        ["textureWidth"] = 1094,
        ["offsetY"] = 1545,
        ["fileDataIDs"] = { 3821128,3821139,3821141,3821142,3821143,3821144,3821145,3821146,3821147,3821129,3821130,3821131,3821132,3821133,3821134,3821135,3821136,3821137,3821138,3821140 } 
    },
    {
        ["offsetX"]=727,
        ["textureHeight"] = 973,
        ["textureWidth"] = 1106,
        ["offsetY"] = 1534,
        ["fileDataIDs"] = { 3821108,3821119,3821121,3821122,3821123,3821124,3821125,3821126,3821127,3821109,3821110,3821111,3821112,3821113,3821114,3821115,3821116,3821117,3821118,3821120 } 
    },
    {
        ["offsetX"]=1715,
        ["textureHeight"] = 1434,
        ["textureWidth"] = 1401,
        ["offsetY"] = 208,
        ["fileDataIDs"] = { 3821148,3821159,3821170,3821178,3821179,3821180,3821181,3821182,3821183,3821149,3821150,3821151,3821152,3821153,3821154,3821155,3821156,3821157,3821158,3821160,3821161,3821162,3821163,3821164,3821165,3821166,3821167,3821168,3821169,3821171,3821172,3821173,3821174,3821175,3821176,3821177 } 
    }
},
[1550] = {
    {
        ["offsetX"]=1478,
        ["textureHeight"] = 2425,
        ["textureWidth"] = 725,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 3821404,3821415,3821426,3821428,3821429,3821430,3821431,3821432,3821433,3821405,3821406,3821407,3821408,3821409,3821410,3821411,3821412,3821413,3821414,3821416,3821417,3821418,3821419,3821420,3821421,3821422,3821423,3821424,3821425,3821427 } 
    },
    {
        ["offsetX"]=61,
        ["textureHeight"] = 2440,
        ["textureWidth"] = 1562,
        ["offsetY"] = 90,
        ["fileDataIDs"] = { 3821334,3821345,3821356,3821367,3821378,3821389,3821400,3821402,3821403,3821335,3821336,3821337,3821338,3821339,3821340,3821341,3821342,3821343,3821344,3821346,3821347,3821348,3821349,3821350,3821351,3821352,3821353,3821354,3821355,3821357,3821358,3821359,3821360,3821361,3821362,3821363,3821364,3821365,3821366,3821368,3821369,3821370,3821371,3821372,3821373,3821374,3821375,3821376,3821377,3821379,3821380,3821381,3821382,3821383,3821384,3821385,3821386,3821387,3821388,3821390,3821391,3821392,3821393,3821394,3821395,3821396,3821397,3821398,3821399,3821401 } 
    },
    {
        ["offsetX"]=2076,
        ["textureHeight"] = 2374,
        ["textureWidth"] = 1660,
        ["offsetY"] = 111,
        ["fileDataIDs"] = { 3821434,3821451,3821463,3821475,3821486,3821498,3821509,3821511,3821512,3821435,3821438,3821440,3821441,3821442,3821445,3821447,3821448,3821449,3821450,3821452,3821453,3821454,3821455,3821456,3821457,3821459,3821460,3821461,3821462,3821464,3821465,3821466,3821467,3821468,3821470,3821471,3821472,3821473,3821474,3821476,3821477,3821478,3821479,3821480,3821481,3821482,3821483,3821484,3821485,3821487,3821489,3821490,3821491,3821492,3821493,3821494,3821495,3821496,3821497,3821499,3821500,3821501,3821502,3821503,3821504,3821505,3821506,3821507,3821508,3821510 } 
    }
},
[1552] = {
    {
        ["offsetX"]=2055,
        ["textureHeight"] = 1052,
        ["textureWidth"] = 1117,
        ["offsetY"] = 1290,
        ["fileDataIDs"] = { 3822531,3822552,3822565,3822567,3822568,3822570,3822572,3822574,3822576,3822533,3822535,3822537,3822539,3822541,3822542,3822544,3822546,3822548,3822550,3822554,3822556,3822558,3822559,3822561,3822563 } 
    },
    {
        ["offsetX"]=892,
        ["textureHeight"] = 1210,
        ["textureWidth"] = 1290,
        ["offsetY"] = 1302,
        ["fileDataIDs"] = { 3822453,3822482,3822509,3822513,3822516,3822519,3822522,3822525,3822528,3822456,3822459,3822461,3822463,3822466,3822469,3822472,3822475,3822478,3822480,3822485,3822487,3822489,3822492,3822494,3822496,3822498,3822500,3822503,3822506,3822512 } 
    },
    {
        ["offsetX"]=415,
        ["textureHeight"] = 1281,
        ["textureWidth"] = 1592,
        ["offsetY"] = 134,
        ["fileDataIDs"] = { 3822348,3822374,3822402,3822431,3822441,3822443,3822445,3822448,3822451,3822350,3822352,3822354,3822357,3822359,3822362,3822363,3822366,3822369,3822371,3822377,3822379,3822382,3822385,3822387,3822390,3822392,3822395,3822397,3822399,3822404,3822407,3822409,3822412,3822415,3822418,3822421,3822424,3822426,3822428,3822434,3822437,3822440 } 
    },
    {
        ["offsetX"]=1912,
        ["textureHeight"] = 1114,
        ["textureWidth"] = 1811,
        ["offsetY"] = 287,
        ["fileDataIDs"] = { 3822578,3822598,3822618,3822638,3822642,3822643,3822645,3822647,3822649,3822579,3822581,3822583,3822585,3822587,3822589,3822591,3822592,3822594,3822596,3822600,3822602,3822603,3822605,3822607,3822609,3822611,3822613,3822614,3822616,3822620,3822622,3822623,3822625,3822627,3822629,3822631,3822633,3822634,3822636,3822640 } 
    }
},
[1554] = {
    {
        ["offsetX"]=744,
        ["textureHeight"] = 2043,
        ["textureWidth"] = 775,
        ["offsetY"] = 116,
        ["fileDataIDs"] = { 3823960,3823980,3823999,3824006,3824008,3824010,3824011,3824013,3824015,3823962,3823964,3823966,3823967,3823969,3823971,3823973,3823974,3823976,3823978,3823981,3823983,3823985,3823987,3823988,3823990,3823992,3823994,3823995,3823997,3824001,3824002,3824004 } 
    },
    {
        ["offsetX"]=1610,
        ["textureHeight"] = 1314,
        ["textureWidth"] = 906,
        ["offsetY"] = 453,
        ["fileDataIDs"] = { 3824096,3824116,3824127,3824128,3824130,3824132,3824134,3824135,3824137,3824098,3824100,3824102,3824103,3824105,3824107,3824109,3824110,3824112,3824114,3824118,3824119,3824121,3824123,3824125 } 
    },
    {
        ["offsetX"]=1266,
        ["textureHeight"] = 1180,
        ["textureWidth"] = 977,
        ["offsetY"] = 1179,
        ["fileDataIDs"] = { 3824017,3824036,3824040,3824042,3824043,3824045,3824047,3824049,3824050,3824018,3824020,3824022,3824024,3824025,3824027,3824029,3824031,3824033,3824034,3824038 } 
    },
    {
        ["offsetX"]=2122,
        ["textureHeight"] = 1166,
        ["textureWidth"] = 1060,
        ["offsetY"] = 1027,
        ["fileDataIDs"] = { 3824052,3824072,3824084,3824086,3824088,3824089,3824091,3824093,3824095,3824054,3824056,3824058,3824059,3824061,3824063,3824065,3824066,3824068,3824070,3824074,3824075,3824077,3824079,3824081,3824082 } 
    },
    {
        ["offsetX"]=2059,
        ["textureHeight"] = 1131,
        ["textureWidth"] = 1166,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3824139,3824159,3824171,3824173,3824174,3824176,3824178,3824180,3824181,3824141,3824143,3824144,3824146,3824148,3824150,3824152,3824153,3824155,3824157,3824160,3824162,3824164,3824166,3824168,3824169 } 
    }
},
[1555] = {
    {
        ["offsetX"]=724,
        ["textureHeight"] = 1285,
        ["textureWidth"] = 994,
        ["offsetY"] = 555,
        ["fileDataIDs"] = { 3824707,3824727,3824737,3824739,3824741,3824743,3824745,3824746,3824748,3824709,3824710,3824712,3824714,3824716,3824718,3824720,3824721,3824723,3824725,3824729,3824730,3824732,3824734,3824736 } 
    },
    {
        ["offsetX"]=1160,
        ["textureHeight"] = 1420,
        ["textureWidth"] = 1350,
        ["offsetY"] = 120,
        ["fileDataIDs"] = { 3824750,3824770,3824790,3824804,3824806,3824808,3824809,3824811,3824813,3824752,3824754,3824756,3824757,3824759,3824761,3824763,3824764,3824766,3824768,3824772,3824774,3824776,3824777,3824779,3824781,3824783,3824785,3824786,3824788,3824792,3824794,3824795,3824797,3824799,3824801,3824802 } 
    },
    {
        ["offsetX"]=1849,
        ["textureHeight"] = 1602,
        ["textureWidth"] = 1381,
        ["offsetY"] = 696,
        ["fileDataIDs"] = { 3824815,3824834,3824854,3824873,3824880,3824882,3824884,3824885,3824887,3824816,3824818,3824820,3824822,3824824,3824825,3824827,3824829,3824831,3824832,3824836,3824838,3824840,3824841,3824843,3824845,3824847,3824848,3824850,3824852,3824855,3824857,3824859,3824861,3824862,3824864,3824866,3824868,3824869,3824871,3824875,3824877,3824878 } 
    }
},
[1556] = {
    {
        ["offsetX"]=1745,
        ["textureHeight"] = 919,
        ["textureWidth"] = 1108,
        ["offsetY"] = 1408,
        ["fileDataIDs"] = { 3825207,3825227,3825230,3825232,3825234,3825236,3825237,3825239,3825241,3825209,3825210,3825212,3825214,3825216,3825218,3825220,3825221,3825223,3825225,3825228 } 
    },
    {
        ["offsetX"]=719,
        ["textureHeight"] = 1401,
        ["textureWidth"] = 1132,
        ["offsetY"] = 1038,
        ["fileDataIDs"] = { 3825153,3825173,3825192,3825196,3825198,3825200,3825201,3825203,3825205,3825155,3825157,3825158,3825160,3825162,3825164,3825166,3825167,3825169,3825171,3825175,3825176,3825178,3825180,3825182,3825184,3825185,3825187,3825189,3825191,3825194 } 
    },
    {
        ["offsetX"]=1727,
        ["textureHeight"] = 1490,
        ["textureWidth"] = 1338,
        ["offsetY"] = 18,
        ["fileDataIDs"] = { 3825243,3825263,3825282,3825296,3825298,3825300,3825302,3825304,3825306,3825245,3825246,3825248,3825250,3825252,3825254,3825255,3825257,3825259,3825261,3825264,3825266,3825268,3825270,3825271,3825273,3825275,3825277,3825279,3825280,3825284,3825286,3825288,3825289,3825291,3825293,3825295 } 
    }
},
[1557] = {
    {
        ["offsetX"]=1680,
        ["textureHeight"] = 1010,
        ["textureWidth"] = 938,
        ["offsetY"] = 49,
        ["fileDataIDs"] = { 3825544,3825553,3825554,3825556,3825557,3825559,3825560,3825561,3825563,3825545,3825546,3825547,3825548,3825549,3825550,3825552 } 
    },
    {
        ["offsetX"]=828,
        ["textureHeight"] = 1059,
        ["textureWidth"] = 945,
        ["offsetY"] = 56,
        ["fileDataIDs"] = { 3825524,3825535,3825537,3825538,3825539,3825540,3825541,3825542,3825543,3825525,3825526,3825527,3825528,3825529,3825530,3825531,3825532,3825533,3825534,3825536 } 
    },
    {
        ["offsetX"]=1559,
        ["textureHeight"] = 827,
        ["textureWidth"] = 971,
        ["offsetY"] = 1717,
        ["fileDataIDs"] = { 3825607,3825618,3825619,3825621,3825622,3825624,3825625,3825626,3825627,3825609,3825610,3825612,3825613,3825614,3825615,3825617 } 
    },
    {
        ["offsetX"]=1286,
        ["textureHeight"] = 872,
        ["textureWidth"] = 1807,
        ["offsetY"] = 951,
        ["fileDataIDs"] = { 3825564,3825579,3825594,3825600,3825601,3825603,3825604,3825605,3825606,3825566,3825567,3825568,3825570,3825571,3825573,3825574,3825575,3825576,3825578,3825580,3825582,3825583,3825585,3825586,3825587,3825589,3825590,3825592,3825593,3825596,3825597,3825599 } 
    }
},
[1571] = {
    {
        ["offsetX"]=1319,
        ["textureHeight"] = 682,
        ["textureWidth"] = 810,
        ["offsetY"] = 877,
        ["fileDataIDs"] = { 3828490,3828494,3828495,3828496,3828497,3828498,3828499,3828500,3828501,3828491,3828492,3828493 } 
    },
    {
        ["offsetX"]=1227,
        ["textureHeight"] = 812,
        ["textureWidth"] = 877,
        ["offsetY"] = 184,
        ["fileDataIDs"] = { 3828518,3828526,3828527,3828528,3828529,3828530,3828531,3828532,3828533,3828519,3828520,3828521,3828522,3828523,3828524,3828525 } 
    },
    {
        ["offsetX"]=1144,
        ["textureHeight"] = 948,
        ["textureWidth"] = 964,
        ["offsetY"] = 1431,
        ["fileDataIDs"] = { 3828502,3828510,3828511,3828512,3828513,3828514,3828515,3828516,3828517,3828503,3828504,3828505,3828506,3828507,3828508,3828509 } 
    },
    {
        ["offsetX"]=2013,
        ["textureHeight"] = 954,
        ["textureWidth"] = 979,
        ["offsetY"] = 1428,
        ["fileDataIDs"] = { 3828568,3828576,3828577,3828578,3828579,3828580,3828581,3828582,3828583,3828569,3828570,3828571,3828572,3828573,3828574,3828575 } 
    },
    {
        ["offsetX"]=2011,
        ["textureHeight"] = 825,
        ["textureWidth"] = 1005,
        ["offsetY"] = 180,
        ["fileDataIDs"] = { 3828534,3828542,3828543,3828544,3828545,3828546,3828547,3828548,3828549,3828535,3828536,3828537,3828538,3828539,3828540,3828541 } 
    },
    {
        ["offsetX"]=501,
        ["textureHeight"] = 1487,
        ["textureWidth"] = 1014,
        ["offsetY"] = 486,
        ["fileDataIDs"] = { 3828466,3828477,3828483,3828484,3828485,3828486,3828487,3828488,3828489,3828467,3828468,3828469,3828470,3828471,3828472,3828473,3828474,3828475,3828476,3828478,3828479,3828480,3828481,3828482 } 
    },
    {
        ["offsetX"]=2000,
        ["textureHeight"] = 670,
        ["textureWidth"] = 1323,
        ["offsetY"] = 885,
        ["fileDataIDs"] = { 3828550,3828560,3828561,3828562,3828563,3828564,3828565,3828566,3828567,3828551,3828552,3828553,3828554,3828555,3828556,3828557,3828558,3828559 } 
    }
},
[1572] = {
    {
        ["offsetX"]=1274,
        ["textureHeight"] = 1871,
        ["textureWidth"] = 833,
        ["offsetY"] = 228,
        ["fileDataIDs"] = { 3828758,3828769,3828780,3828784,3828785,3828786,3828787,3828788,3828789,3828759,3828760,3828761,3828762,3828763,3828764,3828765,3828766,3828767,3828768,3828770,3828771,3828772,3828773,3828774,3828775,3828776,3828777,3828778,3828779,3828781,3828782,3828783 } 
    },
    {
        ["offsetX"]=467,
        ["textureHeight"] = 1460,
        ["textureWidth"] = 1007,
        ["offsetY"] = 612,
        ["fileDataIDs"] = { 3828734,3828745,3828751,3828752,3828753,3828754,3828755,3828756,3828757,3828735,3828736,3828737,3828738,3828739,3828740,3828741,3828742,3828743,3828744,3828746,3828747,3828748,3828749,3828750 } 
    },
    {
        ["offsetX"]=1920,
        ["textureHeight"] = 1924,
        ["textureWidth"] = 1586,
        ["offsetY"] = 448,
        ["fileDataIDs"] = { 3828790,3828801,3828812,3828823,3828834,3828842,3828843,3828844,3828845,3828791,3828792,3828793,3828794,3828795,3828796,3828797,3828798,3828799,3828800,3828802,3828803,3828804,3828805,3828806,3828807,3828808,3828809,3828810,3828811,3828813,3828814,3828815,3828816,3828817,3828818,3828819,3828820,3828821,3828822,3828824,3828825,3828826,3828827,3828828,3828829,3828830,3828831,3828832,3828833,3828835,3828836,3828837,3828838,3828839,3828840,3828841 } 
    }
},
[1578] = {
    {
        ["offsetX"]=1521,
        ["textureHeight"] = 1489,
        ["textureWidth"] = 623,
        ["offsetY"] = 906,
        ["fileDataIDs"] = { 3830292,3830302,3830303,3830304,3830305,3830306,3830307,3830308,3830309,3830293,3830294,3830295,3830296,3830297,3830298,3830299,3830300,3830301 } 
    },
    {
        ["offsetX"]=1998,
        ["textureHeight"] = 1026,
        ["textureWidth"] = 1297,
        ["offsetY"] = 1191,
        ["fileDataIDs"] = { 3830310,3830321,3830332,3830334,3830335,3830336,3830337,3830338,3830339,3830311,3830312,3830313,3830314,3830315,3830316,3830317,3830318,3830319,3830320,3830322,3830323,3830324,3830325,3830326,3830327,3830328,3830329,3830330,3830331,3830333 } 
    },
    {
        ["offsetX"]=251,
        ["textureHeight"] = 1037,
        ["textureWidth"] = 1415,
        ["offsetY"] = 1197,
        ["fileDataIDs"] = { 3830262,3830273,3830284,3830286,3830287,3830288,3830289,3830290,3830291,3830263,3830264,3830265,3830266,3830267,3830268,3830269,3830270,3830271,3830272,3830274,3830275,3830276,3830277,3830278,3830279,3830280,3830281,3830282,3830283,3830285 } 
    },
    {
        ["offsetX"]=750,
        ["textureHeight"] = 1432,
        ["textureWidth"] = 2454,
        ["offsetY"] = 12,
        ["fileDataIDs"] = { 3830340,3830351,3830362,3830373,3830384,3830395,3830397,3830398,3830399,3830341,3830342,3830343,3830344,3830345,3830346,3830347,3830348,3830349,3830350,3830352,3830353,3830354,3830355,3830356,3830357,3830358,3830359,3830360,3830361,3830363,3830364,3830365,3830366,3830367,3830368,3830369,3830370,3830371,3830372,3830374,3830375,3830376,3830377,3830378,3830379,3830380,3830381,3830382,3830383,3830385,3830386,3830387,3830388,3830389,3830390,3830391,3830392,3830393,3830394,3830396 } 
    }
},
[1579] = {
    {
        ["offsetX"]=1547,
        ["textureHeight"] = -3142,
        ["textureWidth"] = 754,
        ["offsetY"] = 231,
        ["fileDataIDs"] = { 3830574,3830585,3830594,3830595,3830596,3830597,3830598,3830599,3830600,3830575,3830576,3830577,3830578,3830579,3830580,3830581,3830582,3830583,3830584,3830586,3830587,3830588,3830589,3830590,3830591,3830592,3830593,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 } 
    },
    {
        ["offsetX"]=959,
        ["textureHeight"] = 1894,
        ["textureWidth"] = 765,
        ["offsetY"] = 406,
        ["fileDataIDs"] = { 3830550,3830561,3830567,3830568,3830569,3830570,3830571,3830572,3830573,3830551,3830552,3830553,3830554,3830555,3830556,3830557,3830558,3830559,3830560,3830562,3830563,3830564,3830565,3830566 } 
    },
    {
        ["offsetX"]=2142,
        ["textureHeight"] = 1887,
        ["textureWidth"] = 786,
        ["offsetY"] = 396,
        ["fileDataIDs"] = { 3830601,3830612,3830623,3830627,3830628,3830629,3830630,3830631,3830632,3830602,3830603,3830604,3830605,3830606,3830607,3830608,3830609,3830610,3830611,3830613,3830614,3830615,3830616,3830617,3830618,3830619,3830620,3830621,3830622,3830624,3830625,3830626 } 
    }
},
[1580] = {
    {
        ["offsetX"]=1579,
        ["textureHeight"] = 1420,
        ["textureWidth"] = 727,
        ["offsetY"] = 396,
        ["fileDataIDs"] = { 3830808,3830818,3830819,3830820,3830821,3830822,3830823,3830824,3830825,3830809,3830810,3830811,3830812,3830813,3830814,3830815,3830816,3830817 } 
    },
    {
        ["offsetX"]=602,
        ["textureHeight"] = 465,
        ["textureWidth"] = 1156,
        ["offsetY"] = 1062,
        ["fileDataIDs"] = { 3830798,3830800,3830801,3830802,3830803,3830804,3830805,3830806,3830807,3830799 } 
    },
    {
        ["offsetX"]=489,
        ["textureHeight"] = 708,
        ["textureWidth"] = 1225,
        ["offsetY"] = 510,
        ["fileDataIDs"] = { 3830783,3830790,3830791,3830792,3830793,3830794,3830795,3830796,3830797,3830784,3830785,3830786,3830787,3830788,3830789 } 
    },
    {
        ["offsetX"]=2156,
        ["textureHeight"] = 509,
        ["textureWidth"] = 1259,
        ["offsetY"] = 653,
        ["fileDataIDs"] = { 3830826,3830828,3830829,3830830,3830831,3830832,3830833,3830834,3830835,3830827 } 
    },
    {
        ["offsetX"]=2151,
        ["textureHeight"] = 941,
        ["textureWidth"] = 1266,
        ["offsetY"] = 1041,
        ["fileDataIDs"] = { 3830836,3830847,3830849,3830850,3830851,3830852,3830853,3830854,3830855,3830837,3830838,3830839,3830840,3830841,3830842,3830843,3830844,3830845,3830846,3830848 } 
    }
},
[1582] = {
    {
        ["offsetX"]=1775,
        ["textureHeight"] = 2391,
        ["textureWidth"] = 618,
        ["offsetY"] = 87,
        ["fileDataIDs"] = { 3831346,3831357,3831368,3831370,3831371,3831372,3831373,3831374,3831375,3831347,3831348,3831349,3831350,3831351,3831352,3831353,3831354,3831355,3831356,3831358,3831359,3831360,3831361,3831362,3831363,3831364,3831365,3831366,3831367,3831369 } 
    },
    {
        ["offsetX"]=2246,
        ["textureHeight"] = 1036,
        ["textureWidth"] = 949,
        ["offsetY"] = 872,
        ["fileDataIDs"] = { 3831376,3831387,3831389,3831390,3831391,3831392,3831393,3831394,3831395,3831377,3831378,3831379,3831380,3831381,3831382,3831383,3831384,3831385,3831386,3831388 } 
    },
    {
        ["offsetX"]=537,
        ["textureHeight"] = 1415,
        ["textureWidth"] = 1353,
        ["offsetY"] = 717,
        ["fileDataIDs"] = { 3831310,3831321,3831332,3831340,3831341,3831342,3831343,3831344,3831345,3831311,3831312,3831313,3831314,3831315,3831316,3831317,3831318,3831319,3831320,3831322,3831323,3831324,3831325,3831326,3831327,3831328,3831329,3831330,3831331,3831333,3831334,3831335,3831336,3831337,3831338,3831339 } 
    }
},
[1585] = {
    {
        ["offsetX"]=1779,
        ["textureHeight"] = 705,
        ["textureWidth"] = 535,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3816259,3816260,3816261,3816262,3816263,3816264,3816265,3816266,3816267 } 
    },
    {
        ["offsetX"]=970,
        ["textureHeight"] = 647,
        ["textureWidth"] = 940,
        ["offsetY"] = 158,
        ["fileDataIDs"] = { 3816268,3816272,3816273,3816274,3816275,3816276,3816277,3816278,3816279,3816269,3816270,3816271 } 
    },
    {
        ["offsetX"]=960,
        ["textureHeight"] = 1029,
        ["textureWidth"] = 983,
        ["offsetY"] = 617,
        ["fileDataIDs"] = { 3816280,3816291,3816293,3816294,3816295,3816296,3816297,3816298,3816299,3816281,3816282,3816283,3816284,3816285,3816286,3816287,3816288,3816289,3816290,3816292 } 
    },
    {
        ["offsetX"]=1472,
        ["textureHeight"] = 1024,
        ["textureWidth"] = 1028,
        ["offsetY"] = 1536,
        ["fileDataIDs"] = { 3816328,3816339,3816341,3816342,3816343,3816344,3816345,3816349,3816355,3816329,3816330,3816331,3816332,3816333,3816334,3816335,3816336,3816337,3816338,3816340 } 
    },
    {
        ["offsetX"]=1809,
        ["textureHeight"] = 487,
        ["textureWidth"] = 1080,
        ["offsetY"] = 585,
        ["fileDataIDs"] = { 3816300,3816302,3816303,3816304,3816305,3816306,3816307,3816308,3816309,3816301 } 
    },
    {
        ["offsetX"]=1483,
        ["textureHeight"] = 734,
        ["textureWidth"] = 1434,
        ["offsetY"] = 920,
        ["fileDataIDs"] = { 3816310,3816320,3816321,3816322,3816323,3816324,3816325,3816326,3816327,3816311,3816312,3816313,3816314,3816315,3816316,3816317,3816318,3816319 } 
    }
},
[1586] = {
    {
        ["offsetX"]=1819,
        ["textureHeight"] = 579,
        ["textureWidth"] = 603,
        ["offsetY"] = 1159,
        ["fileDataIDs"] = { 3819040,3819041,3819042,3819043,3819044,3819045,3819046,3819047,3819048 } 
    },
    {
        ["offsetX"]=400,
        ["textureHeight"] = 1244,
        ["textureWidth"] = 842,
        ["offsetY"] = 1273,
        ["fileDataIDs"] = { 3819106,3819117,3819119,3819120,3819121,3819122,3819123,3819124,3819125,3819107,3819108,3819109,3819110,3819111,3819112,3819113,3819114,3819115,3819116,3819118 } 
    },
    {
        ["offsetX"]=1741,
        ["textureHeight"] = 733,
        ["textureWidth"] = 1044,
        ["offsetY"] = 1635,
        ["fileDataIDs"] = { 3819049,3819056,3819057,3819058,3819059,3819060,3819061,3819062,3819063,3819050,3819051,3819052,3819053,3819054,3819055 } 
    },
    {
        ["offsetX"]=1943,
        ["textureHeight"] = 940,
        ["textureWidth"] = 1370,
        ["offsetY"] = 26,
        ["fileDataIDs"] = { 3818973,3818984,3818990,3818991,3818992,3818993,3818994,3818995,3818996,3818974,3818975,3818976,3818977,3818978,3818979,3818980,3818981,3818982,3818983,3818985,3818986,3818987,3818988,3818989 } 
    },
    {
        ["offsetX"]=483,
        ["textureHeight"] = 1606,
        ["textureWidth"] = 1439,
        ["offsetY"] = 810,
        ["fileDataIDs"] = { 3819064,3819075,3819086,3819097,3819101,3819102,3819103,3819104,3819105,3819065,3819066,3819067,3819068,3819069,3819070,3819071,3819072,3819073,3819074,3819076,3819077,3819078,3819079,3819080,3819081,3819082,3819083,3819084,3819085,3819087,3819088,3819089,3819090,3819091,3819092,3819093,3819094,3819095,3819096,3819098,3819099,3819100 } 
    },
    {
        ["offsetX"]=1807,
        ["textureHeight"] = 1221,
        ["textureWidth"] = 1873,
        ["offsetY"] = 812,
        ["fileDataIDs"] = { 3818998,3819011,3819022,3819033,3819035,3819036,3819037,3819038,3819039,3819001,3819002,3819003,3819004,3819005,3819006,3819007,3819008,3819009,3819010,3819012,3819013,3819014,3819015,3819016,3819017,3819018,3819019,3819020,3819021,3819023,3819024,3819025,3819026,3819027,3819028,3819029,3819030,3819031,3819032,3819034 } 
    }
},
[1587] = {
    {
        ["offsetX"]=1594,
        ["textureHeight"] = 1310,
        ["textureWidth"] = 647,
        ["offsetY"] = 934,
        ["fileDataIDs"] = { 3821911,3821929,3821931,3821933,3821935,3821936,3821938,3821940,3821942,3821913,3821914,3821916,3821918,3821920,3821922,3821924,3821925,3821927 } 
    },
    {
        ["offsetX"]=1587,
        ["textureHeight"] = 597,
        ["textureWidth"] = 669,
        ["offsetY"] = 449,
        ["fileDataIDs"] = { 3822021,3822022,3822024,3822026,3822028,3822030,3822032,3822034,3822035 } 
    },
    {
        ["offsetX"]=499,
        ["textureHeight"] = 1747,
        ["textureWidth"] = 1208,
        ["offsetY"] = 289,
        ["fileDataIDs"] = { 3821845,3821865,3821885,3821900,3821902,3821904,3821905,3821907,3821909,3821847,3821849,3821851,3821852,3821854,3821856,3821858,3821860,3821862,3821863,3821867,3821869,3821871,3821873,3821874,3821876,3821878,3821880,3821882,3821883,3821889,3821891,3821893,3821895,3821896,3821898 } 
    },
    {
        ["offsetX"]=2130,
        ["textureHeight"] = 1755,
        ["textureWidth"] = 1442,
        ["offsetY"] = 293,
        ["fileDataIDs"] = { 3821944,3821964,3821984,3822004,3822011,3822013,3822015,3822017,3822019,3821946,3821947,3821949,3821951,3821953,3821955,3821957,3821958,3821960,3821962,3821966,3821967,3821969,3821971,3821973,3821975,3821976,3821978,3821980,3821982,3821986,3821988,3821989,3821991,3821993,3821995,3821997,3821999,3822001,3822002,3822006,3822008,3822010 } 
    }
},
[1590] = {
    {
        ["offsetX"]=1589,
        ["textureHeight"] = 1052,
        ["textureWidth"] = 559,
        ["offsetY"] = 1508,
        ["fileDataIDs"] = { 3814698,3814705,3814706,3814707,3814708,3814709,3814710,3814711,3814712,3814699,3814700,3814701,3814702,3814703,3814704 } 
    },
    {
        ["offsetX"]=1574,
        ["textureHeight"] = 539,
        ["textureWidth"] = 571,
        ["offsetY"] = 1080,
        ["fileDataIDs"] = { 3814689,3814690,3814691,3814692,3814693,3814694,3814695,3814696,3814697 } 
    },
    {
        ["offsetX"]=1515,
        ["textureHeight"] = 1186,
        ["textureWidth"] = 673,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3814674,3814681,3814682,3814683,3814684,3814685,3814686,3814687,3814688,3814675,3814676,3814677,3814678,3814679,3814680 } 
    },
    {
        ["offsetX"]=2005,
        ["textureHeight"] = 507,
        ["textureWidth"] = 954,
        ["offsetY"] = 1105,
        ["fileDataIDs"] = { 3814743,3814744,3814745,3814746,3814747,3814748,3814749,3814750 } 
    },
    {
        ["offsetX"]=741,
        ["textureHeight"] = 475,
        ["textureWidth"] = 970,
        ["offsetY"] = 1119,
        ["fileDataIDs"] = { 3814636,3814637,3814638,3814639,3814640,3814641,3814642,3814643 } 
    },
    {
        ["offsetX"]=292,
        ["textureHeight"] = 1297,
        ["textureWidth"] = 1388,
        ["offsetY"] = 102,
        ["fileDataIDs"] = { 3814600,3814611,3814622,3814630,3814631,3814632,3814633,3814634,3814635,3814601,3814602,3814603,3814604,3814605,3814606,3814607,3814608,3814609,3814610,3814612,3814613,3814614,3814615,3814616,3814617,3814618,3814619,3814620,3814621,3814623,3814624,3814625,3814626,3814627,3814628,3814629 } 
    },
    {
        ["offsetX"]=288,
        ["textureHeight"] = 1211,
        ["textureWidth"] = 1408,
        ["offsetY"] = 1305,
        ["fileDataIDs"] = { 3814644,3814655,3814666,3814668,3814669,3814670,3814671,3814672,3814673,3814645,3814646,3814647,3814648,3814649,3814650,3814651,3814652,3814653,3814654,3814656,3814657,3814658,3814659,3814660,3814661,3814662,3814663,3814664,3814665,3814667 } 
    },
    {
        ["offsetX"]=2032,
        ["textureHeight"] = 1229,
        ["textureWidth"] = 1417,
        ["offsetY"] = 1306,
        ["fileDataIDs"] = { 3814713,3814724,3814735,3814737,3814738,3814739,3814740,3814741,3814742,3814714,3814715,3814716,3814717,3814718,3814719,3814720,3814721,3814722,3814723,3814725,3814726,3814727,3814728,3814729,3814730,3814731,3814732,3814733,3814734,3814736 } 
    },
    {
        ["offsetX"]=2024,
        ["textureHeight"] = 1315,
        ["textureWidth"] = 1432,
        ["offsetY"] = 85,
        ["fileDataIDs"] = { 3814751,3814762,3814773,3814781,3814782,3814783,3814784,3814785,3814786,3814752,3814753,3814754,3814755,3814756,3814757,3814758,3814759,3814760,3814761,3814763,3814764,3814765,3814766,3814767,3814768,3814769,3814770,3814771,3814772,3814774,3814775,3814776,3814777,3814778,3814779,3814780 } 
    }
},
[1591] = {
    {
        ["offsetX"]=2003,
        ["textureHeight"] = 1010,
        ["textureWidth"] = 854,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 3822995,3823009,3823011,3823012,3823014,3823016,3823017,3823019,3823021,3822997,3822998,3823000,3823002,3823004,3823005,3823007 } 
    },
    {
        ["offsetX"]=739,
        ["textureHeight"] = 1317,
        ["textureWidth"] = 876,
        ["offsetY"] = 152,
        ["fileDataIDs"] = { 3822911,3822930,3822941,3822943,3822944,3822946,3822948,3822950,3822951,3822913,3822915,3822916,3822918,3822920,3822922,3822923,3822925,3822927,3822929,3822932,3822934,3822936,3822937,3822939 } 
    },
    {
        ["offsetX"]=1496,
        ["textureHeight"] = 1372,
        ["textureWidth"] = 902,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 3822953,3822972,3822983,3822984,3822986,3822988,3822990,3822991,3822993,3822955,3822957,3822958,3822960,3822962,3822964,3822965,3822967,3822969,3822971,3822974,3822976,3822978,3822979,3822981 } 
    },
    {
        ["offsetX"]=1106,
        ["textureHeight"] = 1253,
        ["textureWidth"] = 1384,
        ["offsetY"] = 1279,
        ["fileDataIDs"] = { 3823023,3823042,3823064,3823068,3823071,3823074,3823077,3823078,3823081,3823025,3823026,3823028,3823030,3823032,3823033,3823035,3823037,3823039,3823040,3823044,3823046,3823048,3823049,3823051,3823053,3823055,3823056,3823059,3823061,3823066 } 
    }
},
[1592] = {
    {
        ["offsetX"]=1303,
        ["textureHeight"] = 1196,
        ["textureWidth"] = 1226,
        ["offsetY"] = 1301,
        ["fileDataIDs"] = { 3826854,3826865,3826873,3826874,3826875,3826876,3826877,3826878,3826879,3826855,3826856,3826857,3826858,3826859,3826860,3826861,3826862,3826863,3826864,3826866,3826945,3826947,3826870,3826871,3826872 } 
    },
    {
        ["offsetX"]=408,
        ["textureHeight"] = 1749,
        ["textureWidth"] = 3006,
        ["offsetY"] = 22,
        ["fileDataIDs"] = { 3826880,3826891,3826901,3826912,3826923,3826934,3826946,3826958,3826964,3826881,3826882,3826883,3826884,3826885,3826886,3826887,3826888,3826889,3826890,3826892,3826893,3826894,3826976,3826895,3826896,3826897,3826898,3826899,3826900,3826902,3826903,3826904,3826905,3826906,3826907,3826908,3826909,3826910,3826911,3826913,3826914,3826915,3826916,3826917,3826918,3826919,3826920,3826921,3826922,3826924,3826925,3826926,3826927,3826928,3826929,3826930,3826931,3826932,3826933,3826935,3826936,3826937,3826938,3826939,3826940,3826941,3826942,3826943,3826944,3826948,3826949,3826950,3826951,3826952,3826953,3826954,3826955,3826956,3826957,3826959,3826960,3826961,3826962,3826963 } 
    }
},
[1600] = {
    {
        ["offsetX"]=1207,
        ["textureHeight"] = 1035,
        ["textureWidth"] = 636,
        ["offsetY"] = 9,
        ["fileDataIDs"] = { 3815949,3815956,3815957,3815958,3815959,3815960,3815961,3815962,3815963,3815950,3815951,3815952,3815953,3815954,3815955 } 
    },
    {
        ["offsetX"]=594,
        ["textureHeight"] = 937,
        ["textureWidth"] = 665,
        ["offsetY"] = 1017,
        ["fileDataIDs"] = { 3815980,3815984,3815985,3815986,3815987,3815988,3815989,3815990,3815991,3815981,3815982,3815983 } 
    },
    {
        ["offsetX"]=677,
        ["textureHeight"] = 1107,
        ["textureWidth"] = 699,
        ["offsetY"] = 56,
        ["fileDataIDs"] = { 3815926,3815933,3815934,3815935,3815936,3815945,3815946,3815947,3815948,3815927,3815928,3815929,3815930,3815931,3815932 } 
    },
    {
        ["offsetX"]=1693,
        ["textureHeight"] = 918,
        ["textureWidth"] = 1022,
        ["offsetY"] = 66,
        ["fileDataIDs"] = { 3815964,3815972,3815973,3815974,3815975,3815976,3815977,3815978,3815979,3815965,3815966,3815967,3815968,3815969,3815970,3815971 } 
    },
    {
        ["offsetX"]=1982,
        ["textureHeight"] = 818,
        ["textureWidth"] = 1064,
        ["offsetY"] = 1742,
        ["fileDataIDs"] = { 3816013,3816024,3816026,3816027,3816028,3816029,3816030,3816031,3816032,3816014,3816015,3816016,3816017,3816018,3816019,3816020,3816021,3816022,3816023,3816025 } 
    },
    {
        ["offsetX"]=577,
        ["textureHeight"] = 723,
        ["textureWidth"] = 1539,
        ["offsetY"] = 1835,
        ["fileDataIDs"] = { 3815992,3816003,3816006,3816007,3816008,3816009,3816010,3816011,3816012,3815993,3815994,3815995,3815996,3815997,3815998,3815999,3816000,3816001,3816002,3816004,3816005 } 
    },
    {
        ["offsetX"]=1167,
        ["textureHeight"] = 1551,
        ["textureWidth"] = 1875,
        ["offsetY"] = 485,
        ["fileDataIDs"] = { 3816033,3816044,3816055,3816066,3816077,3816085,3816086,3816091,3816092,3816034,3816035,3816036,3816037,3816038,3816039,3816040,3816041,3816042,3816043,3816045,3816046,3816047,3816048,3816049,3816050,3816051,3816052,3816053,3816054,3816056,3816057,3816058,3816059,3816060,3816061,3816062,3816063,3816064,3816065,3816067,3816068,3816069,3816070,3816071,3816072,3816073,3816074,3816075,3816076,3816078,3816079,3816080,3816081,3816082,3816083,3816084 } 
    }
},
[1601] = {
    {
        ["offsetX"]=1247,
        ["textureHeight"] = 978,
        ["textureWidth"] = 1480,
        ["offsetY"] = 1460,
        ["fileDataIDs"] = { 3829896,3829907,3829913,3829914,3829915,3829916,3829917,3829918,3829919,3829897,3829898,3829899,3829900,3829901,3829902,3829903,3829904,3829905,3829906,3829908,3829909,3829910,3829911,3829912 } 
    },
    {
        ["offsetX"]=1104,
        ["textureHeight"] = 1327,
        ["textureWidth"] = 1664,
        ["offsetY"] = 231,
        ["fileDataIDs"] = { 3829920,3829931,3829942,3829953,3829957,3829958,3829959,3829960,3829961,3829921,3829922,3829923,3829924,3829925,3829926,3829927,3829928,3829929,3829930,3829932,3829933,3829934,3829935,3829936,3829937,3829938,3829939,3829940,3829941,3829943,3829944,3829945,3829946,3829947,3829948,3829949,3829950,3829951,3829952,3829954,3829955,3829956 } 
    }
},
[1648] = {
    {
        ["offsetX"]=958,
        ["textureHeight"] = 637,
        ["textureWidth"] = 766,
        ["offsetY"] = 997,
        ["fileDataIDs"] = { 4074917,4074918,4074919,4074920,4074921,4074922,4074923,4074924,4074925 } 
    },
    {
        ["offsetX"]=1500,
        ["textureHeight"] = 696,
        ["textureWidth"] = 834,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 4075007,4075011,4075012,4075013,4075014,4075015,4075016,4075017,4075018,4075008,4075009,4075010 } 
    },
    {
        ["offsetX"]=2113,
        ["textureHeight"] = 875,
        ["textureWidth"] = 844,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 4074961,4074969,4074970,4074971,4074972,4074973,4074974,4074975,4074976,4074962,4074963,4074964,4074965,4074966,4074967,4074968 } 
    },
    {
        ["offsetX"]=597,
        ["textureHeight"] = 817,
        ["textureWidth"] = 929,
        ["offsetY"] = 1053,
        ["fileDataIDs"] = { 4075090,4075098,4075099,4075100,4075101,4075102,4075103,4075104,4075105,4075091,4075092,4075093,4075094,4075095,4075096,4075097 } 
    },
    {
        ["offsetX"]=1841,
        ["textureHeight"] = 715,
        ["textureWidth"] = 1264,
        ["offsetY"] = 645,
        ["fileDataIDs"] = { 4075019,4075026,4075027,4075028,4075029,4075030,4075031,4075032,4075033,4075020,4075021,4075022,4075023,4075024,4075025 } 
    },
    {
        ["offsetX"]=945,
        ["textureHeight"] = 1088,
        ["textureWidth"] = 1362,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 4074977,4074988,4074999,4075001,4075002,4075003,4075004,4075005,4075006,4074978,4074979,4074980,4074981,4074982,4074983,4074984,4074985,4074986,4074987,4074989,4074990,4074991,4074992,4074993,4074994,4074995,4074996,4074997,4074998,4075000 } 
    },
    {
        ["offsetX"]=1474,
        ["textureHeight"] = 792,
        ["textureWidth"] = 1412,
        ["offsetY"] = 891,
        ["fileDataIDs"] = { 4075034,4075045,4075051,4075052,4075053,4075054,4075055,4075056,4075057,4075035,4075036,4075037,4075038,4075039,4075040,4075041,4075042,4075043,4075044,4075046,4075047,4075048,4075049,4075050 } 
    },
    {
        ["offsetX"]=153,
        ["textureHeight"] = 1268,
        ["textureWidth"] = 1612,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 4074926,4074937,4074948,4074955,4074956,4074957,4074958,4074959,4074960,4074927,4074928,4074929,4074930,4074931,4074932,4074933,4074934,4074935,4074936,4074938,4074939,4074940,4074941,4074942,4074943,4074944,4074945,4074946,4074947,4074949,4074950,4074951,4074952,4074953,4074954 } 
    },
    {
        ["offsetX"]=1231,
        ["textureHeight"] = 1010,
        ["textureWidth"] = 1871,
        ["offsetY"] = 1429,
        ["fileDataIDs"] = { 4075058,4075069,4075080,4075084,4075085,4075086,4075087,4075088,4075089,4075059,4075060,4075061,4075062,4075063,4075064,4075065,4075066,4075067,4075068,4075070,4075071,4075072,4075073,4075074,4075075,4075076,4075077,4075078,4075079,4075081,4075082,4075083 } 
    }
},
[1672] = {
    {
        ["offsetX"]=1758,
        ["textureHeight"] = 1388,
        ["textureWidth"] = 782,
        ["offsetY"] = 1018,
        ["fileDataIDs"] = { 4083061,4083072,4083078,4083079,4083080,4083081,4083082,4083083,4083084,4083062,4083063,4083064,4083065,4083066,4083067,4083068,4083069,4083070,4083071,4083073,4083074,4083075,4083076,4083077 } 
    },
    {
        ["offsetX"]=833,
        ["textureHeight"] = 518,
        ["textureWidth"] = 1041,
        ["offsetY"] = 1006,
        ["fileDataIDs"] = { 4083046,4083053,4083054,4083055,4083056,4083057,4083058,4083059,4083060,4083047,4083048,4083049,4083050,4083051,4083052 } 
    },
    {
        ["offsetX"]=577,
        ["textureHeight"] = 1265,
        ["textureWidth"] = 1347,
        ["offsetY"] = 1295,
        ["fileDataIDs"] = { 4083085,4083096,4083107,4083109,4083110,4083111,4083112,4083113,4083114,4083086,4083087,4083088,4083089,4083090,4083091,4083092,4083093,4083094,4083095,4083097,4083098,4083099,4083100,4083101,4083102,4083103,4083104,4083105,4083106,4083108 } 
    },
    {
        ["offsetX"]=866,
        ["textureHeight"] = 1120,
        ["textureWidth"] = 1864,
        ["offsetY"] = 78,
        ["fileDataIDs"] = { 4083006,4083017,4083028,4083039,4083041,4083042,4083043,4083044,4083045,4083007,4083008,4083009,4083010,4083011,4083012,4083013,4083014,4083015,4083016,4083018,4083019,4083020,4083021,4083022,4083023,4083024,4083025,4083026,4083027,4083029,4083030,4083031,4083032,4083033,4083034,4083035,4083036,4083037,4083038,4083040 } 
    }
},
[1673] = {
    {
        ["offsetX"]=2376,
        ["textureHeight"] = 913,
        ["textureWidth"] = 592,
        ["offsetY"] = 750,
        ["fileDataIDs"] = { 4083330,4083334,4083335,4083336,4083337,4083338,4083339,4083340,4083341,4083331,4083332,4083333 } 
    },
    {
        ["offsetX"]=1851,
        ["textureHeight"] = 991,
        ["textureWidth"] = 992,
        ["offsetY"] = 1559,
        ["fileDataIDs"] = { 4083314,4083322,4083323,4083324,4083325,4083326,4083327,4083328,4083329,4083315,4083316,4083317,4083318,4083319,4083320,4083321 } 
    },
    {
        ["offsetX"]=1479,
        ["textureHeight"] = 743,
        ["textureWidth"] = 993,
        ["offsetY"] = 1227,
        ["fileDataIDs"] = { 4083302,4083306,4083307,4083308,4083309,4083310,4083311,4083312,4083313,4083303,4083304,4083305 } 
    },
    {
        ["offsetX"]=1491,
        ["textureHeight"] = 484,
        ["textureWidth"] = 1021,
        ["offsetY"] = 842,
        ["fileDataIDs"] = { 4083342,4083343,4083344,4083345,4083346,4083347,4083348,4083349 } 
    },
    {
        ["offsetX"]=1254,
        ["textureHeight"] = 939,
        ["textureWidth"] = 1281,
        ["offsetY"] = 3,
        ["fileDataIDs"] = { 4083350,4083361,4083367,4083368,4083369,4083370,4083371,4083372,4083373,4083351,4083352,4083353,4083354,4083355,4083356,4083357,4083358,4083359,4083360,4083362,4083363,4083364,4083365,4083366 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 1298,
        ["textureWidth"] = 1356,
        ["offsetY"] = 776,
        ["fileDataIDs"] = { 4083265,4083276,4083287,4083296,4083297,4083298,4083299,4083300,4083301,4083266,4083267,4083268,4083269,4083270,4083271,4083272,4083273,4083274,4083275,4083277,4083278,4083279,4083280,4083281,4083282,4083283,4083284,4083285,4083286,4083288,4083289,4083290,4083291,4083293,4083294,4083295 } 
    }
},
[1674] = {
    {
        ["offsetX"]=1636,
        ["textureHeight"] = 968,
        ["textureWidth"] = 334,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 4083620,4083621,4083629,4083633,4083634,4083635,4083636,4083637 } 
    },
    {
        ["offsetX"]=1954,
        ["textureHeight"] = 445,
        ["textureWidth"] = 652,
        ["offsetY"] = 1282,
        ["fileDataIDs"] = { 4083594,4083595,4083596,4083597,4083598,4083599 } 
    },
    {
        ["offsetX"]=1876,
        ["textureHeight"] = 1152,
        ["textureWidth"] = 771,
        ["offsetY"] = 218,
        ["fileDataIDs"] = { 4083600,4083611,4083613,4083614,4083615,4083616,4083617,4083618,4083619,4083601,4083602,4083603,4083604,4083605,4083606,4083607,4083608,4083609,4083610,4083612 } 
    },
    {
        ["offsetX"]=845,
        ["textureHeight"] = 1071,
        ["textureWidth"] = 889,
        ["offsetY"] = 275,
        ["fileDataIDs"] = { 4083638,4083649,4083651,4083652,4083653,4083654,4083655,4083656,4083657,4083639,4083640,4083641,4083642,4083643,4083644,4083645,4083646,4083647,4083648,4083650 } 
    },
    {
        ["offsetX"]=1949,
        ["textureHeight"] = 722,
        ["textureWidth"] = 973,
        ["offsetY"] = 1633,
        ["fileDataIDs"] = { 4083544,4083548,4083549,4083550,4083551,4083552,4083553,4083554,4083555,4083545,4083546,4083547 } 
    },
    {
        ["offsetX"]=1052,
        ["textureHeight"] = 475,
        ["textureWidth"] = 998,
        ["offsetY"] = 1247,
        ["fileDataIDs"] = { 4083576,4083577,4083585,4083588,4083590,4083591,4083592,4083593 } 
    },
    {
        ["offsetX"]=894,
        ["textureHeight"] = 833,
        ["textureWidth"] = 1151,
        ["offsetY"] = 1627,
        ["fileDataIDs"] = { 4083556,4083567,4083569,4083570,4083571,4083572,4083573,4083574,4083575,4083557,4083558,4083559,4083560,4083561,4083562,4083563,4083564,4083565,4083566,4083568 } 
    }
},
[1677] = {
    {
        ["offsetX"]=777,
        ["textureHeight"] = 526,
        ["textureWidth"] = 475,
        ["offsetY"] = 875,
        ["fileDataIDs"] = { 4084124,4084125,4084126,4084127,4084128,4084129 } 
    },
    {
        ["offsetX"]=855,
        ["textureHeight"] = 857,
        ["textureWidth"] = 489,
        ["offsetY"] = 218,
        ["fileDataIDs"] = { 4084167,4084168,4084169,4084170,4084171,4084172,4084173,4084174 } 
    },
    {
        ["offsetX"]=1060,
        ["textureHeight"] = 658,
        ["textureWidth"] = 804,
        ["offsetY"] = 824,
        ["fileDataIDs"] = { 4084155,4084159,4084160,4084161,4084162,4084163,4084164,4084165,4084166,4084156,4084157,4084158 } 
    },
    {
        ["offsetX"]=297,
        ["textureHeight"] = 1021,
        ["textureWidth"] = 872,
        ["offsetY"] = 954,
        ["fileDataIDs"] = { 4084108,4084116,4084117,4084118,4084119,4084120,4084121,4084122,4084123,4084109,4084110,4084111,4084112,4084113,4084114,4084115 } 
    },
    {
        ["offsetX"]=1248,
        ["textureHeight"] = 780,
        ["textureWidth"] = 936,
        ["offsetY"] = 167,
        ["fileDataIDs"] = { 4084175,4084183,4084184,4084185,4084186,4084187,4084188,4084189,4084190,4084176,4084177,4084178,4084179,4084180,4084181,4084182 } 
    },
    {
        ["offsetX"]=1287,
        ["textureHeight"] = 723,
        ["textureWidth"] = 1057,
        ["offsetY"] = 1612,
        ["fileDataIDs"] = { 4084130,4084137,4084138,4084139,4084140,4084141,4084142,4084143,4084144,4084131,4084132,4084133,4084134,4084135,4084136 } 
    },
    {
        ["offsetX"]=1058,
        ["textureHeight"] = 336,
        ["textureWidth"] = 1084,
        ["offsetY"] = 1399,
        ["fileDataIDs"] = { 4084145,4084147,4084148,4084149,4084150,4084151,4084152,4084153,4084154,4084146 } 
    },
    {
        ["offsetX"]=1772,
        ["textureHeight"] = 1234,
        ["textureWidth"] = 1980,
        ["offsetY"] = 697,
        ["fileDataIDs"] = { 4084191,4084202,4084213,4084224,4084226,4084227,4084228,4084229,4084230,4084192,4084193,4084194,4084195,4084196,4084197,4084198,4084199,4084200,4084201,4084203,4084204,4084205,4084206,4084207,4084208,4084209,4084210,4084211,4084212,4084214,4084215,4084216,4084217,4084218,4084219,4084220,4084221,4084222,4084223,4084225 } 
    }
},
[1689] = {
    {
        ["offsetX"]=1758,
        ["textureHeight"] = 1388,
        ["textureWidth"] = 782,
        ["offsetY"] = 1018,
        ["fileDataIDs"] = { 4086315,4086347,4086375,4086378,4086382,4086383,4086384,4086385,4086386,4086316,4086317,4086318,4086319,4086320,4086321,4086328,4086333,4086334,4086335,4086349,4086353,4086356,4086360,4086367 } 
    },
    {
        ["offsetX"]=833,
        ["textureHeight"] = 518,
        ["textureWidth"] = 1041,
        ["offsetY"] = 1006,
        ["fileDataIDs"] = { 4086300,4086307,4086308,4086309,4086310,4086311,4086312,4086313,4086314,4086301,4086302,4086303,4086304,4086305,4086306 } 
    },
    {
        ["offsetX"]=577,
        ["textureHeight"] = 1265,
        ["textureWidth"] = 1347,
        ["offsetY"] = 1295,
        ["fileDataIDs"] = { 4086387,4086398,4086409,4086411,4086412,4086413,4086414,4086415,4086416,4086388,4086389,4086390,4086391,4086392,4086393,4086394,4086395,4086396,4086397,4086399,4086400,4086401,4086402,4086403,4086404,4086405,4086406,4086407,4086408,4086410 } 
    },
    {
        ["offsetX"]=866,
        ["textureHeight"] = 1120,
        ["textureWidth"] = 1864,
        ["offsetY"] = 78,
        ["fileDataIDs"] = { 4086260,4086271,4086282,4086293,4086295,4086296,4086297,4086298,4086299,4086261,4086262,4086263,4086264,4086265,4086266,4086267,4086268,4086269,4086270,4086272,4086273,4086274,4086275,4086276,4086277,4086278,4086279,4086280,4086281,4086283,4086284,4086285,4086286,4086287,4086288,4086289,4086290,4086291,4086292,4086294 } 
    }
},
[1690] = {
    {
        ["offsetX"]=2376,
        ["textureHeight"] = 913,
        ["textureWidth"] = 592,
        ["offsetY"] = 750,
        ["fileDataIDs"] = { 4086711,4086715,4086716,4086717,4086718,4086719,4086720,4086721,4086722,4086712,4086713,4086714 } 
    },
    {
        ["offsetX"]=1851,
        ["textureHeight"] = 991,
        ["textureWidth"] = 992,
        ["offsetY"] = 1559,
        ["fileDataIDs"] = { 4086695,4086703,4086704,4086705,4086706,4086707,4086708,4086709,4086710,4086696,4086697,4086698,4086699,4086700,4086701,4086702 } 
    },
    {
        ["offsetX"]=1479,
        ["textureHeight"] = 743,
        ["textureWidth"] = 993,
        ["offsetY"] = 1227,
        ["fileDataIDs"] = { 4086681,4086685,4086688,4086689,4086690,4086691,4086692,4086693,4086694,4086682,4086683,4086684 } 
    },
    {
        ["offsetX"]=1491,
        ["textureHeight"] = 484,
        ["textureWidth"] = 1021,
        ["offsetY"] = 842,
        ["fileDataIDs"] = { 4086723,4086724,4086725,4086726,4086727,4086728,4086729,4086730 } 
    },
    {
        ["offsetX"]=1254,
        ["textureHeight"] = 939,
        ["textureWidth"] = 1281,
        ["offsetY"] = 3,
        ["fileDataIDs"] = { 4086731,4086742,4086748,4086749,4086750,4086751,4086752,4086753,4086754,4086732,4086733,4086734,4086735,4086736,4086737,4086738,4086739,4086740,4086741,4086743,4086744,4086745,4086746,4086747 } 
    },
    {
        ["offsetX"]=261,
        ["textureHeight"] = 1298,
        ["textureWidth"] = 1356,
        ["offsetY"] = 776,
        ["fileDataIDs"] = { 4086637,4086654,4086665,4086675,4086676,4086677,4086678,4086679,4086680,4086640,4086644,4086646,4086647,4086648,4086649,4086650,4086651,4086652,4086653,4086655,4086656,4086657,4086658,4086659,4086660,4086661,4086662,4086663,4086664,4086666,4086667,4086668,4086669,4086671,4086673,4086674 } 
    }
},
[1691] = {
    {
        ["offsetX"]=1636,
        ["textureHeight"] = 968,
        ["textureWidth"] = 334,
        ["offsetY"] = 375,
        ["fileDataIDs"] = { 4087001,4087002,4087003,4087004,4087005,4087006,4087007,4087008 } 
    },
    {
        ["offsetX"]=1954,
        ["textureHeight"] = 445,
        ["textureWidth"] = 652,
        ["offsetY"] = 1282,
        ["fileDataIDs"] = { 4086975,4086976,4086977,4086978,4086979,4086980 } 
    },
    {
        ["offsetX"]=1876,
        ["textureHeight"] = 1152,
        ["textureWidth"] = 771,
        ["offsetY"] = 218,
        ["fileDataIDs"] = { 4086981,4086992,4086994,4086995,4086996,4086997,4086998,4086999,4087000,4086982,4086983,4086984,4086985,4086986,4086987,4086988,4086989,4086990,4086991,4086993 } 
    },
    {
        ["offsetX"]=845,
        ["textureHeight"] = 1071,
        ["textureWidth"] = 889,
        ["offsetY"] = 275,
        ["fileDataIDs"] = { 4087009,4087020,4087022,4087023,4087024,4087025,4087026,4087027,4087028,4087010,4087011,4087012,4087013,4087014,4087015,4087016,4087017,4087018,4087019,4087021 } 
    },
    {
        ["offsetX"]=1949,
        ["textureHeight"] = 722,
        ["textureWidth"] = 973,
        ["offsetY"] = 1633,
        ["fileDataIDs"] = { 4086935,4086939,4086940,4086941,4086942,4086943,4086944,4086945,4086946,4086936,4086937,4086938 } 
    },
    {
        ["offsetX"]=1052,
        ["textureHeight"] = 475,
        ["textureWidth"] = 998,
        ["offsetY"] = 1247,
        ["fileDataIDs"] = { 4086967,4086968,4086969,4086970,4086971,4086972,4086973,4086974 } 
    },
    {
        ["offsetX"]=894,
        ["textureHeight"] = 833,
        ["textureWidth"] = 1151,
        ["offsetY"] = 1627,
        ["fileDataIDs"] = { 4086947,4086958,4086960,4086961,4086962,4086963,4086964,4086965,4086966,4086948,4086949,4086950,4086951,4086952,4086953,4086954,4086955,4086956,4086957,4086959 } 
    }
},
[1692] = {
    {
        ["offsetX"]=777,
        ["textureHeight"] = 526,
        ["textureWidth"] = 475,
        ["offsetY"] = 875,
        ["fileDataIDs"] = { 4087198,4087199,4087200,4087201,4087202,4087203 } 
    },
    {
        ["offsetX"]=855,
        ["textureHeight"] = 857,
        ["textureWidth"] = 489,
        ["offsetY"] = 218,
        ["fileDataIDs"] = { 4087241,4087242,4087243,4087244,4087245,4087246,4087247,4087248 } 
    },
    {
        ["offsetX"]=1060,
        ["textureHeight"] = 658,
        ["textureWidth"] = 804,
        ["offsetY"] = 824,
        ["fileDataIDs"] = { 4087229,4087233,4087234,4087235,4087236,4087237,4087238,4087239,4087240,4087230,4087231,4087232 } 
    },
    {
        ["offsetX"]=297,
        ["textureHeight"] = 1021,
        ["textureWidth"] = 872,
        ["offsetY"] = 954,
        ["fileDataIDs"] = { 4087182,4087190,4087191,4087192,4087193,4087194,4087195,4087196,4087197,4087183,4087184,4087185,4087186,4087187,4087188,4087189 } 
    },
    {
        ["offsetX"]=1248,
        ["textureHeight"] = 780,
        ["textureWidth"] = 936,
        ["offsetY"] = 167,
        ["fileDataIDs"] = { 4087249,4087257,4087258,4087259,4087260,4087261,4087262,4087263,4087264,4087250,4087251,4087252,4087253,4087254,4087255,4087256 } 
    },
    {
        ["offsetX"]=1287,
        ["textureHeight"] = 723,
        ["textureWidth"] = 1057,
        ["offsetY"] = 1612,
        ["fileDataIDs"] = { 4087204,4087211,4087212,4087213,4087214,4087215,4087216,4087217,4087218,4087205,4087206,4087207,4087208,4087209,4087210 } 
    },
    {
        ["offsetX"]=1058,
        ["textureHeight"] = 336,
        ["textureWidth"] = 1084,
        ["offsetY"] = 1399,
        ["fileDataIDs"] = { 4087219,4087221,4087222,4087223,4087224,4087225,4087226,4087227,4087228,4087220 } 
    },
    {
        ["offsetX"]=1772,
        ["textureHeight"] = 1234,
        ["textureWidth"] = 1980,
        ["offsetY"] = 697,
        ["fileDataIDs"] = { 4087265,4087276,4087287,4087298,4087300,4087301,4087302,4087303,4087304,4087266,4087267,4087268,4087269,4087270,4087271,4087272,4087273,4087274,4087275,4087277,4087278,4087279,4087280,4087281,4087282,4087283,4087284,4087285,4087286,4087288,4087289,4087290,4087291,4087292,4087293,4087294,4087295,4087296,4087297,4087299 } 
    }
},
[1693] = {
    {
        ["offsetX"]=1404,
        ["textureHeight"] = 729,
        ["textureWidth"] = 928,
        ["offsetY"] = 1831,
        ["fileDataIDs"] = { 4178826,4178827,4178828,4178829,4178830,4178831,4178832,4178833,4178834,4178835,4178836,4178837 } 
    },
    {
        ["offsetX"]=808,
        ["textureHeight"] = 1359,
        ["textureWidth"] = 928,
        ["offsetY"] = 1201,
        ["fileDataIDs"] = { 4178922,4178923,4178924,4178925,4178926,4178927,4178928,4178929,4178930,4178931,4178932,4178933,4178934,4178935,4178936,4178937,4178938,4178939,4178940,4178941,4178942,4178943,4178944,4178945 } 
    },
    {
        ["offsetX"]=262,
        ["textureHeight"] = 1076,
        ["textureWidth"] = 954,
        ["offsetY"] = 1423,
        ["fileDataIDs"] = { 4178902,4178903,4178904,4178905,4178906,4178907,4178908,4178909,4178910,4178911,4178912,4178913,4178914,4178915,4178916,4178917,4178918,4178919,4178920,4178921 } 
    },
    {
        ["offsetX"]=1442,
        ["textureHeight"] = 835,
        ["textureWidth"] = 1009,
        ["offsetY"] = 1262,
        ["fileDataIDs"] = { 4178838,4178839,4178840,4178841,4178842,4178843,4178844,4178845,4178846,4178847,4178848,4178849,4178850,4178851,4178852,4178853 } 
    },
    {
        ["offsetX"]=49,
        ["textureHeight"] = 934,
        ["textureWidth"] = 1053,
        ["offsetY"] = 918,
        ["fileDataIDs"] = { 4178986,4178987,4178988,4178989,4178990,4178991,4178992,4178993,4178994,4178995,4178996,4178997,4178998,4178999,4179000,4179001,4179002,4179003,4179004,4179005 } 
    },
    {
        ["offsetX"]=772,
        ["textureHeight"] = 824,
        ["textureWidth"] = 1078,
        ["offsetY"] = 598,
        ["fileDataIDs"] = { 4178966,4178967,4178968,4178969,4178970,4178971,4178972,4178973,4178974,4178975,4178976,4178977,4178978,4178979,4178980,4178981,4178982,4178983,4178984,4178985 } 
    },
    {
        ["offsetX"]=1100,
        ["textureHeight"] = 821,
        ["textureWidth"] = 1186,
        ["offsetY"] = 696,
        ["fileDataIDs"] = { 4178946,4178947,4178948,4178949,4178950,4178951,4178952,4178953,4178954,4178955,4178956,4178957,4178958,4178959,4178960,4178961,4178962,4178963,4178964,4178965 } 
    },
    {
        ["offsetX"]=0,
        ["textureHeight"] = 1236,
        ["textureWidth"] = 1232,
        ["offsetY"] = 342,
        ["fileDataIDs"] = { 4179006,4179007,4179008,4179009,4179010,4179011,4179012,4179013,4179014,4179015,4179016,4179017,4179018,4179019,4179020,4179021,4179022,4179023,4179024,4179025,4179026,4179027,4179028,4179029,4179030 } 
    },
    {
        ["offsetX"]=183,
        ["textureHeight"] = 932,
        ["textureWidth"] = 1395,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 4179031,4179032,4179033,4179034,4179035,4179036,4179037,4179038,4179039,4179040,4179041,4179042,4179043,4179044,4179045,4179046,4179047,4179048,4179049,4179050,4179051,4179052,4179053,4179054 } 
    },
    {
        ["offsetX"]=1856,
        ["textureHeight"] = 988,
        ["textureWidth"] = 1408,
        ["offsetY"] = 1572,
        ["fileDataIDs"] = { 4178802,4178803,4178804,4178805,4178806,4178807,4178808,4178809,4178810,4178811,4178812,4178813,4178814,4178815,4178816,4178817,4178818,4178819,4178820,4178821,4178822,4178823,4178824,4178825 } 
    },
    {
        ["offsetX"]=1797,
        ["textureHeight"] = 1946,
        ["textureWidth"] = 1488,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 4178854,4178855,4178856,4178857,4178858,4178859,4178860,4178861,4178862,4178863,4178864,4178865,4178866,4178867,4178868,4178869,4178870,4178871,4178872,4178873,4178874,4178875,4178876,4178877,4178878,4178879,4178880,4178881,4178882,4178883,4178884,4178885,4178886,4178887,4178888,4178889,4178890,4178891,4178892,4178893,4178894,4178895,4178896,4178897,4178898,4178899,4178900,4178901 } 
    },
    {
        ["offsetX"]=1171,
        ["textureHeight"] = 929,
        ["textureWidth"] = 1504,
        ["offsetY"] = 0,
        ["fileDataIDs"] = { 4179055,4179056,4179057,4179058,4179059,4179060,4179061,4179062,4179063,4179064,4179065,4179066,4179067,4179068,4179069,4179070,4179071,4179072,4179073,4179074,4179075,4179076,4179077,4179078 } 
    }
}
				
			}

		}
	}

	defaults.global.overlayData.Hyjal_terrain1 = defaults.global.overlayData.Hyjal
	defaults.global.overlayData.Uldum_terrain1 = defaults.global.overlayData.Uldum
	defaults.global.overlayData.Gilneas_terrain1 = defaults.global.overlayData.Gilneas
	defaults.global.overlayData.Gilneas_terrain2 = defaults.global.overlayData.Gilneas
	defaults.global.overlayData.TheLostIsles_terrain1 = defaults.global.overlayData.TheLostIsles
	defaults.global.overlayData.TheLostIsles_terrain2 = defaults.global.overlayData.TheLostIsles
	defaults.global.overlayData.TwilightHighlands_terrain1 = defaults.global.overlayData.TwilightHighlands
	defaults.global.overlayData.BlastedLands_terrain1 = defaults.global.overlayData.BlastedLands	

    local function ShouldShowOriginalTexture(mapId)
        if (mapId == 81 or mapId == 18 or mapId == 14 or mapId == 62)
		and UnitLevel("player") >= 110 then
            return true
        end
    end
    
	local function FindTilesFrame()
		local allMapFrames = {WorldMapFrame.ScrollContainer.Child:GetChildren()}
		for i = 1, #allMapFrames do
			local frame = allMapFrames[i]
			if frame.detailTilePool then
				return frame 
			end
		end
	end
	local db
	
	C_MapExplorationInfo.GetExploredMapTextures_org = C_MapExplorationInfo.GetExploredMapTextures
	
	C_MapExplorationInfo.GetExploredMapTextures = function(mapId)
        if not mapId then
            return {}
        end

        if not MOD:UserSetting(DGV_REMOVEMAPFOG) then 
            return C_MapExplorationInfo.GetExploredMapTextures_org(mapId)
        end
		
		local artID = C_Map.GetMapArtID(mapId)

		local result = {}
		
		if db and db.global.overlayData then
			if db.global.overlayData[artID] then
				local internalOverlayData = db.global.overlayData[artID]
				for i=1, #internalOverlayData do
					if not result[i] then
						result[i] = internalOverlayData[i]
									
						result[i]["hitRect"] = {
							["top"] = 0,
							["right"] = 0,
							["left"] = 0,
							["bottom"] = 0,
						}
						result[i]["isShownByMouseOver"] = false
					end
				end
			end
		end
		
		return result
	end

    local function IsExploredId(mapID_, textureId)
        local exploredMapTextures_org = C_MapExplorationInfo.GetExploredMapTextures_org(mapID_);

        for i, info in pairs(exploredMapTextures_org or {}) do
            for j, val in pairs(info.fileDataIDs or {}) do 
                if val == textureId then
                    return true
                end
            end
        end
    end

    MOD.IsExploredId = IsExploredId

    local function FindFogPool()
        for pin in WorldMapFrame:EnumeratePinsByTemplate("MapExplorationPinTemplate") do
            return pin.overlayTexturePool
        end
    end

    MOD.UpdateOverlaysColors = function()
        local overlayTexturePool = FindFogPool()
       
        for textureK, textureV in overlayTexturePool:EnumerateActive() do
            local textId = textureK:GetTexture()

            if IsExploredId(WorldMapFrame:GetMapID(), textId) then
                textureK:SetVertexColor(1, 1, 1)
            else
                textureK:SetVertexColor(0.5, 0.5, 0.5)
            end
        end
    end

	local overlayTextures  = {}
	overlayTexturesGPS  = {}    
    local bigOverlays = {}
	
	-- Code courtesy ckknight
	function MOD:GetCurrentCursorPosition(frame)
	local x, y = GetCursorPosition()
	local left, top = frame:GetLeft(), frame:GetTop()
	local width = frame:GetWidth()
	local height = frame:GetHeight()
	local scale = frame:GetEffectiveScale()
	local cx = (x/scale - left) / width
	local cy = (top - y/scale) / height

		if cx < 0 or cx > 1 or cy < 0 or cy > 1 then
			return nil, nil
	end
	return cx, cy
	end

	local formatCoords = "%.2f, %.2f"


	local UpdateWorldMapFrame = MOD.NoOp
	function MOD:InitializeMapOverlays()
		db = LibStub("AceDB-3.0"):New("MapOverlaysDugis", defaults)
		
		-- todo: find replacement
		--hooksecurefunc("WorldMapFrame_Update", UpdateWorldMapFrame);
		hooksecurefunc(WorldMapFrame, "OnMapChanged", UpdateWorldMapFrame);
		
	end

	function MOD:MapHasOverlays()
		local overlayMap = db.global.overlayData[WorldMapFrame:GetMapID()]
		return overlayMap and next(overlayMap)
	end

	function MapOverlays:Load()
		UpdateWorldMapFrame = function()
			if not MOD.CoordsFrame then
				MOD.CoordsFrame = CreateFrame("Frame", nil, WorldMapFrame)
				MOD.CoordsFrame.Player = MOD.CoordsFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
				MOD.CoordsFrame.Cursor = MOD.CoordsFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
				MOD.CoordsFrame:SetScript("OnUpdate", function()
					if MOD:UserSetting(DGV_DISPLAYMAPCOORDINATES)
						and not DugisGuideViewer.mapsterloaded
						and not DugisGuideViewer.tomtomloaded
					then
						local _, _, x, y  = DugisGuideViewer:GetUnitPosition("player", true, nil, true)
						if not x or not y then
							MOD.CoordsFrame.Player:SetText("|cffffd200Player:|r ---")
						else
							MOD.CoordsFrame.Player:SetFormattedText("|cffffd200Player:|r %s", formatCoords:format(x*100, y*100))
						end

						if WorldMapFrame.ScrollContainer.Child:GetLeft() then --prevents error on early load
							local cX, cY = MOD:GetCurrentCursorPosition(WorldMapFrame.ScrollContainer.Child)
							if not cX or not cY then
								MOD.CoordsFrame.Cursor:SetText("|cffffd200Cursor:|r ---")
							else
								MOD.CoordsFrame.Cursor:SetFormattedText("|cffffd200Cursor:|r %s", formatCoords:format(cX*100, cY*100))
							end
						end
                        MOD.CoordsFrame:Show()
					else
						MOD.CoordsFrame:Hide()
					end

					if DugisGuideViewer.tomtomloaded
						or MOD:UserSetting(DGV_DISPLAYMAPCOORDINATES)
					then
					
					end
				end)
				MOD.CoordsFrame:Show()
			end

			MOD.CoordsFrame.Player:ClearAllPoints()
			MOD.CoordsFrame.Cursor:ClearAllPoints()
			
			if not WorldMapFrame:IsMaximized() then
				MOD.CoordsFrame.Player:SetPoint("TOPLEFT", WorldMapFrame, "BOTTOMLEFT", 4, -5)
				MOD.CoordsFrame.Cursor:SetPoint("TOPLEFT", WorldMapFrame, "BOTTOMLEFT", 140, -5)
	     	else
				MOD.CoordsFrame.Player:SetPoint("TOPLEFT", WorldMapFrame, "BOTTOM", -120, -30)
				MOD.CoordsFrame.Cursor:SetPoint("TOPLEFT", WorldMapFrame, "BOTTOM", 20, -30)
			end
		end
		MOD:InitializeMapOverlays()
        
        UpdateWorldMapFrame()
	end

	function MapOverlays:Unload()
		UpdateWorldMapFrame = MOD.NoOp
		if MOD.CoordsFrame then MOD.CoordsFrame:Hide() end
	end
end
