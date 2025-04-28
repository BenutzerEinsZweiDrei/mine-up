.class public Lcom/hypon/sunwave/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcl/json/ShareApplication;
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mNewArchitectureNativeHost:Lcom/facebook/react/ReactNativeHost;

.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    new-instance v0, Lcom/hypon/sunwave/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lcom/hypon/sunwave/MainApplication$1;-><init>(Lcom/hypon/sunwave/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/hypon/sunwave/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    .line 51
    new-instance v0, Lcom/hypon/sunwave/newarchitecture/MainApplicationReactNativeHost;

    invoke-direct {v0, p0}, Lcom/hypon/sunwave/newarchitecture/MainApplicationReactNativeHost;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/hypon/sunwave/MainApplication;->mNewArchitectureNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method private static initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getFileProviderAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hypon.sunwave.provider"

    return-object v0
.end method

.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hypon/sunwave/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useTurboModules:Z

    .line 77
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 78
    invoke-virtual {p0}, Lcom/hypon/sunwave/MainApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hypon/sunwave/MainApplication;->initializeFlipper(Landroid/content/Context;Lcom/facebook/react/ReactInstanceManager;)V

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hypon/sunwave/MainApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 66
    invoke-super {p0, p1, p2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
