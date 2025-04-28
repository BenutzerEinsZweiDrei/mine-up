.class Lcom/bleplx/BlePlxModule$54;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->writeDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
        "Lcom/polidea/multiplatformbleadapter/Descriptor;",
        ">;"
    }
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

    .line 844
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$54;->this$0:Lcom/bleplx/BlePlxModule;

    iput-object p2, p0, Lcom/bleplx/BlePlxModule$54;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/polidea/multiplatformbleadapter/Descriptor;)V
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/bleplx/BlePlxModule$54;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v1, p0, Lcom/bleplx/BlePlxModule$54;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-static {v1}, Lcom/bleplx/BlePlxModule;->access$500(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/DescriptorToJsObjectConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bleplx/converter/DescriptorToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Descriptor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 844
    check-cast p1, Lcom/polidea/multiplatformbleadapter/Descriptor;

    invoke-virtual {p0, p1}, Lcom/bleplx/BlePlxModule$54;->onSuccess(Lcom/polidea/multiplatformbleadapter/Descriptor;)V

    return-void
.end method
