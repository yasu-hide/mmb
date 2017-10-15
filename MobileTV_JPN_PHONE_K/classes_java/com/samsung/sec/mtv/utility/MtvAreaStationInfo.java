// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.content.Context;
import android.content.res.Resources;

public class MtvAreaStationInfo
{

    public MtvAreaStationInfo()
    {
    }

    public static String getStringByResourceName(Context context, String s)
    {
        Object obj = null;
        int i = context.getResources().getIdentifier((new StringBuilder()).append("com.samsung.sec.mtv:string/").append(s).toString(), null, null);
        s = obj;
        if(i != 0)
            s = context.getString(i);
        return s;
    }

    public static final String AREA_LOCAL[][][];
    public static final int AREA_LOCAL_ID[][][];
    public static final String AREA_PROVINCES[][];
    public static final String AREA_REGION[] = {
        "DTV_AREA_1", "DTV_AREA_2", "DTV_AREA_3", "DTV_AREA_4", "DTV_AREA_5", "DTV_AREA_6", "DTV_AREA_7", "DTV_AREA_8"
    };
    public static final String AREA_STATION[][];
    public static final int CHANNEL_NAME = 0;
    public static final int GGUIDE_STATION_ARRAY_LENGTH = 4;
    public static final int PHYSICAL_CH = 1;
    public static final int PHYSICAL_STRING = 2;
    public static final int SERVICE_ID_END = 4;
    public static final int SERVICE_ID_START = 3;
    public static final int STATION_ARRAY_LENGTH = 5;

