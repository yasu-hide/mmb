// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.oneseg;


public class MtvOneSegBmlParams
{
    public static final class AnimMessages extends Enum
    {

        public static AnimMessages valueOf(String s)
        {
            return (AnimMessages)Enum.valueOf(android/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages, s);
        }

        public static AnimMessages[] values()
        {
            return (AnimMessages[])$VALUES.clone();
        }

        private static final AnimMessages $VALUES[];
        public static final AnimMessages BML_RECEIVING;
        public static final AnimMessages BML_RETREIVING;

        static 
        {
            BML_RECEIVING = new AnimMessages("BML_RECEIVING", 0);
            BML_RETREIVING = new AnimMessages("BML_RETREIVING", 1);
            $VALUES = (new AnimMessages[] {
                BML_RECEIVING, BML_RETREIVING
            });
        }

        private AnimMessages(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class DTVBMLXDPABrowserType extends Enum
    {

        public static DTVBMLXDPABrowserType valueOf(String s)
        {
            return (DTVBMLXDPABrowserType)Enum.valueOf(android/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType, s);
        }

        public static DTVBMLXDPABrowserType[] values()
        {
            return (DTVBMLXDPABrowserType[])$VALUES.clone();
        }

        private static final DTVBMLXDPABrowserType $VALUES[];
        public static final DTVBMLXDPABrowserType BML_START_RESIDENT_APP_C_PROFILE_BROWSER;
        public static final DTVBMLXDPABrowserType BML_START_RESIDENT_APP_FULL_BROWSER;
        public static final DTVBMLXDPABrowserType BML_START_RESIDENT_APP_LIVE_BROWSER;
        public static final DTVBMLXDPABrowserType BML_START_RESIDENT_APP_MAX;

        static 
        {
            BML_START_RESIDENT_APP_C_PROFILE_BROWSER = new DTVBMLXDPABrowserType("BML_START_RESIDENT_APP_C_PROFILE_BROWSER", 0);
            BML_START_RESIDENT_APP_LIVE_BROWSER = new DTVBMLXDPABrowserType("BML_START_RESIDENT_APP_LIVE_BROWSER", 1);
            BML_START_RESIDENT_APP_FULL_BROWSER = new DTVBMLXDPABrowserType("BML_START_RESIDENT_APP_FULL_BROWSER", 2);
            BML_START_RESIDENT_APP_MAX = new DTVBMLXDPABrowserType("BML_START_RESIDENT_APP_MAX", 3);
            $VALUES = (new DTVBMLXDPABrowserType[] {
                BML_START_RESIDENT_APP_C_PROFILE_BROWSER, BML_START_RESIDENT_APP_LIVE_BROWSER, BML_START_RESIDENT_APP_FULL_BROWSER, BML_START_RESIDENT_APP_MAX
            });
        }

        private DTVBMLXDPABrowserType(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class DialogMessages extends Enum
    {

        public static DialogMessages valueOf(String s)
        {
            return (DialogMessages)Enum.valueOf(android/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages, s);
        }

        public static DialogMessages[] values()
        {
            return (DialogMessages[])$VALUES.clone();
        }

        private static final DialogMessages $VALUES[];
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_CACHE_NONE;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_DNS_INVAL;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_DNS_INVAL_TVCALL;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_DOMAIN;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_FILE_OPEN;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_FILE_READ;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_GENERIC;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_NO_CONTENT;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_SSL;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_TCP;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT;
        public static final DialogMessages BML_NOTIFY_CONTENT_ERROR_UNKNOWN;
        public static final DialogMessages BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT;
        public static final DialogMessages BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS;
        public static final DialogMessages BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION;
        public static final DialogMessages BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX;
        public static final DialogMessages BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY;
        public static final DialogMessages BML_NOTIFY_ERROR_BADMIMETYPE;
        public static final DialogMessages BML_NOTIFY_ERROR_BADURL;
        public static final DialogMessages BML_NOTIFY_ERROR_MIXEDSECURETYPE;
        public static final DialogMessages BML_NOTIFY_ERROR_NOMEMORY;
        public static final DialogMessages BML_NOTIFY_ERROR_TOTAL_SIZEOVER;
        public static final DialogMessages BML_NOTIFY_HTTP_E_AUTH_NOHEADER;
        public static final DialogMessages BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getIRDID;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getRcvCond;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP;
        public static final DialogMessages BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray;
        public static final DialogMessages BML_QUERY_DTV_SYSTEMCONTINUE;
        public static final DialogMessages BML_QUERY_DTV_TRANSMITTEXTDATA;
        public static final DialogMessages BML_QUERY_DTV_WRITEBOOKMARK;
        public static final DialogMessages BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED;
        public static final DialogMessages BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST;
        public static final DialogMessages BML_QUERY_DTV_WRITEPERSISTENTARRAY;
        public static final DialogMessages BML_QUERY_SERVER_CERT_CONFIRM_DIALOG;
        public static final DialogMessages BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION;
        public static final DialogMessages BML_QUERY_SETLOCATION_HTTP;
        public static final DialogMessages BML_QUERY_SETLOCATION_SSL_BEGIN;
        public static final DialogMessages BML_QUERY_SETLOCATION_SSL_END;

        static 
        {
            BML_QUERY_SETLOCATION_HTTP = new DialogMessages("BML_QUERY_SETLOCATION_HTTP", 0);
            BML_QUERY_SETLOCATION_SSL_BEGIN = new DialogMessages("BML_QUERY_SETLOCATION_SSL_BEGIN", 1);
            BML_QUERY_SETLOCATION_SSL_END = new DialogMessages("BML_QUERY_SETLOCATION_SSL_END", 2);
            BML_QUERY_SERVER_CERT_CONFIRM_DIALOG = new DialogMessages("BML_QUERY_SERVER_CERT_CONFIRM_DIALOG", 3);
            BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION = new DialogMessages("BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION", 4);
            BML_NOTIFY_ERROR_NOMEMORY = new DialogMessages("BML_NOTIFY_ERROR_NOMEMORY", 5);
            BML_NOTIFY_ERROR_MIXEDSECURETYPE = new DialogMessages("BML_NOTIFY_ERROR_MIXEDSECURETYPE", 6);
            BML_NOTIFY_ERROR_BADURL = new DialogMessages("BML_NOTIFY_ERROR_BADURL", 7);
            BML_NOTIFY_ERROR_BADMIMETYPE = new DialogMessages("BML_NOTIFY_ERROR_BADMIMETYPE", 8);
            BML_NOTIFY_ERROR_TOTAL_SIZEOVER = new DialogMessages("BML_NOTIFY_ERROR_TOTAL_SIZEOVER", 9);
            BML_QUERY_DTV_TRANSMITTEXTDATA = new DialogMessages("BML_QUERY_DTV_TRANSMITTEXTDATA", 10);
            BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP", 11);
            BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray", 12);
            BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard", 13);
            BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard", 14);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM", 15);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo", 16);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp", 17);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo", 18);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo", 19);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo", 20);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos", 21);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getIRDID = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getIRDID", 22);
            BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getRcvCond = new DialogMessages("BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getRcvCond", 23);
            BML_QUERY_DTV_WRITEBOOKMARK = new DialogMessages("BML_QUERY_DTV_WRITEBOOKMARK", 24);
            BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST = new DialogMessages("BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST", 25);
            BML_QUERY_DTV_WRITEPERSISTENTARRAY = new DialogMessages("BML_QUERY_DTV_WRITEPERSISTENTARRAY", 26);
            BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY = new DialogMessages("BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY", 27);
            BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION = new DialogMessages("BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION", 28);
            BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX = new DialogMessages("BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX", 29);
            BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS = new DialogMessages("BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS", 30);
            BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT = new DialogMessages("BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT", 31);
            BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN", 32);
            BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ", 33);
            BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT", 34);
            BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT", 35);
            BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN", 36);
            BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON", 37);
            BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE", 38);
            BML_NOTIFY_CONTENT_ERROR_CACHE_NONE = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_CACHE_NONE", 39);
            BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA", 40);
            BML_NOTIFY_CONTENT_ERROR_DNS_INVAL = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_DNS_INVAL", 41);
            BML_NOTIFY_CONTENT_ERROR_DNS_INVAL_TVCALL = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_DNS_INVAL_TVCALL", 42);
            BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER", 43);
            BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND", 44);
            BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT", 45);
            BML_NOTIFY_CONTENT_ERROR_DOMAIN = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_DOMAIN", 46);
            BML_NOTIFY_CONTENT_ERROR_FILE_OPEN = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_FILE_OPEN", 47);
            BML_NOTIFY_CONTENT_ERROR_FILE_READ = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_FILE_READ", 48);
            BML_NOTIFY_CONTENT_ERROR_GENERIC = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_GENERIC", 49);
            BML_NOTIFY_CONTENT_ERROR_NO_CONTENT = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_NO_CONTENT", 50);
            BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED", 51);
            BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT", 52);
            BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER", 53);
            BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER", 54);
            BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT", 55);
            BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT", 56);
            BML_NOTIFY_CONTENT_ERROR_SSL = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_SSL", 57);
            BML_NOTIFY_CONTENT_ERROR_TCP = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_TCP", 58);
            BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT", 59);
            BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH", 60);
            BML_NOTIFY_HTTP_E_AUTH_NOHEADER = new DialogMessages("BML_NOTIFY_HTTP_E_AUTH_NOHEADER", 61);
            BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE = new DialogMessages("BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE", 62);
            BML_NOTIFY_CONTENT_ERROR_UNKNOWN = new DialogMessages("BML_NOTIFY_CONTENT_ERROR_UNKNOWN", 63);
            BML_QUERY_DTV_SYSTEMCONTINUE = new DialogMessages("BML_QUERY_DTV_SYSTEMCONTINUE", 64);
            BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED = new DialogMessages("BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED", 65);
            $VALUES = (new DialogMessages[] {
                BML_QUERY_SETLOCATION_HTTP, BML_QUERY_SETLOCATION_SSL_BEGIN, BML_QUERY_SETLOCATION_SSL_END, BML_QUERY_SERVER_CERT_CONFIRM_DIALOG, BML_QUERY_SERVER_CERT_CONFIRM_DIALOG_QEUSTION, BML_NOTIFY_ERROR_NOMEMORY, BML_NOTIFY_ERROR_MIXEDSECURETYPE, BML_NOTIFY_ERROR_BADURL, BML_NOTIFY_ERROR_BADMIMETYPE, BML_NOTIFY_ERROR_TOTAL_SIZEOVER, 
                BML_QUERY_DTV_TRANSMITTEXTDATA, BML_QUERY_DTV_PERMITFUNCTION_transmitTextDataOverIP, BML_QUERY_DTV_PERMITFUNCTION_writePersistentArray, BML_QUERY_DTV_PERMITFUNCTION_saveImageToMemoryCard, BML_QUERY_DTV_PERMITFUNCTION_saveHttpServerImageToMemoryCard, BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeCproBM, BML_QUERY_DTV_PERMITFUNCTION_X_DPA_mailTo, BML_QUERY_DTV_PERMITFUNCTION_X_DPA_startResidentApp, BML_QUERY_DTV_PERMITFUNCTION_X_DPA_phoneTo, BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeSchInfo, 
                BML_QUERY_DTV_PERMITFUNCTION_X_DPA_writeAddressBookInfo, BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getCurPos, BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getIRDID, BML_QUERY_DTV_PERMITFUNCTION_X_DPA_getRcvCond, BML_QUERY_DTV_WRITEBOOKMARK, BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_OLDEST, BML_QUERY_DTV_WRITEPERSISTENTARRAY, BML_NOTIFY_DTV_FAILUREACTION_OUTOFBASEURIDIRECTORY, BML_NOTIFY_DTV_FAILUREACTION_ILLEGALFUNCTION, BML_NOTIFY_DTV_FAILUREACTION_INVALIDSUFFIX, 
                BML_NOTIFY_DTV_DRAWERROR_TOOMANY_NESTS, BML_NOTIFY_DTV_DRAWERROR_TIMEDOUT, BML_NOTIFY_CONTENT_ERROR_ARIBDC_OPEN, BML_NOTIFY_CONTENT_ERROR_ARIBDC_READ, BML_NOTIFY_CONTENT_ERROR_ARIBDC_TIMEDOUT, BML_NOTIFY_CONTENT_ERROR_AUTH_FORMAT, BML_NOTIFY_CONTENT_ERROR_AUTH_UNKNOWN, BML_NOTIFY_CONTENT_ERROR_BROADCAST_TRANSITON, BML_NOTIFY_CONTENT_ERROR_CACHE_EXPIRE, BML_NOTIFY_CONTENT_ERROR_CACHE_NONE, 
                BML_NOTIFY_CONTENT_ERROR_CROSSMEDIA, BML_NOTIFY_CONTENT_ERROR_DNS_INVAL, BML_NOTIFY_CONTENT_ERROR_DNS_INVAL_TVCALL, BML_NOTIFY_CONTENT_ERROR_DNS_NOSERVER, BML_NOTIFY_CONTENT_ERROR_DNS_NOTFOUND, BML_NOTIFY_CONTENT_ERROR_DNS_TIMEOUT, BML_NOTIFY_CONTENT_ERROR_DOMAIN, BML_NOTIFY_CONTENT_ERROR_FILE_OPEN, BML_NOTIFY_CONTENT_ERROR_FILE_READ, BML_NOTIFY_CONTENT_ERROR_GENERIC, 
                BML_NOTIFY_CONTENT_ERROR_NO_CONTENT, BML_NOTIFY_CONTENT_ERROR_REDIRECT_CANCELED, BML_NOTIFY_CONTENT_ERROR_REDIRECT_FORMAT, BML_NOTIFY_CONTENT_ERROR_REQ_BODY_SIZEOVER, BML_NOTIFY_CONTENT_ERROR_REQ_HEADER_SIZEOVER, BML_NOTIFY_CONTENT_ERROR_REQTIMEOUT, BML_NOTIFY_CONTENT_ERROR_RESPTIMEOUT, BML_NOTIFY_CONTENT_ERROR_SSL, BML_NOTIFY_CONTENT_ERROR_TCP, BML_NOTIFY_CONTENT_ERROR_TOO_MANY_REDIRECT, 
                BML_NOTIFY_CONTENT_ERROR_TOOMANYAUTH, BML_NOTIFY_HTTP_E_AUTH_NOHEADER, BML_NOTIFY_HTTP_E_REQ_TOOMANYCONTINUE, BML_NOTIFY_CONTENT_ERROR_UNKNOWN, BML_QUERY_DTV_SYSTEMCONTINUE, BML_QUERY_DTV_WRITEBOOKMARK_REPLACE_EXPIRED
            });
        }

