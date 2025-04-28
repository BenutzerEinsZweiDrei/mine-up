.class public Lcom/swmansion/reanimated/ReanimatedJSIModulePackage;
.super Ljava/lang/Object;
.source "ReanimatedJSIModulePackage.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSIModulePackage;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJSIModules(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/JavaScriptContextHolder;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Lcom/facebook/react/bridge/JavaScriptContextHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/JSIModuleSpec;",
            ">;"
        }
    .end annotation

    const-string p1, "[REANIMATED]"

    const-string p2, "Since 2.5.0, Reanimated autoinstalls on Android - you can remove getJSIModulePackage() override in MainApplication.java."

    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/facebook/react/bridge/JSIModuleSpec;

    .line 27
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
