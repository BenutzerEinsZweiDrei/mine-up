.class public Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "RNCWebViewManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reactnativecommunity/webview/RNCWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RNCWebChromeClient"
.end annotation


# static fields
.field protected static final COMMON_PERMISSION_REQUEST:I = 0x3

.field protected static final FULLSCREEN_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final FULLSCREEN_SYSTEM_UI_VISIBILITY:I = 0x1f06


# instance fields
.field protected geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field protected geolocationPermissionOrigin:Ljava/lang/String;

.field protected grantedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected mReactContext:Lcom/facebook/react/bridge/ReactContext;

.field protected mVideoView:Landroid/view/View;

.field protected mWebView:Landroid/view/View;

.field protected pendingPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected permissionRequest:Landroid/webkit/PermissionRequest;

.field protected permissionsRequestShown:Z

.field protected progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;

.field private webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1194
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->FULLSCREEN_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/webkit/WebView;)V
    .locals 1

    .line 1237
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 1231
    iput-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->permissionsRequestShown:Z

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    const/4 v0, 0x0

    .line 1235
    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;

    .line 1382
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient$$ExternalSyntheticLambda0;-><init>(Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;)V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 1238
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 1239
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mWebView:Landroid/view/View;

    return-void
.end method

.method private getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1349
    instance-of v1, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v1, :cond_0

    .line 1352
    check-cast v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    return-object v0

    .line 1350
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to use permissions API but the host Activity doesn\'t implement PermissionAwareActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to use permissions API while not attached to an Activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized requestPermissions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1363
    :try_start_0
    iget-boolean v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->permissionsRequestShown:Z

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    monitor-exit p0

    return-void

    .line 1368
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object v0

    const/4 v1, 0x1

    .line 1369
    iput-boolean v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->permissionsRequestShown:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1372
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->webviewPermissionsListener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 1371
    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    .line 1378
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected getRootView()Landroid/view/ViewGroup;
    .locals 2

    .line 1484
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public synthetic lambda$new$0$com-reactnativecommunity-webview-RNCWebViewManager$RNCWebChromeClient(I[Ljava/lang/String;[I)Z
    .locals 8

    const/4 p1, 0x0

    .line 1385
    iput-boolean p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->permissionsRequestShown:Z

    move v0, p1

    move v1, v0

    .line 1393
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_9

    .line 1395
    aget-object v2, p2, v0

    .line 1396
    aget v5, p3, v0

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, p1

    :goto_1
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 1398
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    if-eqz v7, :cond_2

    if-eqz v5, :cond_1

    .line 1403
    invoke-interface {v6, v7, v4, p1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 1405
    :cond_1
    invoke-interface {v6, v7, p1, p1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 1408
    :goto_2
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 1409
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    :cond_2
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 1412
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v5, :cond_3

    .line 1413
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v1, :cond_3

    const-string v3, "android.webkit.resource.AUDIO_CAPTURE"

    .line 1414
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v1, v4

    :cond_4
    const-string v3, "android.permission.CAMERA"

    .line 1419
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_5

    .line 1420
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v1, :cond_5

    const-string v3, "android.webkit.resource.VIDEO_CAPTURE"

    .line 1421
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v4

    :cond_6
    const-string v3, "android.webkit.resource.PROTECTED_MEDIA_ID"

    .line 1426
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v5, :cond_7

    .line 1427
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 1428
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move v1, v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    .line 1434
    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    if-eqz p2, :cond_a

    iget-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    if-eqz p3, :cond_a

    new-array v0, p1, [Ljava/lang/String;

    .line 1437
    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 1438
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    .line 1439
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    .line 1442
    :cond_a
    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 1443
    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->pendingPermissions:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    return p1

    :cond_b
    return v4
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 1245
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1246
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 1247
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 1248
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .line 1329
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->geolocationPermissionCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 1336
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->geolocationPermissionOrigin:Ljava/lang/String;

    .line 1338
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1341
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :goto_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 2

    .line 1472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v1, 0x1f06

    if-eq v0, v1, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mVideoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 9

    .line 1287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    .line 1289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    const-string v7, "android.webkit.resource.AUDIO_CAPTURE"

    .line 1293
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "android.webkit.resource.PROTECTED_MEDIA_ID"

    if-eqz v7, :cond_0

    const-string v5, "android.permission.RECORD_AUDIO"

    goto :goto_1

    :cond_0
    const-string v7, "android.webkit.resource.VIDEO_CAPTURE"

    .line 1295
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, "android.permission.CAMERA"

    goto :goto_1

    .line 1297
    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v8

    :cond_2
    :goto_1
    if-eqz v5, :cond_4

    .line 1303
    iget-object v7, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v7, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 1304
    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1306
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1312
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1313
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 1314
    iput-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->grantedPermissions:Ljava/util/List;

    return-void

    .line 1320
    :cond_6
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->permissionRequest:Landroid/webkit/PermissionRequest;

    .line 1322
    invoke-direct {p0, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->requestPermissions(Ljava/util/List;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5

    .line 1264
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 1265
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1266
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;

    invoke-virtual {v1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;->isWaitingForCommandLoadUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1269
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 1270
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v2

    int-to-double v2, v2

    const-string v4, "target"

    invoke-interface {v1, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1271
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    .line 1272
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const-string v2, "canGoBack"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 1274
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    const-string v2, "canGoForward"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    float-to-double v2, p2

    const-string p2, "progress"

    .line 1275
    invoke-interface {v1, p2, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 1276
    move-object p2, p1

    check-cast p2, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    new-instance v0, Lcom/reactnativecommunity/webview/events/TopLoadingProgressEvent;

    .line 1279
    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lcom/reactnativecommunity/webview/events/TopLoadingProgressEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    .line 1276
    invoke-virtual {p2, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 1465
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    .line 1466
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1467
    :goto_0
    iget-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->getModule(Lcom/facebook/react/bridge/ReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewModule;

    move-result-object p3

    invoke-virtual {p3, p2, p1, v0}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;[Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1455
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->getModule(Lcom/facebook/react/bridge/ReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewModule;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->getModule(Lcom/facebook/react/bridge/ReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewModule;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method protected openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1459
    iget-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->getModule(Lcom/facebook/react/bridge/ReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewModule;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->startPhotoPickerIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;)V
    .locals 0

    .line 1488
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebChromeClient;->progressChangedFilter:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;

    return-void
.end method
