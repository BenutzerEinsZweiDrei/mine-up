.class abstract Lcom/bleplx/converter/JSObjectConverter;
.super Ljava/lang/Object;
.source "JSObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSCallback(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/bleplx/converter/JSObjectConverter;->toJSObject(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method public abstract toJSObject(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation
.end method
