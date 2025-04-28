.class public Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RNCWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/webview/RNCWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RNCWebViewClient"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected basicAuthCredential:Lcom/reactnativecommunity/webview/BasicAuthCredential;

.field protected ignoreErrFailedForThisURL:Ljava/lang/String;

.field protected mLastLoadFailed:Z

.field protected mUrlPrefixesForDefaultIntent:Lcom/facebook/react/bridge/ReadableArray;

.field protected progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 903
    const-class v0, Lcom/reactnativecommunity/webview/RNCWebViewManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 903
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 905
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->mLastLoadFailed:Z

    const/4 v0, 0x0

    .line 908
    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;

    .line 909
    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->ignoreErrFailedForThisURL:Ljava/lang/String;

    .line 910
    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/BasicAuthCredential;

    return-void
.end method


# virtual methods
.method protected createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 1172
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1173
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    int-to-double v1, v1

    const-string v3, "target"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v1, "url"

    .line 1176
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-boolean p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->mLastLoadFailed:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result p2

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v1, "loading"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1178
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v1, "title"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    const-string v1, "canGoBack"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1180
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    const-string p2, "canGoForward"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1164
    move-object v0, p1

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    new-instance v1, Lcom/reactnativecommunity/webview/events/TopLoadingFinishEvent;

    .line 1167
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v2

    .line 1168
    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/reactnativecommunity/webview/events/TopLoadingFinishEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 1164
    invoke-virtual {v0, p1, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 922
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 924
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->mLastLoadFailed:Z

    if-nez v0, :cond_0

    .line 925
    move-object v0, p1

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    .line 927
    invoke-virtual {v0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->callInjectedJavaScript()V

    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 935
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p3, 0x0

    .line 936
    iput-boolean p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->mLastLoadFailed:Z

    .line 938
    move-object p3, p1

    check-cast p3, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    .line 939
    invoke-virtual {p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->callInjectedJavaScriptBeforeContentLoaded()V

    .line 941
    new-instance v0, Lcom/reactnativecommunity/webview/events/TopLoadingStartEvent;

    .line 944
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    .line 945
    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/reactnativecommunity/webview/events/TopLoadingStartEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 941
    invoke-virtual {p3, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->ignoreErrFailedForThisURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "net::ERR_FAILED"

    .line 1082
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1089
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->setIgnoreErrFailedForThisURL(Ljava/lang/String;)V

    return-void

    .line 1093
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1094
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->mLastLoadFailed:Z

    .line 1098
    invoke-virtual {p0, p1, p4}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->emitFinishEvent(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0, p1, p4}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p4

    int-to-double v0, p2

    const-string p2, "code"

    .line 1101
    invoke-interface {p4, p2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p2, "description"

    .line 1102
    invoke-interface {p4, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    move-object p2, p1

    check-cast p2, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    new-instance p3, Lcom/reactnativecommunity/webview/events/TopLoadingErrorEvent;

    .line 1106
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v0

    invoke-direct {p3, v0, p4}, Lcom/reactnativecommunity/webview/events/TopLoadingErrorEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 1104
    invoke-virtual {p2, p1, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/BasicAuthCredential;

    if-eqz v0, :cond_0

    .line 1007
    iget-object p1, v0, Lcom/reactnativecommunity/webview/BasicAuthCredential;->username:Ljava/lang/String;

    iget-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/BasicAuthCredential;

    iget-object p3, p3, Lcom/reactnativecommunity/webview/BasicAuthCredential;->password:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1010
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 1115
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 1117
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 1119
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    const-string v1, "statusCode"

    invoke-interface {p2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1120
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "description"

    invoke-interface {p2, v0, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    move-object p3, p1

    check-cast p3, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    new-instance v0, Lcom/reactnativecommunity/webview/events/TopHttpErrorEvent;

    .line 1124
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/reactnativecommunity/webview/events/TopHttpErrorEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 1122
    invoke-virtual {p3, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .line 1019
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1025
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1029
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Resource blocked from loading due to SSL error. Blocked URL: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RNCWebViewManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1033
    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    if-eqz p2, :cond_6

    const/4 p3, 0x1

    if-eq p2, p3, :cond_5

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_3

    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    const/4 p3, 0x5

    if-eq p2, p3, :cond_1

    const-string p3, "Unknown SSL Error"

    goto :goto_0

    :cond_1
    const-string p3, "A generic error occurred"

    goto :goto_0

    :cond_2
    const-string p3, "The date of the certificate is invalid"

    goto :goto_0

    :cond_3
    const-string p3, "The certificate authority is not trusted"

    goto :goto_0

    :cond_4
    const-string p3, "Hostname mismatch"

    goto :goto_0

    :cond_5
    const-string p3, "The certificate has expired"

    goto :goto_0

    :cond_6
    const-string p3, "The certificate is not yet valid"

    .line 1062
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSL error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1064
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    .line 1132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1135
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 1137
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    const-string v1, "RNCWebViewManager"

    if-eqz v0, :cond_1

    const-string v0, "The WebView rendering process crashed."

    .line 1138
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "The WebView rendering process was killed by the system."

    .line 1141
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    .line 1151
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 1152
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    const-string v2, "didCrash"

    invoke-interface {v1, v2, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1154
    move-object p2, p1

    check-cast p2, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    new-instance v2, Lcom/reactnativecommunity/webview/events/TopRenderProcessGoneEvent;

    .line 1156
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/reactnativecommunity/webview/events/TopRenderProcessGoneEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 1154
    invoke-virtual {p2, p1, v2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    return v0
.end method

.method public setBasicAuthCredential(Lcom/reactnativecommunity/webview/BasicAuthCredential;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->basicAuthCredential:Lcom/reactnativecommunity/webview/BasicAuthCredential;

    return-void
.end method

.method public setIgnoreErrFailedForThisURL(Ljava/lang/String;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->ignoreErrFailedForThisURL:Ljava/lang/String;

    return-void
.end method

.method public setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;

    return-void
.end method

.method public setUrlPrefixesForDefaultIntent(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->mUrlPrefixesForDefaultIntent:Lcom/facebook/react/bridge/ReadableArray;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 1000
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1001
    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .line 950
    move-object v0, p1

    check-cast v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    .line 951
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_4

    .line 953
    iget-object v1, v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-eqz v1, :cond_4

    .line 954
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModule;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock;

    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock;->getNewLock()Landroidx/core/util/Pair;

    move-result-object v1

    .line 955
    iget-object v4, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 956
    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 958
    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "lockIdentifier"

    .line 959
    invoke-interface {p1, p2, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "onShouldStartLoadWithRequest"

    .line 960
    invoke-virtual {v0, p2, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->sendDirectMessage(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 964
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 966
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;->UNDECIDED:Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;

    if-ne v0, v5, :cond_2

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, p1

    const-wide/16 v7, 0xfa

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    const-string p1, "RNCWebViewManager"

    const-string p2, "Did not receive response to shouldOverrideUrlLoading in time, defaulting to allow loading."

    .line 968
    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    sget-object p1, Lcom/reactnativecommunity/webview/RNCWebViewModule;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock;->removeLock(Ljava/lang/Integer;)V

    .line 970
    monitor-exit v1

    return v3

    .line 972
    :cond_1
    invoke-virtual {v1, v7, v8}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 974
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;->SHOULD_OVERRIDE:Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 982
    :goto_2
    sget-object p1, Lcom/reactnativecommunity/webview/RNCWebViewModule;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock;->removeLock(Ljava/lang/Integer;)V

    return v2

    :catchall_0
    move-exception p1

    .line 974
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "RNCWebViewManager"

    const-string v0, "shouldOverrideUrlLoading was interrupted while waiting for result."

    .line 976
    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 977
    sget-object p1, Lcom/reactnativecommunity/webview/RNCWebViewModule;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule$ShouldOverrideUrlLoadingLock;->removeLock(Ljava/lang/Integer;)V

    return v3

    :cond_4
    const-string v1, "RNCWebViewManager"

    const-string v3, "Couldn\'t use blocking synchronous call for onShouldStartLoadWithRequest due to debugging or missing Catalyst instance, falling back to old event-and-load."

    .line 986
    invoke-static {v1, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;

    invoke-virtual {v1, v2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;->setWaitingForCommandLoadUrl(Z)V

    .line 988
    new-instance v1, Lcom/reactnativecommunity/webview/events/TopShouldStartLoadWithRequestEvent;

    .line 991
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v3

    .line 992
    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Lcom/reactnativecommunity/webview/events/TopShouldStartLoadWithRequestEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 988
    invoke-virtual {v0, p1, v1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    return v2
.end method
