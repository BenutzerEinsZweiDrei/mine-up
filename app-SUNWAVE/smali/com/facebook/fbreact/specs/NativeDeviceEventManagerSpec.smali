.class public abstract Lcom/facebook/fbreact/specs/NativeDeviceEventManagerSpec;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NativeDeviceEventManagerSpec.java"

# interfaces
.implements Lcom/facebook/react/bridge/ReactModuleWithSpec;
.implements Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method


# virtual methods
.method public abstract invokeDefaultBackPressHandler()V
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation
.end method
