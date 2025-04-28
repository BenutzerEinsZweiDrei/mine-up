.class public Lorg/wonday/orientation/OrientationModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "OrientationModule.java"

# interfaces
.implements Lorg/wonday/orientation/OrientationListeners;


# instance fields
.field final ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private isConfigurationChangeReceiverRegistered:Z

.field private isLocked:Z

.field private lastDeviceOrientationValue:Ljava/lang/String;

.field private lastOrientationValue:Ljava/lang/String;

.field final mOrientationListener:Landroid/view/OrientationEventListener;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/wonday/orientation/OrientationModule;->isLocked:Z

    .line 47
    iput-boolean v0, p0, Lorg/wonday/orientation/OrientationModule;->isConfigurationChangeReceiverRegistered:Z

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->lastDeviceOrientationValue:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 55
    new-instance v0, Lorg/wonday/orientation/OrientationModule$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lorg/wonday/orientation/OrientationModule$1;-><init>(Lorg/wonday/orientation/OrientationModule;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 109
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p1

    const-string v1, "ReactNative"

    if-eqz p1, :cond_0

    const-string p1, "orientation detect enabled."

    .line 110
    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    const-string p1, "orientation detect disabled."

    .line 113
    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 117
    :goto_0
    new-instance p1, Lorg/wonday/orientation/OrientationModule$2;

    invoke-direct {p1, p0}, Lorg/wonday/orientation/OrientationModule$2;-><init>(Lorg/wonday/orientation/OrientationModule;)V

    iput-object p1, p0, Lorg/wonday/orientation/OrientationModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    invoke-static {}, Lorg/wonday/orientation/OrientationActivityLifecycle;->getInstance()Lorg/wonday/orientation/OrientationActivityLifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/wonday/orientation/OrientationActivityLifecycle;->registerListeners(Lorg/wonday/orientation/OrientationListeners;)V

    return-void
.end method

.method static synthetic access$000(Lorg/wonday/orientation/OrientationModule;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wonday/orientation/OrientationModule;->lastDeviceOrientationValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lorg/wonday/orientation/OrientationModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/wonday/orientation/OrientationModule;->lastDeviceOrientationValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/wonday/orientation/OrientationModule;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentOrientation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/wonday/orientation/OrientationModule;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lorg/wonday/orientation/OrientationModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    return-object p1
.end method

.method private compatRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V
    .locals 2

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_1

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_0

    :cond_0
    const/4 p4, 0x4

    .line 415
    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 418
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method private getCurrentOrientation()Ljava/lang/String;
    .locals 2

    .line 146
    invoke-virtual {p0}, Lorg/wonday/orientation/OrientationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_0
    const-string v0, "LANDSCAPE-RIGHT"

    return-object v0

    :cond_1
    const-string v0, "PORTRAIT-UPSIDEDOWN"

    return-object v0

    :cond_2
    const-string v0, "LANDSCAPE-LEFT"

    return-object v0

    :cond_3
    const-string v0, "PORTRAIT"

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getAutoRotateState(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    .line 338
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    invoke-direct {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentOrientation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "initialOrientation"

    .line 349
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getDeviceOrientation(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastDeviceOrientationValue:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Orientation"

    return-object v0
.end method

.method public getOrientation(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 163
    invoke-direct {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentOrientation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 164
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public lockToLandscape()V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 228
    invoke-virtual {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x6

    .line 230
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lorg/wonday/orientation/OrientationModule;->isLocked:Z

    const-string v0, "LANDSCAPE-LEFT"

    .line 234
    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    const-string v2, "orientation"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 239
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v3, "orientationDidChange"

    .line 240
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 248
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "lockDidChange"

    .line 249
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public lockToLandscapeLeft()V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 255
    invoke-virtual {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lorg/wonday/orientation/OrientationModule;->isLocked:Z

    const-string v0, "LANDSCAPE-LEFT"

    .line 261
    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    .line 262
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    const-string v2, "orientation"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 266
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v3, "orientationDidChange"

    .line 267
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 275
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "lockDidChange"

    .line 276
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public lockToLandscapeRight()V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 282
    invoke-virtual {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 284
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lorg/wonday/orientation/OrientationModule;->isLocked:Z

    const-string v0, "LANDSCAPE-RIGHT"

    .line 288
    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    .line 289
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    const-string v2, "orientation"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 293
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v3, "orientationDidChange"

    .line 294
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 302
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "lockDidChange"

    .line 303
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public lockToPortrait()V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 174
    invoke-virtual {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 177
    iput-boolean v1, p0, Lorg/wonday/orientation/OrientationModule;->isLocked:Z

    const-string v0, "PORTRAIT"

    .line 180
    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    const-string v2, "orientation"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 185
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v3, "orientationDidChange"

    .line 186
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 194
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "lockDidChange"

    .line 195
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public lockToPortraitUpsideDown()V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 201
    invoke-virtual {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x9

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lorg/wonday/orientation/OrientationModule;->isLocked:Z

    const-string v0, "PORTRAIT-UPSIDEDOWN"

    .line 207
    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    const-string v2, "orientation"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 212
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v3, "orientationDidChange"

    .line 213
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 221
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "lockDidChange"

    .line 222
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 3

    const-string v0, "ReactNative"

    const-string v1, "orientation detect disabled."

    .line 378
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 381
    invoke-virtual {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 385
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lorg/wonday/orientation/OrientationModule;->isConfigurationChangeReceiverRegistered:Z

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lorg/wonday/orientation/OrientationModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 387
    iput-boolean v1, p0, Lorg/wonday/orientation/OrientationModule;->isConfigurationChangeReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Receiver already unregistered"

    .line 391
    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public start()V
    .locals 4

    const-string v0, "ReactNative"

    const-string v1, "orientation detect enabled."

    .line 356
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lorg/wonday/orientation/OrientationModule;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 358
    iget-object v0, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "onConfigurationChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/wonday/orientation/OrientationModule;->compatRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lorg/wonday/orientation/OrientationModule;->isConfigurationChangeReceiverRegistered:Z

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "ReactNative"

    const-string v1, "orientation detect disabled."

    .line 364
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 367
    :try_start_0
    iget-boolean v1, p0, Lorg/wonday/orientation/OrientationModule;->isConfigurationChangeReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v2, p0, Lorg/wonday/orientation/OrientationModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 369
    iput-boolean v1, p0, Lorg/wonday/orientation/OrientationModule;->isConfigurationChangeReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Receiver already unregistered"

    .line 372
    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public unlockAllOrientations()V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 310
    invoke-virtual {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 312
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lorg/wonday/orientation/OrientationModule;->isLocked:Z

    .line 316
    invoke-direct {p0}, Lorg/wonday/orientation/OrientationModule;->getCurrentOrientation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    .line 317
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->lastOrientationValue:Ljava/lang/String;

    const-string v2, "orientation"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 321
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v3, "orientationDidChange"

    .line 322
    invoke-interface {v1, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "UNKNOWN"

    .line 327
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lorg/wonday/orientation/OrientationModule;->ctx:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 330
    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v2, "lockDidChange"

    .line 331
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
