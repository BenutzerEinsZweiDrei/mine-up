.class public Lcom/facebook/react/ReactInstanceManagerBuilder;
.super Ljava/lang/Object;
.source "ReactInstanceManagerBuilder.java"


# instance fields
.field private jsInterpreter:Lcom/facebook/react/JSInterpreter;

.field private mApplication:Landroid/app/Application;

.field private mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

.field private mCurrentActivity:Landroid/app/Activity;

.field private mCustomPackagerCommandHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

.field private mDevBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

.field private mDevSupportManagerFactory:Lcom/facebook/react/devsupport/DevSupportManagerFactory;

.field private mInitialLifecycleState:Lcom/facebook/react/common/LifecycleState;

.field private mJSBundleAssetUrl:Ljava/lang/String;

.field private mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

.field private mJSIModulesPackage:Lcom/facebook/react/bridge/JSIModulePackage;

.field private mJSMainModulePath:Ljava/lang/String;

.field private mJavaScriptExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

.field private mLazyViewManagersEnabled:Z

.field private mMinNumShakes:I

.field private mMinTimeLeftInFrameForNonBatchedOperationMs:I

.field private mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

.field private final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mRedBoxHandler:Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

.field private mRequireActivity:Z

.field private mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;

.field private mTMMDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

.field private mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

.field private mUseDeveloperSupport:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mPackages:Ljava/util/List;

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinNumShakes:I

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinTimeLeftInFrameForNonBatchedOperationMs:I

    .line 69
    sget-object v0, Lcom/facebook/react/JSInterpreter;->OLD_LOGIC:Lcom/facebook/react/JSInterpreter;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->jsInterpreter:Lcom/facebook/react/JSInterpreter;

    return-void
.end method

