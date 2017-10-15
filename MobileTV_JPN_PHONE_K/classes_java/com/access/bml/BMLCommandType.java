// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;


public class BMLCommandType
{
    public static class TBrowserCmdType
    {

        public int fCommandID;

        public TBrowserCmdType()
        {
        }
    }

    public static class TBrowserCommand_AuthDialog extends TBrowserCmdType
    {

        public String fChallenge;
        public boolean fKeepPassword;
        public boolean fKeepUserName;
        public String fPassword;
        public String fProxyHost;
        public int fProxyPort;
        public String fRealm;
        public int fTarget;
        public int fType;
        public String fURL;
        public String fUserName;

        public TBrowserCommand_AuthDialog()
        {
        }
    }

    public static class TBrowserCommand_BrowsingMode extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_BrowsingMode()
        {
        }
    }

    public static class TBrowserCommand_ClientCertSelectDialog extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_ClientCertSelectDialog()
        {
        }
    }

    public static class TBrowserCommand_CloseWindow extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_CloseWindow()
        {
        }
    }

    public static class TBrowserCommand_ContentError extends TBrowserCmdType
    {

        public int fBy;
        public int fErrorCode;
        public boolean fInclusion;
        public int fStatusCode;
        public String fURL;

        public TBrowserCommand_ContentError()
        {
        }
    }

    public static class TBrowserCommand_ContentState extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_ContentState()
        {
        }
    }

    public static class TBrowserCommand_CookieDialog extends TBrowserCmdType
    {

        public String fCookieString;
        public String fURL;

        public TBrowserCommand_CookieDialog()
        {
        }
    }

    public static class TBrowserCommand_DTV_BookmarkWritten extends TBrowserCmdType
    {

        public int fBookmarkBlockNo;
        public int fResult;

        public TBrowserCommand_DTV_BookmarkWritten()
        {
        }
    }

    public static class TBrowserCommand_DTV_DrawError extends TBrowserCmdType
    {

        public int fErrorCode;

        public TBrowserCommand_DTV_DrawError()
        {
        }
    }

    public static class TBrowserCommand_DTV_FailureAction extends TBrowserCmdType
    {

        public int fStatus;

        public TBrowserCommand_DTV_FailureAction()
        {
        }
    }

    public static class TBrowserCommand_DTV_PermitFunction extends TBrowserCmdType
    {

        public byte fArgStr[];
        public String fFuncName;

        public TBrowserCommand_DTV_PermitFunction()
        {
        }
    }

    public static class TBrowserCommand_DTV_PersistentArrayWritten extends TBrowserCmdType
    {

        public int fAffiliationID;
        public int fBlock;
        public int fCategory;
        public int fResult;
        public int fSubID;

        public TBrowserCommand_DTV_PersistentArrayWritten()
        {
        }
    }

    public static class TBrowserCommand_DTV_WriteBookmark extends TBrowserCmdType
    {

        public int fAction;
        public int fBookmarkBlockNo;
        public byte fBookmarkTitle[];
        public byte fReplacedBookmarkTitle[];

        public TBrowserCommand_DTV_WriteBookmark()
        {
        }
    }

    public static class TBrowserCommand_DTV_WritePersistentArray extends TBrowserCmdType
    {

        public int fAffiliationID;
        public int fBlock;
        public int fCategory;
        public int fPopupType;
        public int fSubID;

        public TBrowserCommand_DTV_WritePersistentArray()
        {
        }
    }

    public static class TBrowserCommand_DetectVirus extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_DetectVirus()
        {
        }
    }

    public static class TBrowserCommand_Error extends TBrowserCmdType
    {

        public int fErrorCode;

        public TBrowserCommand_Error()
        {
        }
    }

    public static class TBrowserCommand_HelperDone extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_HelperDone()
        {
        }
    }

    public static class TBrowserCommand_HelperProgressInfo extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_HelperProgressInfo()
        {
        }
    }

    public static class TBrowserCommand_HelperTypeAvail extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_HelperTypeAvail()
        {
        }
    }

    public static class TBrowserCommand_HistoryBackForw extends TBrowserCmdType
    {

        public boolean after_is_https;
        public boolean before_is_https;
        public String fAfterURL;
        public String fBeforeURL;
        public int fStep;

        public TBrowserCommand_HistoryBackForw()
        {
        }
    }

    public static class TBrowserCommand_InputFormatError extends TBrowserCmdType
    {

        public String fFormat;
        public String fValue;

        public TBrowserCommand_InputFormatError()
        {
        }
    }

    public static class TBrowserCommand_JSAlertDialog extends TBrowserCmdType
    {

        public String fMessage;

        public TBrowserCommand_JSAlertDialog()
        {
        }
    }

    public static class TBrowserCommand_JSConfirmDialog extends TBrowserCmdType
    {

        public String fMessage;

        public TBrowserCommand_JSConfirmDialog()
        {
        }
    }

    public static class TBrowserCommand_JSPromptDialog extends TBrowserCmdType
    {

        public String fMessage;
        public String fValue;

        public TBrowserCommand_JSPromptDialog()
        {
        }
    }

    public static class TBrowserCommand_OEM extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_OEM()
        {
        }
    }

    public static class TBrowserCommand_OpenWindow extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_OpenWindow()
        {
        }
    }

    public static class TBrowserCommand_PaneState extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_PaneState()
        {
        }
    }

    public static class TBrowserCommand_PostDialog extends TBrowserCmdType
    {

        public String fPostData;
        public String fURL;

        public TBrowserCommand_PostDialog()
        {
        }
    }

    public static class TBrowserCommand_RedirectDialog extends TBrowserCmdType
    {

        public int fContentBy;
        public int fStatusCode;

        public TBrowserCommand_RedirectDialog()
        {
        }
    }

    public static class TBrowserCommand_RequestInclusion extends TBrowserCmdType
    {

        public String fSpecifiedMIMEType;
        public int fSubType;
        public String fURL;

        public TBrowserCommand_RequestInclusion()
        {
        }
    }

    public static class TBrowserCommand_ServerCertConfirmDialog extends TBrowserCmdType
    {

        public int fVerifyResult;

        public TBrowserCommand_ServerCertConfirmDialog()
        {
        }
    }

    public static class TBrowserCommand_SetLocation extends TBrowserCmdType
    {

        public String fURL;

        public TBrowserCommand_SetLocation()
        {
        }
    }

    public static class TBrowserCommand_StartPlugin extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_StartPlugin()
        {
        }
    }

    public static class TBrowserCommand_StreamState extends TBrowserCmdType
    {

        public int fState;
        public String fURL;

        public TBrowserCommand_StreamState()
        {
        }
    }

    public static class TBrowserCommand_User extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_User()
        {
        }
    }

    public static class TBrowserCommand_ViewerWindowRequestInclusion extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_ViewerWindowRequestInclusion()
        {
        }
    }

    public static class TBrowserCommand_ViewerWindowSetLocation extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_ViewerWindowSetLocation()
        {
        }
    }

    public static class TBrowserCommand_VirusCheckError extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_VirusCheckError()
        {
        }
    }

    public static class TBrowserCommand_VirusCheckLog extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_VirusCheckLog()
        {
        }
    }

    public static class TBrowserCommand_WMLError extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_WMLError()
        {
        }
    }

    public static class TBrowserCommand_WindowProgressInfo extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_WindowProgressInfo()
        {
        }
    }

    public static class TBrowserCommand_WindowState extends TBrowserCmdType
    {

        public int fState;

        public TBrowserCommand_WindowState()
        {
        }
    }

    public static class TBrowserCommand_XMLSAXError extends TBrowserCmdType
    {

        public int dummy;

        public TBrowserCommand_XMLSAXError()
        {
        }
    }

    public static class TBrowserReplyType
    {

        public int fCommandID;

        public TBrowserReplyType()
        {
        }
    }

    public static class TBrowserReply_AuthDialog extends TBrowserReplyType
    {

        public boolean fConfirmed;
        public String fPassword;
        public String fUserName;

        public TBrowserReply_AuthDialog()
        {
        }
    }

    public static class TBrowserReply_ClientCertSelectDialog extends TBrowserReplyType
    {

        public int dummy;

        public TBrowserReply_ClientCertSelectDialog()
        {
        }
    }

    public static class TBrowserReply_CloseWindow extends TBrowserReplyType
    {

        public int dummy;

        public TBrowserReply_CloseWindow()
        {
        }
    }

    public static class TBrowserReply_ContentError extends TBrowserReplyType
    {

        public boolean fErrorRecovery;

        public TBrowserReply_ContentError()
        {
        }
    }

    public static class TBrowserReply_CookieDialog extends TBrowserReplyType
    {

        public boolean fAcceptCookie;

        public TBrowserReply_CookieDialog()
        {
        }
    }

    public static class TBrowserReply_DetectVirus extends TBrowserReplyType
    {

        public int dummy;

        public TBrowserReply_DetectVirus()
        {
        }
    }

    public static class TBrowserReply_HistoryBackForw extends TBrowserReplyType
    {

        public boolean fDoHistoryBackForw;

        public TBrowserReply_HistoryBackForw()
        {
        }
    }

    public static class TBrowserReply_JSConfirmDialog extends TBrowserReplyType
    {

        public boolean fConfirmed;

        public TBrowserReply_JSConfirmDialog()
        {
        }
    }

    public static class TBrowserReply_JSPromptDialog extends TBrowserReplyType
    {

        public boolean fConfirmed;

        public TBrowserReply_JSPromptDialog()
        {
        }
    }

    public static class TBrowserReply_OpenWindow extends TBrowserReplyType
    {

        public int dummy;

        public TBrowserReply_OpenWindow()
        {
        }
    }

    public static class TBrowserReply_PermitFunction extends TBrowserReplyType
    {

        public boolean fDoPermit;

        public TBrowserReply_PermitFunction()
        {
        }
    }

    public static class TBrowserReply_PostDialog extends TBrowserReplyType
    {

        public boolean fDoPost;

        public TBrowserReply_PostDialog()
        {
        }
    }

    public static class TBrowserReply_RedirectDialog extends TBrowserReplyType
    {

        public boolean fDoRedirect;

        public TBrowserReply_RedirectDialog()
        {
        }
    }

    public static class TBrowserReply_RequestInclusion extends TBrowserReplyType
    {

        public boolean fDoRequestContent;

        public TBrowserReply_RequestInclusion()
        {
        }
    }

    public static class TBrowserReply_ServerCertConfirmDialog extends TBrowserReplyType
    {

        public boolean fConfirmed;

        public TBrowserReply_ServerCertConfirmDialog()
        {
        }
    }

    public static class TBrowserReply_SetLocation extends TBrowserReplyType
    {

        public boolean fDoRequestContent;

        public TBrowserReply_SetLocation()
        {
        }
    }

    public static class TBrowserReply_StartPlugin extends TBrowserReplyType
    {

        public int dummy;

        public TBrowserReply_StartPlugin()
        {
        }
    }

    public static class TBrowserReply_SystemRecover extends TBrowserReplyType
    {

        public boolean fSelectedAction;

        public TBrowserReply_SystemRecover()
        {
        }
    }

    public static class TBrowserReply_WriteBookmark extends TBrowserReplyType
    {

        public boolean fDoWrite;

        public TBrowserReply_WriteBookmark()
        {
        }
    }

    public static class TBrowserReply_WritePersistentArray extends TBrowserReplyType
    {

        public boolean fDoWrite;

        public TBrowserReply_WritePersistentArray()
        {
        }
    }


    public BMLCommandType()
    {
    }
}
