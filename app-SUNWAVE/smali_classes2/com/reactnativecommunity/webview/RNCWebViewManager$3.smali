.class Lcom/reactnativecommunity/webview/RNCWebViewManager$3;
.super Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;
.source "RNCWebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/webview/RNCWebViewManager;->setupWebChromeClient(Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$initialRequestedOrientation:I


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/webview/RNCWebViewManager;Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/WebView;Landroid/app/Activity;I)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager;

    iput-object p4, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->val$activity:Landroid/app/Activity;

    iput p5, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->val$initialRequestedOrientation:I

    invoke-direct {p0, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;-><init>(Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .line 809
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x32

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onHideCustomView()V
    .locals 4

    .line 856
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mVideoView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mWebView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 864
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mWebView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mWebView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 870
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 871
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 874
    :cond_2
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mVideoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 875
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    const/4 v0, 0x0

    .line 877
    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mVideoView:Landroid/view/View;

    .line 878
    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 880
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->val$initialRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 882
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 815
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 819
    :cond_0
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mVideoView:Landroid/view/View;

    .line 820
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 822
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->val$activity:Landroid/app/Activity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 824
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_1

    .line 825
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mVideoView:Landroid/view/View;

    const/16 p2, 0x1f06

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 826
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x200

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    .line 832
    :cond_1
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mVideoView:Landroid/view/View;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 840
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    .line 841
    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mVideoView:Landroid/view/View;

    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->FULLSCREEN_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mWebView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    if-eq p1, p2, :cond_2

    .line 845
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mWebView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 848
    :cond_2
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mWebView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :goto_0
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$3;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method
