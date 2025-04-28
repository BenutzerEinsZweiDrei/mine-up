.class Lcom/bleplx/BlePlxModule$20;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->connectToDevice(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
        "Lcom/polidea/multiplatformbleadapter/ConnectionState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bleplx/BlePlxModule;

.field final synthetic val$deviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bleplx/BlePlxModule;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$20;->this$0:Lcom/bleplx/BlePlxModule;

    iput-object p2, p0, Lcom/bleplx/BlePlxModule$20;->val$deviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/polidea/multiplatformbleadapter/ConnectionState;)V
    .locals 3

    .line 346
    sget-object v0, Lcom/polidea/multiplatformbleadapter/ConnectionState;->DISCONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    if-ne p1, v0, :cond_0

    .line 347
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    .line 348
    invoke-interface {p1}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    .line 349
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/bleplx/BlePlxModule$20;->val$deviceId:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 352
    iget-object v0, p0, Lcom/bleplx/BlePlxModule$20;->this$0:Lcom/bleplx/BlePlxModule;

    sget-object v1, Lcom/bleplx/Event;->DisconnectionEvent:Lcom/bleplx/Event;

    invoke-static {v0, v1, p1}, Lcom/bleplx/BlePlxModule;->access$000(Lcom/bleplx/BlePlxModule;Lcom/bleplx/Event;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .line 343
    check-cast p1, Lcom/polidea/multiplatformbleadapter/ConnectionState;

    invoke-virtual {p0, p1}, Lcom/bleplx/BlePlxModule$20;->onEvent(Lcom/polidea/multiplatformbleadapter/ConnectionState;)V

    return-void
.end method
