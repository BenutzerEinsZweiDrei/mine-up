.class Lcom/facebook/react/bridge/JavaMethodWrapper$8;
.super Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;
.source "JavaMethodWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/JavaMethodWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor<",
        "Lcom/facebook/react/bridge/ReadableMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lcom/facebook/react/bridge/JavaMethodWrapper$ArgumentExtractor;-><init>(Lcom/facebook/react/bridge/JavaMethodWrapper$1;)V

    return-void
.end method


# virtual methods
.method public extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ReadableArray;I)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    .line 100
    invoke-interface {p2, p3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ReadableArray;I)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/bridge/JavaMethodWrapper$8;->extractArgument(Lcom/facebook/react/bridge/JSInstance;Lcom/facebook/react/bridge/ReadableArray;I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    return-object p1
.end method