        private DialogMessages(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class action extends Enum
    {

        public static action valueOf(String s)
        {
            return (action)Enum.valueOf(android/broadcast/oneseg/MtvOneSegBmlParams$action, s);
        }

        public static action[] values()
        {
            return (action[])$VALUES.clone();
        }

        private static final action $VALUES[];
        public static final action ACTION_DOWN;
        public static final action ACTION_MOVE;
        public static final action ACTION_UP;

        static 
        {
            ACTION_DOWN = new action("ACTION_DOWN", 0);
            ACTION_MOVE = new action("ACTION_MOVE", 1);
            ACTION_UP = new action("ACTION_UP", 2);
            $VALUES = (new action[] {
                ACTION_DOWN, ACTION_MOVE, ACTION_UP
            });
        }

        private action(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class onesegBmlDialogReply extends Enum
    {

        public static onesegBmlDialogReply valueOf(String s)
        {
            return (onesegBmlDialogReply)Enum.valueOf(android/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply, s);
        }

        public static onesegBmlDialogReply[] values()
        {
            return (onesegBmlDialogReply[])$VALUES.clone();
        }

        private static final onesegBmlDialogReply $VALUES[];
        public static final onesegBmlDialogReply MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL;
        public static final onesegBmlDialogReply MTV_ONESEG_BML_DIALOG_REPLAY_NO;
        public static final onesegBmlDialogReply MTV_ONESEG_BML_DIALOG_REPLAY_YES;

        static 
        {
            MTV_ONESEG_BML_DIALOG_REPLAY_YES = new onesegBmlDialogReply("MTV_ONESEG_BML_DIALOG_REPLAY_YES", 0);
            MTV_ONESEG_BML_DIALOG_REPLAY_NO = new onesegBmlDialogReply("MTV_ONESEG_BML_DIALOG_REPLAY_NO", 1);
            MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL = new onesegBmlDialogReply("MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL", 2);
            $VALUES = (new onesegBmlDialogReply[] {
                MTV_ONESEG_BML_DIALOG_REPLAY_YES, MTV_ONESEG_BML_DIALOG_REPLAY_NO, MTV_ONESEG_BML_DIALOG_REPLAY_CANCEL
            });
        }

        private onesegBmlDialogReply(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class state extends Enum
    {

        public static state valueOf(String s)
        {
            return (state)Enum.valueOf(android/broadcast/oneseg/MtvOneSegBmlParams$state, s);
        }

        public static state[] values()
        {
            return (state[])$VALUES.clone();
        }

        private static final state $VALUES[];
        public static final state MTV_STAT_BML_HALT_APPBYKERNEL;
        public static final state MTV_STAT_BML_HALT_NONE;
        public static final state MTV_STAT_BML_HALT_PEER;
        public static final state MTV_STAT_BML_QUIT;
        public static final state MTV_STAT_HALT_APPLICATION;
        public static final state MTV_STAT_HALT_CRITICAL_ABORT;
        public static final state MTV_STAT_HALT_DORMANT;
        public static final state MTV_STAT_HALT_EMPTY_CAROUSEL;
        public static final state MTV_STAT_HALT_ERROR;
        public static final state MTV_STAT_HALT_TUNEDBYKERNEL;
        public static final state MTV_STAT_HALT_USER;

        static 
        {
            MTV_STAT_BML_HALT_NONE = new state("MTV_STAT_BML_HALT_NONE", 0);
            MTV_STAT_BML_HALT_PEER = new state("MTV_STAT_BML_HALT_PEER", 1);
            MTV_STAT_BML_HALT_APPBYKERNEL = new state("MTV_STAT_BML_HALT_APPBYKERNEL", 2);
            MTV_STAT_BML_QUIT = new state("MTV_STAT_BML_QUIT", 3);
            MTV_STAT_HALT_APPLICATION = new state("MTV_STAT_HALT_APPLICATION", 4);
            MTV_STAT_HALT_ERROR = new state("MTV_STAT_HALT_ERROR", 5);
            MTV_STAT_HALT_CRITICAL_ABORT = new state("MTV_STAT_HALT_CRITICAL_ABORT", 6);
            MTV_STAT_HALT_USER = new state("MTV_STAT_HALT_USER", 7);
            MTV_STAT_HALT_DORMANT = new state("MTV_STAT_HALT_DORMANT", 8);
            MTV_STAT_HALT_EMPTY_CAROUSEL = new state("MTV_STAT_HALT_EMPTY_CAROUSEL", 9);
            MTV_STAT_HALT_TUNEDBYKERNEL = new state("MTV_STAT_HALT_TUNEDBYKERNEL", 10);
            $VALUES = (new state[] {
                MTV_STAT_BML_HALT_NONE, MTV_STAT_BML_HALT_PEER, MTV_STAT_BML_HALT_APPBYKERNEL, MTV_STAT_BML_QUIT, MTV_STAT_HALT_APPLICATION, MTV_STAT_HALT_ERROR, MTV_STAT_HALT_CRITICAL_ABORT, MTV_STAT_HALT_USER, MTV_STAT_HALT_DORMANT, MTV_STAT_HALT_EMPTY_CAROUSEL, 
                MTV_STAT_HALT_TUNEDBYKERNEL
            });
        }

        private state(String s, int i)
        {
            super(s, i);
        }
    }


    public MtvOneSegBmlParams()
    {
    }

    public static final int MTV_BML_BASE = 32768;
    public static final int MTV_BML_EVENT_KEYGROUP_BASIC = 1;
    public static final int MTV_BML_EVENT_KEYGROUP_NONE = 0;
    public static final int MTV_BML_EVENT_KEYGROUP_NUMERICTUNING = 4;
    public static final int MTV_BML_EVENT_KEYGROUP_SPECIAL1 = 16;
    public static final int MTV_BML_EVENT_KEYGROUP_SPECIAL2 = 32;
    public static final int MTV_BML_E_DTV_OK = 0;
    public static final int MTV_BML_TVLINK_HALT_PEER = 32769;
    public static final int MTV_BRCOMMAND_QUERY_AUTH_DIALOG = 6;
    public static final int MTV_BRCOMMAND_QUERY_DTV_PERMITFUNCTION = 152;
    public static final int MTV_BRCOMMAND_QUERY_SETLOCATION = 0;
    public static final int MTV_E_DTV_ILLEGALPARAMETER = -1003;
    public static final int MTV_E_DTV_NOTSUPPORTED = -1002;
    public static final int MTV_MEMORYCARD_NOTINSERTED = -1050;
    public static final int MTV_MEMORYCARD_SAMEFILENAME = -1053;
}
