.class public Lcom/swmansion/reanimated/ReanimatedPackage;
.super Lcom/facebook/react/TurboReactPackage;
.source "ReanimatedPackage.java"

# interfaces
.implements Lcom/facebook/react/ReactPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/TurboReactPackage;-><init>()V

    return-void
.end method

.method private createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 5

    .line 68
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    const-wide/16 v0, 0x0

    const-string v2, "createUIManagerModule"

    .line 69
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/ReanimatedPackage;->getReactInstanceManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/ReactInstanceManager;

    move-result-object v2

    .line 73
    :try_start_0
    new-instance v3, Lcom/facebook/react/uimanager/ReanimatedUIManager;

    .line 75
    invoke-virtual {v2, p1}, Lcom/facebook/react/ReactInstanceManager;->getOrCreateViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v2

    const/4 v4, -0x1

    invoke-direct {v3, p1, v2, v4}, Lcom/facebook/react/uimanager/ReanimatedUIManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 79
    sget-object p1, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {p1}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    return-object v3

    :catchall_0
    move-exception p1

    .line 78
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 79
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CREATE_UI_MANAGER_MODULE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 80
    throw p1
.end method


# virtual methods
.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1

    const-string v0, "ReanimatedModule"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance p1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-direct {p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p1

    :cond_0
    const-string v0, "UIManager"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    invoke-direct {p0, p2}, Lcom/swmansion/reanimated/ReanimatedPackage;->createUIManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/uimanager/UIManagerModule;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReactInstanceManager(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/ReactInstanceManager;
    .locals 0

    .line 92
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/ReactApplication;

    .line 93
    invoke-interface {p1}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object p1

    return-object p1
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 16

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 38
    const-class v2, Lcom/swmansion/reanimated/ReanimatedModule;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/facebook/react/uimanager/ReanimatedUIManager;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 44
    aget-object v4, v1, v3

    .line 45
    const-class v5, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/module/annotations/ReactModule;

    .line 48
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 50
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 53
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->needsEagerInit()Z

    move-result v11

    .line 54
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->hasConstants()Z

    move-result v12

    .line 55
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v13

    const-class v5, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    .line 56
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    .line 47
    invoke-interface {v2, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcom/swmansion/reanimated/ReanimatedPackage$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/reanimated/ReanimatedPackage$1;-><init>(Lcom/swmansion/reanimated/ReanimatedPackage;Ljava/util/Map;)V

    return-object v0
.end method