.method private getDefaultJSExecutorFactory(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->jsInterpreter:Lcom/facebook/react/JSInterpreter;

    sget-object v1, Lcom/facebook/react/JSInterpreter;->OLD_LOGIC:Lcom/facebook/react/JSInterpreter;

    if-ne v0, v1, :cond_1

    .line 387
    :try_start_0
    invoke-static {p3}, Lcom/facebook/react/ReactInstanceManager;->initializeSoLoaderIfNecessary(Landroid/content/Context;)V

    .line 388
    invoke-static {}, Lcom/facebook/react/jscexecutor/JSCExecutor;->loadLibrary()V

    .line 389
    new-instance p3, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;

    invoke-direct {p3, p1, p2}, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "__cxa_bad_typeid"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 394
    invoke-static {}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->loadLibrary()V

    .line 395
    new-instance p1, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;

    invoke-direct {p1}, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;-><init>()V

    return-object p1

    .line 392
    :cond_0
    throw p1

    .line 397
    :cond_1
    iget-object p3, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->jsInterpreter:Lcom/facebook/react/JSInterpreter;

    sget-object v0, Lcom/facebook/react/JSInterpreter;->HERMES:Lcom/facebook/react/JSInterpreter;

    if-ne p3, v0, :cond_2

    .line 398
    invoke-static {}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->loadLibrary()V

    .line 399
    new-instance p1, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;

    invoke-direct {p1}, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;-><init>()V

    return-object p1

    .line 401
    :cond_2
    invoke-static {}, Lcom/facebook/react/jscexecutor/JSCExecutor;->loadLibrary()V

    .line 402
    new-instance p3, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;

    invoke-direct {p3, p1, p2}, Lcom/facebook/react/jscexecutor/JSCExecutorFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method private setJSEngine(Lcom/facebook/react/JSInterpreter;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->jsInterpreter:Lcom/facebook/react/JSInterpreter;

    return-void
.end method


# virtual methods
.method public addPackage(Lcom/facebook/react/ReactPackage;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPackages(Ljava/util/List;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;)",
            "Lcom/facebook/react/ReactInstanceManagerBuilder;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/facebook/react/ReactInstanceManager;
    .locals 29

    move-object/from16 v0, p0

    .line 313
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    const-string v2, "Application property has not been set with this builder"

    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mInitialLifecycleState:Lcom/facebook/react/common/LifecycleState;

    sget-object v2, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    if-ne v1, v2, :cond_0

    .line 317
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mCurrentActivity:Landroid/app/Activity;

    const-string v2, "Activity needs to be set if initial lifecycle state is resumed"

    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    :cond_0
    iget-boolean v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUseDeveloperSupport:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const-string v4, "JS Bundle File or Asset URL has to be provided when dev support is disabled"

    invoke-static {v1, v4}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 325
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSMainModulePath:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    const-string v1, "Either MainModulePath or JS Bundle File needs to be provided"

    invoke-static {v2, v1}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 329
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    if-nez v1, :cond_5

    .line 331
    new-instance v1, Lcom/facebook/react/uimanager/UIImplementationProvider;

    invoke-direct {v1}, Lcom/facebook/react/uimanager/UIImplementationProvider;-><init>()V

    iput-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    .line 336
    :cond_5
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {}, Lcom/facebook/react/modules/systeminfo/AndroidInfoHelpers;->getFriendlyDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 339
    new-instance v28, Lcom/facebook/react/ReactInstanceManager;

    iget-object v5, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    iget-object v6, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mCurrentActivity:Landroid/app/Activity;

    iget-object v7, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    .line 343
    iget-object v4, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJavaScriptExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    if-nez v4, :cond_6

    .line 344
    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/react/ReactInstanceManagerBuilder;->getDefaultJSExecutorFactory(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_6
    move-object v8, v4

    .line 346
    :goto_3
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    if-nez v1, :cond_7

    iget-object v2, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 347
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    invoke-static {v1, v2, v3}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v1

    :cond_7
    move-object v9, v1

    .line 349
    iget-object v10, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSMainModulePath:Ljava/lang/String;

    iget-object v11, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mPackages:Ljava/util/List;

    iget-boolean v12, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUseDeveloperSupport:Z

    .line 353
    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDevSupportManagerFactory:Lcom/facebook/react/devsupport/DevSupportManagerFactory;

    if-nez v1, :cond_8

    .line 354
    new-instance v1, Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory;

    invoke-direct {v1}, Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory;-><init>()V

    :cond_8
    move-object v13, v1

    .line 355
    iget-boolean v14, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mRequireActivity:Z

    iget-object v15, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mInitialLifecycleState:Lcom/facebook/react/common/LifecycleState;

    const-string v2, "Initial lifecycle state was not set"

    .line 358
    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/facebook/react/common/LifecycleState;

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mRedBoxHandler:Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mLazyViewManagersEnabled:Z

    move/from16 v20, v1

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDevBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    move-object/from16 v21, v1

    iget v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinNumShakes:I

    move/from16 v22, v1

    iget v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinTimeLeftInFrameForNonBatchedOperationMs:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSIModulesPackage:Lcom/facebook/react/bridge/JSIModulePackage;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mCustomPackagerCommandHandlers:Ljava/util/Map;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mTMMDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;

    move-object/from16 v27, v1

    move-object/from16 v4, v28

    invoke-direct/range {v4 .. v27}, Lcom/facebook/react/ReactInstanceManager;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;Lcom/facebook/react/bridge/JavaScriptExecutorFactory;Lcom/facebook/react/bridge/JSBundleLoader;Ljava/lang/String;Ljava/util/List;ZLcom/facebook/react/devsupport/DevSupportManagerFactory;ZLcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;Lcom/facebook/react/common/LifecycleState;Lcom/facebook/react/uimanager/UIImplementationProvider;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;ZLcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;IILcom/facebook/react/bridge/JSIModulePackage;Ljava/util/Map;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;Lcom/facebook/react/common/SurfaceDelegateFactory;)V

    return-object v28
.end method

.method public setApplication(Landroid/app/Application;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method public setBridgeIdleDebugListener(Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mBridgeIdleDebugListener:Lcom/facebook/react/bridge/NotThreadSafeBridgeIdleDebugListener;

    return-object p0
.end method

.method public setBundleAssetName(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    return-object p0
.end method

.method public setCurrentActivity(Landroid/app/Activity;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mCurrentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public setCustomPackagerCommandHandlers(Ljava/util/Map;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;)",
            "Lcom/facebook/react/ReactInstanceManagerBuilder;"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mCustomPackagerCommandHandlers:Ljava/util/Map;

    return-object p0
.end method

.method public setDefaultHardwareBackBtnHandler(Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDefaultHardwareBackBtnHandler:Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;

    return-object p0
.end method

.method public setDevBundleDownloadListener(Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDevBundleDownloadListener:Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    return-object p0
.end method

.method public setDevSupportManagerFactory(Lcom/facebook/react/devsupport/DevSupportManagerFactory;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mDevSupportManagerFactory:Lcom/facebook/react/devsupport/DevSupportManagerFactory;

    return-object p0
.end method

.method public setInitialLifecycleState(Lcom/facebook/react/common/LifecycleState;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mInitialLifecycleState:Lcom/facebook/react/common/LifecycleState;

    return-object p0
.end method

.method public setJSBundleFile(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 1

    const-string v0, "assets://"

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    return-object p0

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setJSBundleLoader(Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/ReactInstanceManagerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setJSBundleLoader(Lcom/facebook/react/bridge/JSBundleLoader;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSBundleAssetUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setJSIModulesPackage(Lcom/facebook/react/bridge/JSIModulePackage;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSIModulesPackage:Lcom/facebook/react/bridge/JSIModulePackage;

    return-object p0
.end method

.method public setJSMainModulePath(Ljava/lang/String;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJSMainModulePath:Ljava/lang/String;

    return-object p0
.end method

.method public setJavaScriptExecutorFactory(Lcom/facebook/react/bridge/JavaScriptExecutorFactory;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mJavaScriptExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    return-object p0
.end method

.method public setJsEngineAsHermes(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    if-eqz p1, :cond_0

    .line 147
    sget-object p1, Lcom/facebook/react/JSInterpreter;->HERMES:Lcom/facebook/react/JSInterpreter;

    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setJSEngine(Lcom/facebook/react/JSInterpreter;)V

    goto :goto_0

    .line 149
    :cond_0
    sget-object p1, Lcom/facebook/react/JSInterpreter;->JSC:Lcom/facebook/react/JSInterpreter;

    invoke-direct {p0, p1}, Lcom/facebook/react/ReactInstanceManagerBuilder;->setJSEngine(Lcom/facebook/react/JSInterpreter;)V

    :goto_0
    return-object p0
.end method

.method public setLazyViewManagersEnabled(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mLazyViewManagersEnabled:Z

    return-object p0
.end method

.method public setMinNumShakes(I)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 279
    iput p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinNumShakes:I

    return-object p0
.end method

.method public setMinTimeLeftInFrameForNonBatchedOperationMs(I)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 285
    iput p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mMinTimeLeftInFrameForNonBatchedOperationMs:I

    return-object p0
.end method

.method public setNativeModuleCallExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    return-object p0
.end method

.method public setReactPackageTurboModuleManagerDelegateBuilder(Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mTMMDelegateBuilder:Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    return-object p0
.end method

.method public setRedBoxHandler(Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mRedBoxHandler:Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    return-object p0
.end method

.method public setRequireActivity(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mRequireActivity:Z

    return-object p0
.end method

.method public setSurfaceDelegateFactory(Lcom/facebook/react/common/SurfaceDelegateFactory;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mSurfaceDelegateFactory:Lcom/facebook/react/common/SurfaceDelegateFactory;

    return-object p0
.end method

.method public setUIImplementationProvider(Lcom/facebook/react/uimanager/UIImplementationProvider;)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUIImplementationProvider:Lcom/facebook/react/uimanager/UIImplementationProvider;

    return-object p0
.end method

.method public setUseDeveloperSupport(Z)Lcom/facebook/react/ReactInstanceManagerBuilder;
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/facebook/react/ReactInstanceManagerBuilder;->mUseDeveloperSupport:Z

    return-object p0
.end method
