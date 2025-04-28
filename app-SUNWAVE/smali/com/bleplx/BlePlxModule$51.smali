.class Lcom/bleplx/BlePlxModule$51;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->readDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bleplx/BlePlxModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/bleplx/BlePlxModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 800
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$51;->this$0:Lcom/bleplx/BlePlxModule;

    iput-object p2, p0, Lcom/bleplx/BlePlxModule$51;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/bleplx/BlePlxModule$51;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v1, p0, Lcom/bleplx/BlePlxModule$51;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-static {v1}, Lcom/bleplx/BlePlxModule;->access$100(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/BleErrorToJsObjectConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