    static 
    {
        Object obj = {
            "DTV_AREA_2_1", "DTV_AREA_2_2", "DTV_AREA_2_3", "DTV_AREA_2_4", "DTV_AREA_2_5", "DTV_AREA_2_6", "DTV_AREA_2_7"
        };
        Object aobj[] = {
            "DTV_AREA_7_1", "DTV_AREA_7_2", "DTV_AREA_7_3", "DTV_AREA_7_4"
        };
        AREA_PROVINCES = (new String[][] {
            new String[] {
                "DTV_AREA_1_1", "DTV_AREA_1_2", "DTV_AREA_1_3", "DTV_AREA_1_4", "DTV_AREA_1_5", "DTV_AREA_1_6", "DTV_AREA_1_7"
            }, obj, new String[] {
                "DTV_AREA_3_1", "DTV_AREA_3_2", "DTV_AREA_3_3", "DTV_AREA_3_4", "DTV_AREA_3_5", "DTV_AREA_3_6"
            }, new String[] {
                "DTV_AREA_4_1", "DTV_AREA_4_2", "DTV_AREA_4_3", "DTV_AREA_4_4"
            }, new String[] {
                "DTV_AREA_5_1", "DTV_AREA_5_2", "DTV_AREA_5_3", "DTV_AREA_5_4", "DTV_AREA_5_5", "DTV_AREA_5_6"
            }, new String[] {
                "DTV_AREA_6_1", "DTV_AREA_6_2", "DTV_AREA_6_3", "DTV_AREA_6_4", "DTV_AREA_6_5"
            }, aobj, new String[] {
                "DTV_AREA_8_1", "DTV_AREA_8_2", "DTV_AREA_8_3", "DTV_AREA_8_4", "DTV_AREA_8_5", "DTV_AREA_8_6", "DTV_AREA_8_7", "DTV_AREA_8_8"
            }
        });
        Object aobj2[] = {
            "DTV_AREA_1_1_1", "DTV_AREA_1_1_2", "DTV_AREA_1_1_3", "DTV_AREA_1_1_4", "DTV_AREA_1_1_5", "DTV_AREA_1_1_6", "DTV_AREA_1_1_7", "DTV_AREA_1_1_8", "DTV_AREA_1_1_9", "DTV_AREA_1_1_10", 
            "DTV_AREA_1_1_11", "DTV_AREA_1_1_12"
        };
        Object aobj3[] = {
            "DTV_AREA_1_2_1", "DTV_AREA_1_2_2", "DTV_AREA_1_2_3"
        };
        Object aobj4[] = {
            "DTV_AREA_1_3_1", "DTV_AREA_1_3_2", "DTV_AREA_1_3_3"
        };
        Object aobj5[] = {
            "DTV_AREA_1_4_1", "DTV_AREA_1_4_2", "DTV_AREA_1_4_3"
        };
        Object aobj6[] = {
            "DTV_AREA_1_5_1", "DTV_AREA_1_5_2", "DTV_AREA_1_5_3"
        };
        Object aobj7[] = {
            "DTV_AREA_1_6_1", "DTV_AREA_1_6_2", "DTV_AREA_1_6_3"
        };
        obj = (new String[] {
            "DTV_AREA_2_1_1", "DTV_AREA_2_1_2"
        });
        aobj = (new String[] {
            "DTV_AREA_2_2_1", "DTV_AREA_2_2_2"
        });
        Object aobj1[] = {
            "DTV_AREA_2_4_1", "DTV_AREA_2_4_2", "DTV_AREA_2_4_3"
        };
        Object obj1 = {
            "DTV_AREA_3_1_1", "DTV_AREA_3_1_2"
        };
        Object aobj9[] = {
            "DTV_AREA_3_3_1", "DTV_AREA_3_3_2"
        };
        Object aobj10[] = {
            "DTV_AREA_3_5_1"
        };
        obj1 = (new String[][] {
            obj1, new String[] {
                "DTV_AREA_3_2_1", "DTV_AREA_3_2_2"
            }, aobj9, new String[] {
                "DTV_AREA_3_4_1", "DTV_AREA_3_4_2"
            }, aobj10, new String[] {
                "DTV_AREA_3_6_1", "DTV_AREA_3_6_2", "DTV_AREA_3_6_3", "DTV_AREA_3_6_4"
            }
        });
        aobj9 = (new String[] {
            "DTV_AREA_5_1_1", "DTV_AREA_5_1_2"
        });
        aobj10 = (new String[] {
            "DTV_AREA_5_2_1", "DTV_AREA_5_2_2", "DTV_AREA_5_2_3"
        });
        Object aobj11[] = {
            "DTV_AREA_5_3_1"
        };
        Object aobj12[] = {
            "DTV_AREA_5_5_1"
        };
        String as4[] = {
            "DTV_AREA_6_1_1"
        };
        String as5[] = {
            "DTV_AREA_6_2_1", "DTV_AREA_6_2_2"
        };
        String as6[] = {
            "DTV_AREA_6_3_1", "DTV_AREA_6_3_2", "DTV_AREA_6_3_3"
        };
        String as7[] = {
            "DTV_AREA_6_4_1", "DTV_AREA_6_4_2", "DTV_AREA_6_4_3", "DTV_AREA_6_4_4"
        };
        String as8[] = {
            "DTV_AREA_6_5_1", "DTV_AREA_6_5_2", "DTV_AREA_6_5_3", "DTV_AREA_6_5_4"
        };
        Object aobj13[] = {
            "DTV_AREA_7_1_1"
        };
        Object aobj14[] = {
            "DTV_AREA_8_1_1", "DTV_AREA_8_1_2", "DTV_AREA_8_1_3", "DTV_AREA_8_1_4", "DTV_AREA_8_1_5"
        };
        Object aobj15[] = {
            "DTV_AREA_8_2_1"
        };
        Object aobj16[] = {
            "DTV_AREA_8_3_1", "DTV_AREA_8_3_2", "DTV_AREA_8_3_3"
        };
        Object aobj17[] = {
            "DTV_AREA_8_4_1"
        };
        String as1[] = {
            "DTV_AREA_8_5_1", "DTV_AREA_8_5_2"
        };
        String as2[] = {
            "DTV_AREA_8_7_1", "DTV_AREA_8_7_2", "DTV_AREA_8_7_3"
        };
        String as3[] = {
            "DTV_AREA_8_8_1"
        };
        AREA_LOCAL = (new String[][][] {
            new String[][] {
                aobj2, aobj3, aobj4, aobj5, aobj6, aobj7, new String[] {
                    "DTV_AREA_1_7_1", "DTV_AREA_1_7_2", "DTV_AREA_1_7_3"
                }
            }, new String[][] {
                obj, aobj, new String[] {
                    "DTV_AREA_2_3_1", "DTV_AREA_2_3_2"
                }, aobj1, new String[] {
                    "DTV_AREA_2_5_1", "DTV_AREA_2_5_2"
                }, new String[] {
                    "DTV_AREA_2_6_1", "DTV_AREA_2_6_2", "DTV_AREA_2_6_3"
                }, new String[] {
                    "DTV_AREA_2_7_1", "DTV_AREA_2_7_2", "DTV_AREA_2_7_3", "DTV_AREA_2_7_4"
                }
            }, obj1, new String[][] {
                new String[] {
                    "DTV_AREA_4_1_1", "DTV_AREA_4_1_2", "DTV_AREA_4_1_3"
                }, new String[] {
                    "DTV_AREA_4_2_1", "DTV_AREA_4_2_2", "DTV_AREA_4_2_3", "DTV_AREA_4_2_4", "DTV_AREA_4_2_5", "DTV_AREA_4_2_6"
                }, new String[] {
                    "DTV_AREA_4_3_1", "DTV_AREA_4_3_2", "DTV_AREA_4_3_3"
                }, new String[] {
                    "DTV_AREA_4_4_1", "DTV_AREA_4_4_2", "DTV_AREA_4_4_3"
                }
            }, new String[][] {
                aobj9, aobj10, aobj11, new String[] {
                    "DTV_AREA_5_4_1", "DTV_AREA_5_4_2", "DTV_AREA_5_4_3", "DTV_AREA_5_4_4"
                }, aobj12, new String[] {
                    "DTV_AREA_5_6_1", "DTV_AREA_5_6_2"
                }
            }, new String[][] {
                as4, as5, as6, as7, as8
            }, new String[][] {
                aobj13, new String[] {
                    "DTV_AREA_7_2_1", "DTV_AREA_7_2_2"
                }, new String[] {
                    "DTV_AREA_7_3_1", "DTV_AREA_7_3_2", "DTV_AREA_7_3_3", "DTV_AREA_7_3_4"
                }, new String[] {
                    "DTV_AREA_7_4_1"
                }
            }, new String[][] {
                aobj14, aobj15, aobj16, aobj17, as1, new String[] {
                    "DTV_AREA_8_6_1", "DTV_AREA_8_6_2"
                }, as2, as3
            }
        });
        aobj = (new int[] {
            28, 29, 30
        });
        Object aobj8[] = {
            37, 38, 39
        };
        aobj9 = (new int[] {
            40, 41
        });
        aobj1 = (new int[] {
            49, 50
        });
        aobj2 = (new int[] {
            51, 52
        });
        aobj3 = (new int[] {
            53, 54
        });
        aobj4 = (new int[] {
            65, 66, 67, 68, 69, 70
        });
        aobj5 = (new int[] {
            83, 84, 85, 86
        });
        aobj6 = (new int[] {
            87
        });
        aobj7 = (new int[] {
            88, 89
        });
        aobj15 = (new int[] {
            90
        });
        aobj16 = (new int[] {
            91, 92
        });
        aobj17 = (new int[] {
            93, 94, 95
        });
        obj = (new int[][] {
            new int[] {
                104
            }, new int[] {
                105, 106
            }, new int[] {
                107, 108, 109, 110
            }, new int[] {
                111
            }
        });
        aobj10 = (new int[] {
            117
        });
        aobj11 = (new int[] {
            121
        });
        aobj12 = (new int[] {
            124, 125
        });
        aobj13 = (new int[] {
            126, 127, 128
        });
        aobj14 = (new int[] {
            129
        });
        AREA_LOCAL_ID = (new int[][][] {
            new int[][] {
                new int[] {
                    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
                    11, 12
                }, new int[] {
                    13, 14, 15
                }, new int[] {
                    16, 17, 18
                }, new int[] {
                    19, 20, 21
                }, new int[] {
                    22, 23, 24
                }, new int[] {
                    25, 26, 27
                }, aobj
            }, new int[][] {
                new int[] {
                    31, 32
                }, new int[] {
                    33, 34
                }, new int[] {
                    35, 36
                }, aobj8, aobj9, new int[] {
                    42, 43, 44
                }, new int[] {
                    45, 46, 47, 48
                }
            }, new int[][] {
                aobj1, aobj2, aobj3, new int[] {
                    55, 56
                }, new int[] {
                    57
                }, new int[] {
                    58, 59, 60, 61
                }
            }, new int[][] {
                new int[] {
                    62, 63, 64
                }, aobj4, new int[] {
                    71, 72, 73
                }, new int[] {
                    74, 75, 76
                }
            }, new int[][] {
                new int[] {
                    77, 78
                }, new int[] {
                    79, 80, 81
                }, new int[] {
                    82
                }, aobj5, aobj6, aobj7
            }, new int[][] {
                aobj15, aobj16, aobj17, new int[] {
                    96, 97, 98, 99
                }, new int[] {
                    100, 101, 102, 103
                }
            }, obj, new int[][] {
                new int[] {
                    112, 113, 114, 115, 116
                }, aobj10, new int[] {
                    118, 119, 120
                }, aobj11, new int[] {
                    122, 123
                }, aobj12, aobj13, aobj14
            }
        });
        String as[] = {
            "DTV_CHANNEL_NAME_001", "32", "16", "3D90", "3D97", "DTV_CHANNEL_NAME_011", "23", "17", "3D88", "3D8F", 
            "DTV_CHANNEL_NAME_012", "30", "18", "3D80", "3D87", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_005", "29", "19", "3D98", "3D9F", "DTV_CHANNEL_NAME_006", "31", "20", "3DA0", "3DA7", 
            "DTV_CHANNEL_NAME_007", "25", "21", "3DB0", "3DB7", "DTV_CHANNEL_NAME_008", "33", "22", "3DA8", "3DA7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        };
        aobj = (new String[] {
            "DTV_CHANNEL_NAME_001", "45", "30", "3990", "3997", "DTV_CHANNEL_NAME_015", "29", "31", "3988", "398F", 
            "DTV_CHANNEL_NAME_016", "33", "32", "3980", "3987", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_005", "31", "33", "3998", "399F", "DTV_CHANNEL_NAME_006", "36", "34", "39A0", "39A7", 
            "DTV_CHANNEL_NAME_007", "41", "35", "39B0", "39B7", "DTV_CHANNEL_NAME_008", "43", "36", "39A8", "39AF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj1 = (new String[] {
            "DTV_CHANNEL_NAME_001", "22", "37", "4190", "4197", "DTV_CHANNEL_NAME_017", "16", "38", "4188", "418F", 
            "DTV_CHANNEL_NAME_018", "24", "39", "4180", "4187", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_005", "31", "40", "4198", "419F", "DTV_CHANNEL_NAME_006", "20", "41", "41A0", "41A7", 
            "DTV_CHANNEL_NAME_007", "26", "42", "41B0", "41B7", "DTV_CHANNEL_NAME_008", "33", "43", "41A8", "41AF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj2 = (new String[] {
            "DTV_CHANNEL_NAME_001", "17", "44", "2D90", "2D97", "DTV_CHANNEL_NAME_019", "14", "45", "2D88", "2D8F", 
            "DTV_CHANNEL_NAME_020", "18", "46", "2D80", "2D87", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_005", "15", "47", "2D98", "2D9F", "DTV_CHANNEL_NAME_006", "23", "48", "2DA0", "2DA7", 
            "DTV_CHANNEL_NAME_007", "19", "49", "2DB0", "2DB7", "DTV_CHANNEL_NAME_008", "25", "50", "2DA8", "2DAF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj3 = (new String[] {
            "DTV_CHANNEL_NAME_021", "28", "51", "5990", "5997", "DTV_CHANNEL_NAME_022", "13", "52", "5988", "598F", 
            "DTV_CHANNEL_NAME_023", "16", "53", "5980", "5987", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_024", "32", "54", "59A0", "59A7", "DTV_CHANNEL_NAME_025", "30", "55", "5998", "599F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
        });
        aobj4 = (new String[] {
            "DTV_CHANNEL_NAME_026", "14", "57", "5180", "5187", "DTV_CHANNEL_NAME_027", "13", "58", "5188", "518F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_028", "18", "59", "5198", "519F", 
            "DTV_CHANNEL_NAME_029", "22", "60", "51A8", "51AF", "DTV_CHANNEL_NAME_030", "16", "61", "5190", "5197", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_031", "20", "62", "51A0", "51A7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
        });
        aobj5 = (new String[] {
            "DTV_CHANNEL_NAME_026", "23", "57", "5180", "5187", "DTV_CHANNEL_NAME_027", "21", "58", "5188", "518F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_028", "17", "59", "5198", "519F", 
            "DTV_CHANNEL_NAME_029", "19", "60", "51A8", "51AF", "DTV_CHANNEL_NAME_030", "15", "61", "5190", "5197", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_031", "50", "62", "51A0", "51A7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
        });
        aobj6 = (new String[] {
            "DTV_CHANNEL_NAME_032", "19", "63", "4590", "4597", "DTV_CHANNEL_NAME_033", "13", "64", "4588", "458F", 
            "DTV_CHANNEL_NAME_034", "17", "65", "4580", "4587", "DTV_CHANNEL_NAME_035", "24", "66", "45A0", "45A7", 
            "DTV_CHANNEL_NAME_036", "28", "67", "45A8", "45AF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_037", "21", "68", "4598", "459F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
        });
        aobj7 = (new String[] {
            "DTV_CHANNEL_NAME_038", "15", "69", "4980", "4987", "DTV_CHANNEL_NAME_039", "13", "70", "4988", "498F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_040", "17", "71", "4990", "4997", 
            "DTV_CHANNEL_NAME_041", "29", "72", "49A0", "49A7", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_042", "21", "73", "4998", "499F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj8 = (new String[] {
            "DTV_CHANNEL_NAME_049", "16", "80", "5580", "5587", "DTV_CHANNEL_NAME_050", "14", "81", "5588", "558F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_051", "22", "82", "5598", "559F", 
            "DTV_CHANNEL_NAME_052", "30", "83", "55A0", "55A7", "DTV_CHANNEL_NAME_053", "20", "84", "55A8", "55AF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_054", "18", "85", "5590", "5597", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj9 = (new String[] {
            "DTV_CHANNEL_NAME_055", "20", "117", "6980", "6987", "DTV_CHANNEL_NAME_056", "52", "118", "0588", "058F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_057", "14", "119", "0590", "0597", 
            "DTV_CHANNEL_NAME_058", "37", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "15", "121", "0598", "059F", 
            "DTV_CHANNEL_NAME_060", "18", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "19", "123", "05A0", "05A7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj10 = (new String[] {
            "DTV_CHANNEL_NAME_062", "37", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
            "DTV_CHANNEL_NAME_064", "19", "4", "65B8", "65BF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
            "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
            "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj11 = (new String[] {
            "DTV_CHANNEL_NAME_062", "27", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
            "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
            "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
            "DTV_CHANNEL_NAME_068", "16", "130", "5DB8", "5DBF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "128", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj12 = (new String[] {
            "DTV_CHANNEL_NAME_062", "19", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
            "DTV_CHANNEL_NAME_069", "18", "131", "61B8", "61BF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
            "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
            "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj13 = (new String[] {
            "DTV_CHANNEL_NAME_070", "15", "86", "7D80", "7D87", "DTV_CHANNEL_NAME_071", "13", "87", "7D88", "7D8F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_072", "26", "88", "7DA0", "7DA7", 
            "DTV_CHANNEL_NAME_073", "23", "89", "7DA8", "7DAF", "DTV_CHANNEL_NAME_074", "17", "90", "7D90", "7D97", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_075", "19", "91", "7D98", "7D9F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj14 = (new String[] {
            "DTV_CHANNEL_NAME_070", "16", "86", "7D80", "7D87", "DTV_CHANNEL_NAME_071", "14", "87", "7D88", "7D8F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_072", "31", "4", "7DA0", "7DA7", 
            "DTV_CHANNEL_NAME_073", "39", "4", "7DA8", "7DAF", "DTV_CHANNEL_NAME_074", "18", "90", "7D90", "7D97", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_075", "25", "91", "7D98", "7D9F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj15 = (new String[] {
            "DTV_CHANNEL_NAME_076", "38", "102", "9590", "9597", "DTV_CHANNEL_NAME_077", "37", "103", "9588", "958F", 
            "DTV_CHANNEL_NAME_078", "36", "104", "9580", "9587", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_079", "47", "105", "95A0", "95A7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_080", "40", "106", "9598", "959F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj16 = (new String[] {
            "DTV_CHANNEL_NAME_081", "52", "107", "8980", "8987", "DTV_CHANNEL_NAME_082", "44", "108", "8988", "898F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_083", "30", "109", "8990", "8997", 
            "DTV_CHANNEL_NAME_084", "42", "110", "8998", "899F", "DTV_CHANNEL_NAME_085", "20", "111", "89A0", "89A7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_086", "39", "112", "89A8", "89AF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        aobj17 = (new String[] {
            "DTV_CHANNEL_NAME_095", "47", "96", "7980", "7987", "DTV_CHANNEL_NAME_096", "38", "97", "7988", "798F", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_097", "44", "98", "7990", "7997", 
            "DTV_CHANNEL_NAME_098", "41", "99", "7998", "799F", "DTV_CHANNEL_NAME_099", "51", "100", "79A0", "79A7", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_100", "49", "101", "79A8", "79AF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
            "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
        });
        AREA_STATION = (new String[][] {
            new String[] {
                "DTV_CHANNEL_NAME_001", "19", "1", "2990", "2997", "DTV_CHANNEL_NAME_002", "13", "2", "2988", "298F", 
                "DTV_CHANNEL_NAME_003", "15", "3", "2980", "2987", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_005", "21", "5", "2998", "299F", "DTV_CHANNEL_NAME_006", "23", "6", "29A0", "29A7", 
                "DTV_CHANNEL_NAME_007", "14", "7", "29B0", "29B7", "DTV_CHANNEL_NAME_008", "25", "8", "29A8", "29AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_001", "19", "9", "3190", "3197", "DTV_CHANNEL_NAME_009", "13", "10", "3188", "318F", 
                "DTV_CHANNEL_NAME_010", "15", "11", "3180", "3187", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_005", "23", "12", "3198", "319F", "DTV_CHANNEL_NAME_006", "14", "13", "31A0", "31A7", 
                "DTV_CHANNEL_NAME_007", "21", "14", "31B0", "31B7", "DTV_CHANNEL_NAME_008", "25", "15", "31A8", "31AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, as, new String[] {
                "DTV_CHANNEL_NAME_001", "19", "23", "3590", "3597", "DTV_CHANNEL_NAME_013", "13", "24", "3588", "358F", 
                "DTV_CHANNEL_NAME_014", "15", "25", "3580", "3587", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_005", "21", "26", "3598", "359F", "DTV_CHANNEL_NAME_006", "23", "27", "35A0", "35A7", 
                "DTV_CHANNEL_NAME_007", "17", "28", "35B0", "35B7", "DTV_CHANNEL_NAME_008", "25", "29", "35A8", "35AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj, aobj1, aobj2, new String[] {
                "DTV_CHANNEL_NAME_001", "41", "1", "4190", "4197", "DTV_CHANNEL_NAME_017", "43", "2", "4188", "418F", 
                "DTV_CHANNEL_NAME_018", "24", "3", "4180", "4187", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_005", "45", "5", "4198", "419F", "DTV_CHANNEL_NAME_006", "38", "6", "41A0", "41A7", 
                "DTV_CHANNEL_NAME_007", "42", "7", "41B0", "41B7", "DTV_CHANNEL_NAME_008", "40", "8", "41A8", "41AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_001", "17", "44", "2990", "2997", "DTV_CHANNEL_NAME_002", "29", "2", "2988", "298F", 
                "DTV_CHANNEL_NAME_003", "31", "3", "2980", "2987", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_005", "33", "5", "2998", "299F", "DTV_CHANNEL_NAME_006", "20", "6", "29A0", "29A7", 
                "DTV_CHANNEL_NAME_007", "30", "7", "29B0", "29B7", "DTV_CHANNEL_NAME_008", "22", "8", "29A8", "29AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_001", "41", "1", "3190", "3197", "DTV_CHANNEL_NAME_009", "20", "2", "3188", "318F", 
                "DTV_CHANNEL_NAME_010", "28", "3", "3180", "3187", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_005", "32", "5", "3198", "319F", "DTV_CHANNEL_NAME_006", "22", "6", "31A0", "31A7", 
                "DTV_CHANNEL_NAME_004", "-1", "21", "FFFF", "FFFF", "DTV_CHANNEL_NAME_008", "31", "8", "31A8", "31AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_001", "16", "1", "3190", "3197", "DTV_CHANNEL_NAME_009", "20", "2", "3188", "318F", 
                "DTV_CHANNEL_NAME_010", "44", "3", "3180", "3187", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_005", "32", "5", "3198", "319F", "DTV_CHANNEL_NAME_006", "42", "6", "31A0", "31A7", 
                "DTV_CHANNEL_NAME_004", "-1", "7", "FFFF", "FFFF", "DTV_CHANNEL_NAME_008", "18", "8", "31A8", "31AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_001", "22", "1", "3D90", "3D97", "DTV_CHANNEL_NAME_011", "13", "2", "3D88", "3D8F", 
                "DTV_CHANNEL_NAME_012", "18", "3", "3D80", "3D87", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_005", "16", "5", "3D98", "3D9F", "DTV_CHANNEL_NAME_006", "20", "6", "3DA0", "3DA7", 
                "DTV_CHANNEL_NAME_007", "14", "7", "3DB0", "3DB7", "DTV_CHANNEL_NAME_008", "24", "8", "3DA8", "3DA7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj3, new String[] {
                "DTV_CHANNEL_NAME_021", "22", "51", "5990", "5997", "DTV_CHANNEL_NAME_022", "14", "52", "5988", "598F", 
                "DTV_CHANNEL_NAME_023", "20", "56", "5980", "5987", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_024", "24", "54", "59A0", "59A7", "DTV_CHANNEL_NAME_025", "18", "55", "5998", "599F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_021", "43", "51", "5990", "5997", "DTV_CHANNEL_NAME_022", "47", "52", "5988", "598F", 
                "DTV_CHANNEL_NAME_023", "42", "56", "5980", "5987", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_024", "41", "54", "59A0", "59A7", "DTV_CHANNEL_NAME_025", "45", "55", "5998", "599F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
            }, aobj4, new String[] {
                "DTV_CHANNEL_NAME_026", "14", "57", "5180", "5187", "DTV_CHANNEL_NAME_027", "13", "58", "5188", "518F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_028", "22", "59", "5198", "519F", 
                "DTV_CHANNEL_NAME_029", "18", "60", "51A8", "51AF", "DTV_CHANNEL_NAME_030", "20", "61", "5190", "5197", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_031", "16", "62", "51A0", "51A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
            }, aobj5, aobj6, new String[] {
                "DTV_CHANNEL_NAME_032", "19", "63", "4590", "4597", "DTV_CHANNEL_NAME_033", "14", "64", "4588", "458F", 
                "DTV_CHANNEL_NAME_034", "17", "65", "4580", "4587", "DTV_CHANNEL_NAME_035", "24", "66", "45A0", "45A7", 
                "DTV_CHANNEL_NAME_036", "28", "67", "45A8", "45AF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_037", "21", "68", "4598", "459F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_032", "23", "63", "4590", "4597", "DTV_CHANNEL_NAME_033", "13", "64", "4588", "458F", 
                "DTV_CHANNEL_NAME_034", "15", "65", "4580", "4587", "DTV_CHANNEL_NAME_035", "27", "66", "45A0", "45A7", 
                "DTV_CHANNEL_NAME_036", "30", "67", "45A8", "45AF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_037", "25", "68", "4598", "459F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF"
            }, aobj7, new String[] {
                "DTV_CHANNEL_NAME_038", "15", "69", "4980", "4987", "DTV_CHANNEL_NAME_039", "14", "70", "4988", "498F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_040", "17", "71", "4990", "4997", 
                "DTV_CHANNEL_NAME_041", "20", "72", "49A0", "49A7", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_042", "18", "73", "4998", "499F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_038", "23", "69", "4980", "4987", "DTV_CHANNEL_NAME_039", "19", "70", "4988", "498F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_040", "25", "71", "4990", "4997", 
                "DTV_CHANNEL_NAME_041", "33", "72", "49A0", "49A7", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_042", "26", "73", "4998", "499F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_043", "14", "74", "4D80", "4D87", "DTV_CHANNEL_NAME_044", "13", "75", "4D88", "4D8F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_045", "16", "76", "4D90", "4D97", 
                "DTV_CHANNEL_NAME_046", "18", "77", "4D98", "4D9F", "DTV_CHANNEL_NAME_047", "20", "78", "4DA0", "4DA7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_048", "22", "79", "4DA8", "4DAF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_043", "34", "74", "4D80", "4D87", "DTV_CHANNEL_NAME_044", "32", "75", "4D88", "4D8F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_045", "16", "76", "4D90", "4D97", 
                "DTV_CHANNEL_NAME_046", "18", "77", "4D98", "4D9F", "DTV_CHANNEL_NAME_047", "20", "78", "4DA0", "4DA7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_048", "27", "79", "4DA8", "4DAF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_043", "28", "74", "4D80", "4D87", "DTV_CHANNEL_NAME_044", "24", "75", "4D88", "4D8F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_045", "32", "76", "4D90", "4D97", 
                "DTV_CHANNEL_NAME_046", "34", "77", "4D98", "4D9F", "DTV_CHANNEL_NAME_047", "37", "78", "4DA0", "4DA7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_048", "40", "79", "4DA8", "4DAF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_049", "15", "80", "5580", "5587", "DTV_CHANNEL_NAME_050", "14", "81", "5588", "558F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_051", "27", "82", "5598", "559F", 
                "DTV_CHANNEL_NAME_052", "29", "83", "55A0", "55A7", "DTV_CHANNEL_NAME_053", "26", "84", "55A8", "55AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_054", "25", "85", "5590", "5597", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj8, new String[] {
                "DTV_CHANNEL_NAME_049", "16", "80", "5580", "5587", "DTV_CHANNEL_NAME_050", "13", "81", "5588", "558F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_051", "17", "82", "5598", "559F", 
                "DTV_CHANNEL_NAME_052", "28", "83", "55A0", "55A7", "DTV_CHANNEL_NAME_053", "26", "84", "55A8", "55AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_054", "21", "85", "5590", "5597", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_055", "20", "117", "6980", "6987", "DTV_CHANNEL_NAME_056", "13", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_057", "14", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "17", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "15", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "18", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "19", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj9, new String[] {
                "DTV_CHANNEL_NAME_062", "47", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "39", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_063", "29", "125", "71B8", "71BF", "DTV_CHANNEL_NAME_057", "34", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "17", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "15", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "18", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "35", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "47", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "39", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_063", "29", "125", "71B8", "71BF", "DTV_CHANNEL_NAME_057", "19", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "17", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "15", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "18", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "35", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "37", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "39", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_064", "19", "126", "65B8", "65BF", "DTV_CHANNEL_NAME_057", "33", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "43", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "36", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "45", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "42", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj10, new String[] {
                "DTV_CHANNEL_NAME_062", "27", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_065", "32", "127", "75B8", "75BF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "128", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "27", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_065", "32", "127", "75B8", "75BF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_066", "28", "128", "05C0", "05C7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "13", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_065", "32", "127", "75B8", "75BF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "128", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "27", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_067", "30", "129", "6DB8", "6DBF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "128", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "34", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_067", "30", "129", "6DB8", "6DBF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "128", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj11, new String[] {
                "DTV_CHANNEL_NAME_062", "27", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "128", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "27", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "128", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "27", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_069", "18", "131", "61B8", "61BF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "128", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_062", "19", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_069", "18", "131", "61B8", "61BF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_066", "28", "128", "05C0", "05C7", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj12, new String[] {
                "DTV_CHANNEL_NAME_062", "19", "124", "0580", "0587", "DTV_CHANNEL_NAME_056", "26", "118", "0588", "058F", 
                "DTV_CHANNEL_NAME_069", "18", "131", "61B8", "61BF", "DTV_CHANNEL_NAME_057", "25", "119", "0590", "0597", 
                "DTV_CHANNEL_NAME_058", "24", "120", "05A8", "05AF", "DTV_CHANNEL_NAME_059", "22", "121", "0598", "059F", 
                "DTV_CHANNEL_NAME_060", "23", "122", "05B0", "05B7", "DTV_CHANNEL_NAME_061", "21", "123", "05A0", "05A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj13, aobj14, new String[] {
                "DTV_CHANNEL_NAME_076", "28", "102", "9590", "9597", "DTV_CHANNEL_NAME_077", "24", "103", "9588", "958F", 
                "DTV_CHANNEL_NAME_078", "27", "104", "9580", "9587", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_079", "22", "105", "95A0", "95A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_080", "18", "106", "9598", "959F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj15, new String[] {
                "DTV_CHANNEL_NAME_081", "15", "107", "8980", "8987", "DTV_CHANNEL_NAME_082", "13", "108", "8988", "898F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_083", "17", "109", "8990", "8997", 
                "DTV_CHANNEL_NAME_084", "23", "110", "8998", "899F", "DTV_CHANNEL_NAME_085", "14", "111", "89A0", "89A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_086", "16", "112", "89A8", "89AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj16, new String[] {
                "DTV_CHANNEL_NAME_087", "19", "113", "9180", "9187", "DTV_CHANNEL_NAME_088", "21", "114", "9188", "918F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_089", "20", "115", "9190", "9197", "DTV_CHANNEL_NAME_090", "22", "116", "9198", "919F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_087", "24", "113", "9180", "9187", "DTV_CHANNEL_NAME_088", "27", "114", "9188", "918F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_089", "28", "115", "9190", "9197", "DTV_CHANNEL_NAME_090", "26", "116", "9198", "919F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_091", "21", "92", "8180", "8187", "DTV_CHANNEL_NAME_092", "23", "93", "8188", "818F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_093", "25", "94", "8190", "8197", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_094", "27", "95", "8198", "819F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_095", "17", "96", "7980", "7987", "DTV_CHANNEL_NAME_096", "13", "97", "7988", "798F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_097", "14", "98", "7990", "7997", 
                "DTV_CHANNEL_NAME_098", "18", "99", "7998", "799F", "DTV_CHANNEL_NAME_099", "16", "100", "79A0", "79A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_100", "15", "101", "79A8", "79AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_095", "46", "96", "7980", "7987", "DTV_CHANNEL_NAME_096", "48", "97", "7988", "798F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_097", "35", "98", "7990", "7997", 
                "DTV_CHANNEL_NAME_098", "33", "99", "7998", "799F", "DTV_CHANNEL_NAME_099", "36", "100", "79A0", "79A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_100", "49", "101", "79A8", "79AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_095", "28", "96", "7980", "7987", "DTV_CHANNEL_NAME_096", "32", "97", "7988", "798F", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_097", "22", "98", "7990", "7997", 
                "DTV_CHANNEL_NAME_098", "24", "99", "7998", "799F", "DTV_CHANNEL_NAME_099", "23", "100", "79A0", "79A7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_100", "26", "101", "79A8", "79AF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, aobj17, new String[] {
                "DTV_CHANNEL_NAME_101", "21", "138", "0D90", "0D97", "DTV_CHANNEL_NAME_102", "13", "139", "0D88", "0D8F", 
                "DTV_CHANNEL_NAME_103", "29", "146", "9D80", "9D87", "DTV_CHANNEL_NAME_104", "19", "141", "0DA8", "0DAF", 
                "DTV_CHANNEL_NAME_105", "18", "142", "0D98", "0D9F", "DTV_CHANNEL_NAME_106", "22", "143", "0DA0", "0DA7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_107", "30", "147", "9DB0", "9DB7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_101", "15", "138", "0D90", "0D97", "DTV_CHANNEL_NAME_102", "31", "139", "0D88", "0D8F", 
                "DTV_CHANNEL_NAME_103", "29", "146", "9D80", "9D87", "DTV_CHANNEL_NAME_104", "17", "141", "0DA8", "0DAF", 
                "DTV_CHANNEL_NAME_105", "16", "142", "0D98", "0D9F", "DTV_CHANNEL_NAME_106", "14", "143", "0DA0", "0DA7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_107", "30", "147", "9DB0", "9DB7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }, new String[] {
                "DTV_CHANNEL_NAME_101", "15", "138", "0D90", "0D97", "DTV_CHANNEL_NAME_102", "31", "139", "0D88", "0D8F", 
                "DTV_CHANNEL_NAME_103", "24", "146", "9D80", "9D87", "DTV_CHANNEL_NAME_104", "17", "141", "0DA8", "0DAF", 
                "DTV_CHANNEL_NAME_105", "16", "142", "0D98", "0D9F", "DTV_CHANNEL_NAME_106", "14", "143", "0DA0", "0DA7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_107", "32", "147", "9DB0", "9DB7", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", 
                "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF", "DTV_CHANNEL_NAME_004", "-1", "4", "FFFF", "FFFF"
            }
        });
    }
}
