// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;


public class BMLConstants
{

    public BMLConstants()
    {
    }

    public static final int APP_DTV_EXIME_USAGE_ALL = 0x10001;
    public static final int APP_DTV_EXIME_USAGE_ALPHABET = 0x10003;
    public static final int APP_DTV_EXIME_USAGE_HANKAKU = 0x10004;
    public static final int APP_DTV_EXIME_USAGE_HIRAGANA = 0x10007;
    public static final int APP_DTV_EXIME_USAGE_KATAKANA = 0x10006;
    public static final int APP_DTV_EXIME_USAGE_NUMBER = 0x10002;
    public static final int APP_DTV_EXIME_USAGE_ZENKAKU = 0x10005;
    public static final int APP_EXIME_FLAG_AWS_TEXTBOX = 4;
    public static final int APP_EXIME_FLAG_DENY_EMPTY = 2;
    public static final int APP_EXIME_FLAG_LIMIT_CHARS = 1;
    public static final int APP_EXIME_TYPE_AREA = 1;
    public static final int APP_EXIME_TYPE_FIELD = 2;
    public static final int APP_EXIME_TYPE_PASSWORD = 4;
    public static final boolean DEBUG = false;
    public static final int MESSAGETYPE_ENTERSTATUS = 0;
    public static final int MESSAGETYPE_LEAVESTATUS = 1;
    public static final int MESSAGETYPE_NOTIFYERROR = 2;
    public static final int MOVE_MIN = 12;
    public static final String PREF_KEY_LOCATION_INFORMATION = "pref_broadcast_location";
    public static final String PREF_KEY_MAN_NUMBER = "pref_broadcast_manufacture";
    public static final String PREF_KEY_NOTIFY_CONNECTION = "pref_broadcast_notify";
    public static final String SHARED_SETTING_PREF_NAME = "com.samsung.sec.mtv.utility";
    public static final int SIGNAL_STRENGTH_GOOD = 3;
    public static final int SIGNAL_STRENGTH_MODERATE = 2;
    public static final int SIGNAL_STRENGTH_NONE_OR_UNKNOWN = -1;
    public static final int SIGNAL_STRENGTH_NOSERVICE = 0;
    public static final int SIGNAL_STRENGTH_POOR = 1;
    public static final int SLIM_ARIBDCP_E_OPEN = -1100;
    public static final int SLIM_ARIBDCP_E_READ = -1099;
    public static final int SLIM_ARIBDCP_E_TIMEDOUT = -1098;
    public static final int SLIM_BRCOMMAND_NOTIFY_CONTENT_ERROR = 23;
    public static final int SLIM_BRCOMMAND_NOTIFY_DTV_BOOKMARKWRITTEN = 158;
    public static final int SLIM_BRCOMMAND_NOTIFY_DTV_DRAWERROR = 157;
    public static final int SLIM_BRCOMMAND_NOTIFY_DTV_FAILUREACTION = 155;
    public static final int SLIM_BRCOMMAND_NOTIFY_DTV_PERSISTENTARRAYWRITTEN = 159;
    public static final int SLIM_BRCOMMAND_NOTIFY_ERROR = 26;
    public static final int SLIM_BRCOMMAND_NOTIFY_INPUT_FORMAT_ERROR = 27;
    public static final int SLIM_BRCOMMAND_NOTIFY_STREAM_STATE = 18;
    public static final int SLIM_BRCOMMAND_NOTIFY_WINDOW_STATE = 21;
    public static final int SLIM_BRCOMMAND_QUERY_AUTH_DIALOG = 6;
    public static final int SLIM_BRCOMMAND_QUERY_COOKIE_DIALOG = 3;
    public static final int SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION = 152;
    public static final int SLIM_BRCOMMAND_QUERY_DTV_SYSTEMCONTINUE = 156;
    public static final int SLIM_BRCOMMAND_QUERY_DTV_SYSTEMRECOVER = 151;
    public static final int SLIM_BRCOMMAND_QUERY_DTV_TRANSMITTEXTDATA = 150;
    public static final int SLIM_BRCOMMAND_QUERY_DTV_WRITEBOOKMARK = 153;
    public static final int SLIM_BRCOMMAND_QUERY_DTV_WRITEPERSISTENTARRAY = 154;
    public static final int SLIM_BRCOMMAND_QUERY_HISTORYBACKFORW = 2;
    public static final int SLIM_BRCOMMAND_QUERY_JS_ALERT_DIALOG = 9;
    public static final int SLIM_BRCOMMAND_QUERY_JS_CONFIRM_DIALOG = 10;
    public static final int SLIM_BRCOMMAND_QUERY_JS_PROMPT_DIALOG = 11;
    public static final int SLIM_BRCOMMAND_QUERY_POST_DIALOG = 5;
    public static final int SLIM_BRCOMMAND_QUERY_REDIRECT_DIALOG = 4;
    public static final int SLIM_BRCOMMAND_QUERY_REQUESTINCLUSION = 1;
    public static final int SLIM_BRCOMMAND_QUERY_SERVER_CERT_CONFIRM_DIALOG = 7;
    public static final int SLIM_BRCOMMAND_QUERY_SETLOCATION = 0;
    public static final int SLIM_BROWSER_ERROR_BADMIMETYPE = 5;
    public static final int SLIM_BROWSER_ERROR_BADURL = 4;
    public static final int SLIM_BROWSER_ERROR_INPUTHISTORY_SIZEOVER = 7;
    public static final int SLIM_BROWSER_ERROR_INPUT_REQUIRED = 8;
    public static final int SLIM_BROWSER_ERROR_MIXEDSECURETYPE = 6;
    public static final int SLIM_BROWSER_ERROR_NOMEMORY = 0;
    public static final int SLIM_BROWSER_ERROR_NOMEMORY_AWS = 2;
    public static final int SLIM_BROWSER_ERROR_NOMEMORY_IMAGE = 1;
    public static final int SLIM_BROWSER_ERROR_TOTAL_SIZEOVER = 3;
    public static final int SLIM_BROWSER_STREAMSTATE_DELETE = 0x200000;
    public static final int SLIM_BROWSER_STREAMSTATE_DORMANT = 2;
    public static final int SLIM_BROWSER_STREAMSTATE_NEW = 1;
    public static final int SLIM_BROWSER_STREAMSTATE_OBSOLETE = 0x100000;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_CONNECT = 64;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_CONNECTING = 128;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_CREATED = 4;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_OPEN = 32;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_PROXY_CONNECT = 256;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_PROXY_CONNECTING = 512;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_RESOLVE = 8;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_RESOLVING = 16;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_SENDING = 4096;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_SENT = 8192;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_SSL_HANDSHAKED = 2048;
    public static final int SLIM_BROWSER_STREAMSTATE_REQ_SSL_HANDSHAKING = 1024;
    public static final int SLIM_BROWSER_STREAMSTATE_RSP_CONTINUE = 32768;
    public static final int SLIM_BROWSER_STREAMSTATE_RSP_ENTITY_RECEIVED = 0x80000;
    public static final int SLIM_BROWSER_STREAMSTATE_RSP_ENTITY_RECEIVING = 0x40000;
    public static final int SLIM_BROWSER_STREAMSTATE_RSP_HEADER_RECEIVED = 0x20000;
    public static final int SLIM_BROWSER_STREAMSTATE_RSP_HEADER_RECEIVING = 0x10000;
    public static final int SLIM_BROWSER_STREAMSTATE_RSP_HEADER_WAITING = 16384;
    public static final int SLIM_BROWSER_WINSTATE_DOCDONE = 2;
    public static final int SLIM_BROWSER_WINSTATE_DOCNETREAD = 1;
    public static final int SLIM_BROWSER_WINSTATE_DOCSTART = 0;
    public static final int SLIM_BROWSER_WINSTATE_STATES = 3;
    public static final int SLIM_CERT_CRL_MASK = 65280;
    public static final int SLIM_CERT_EXTN_ERR_MASK = 0xff0000;
    public static final int SLIM_CERT_E_BAD_CHAIN = 0x40000000;
    public static final int SLIM_CERT_E_BASIC_CONSTRAINTS = 0x10000;
    public static final int SLIM_CERT_E_DB = 0x4000000;
    public static final int SLIM_CERT_E_DECODE = 0x2000000;
    public static final int SLIM_CERT_E_EXPIRED = 4;
    public static final int SLIM_CERT_E_INVALID_CN = 2;
    public static final int SLIM_CERT_E_KEY_USAGE = 0x20000;
    public static final int SLIM_CERT_E_NOCRL = 256;
    public static final int SLIM_CERT_E_NOISSUER = 1;
    public static final int SLIM_CERT_E_NOMEM = 0x1000000;
    public static final int SLIM_CERT_E_OK = 0;
    public static final int SLIM_CERT_E_REVOKED = 512;
    public static final int SLIM_CERT_E_ROOT_EXPIRED = 8;
    public static final int SLIM_CERT_E_SIGN_ALGO = 0x20000000;
    public static final int SLIM_CERT_E_SUBJ_ALT_NAME = 0x40000;
    public static final int SLIM_CERT_E_TRUST = 0x10000000;
    public static final int SLIM_CERT_E_UNSUPPORTED_EXTENSIONS = 0x80000;
    public static final int SLIM_CERT_E_VERIFY = 0x8000000;
    public static final int SLIM_CERT_FATAL_ERR_MASK = 0xff000000;
    public static final int SLIM_CERT_WARNING_ERR_MASK = 255;
    public static final int SLIM_CONTENT_BY_DOCWRITE = 0x100000;
    public static final int SLIM_CONTENT_BY_EMBED = 0x80000;
    public static final int SLIM_CONTENT_BY_FRAME = 0x200000;
    public static final int SLIM_CONTENT_BY_HISTORYBACK = 16384;
    public static final int SLIM_CONTENT_BY_HISTORYFORW = 32768;
    public static final int SLIM_CONTENT_BY_INCLUSION = 4096;
    public static final int SLIM_CONTENT_BY_REFRESH = 0x10000;
    public static final int SLIM_CONTENT_BY_RELOAD = 0x20000;
    public static final int SLIM_CONTENT_BY_SCRIPT = 0x40000;
    public static final int SLIM_CONTENT_BY_USER = 8192;
    public static final int SLIM_CONTENT_E_BADMIMETYPE = -596;
    public static final int SLIM_CONTENT_E_NO_CONTENT = -599;
    public static final int SLIM_CONTENT_E_SIZEOVER = -600;
    public static final int SLIM_CONTENT_E_TOOMANYAUTH = -597;
    public static final int SLIM_CONTENT_E_TOOMANYREDIRECT = -598;
    public static final int SLIM_CONTENT_METHOD_GET = 1;
    public static final int SLIM_CONTENT_METHOD_POST = 3;
    public static final int SLIM_DTV_AFFILIATE_MAX = 12;
    public static final int SLIM_DTV_APPLICATION_BML = 0;
    public static final int SLIM_DTV_APPLICATION_HTML = 1;
    public static final int SLIM_DTV_APPLICATION_NATIVE = 126;
    public static final int SLIM_DTV_APPLICATION_NONE = 127;
    public static final int SLIM_DTV_AREA_BROADCAST = 1;
    public static final int SLIM_DTV_AUDIO_STATUS_PLAY = 1;
    public static final int SLIM_DTV_AUDIO_STATUS_STOP = 0;
    public static final int SLIM_DTV_AUDIO_STATUS_STOP_NOEVENT = 2;
    public static final int SLIM_DTV_BMTYPE_HTML = 3;
    public static final int SLIM_DTV_BMTYPE_LINK = 1;
    public static final int SLIM_DTV_BMTYPE_MEMORANDUM = 0;
    public static final int SLIM_DTV_BMTYPE_PROCOM = 2;
    public static final int SLIM_DTV_BMTYPE_RESERVED_BEGIN = 5;
    public static final int SLIM_DTV_BMTYPE_RESERVED_END = 255;
    public static final int SLIM_DTV_BMTYPE_SPEC_NETWORK = 4;
    public static final int SLIM_DTV_BROADCASTER_MAX = 8;
    public static final int SLIM_DTV_BROADCAST_STATUS_AVAILABLE = 1;
    public static final int SLIM_DTV_BROADCAST_STATUS_UNAVAILABLE = 2;
    public static final int SLIM_DTV_CONNECTION_CELLULAR_CDMA_CELLULAR = 305;
    public static final int SLIM_DTV_CONNECTION_CELLULAR_DS_CDMA = 303;
    public static final int SLIM_DTV_CONNECTION_CELLULAR_MC_CDMA = 304;
    public static final int SLIM_DTV_CONNECTION_CELLULAR_PDC = 301;
    public static final int SLIM_DTV_CONNECTION_CELLULAR_PDC_P = 302;
    public static final int SLIM_DTV_CONNECTION_CELLULAR_UNKNOWN = 300;
    public static final int SLIM_DTV_CONNECTION_ETHERNET_DHCP = 403;
    public static final int SLIM_DTV_CONNECTION_ETHERNET_FIXED_IP = 402;
    public static final int SLIM_DTV_CONNECTION_ETHERNET_PPPOE = 401;
    public static final int SLIM_DTV_CONNECTION_ISDN = 100;
    public static final int SLIM_DTV_CONNECTION_PHS_PIAFS2_0 = 201;
    public static final int SLIM_DTV_CONNECTION_PHS_PIAFS2_1 = 202;
    public static final int SLIM_DTV_CONNECTION_PHS_UNKNOWN = 200;
    public static final int SLIM_DTV_CONNECTION_PSTN = 1;
    public static final int SLIM_DTV_CONNECTION_UNKNOWN = 0;
    public static final int SLIM_DTV_CONTENT_E_BROADCAST_TRANSITON = -1198;
    public static final int SLIM_DTV_CONTENT_E_CROSSMEDIA = -1200;
    public static final int SLIM_DTV_CONTENT_E_DOMAIN = -1199;
    public static final int SLIM_DTV_CURPOS_CB = 1;
    public static final int SLIM_DTV_CURPOS_GPS = 0;
    public static final int SLIM_DTV_CURPOS_NONE = -1;
    public static final int SLIM_DTV_DATEMODE_ABSOLUTEPLAYBACKTIME = 0;
    public static final int SLIM_DTV_DATEMODE_RECEPTIONTIME = 1;
    public static final int SLIM_DTV_DATESOURCE_RECEIVER = 2;
    public static final int SLIM_DTV_DATESOURCE_TOTTDT = 1;
    public static final int SLIM_DTV_DATESOURCE_UNDER_CONDITIONS = 3;
    public static final int SLIM_DTV_DATESOURCE_UNKNOWN = 0;
    public static final int SLIM_DTV_DRAWERROR_NONE = 0;
    public static final int SLIM_DTV_DRAWERROR_TIMEDOUT = 2;
    public static final int SLIM_DTV_DRAWERROR_TOOMANY_NESTS = 1;
    public static final int SLIM_DTV_EVENT_DATAEVENTCHANGED = 9003;
    public static final int SLIM_DTV_EVENT_EVENTMESSAGEFIRED = 9000;
    public static final int SLIM_DTV_EVENT_KEYGROUP_BASIC = 1;
    public static final int SLIM_DTV_EVENT_KEYGROUP_NONE = 0;
    public static final int SLIM_DTV_EVENT_KEYGROUP_NUMERICTUNING = 4;
    public static final int SLIM_DTV_EVENT_KEYGROUP_SPECIAL1 = 16;
    public static final int SLIM_DTV_EVENT_KEYGROUP_SPECIAL2 = 32;
    public static final int SLIM_DTV_EVENT_MAINAUDIOSTREAMCHANGED = 9004;
    public static final int SLIM_DTV_EVENT_MEDIASTOPPED = 9005;
    public static final int SLIM_DTV_EVENT_MODULELOCKED = 9002;
    public static final int SLIM_DTV_EVENT_MODULEUPDATED = 9001;
    public static final int SLIM_DTV_EVENT_NONE = -1;
    public static final int SLIM_DTV_EVENT_REQUESTID_NONE = 0;
    public static final String SLIM_DTV_EXT_PERMISSION_CPROBM = "X_DPA_writeCproBM";
    public static final String SLIM_DTV_EXT_PERMISSION_LOCATION = "X_DPA_getCurPos";
    public static final int SLIM_DTV_FULLDATADISPLAYAREA_BY_SCRIPT = 0;
    public static final int SLIM_DTV_FULLDATADISPLAYAREA_FULL = 1;
    public static final int SLIM_DTV_FULLDATADISPLAYAREA_PARTIAL = 0;
    public static final int SLIM_DTV_GEODETICSYSTEM_TOKYO_DEGREE = 1;
    public static final int SLIM_DTV_GEODETICSYSTEM_TOKYO_DMS = 3;
    public static final int SLIM_DTV_GEODETICSYSTEM_WGS84_DEGREE = 0;
    public static final int SLIM_DTV_GEODETICSYSTEM_WGS84_DMS = 2;
    public static final int SLIM_DTV_HALT_APPBYKERNEL = 8;
    public static final int SLIM_DTV_HALT_APPLICATION = 5;
    public static final int SLIM_DTV_HALT_CRITICAL_ABORT = 9;
    public static final int SLIM_DTV_HALT_DORMANT = 10;
    public static final int SLIM_DTV_HALT_EMPTY_CAROUSEL = 6;
    public static final int SLIM_DTV_HALT_ERROR = 7;
    public static final int SLIM_DTV_HALT_EVENTCHANGED = 2;
    public static final int SLIM_DTV_HALT_NONE = 0;
    public static final int SLIM_DTV_HALT_QUIT = 4;
    public static final int SLIM_DTV_HALT_SERVICECHANGED = 1;
    public static final int SLIM_DTV_HALT_TUNEDBYKERNEL = 3;
    public static final int SLIM_DTV_HALT_USER = 100;
    public static final int SLIM_DTV_HALT_U_ERROR_NOMEMORY = 100;
    public static final int SLIM_DTV_HALT_U_RESET_CHANNEL = 102;
    public static final int SLIM_DTV_HALT_U_RETURN_TO_ENTRY = 101;
    public static final int SLIM_DTV_LINKSTATUS_LINK = 2;
    public static final int SLIM_DTV_LINKSTATUS_LINK_BY_BM = 4;
    public static final int SLIM_DTV_LINKSTATUS_NONE = 0;
    public static final int SLIM_DTV_LINKSTATUS_ONAIR = 1;
    public static final int SLIM_DTV_LINKSTATUS_UNLINK = 3;
    public static final int SLIM_DTV_NO = 0;
    public static final int SLIM_DTV_NOT_AREA_BROADCAST = 0;
    public static final int SLIM_DTV_NVRAM_CATEGORY_CPROGROUP = 18;
    public static final int SLIM_DTV_NVRAM_CATEGORY_P2PROGROUP = 33;
    public static final int SLIM_DTV_OBJECTID_MAXLENGTH = 257;
    public static final int SLIM_DTV_PROFILE_C = 0;
    public static final int SLIM_DTV_PROFILE_P2 = 1;
    public static final int SLIM_DTV_PROGRAMID_NONE = -2;
    public static final int SLIM_DTV_SYSTEMSTATUS_ACCESSINGBOOKMARK = 10;
    public static final int SLIM_DTV_SYSTEMSTATUS_ACCESSINGMEMORY = 6;
    public static final int SLIM_DTV_SYSTEMSTATUS_CALLINGPHONE = 3;
    public static final int SLIM_DTV_SYSTEMSTATUS_CONNECTINGNETWORK = 4;
    public static final int SLIM_DTV_SYSTEMSTATUS_ILLEGALFUNCTION = -7;
    public static final int SLIM_DTV_SYSTEMSTATUS_INITIALUPDATE = 9;
    public static final int SLIM_DTV_SYSTEMSTATUS_INVALIDSUFFIX = -12;
    public static final int SLIM_DTV_SYSTEMSTATUS_LOADINGDOCUMENT = 8;
    public static final int SLIM_DTV_SYSTEMSTATUS_OUTOFBASEURIDIRECTORY = -11;
    public static final int SLIM_DTV_SYSTEMSTATUS_RECEIVINGVIAARIB = 1;
    public static final int SLIM_DTV_SYSTEMSTATUS_RECEIVINGVIAHTTP = 2;
    public static final int SLIM_DTV_SYSTEMSTATUS_RUNNINGBROWSER = 7;
    public static final int SLIM_DTV_SYSTEMSTATUS_SCRIPTERROR = -6;
    public static final int SLIM_DTV_SYSTEMSTATUS_SECUREDZONE = 11;
    public static final int SLIM_DTV_SYSTEMSTATUS_TRANSFERRINGDATA = 5;
    public static final int SLIM_DTV_SYSTEMSTATUS_UNAVAILABLEDOCUMENT = -1;
    public static final int SLIM_DTV_SYSTEMSTATUS_UNAVAILABLEDOCUMENT_CRITICAL = -9;
    public static final int SLIM_DTV_SYSTEMSTATUS_UNREACHABLEDOCUMENT = -8;
    public static final int SLIM_DTV_SYSTEMSTATUS_UNREACHABLEDOCUMENT_CRITICAL = -10;
    public static final int SLIM_DTV_TIME_ABSOLUTE = 0;
    public static final int SLIM_DTV_TIME_IMMEDIATE = 5;
    public static final int SLIM_DTV_TIME_ORIGABSOLUTE = 1;
    public static final int SLIM_DTV_WRITEBOOKMARK_NEW = 0;
    public static final int SLIM_DTV_WRITEBOOKMARK_REPLACE_EXPIRED = 1;
    public static final int SLIM_DTV_WRITEBOOKMARK_REPLACE_OLDEST = 2;
    public static final int SLIM_DTV_YES = 1;
    public static final int SLIM_E_DTV_GENERIC = -1;
    public static final int SLIM_E_DTV_ILLEGALPARAMETER = -1003;
    public static final int SLIM_E_DTV_IOSLEEP = -3;
    public static final int SLIM_E_DTV_MEMORYCARD_FULL = -1052;
    public static final int SLIM_E_DTV_MEMORYCARD_NOTINSERTED = -1050;
    public static final int SLIM_E_DTV_MEMORYCARD_SAMEFILENAME = -1053;
    public static final int SLIM_E_DTV_MEMORYCARD_WRITEPROTECTED = -1051;
    public static final int SLIM_E_DTV_NOSUCHSOUND = -1011;
    public static final int SLIM_E_DTV_NOTSUPPORTED = -1002;
    public static final int SLIM_E_DTV_OK = 0;
    public static final int SLIM_E_DTV_WOULDBLOCK = -2;
    public static final int SLIM_E_EOF = -9;
    public static final int SLIM_E_GENERIC = -1;
    public static final int SLIM_E_INVAL = -8;
    public static final int SLIM_E_IOSLEEP = -3;
    public static final int SLIM_E_NOMEM = -6;
    public static final int SLIM_E_NOTFOUND = -5;
    public static final int SLIM_E_OK = 0;
    public static final int SLIM_E_STRPIPE = -7;
    public static final int SLIM_E_TIMEDOUT = -4;
    public static final int SLIM_E_WOULDBLOCK = -2;
    public static final int SLIM_E_enum_tail = -10;
    public static final int SLIM_FILEP_E_OPEN = -300;
    public static final int SLIM_FILEP_E_READ = -299;
    public static final int SLIM_HTTP_AUTH_TARGETS = 2;
    public static final int SLIM_HTTP_AUTH_TARGET_NONE = -1;
    public static final int SLIM_HTTP_AUTH_TARGET_PAGE = 0;
    public static final int SLIM_HTTP_AUTH_TARGET_PROXY = 1;
    public static final int SLIM_HTTP_AUTH_TYPES = 2;
    public static final int SLIM_HTTP_AUTH_TYPE_BASIC = 0;
    public static final int SLIM_HTTP_AUTH_TYPE_DIGEST = 1;
    public static final int SLIM_HTTP_AUTH_TYPE_NONE = -1;
    public static final int SLIM_HTTP_CODE_Accepted = 202;
    public static final int SLIM_HTTP_CODE_Bad_Gateway = 502;
    public static final int SLIM_HTTP_CODE_Bad_Request = 400;
    public static final int SLIM_HTTP_CODE_Conflict = 409;
    public static final int SLIM_HTTP_CODE_Continue = 100;
    public static final int SLIM_HTTP_CODE_Created = 201;
    public static final int SLIM_HTTP_CODE_Expectation_Failed = 417;
    public static final int SLIM_HTTP_CODE_Forbidden = 403;
    public static final int SLIM_HTTP_CODE_Found = 302;
    public static final int SLIM_HTTP_CODE_Gateway_Time_out = 504;
    public static final int SLIM_HTTP_CODE_Gone = 410;
    public static final int SLIM_HTTP_CODE_HTTP_Version_not_supported = 505;
    public static final int SLIM_HTTP_CODE_Internal_Server_Error = 500;
    public static final int SLIM_HTTP_CODE_Length_Required = 411;
    public static final int SLIM_HTTP_CODE_Method_Not_Allowed = 405;
    public static final int SLIM_HTTP_CODE_Moved_Permanently = 301;
    public static final int SLIM_HTTP_CODE_Multiple_Choices = 300;
    public static final int SLIM_HTTP_CODE_No_Content = 204;
    public static final int SLIM_HTTP_CODE_Non_Authoritative_Information = 203;
    public static final int SLIM_HTTP_CODE_Not_Acceptable = 406;
    public static final int SLIM_HTTP_CODE_Not_Found = 404;
    public static final int SLIM_HTTP_CODE_Not_Implemented = 501;
    public static final int SLIM_HTTP_CODE_Not_Modified = 304;
    public static final int SLIM_HTTP_CODE_OK = 200;
    public static final int SLIM_HTTP_CODE_Partial_Content = 206;
    public static final int SLIM_HTTP_CODE_Payment_Required = 402;
    public static final int SLIM_HTTP_CODE_Precondition_Failed = 412;
    public static final int SLIM_HTTP_CODE_Proxy_Authentication_Required = 407;
    public static final int SLIM_HTTP_CODE_Request_Entity_Too_Large = 413;
    public static final int SLIM_HTTP_CODE_Request_Time_out = 408;
    public static final int SLIM_HTTP_CODE_Request_URI_Too_Large = 414;
    public static final int SLIM_HTTP_CODE_Requested_range_not_satisfiable = 416;
    public static final int SLIM_HTTP_CODE_Reset_Content = 205;
    public static final int SLIM_HTTP_CODE_See_Other = 303;
    public static final int SLIM_HTTP_CODE_Service_Unavailable = 503;
    public static final int SLIM_HTTP_CODE_Switching_Protocols = 101;
    public static final int SLIM_HTTP_CODE_Temporary_Redirect = 307;
    public static final int SLIM_HTTP_CODE_Unauthorized = 401;
    public static final int SLIM_HTTP_CODE_Unsupported_Media_Type = 415;
    public static final int SLIM_HTTP_CODE_Use_Proxy = 305;
    public static final int SLIM_HTTP_E_AUTH_FORMAT = -182;
    public static final int SLIM_HTTP_E_AUTH_NOHEADER = -183;
    public static final int SLIM_HTTP_E_AUTH_UNKNOWN = -184;
    public static final int SLIM_HTTP_E_CACHE_EXPIRE = -185;
    public static final int SLIM_HTTP_E_CACHE_NONE = -186;
    public static final int SLIM_HTTP_E_DNS_INVAL = -200;
    public static final int SLIM_HTTP_E_DNS_NOSERVER = -199;
    public static final int SLIM_HTTP_E_DNS_NOTFOUND = -197;
    public static final int SLIM_HTTP_E_DNS_TIMEDOUT = -198;
    public static final int SLIM_HTTP_E_REDIRECT_CANCELED = -180;
    public static final int SLIM_HTTP_E_REDIRECT_FORMAT = -181;
    public static final int SLIM_HTTP_E_REQTIMEDOUT = -188;
    public static final int SLIM_HTTP_E_REQ_BODY_SIZEOVER = -178;
    public static final int SLIM_HTTP_E_REQ_HEADER_SIZEOVER = -179;
    public static final int SLIM_HTTP_E_REQ_TOOMANYCONTINUE = -176;
    public static final int SLIM_HTTP_E_RSPTIMEDOUT = -187;
    public static final int SLIM_HTTP_E_RSP_HEADER_SIZEOVER = -177;
    public static final int SLIM_HTTP_E_SSL_CONNECT = -192;
    public static final int SLIM_HTTP_E_SSL_HANDSHAKE = -191;
    public static final int SLIM_HTTP_E_SSL_READ = -190;
    public static final int SLIM_HTTP_E_SSL_WRITE = -189;
    public static final int SLIM_HTTP_E_TCP_CONNECT = -195;
    public static final int SLIM_HTTP_E_TCP_OPEN = -196;
    public static final int SLIM_HTTP_E_TCP_READ = -194;
    public static final int SLIM_HTTP_E_TCP_WRITE = -193;
    public static final int SLIM_HTTP_E_TLS_INTOLERANT = -175;
    public static final int SLIM_HTTP_METHODS = 8;
    public static final int SLIM_HTTP_METHOD_CONNECT = 7;
    public static final int SLIM_HTTP_METHOD_DELETE = 5;
    public static final int SLIM_HTTP_METHOD_GET = 1;
    public static final int SLIM_HTTP_METHOD_HEAD = 2;
    public static final int SLIM_HTTP_METHOD_OPTIONS = 0;
    public static final int SLIM_HTTP_METHOD_POST = 3;
    public static final int SLIM_HTTP_METHOD_PUT = 4;
    public static final int SLIM_HTTP_METHOD_TRACE = 6;
    public static final int SLIM_INT_MAX = 0x7fffffff;
    public static final int SLIM_PAGEINCL_TYPES = 7;
    public static final int SLIM_PAGEINCL_TYPE_ANON = 5;
    public static final int SLIM_PAGEINCL_TYPE_BASE = -1;
    public static final int SLIM_PAGEINCL_TYPE_IMAGE = 0;
    public static final int SLIM_PAGEINCL_TYPE_NSPLUGIN = 6;
    public static final int SLIM_PAGEINCL_TYPE_NSP_STREAM = 1;
    public static final int SLIM_PAGEINCL_TYPE_OBJECT = 4;
    public static final int SLIM_PAGEINCL_TYPE_SCRIPT = 3;
    public static final int SLIM_PAGEINCL_TYPE_STYLESHEET = 2;
    public static final int SLIM_TKID_CHSET_EUC_JP = 2;
    public static final int SLIM_TKID_CHSET_ISO_10646_UCS_2 = 33;
    public static final int SLIM_TKID_CHSET_ISO_10646_UCS_2_LE = 34;
    public static final int SLIM_TKID_CHSET_ISO_10646_UCS_4 = 35;
    public static final int SLIM_TKID_CHSET_ISO_10646_UCS_4_LE = 36;
    public static final int SLIM_TKID_CHSET_ISO_2022_JP = 3;
    public static final int SLIM_TKID_CHSET_Shift_JIS = 1;
    public static final int SLIM_TKID_CHSET_US_ASCII = 0;
    public static final int SLIM_TKID_CHSET_UTF_16BE = 31;
    public static final int SLIM_TKID_CHSET_UTF_16LE = 32;
    public static final int SLIM_TKID_CHSET_UTF_8 = 30;
}
