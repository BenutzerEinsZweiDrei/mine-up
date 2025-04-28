.class Lcom/bleplx/BlePlxModule$32;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->writeCharacteristic(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
        "Lcom/polidea/multiplatformbleadapter/Characteristic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bleplx/BlePlxModule;

.field final synthetic val$safePromise:Lcom/bleplx/utils/SafePromise;


# direct methods
.method constructor <init>(Lcom/bleplx/BlePlxModule;Lcom/bleplx/utils/SafePromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 573
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$32;->this$0:Lcom/bleplx/BlePlxModule;

    iput-object p2, p0, Lcom/bleplx/BlePlxModule$32;->val$safePromise:Lcom/bleplx/utils/SafePromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/polidea/multiplatformbleadapter/Characteristic;)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/bleplx/BlePlxModule$32;->val$safePromise:Lcom/bleplx/utils/SafePromise;

    iget-object v1, p0, Lcom/bleplx/BlePlxModule$32;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-static {v1}, Lcom/bleplx/BlePlxModule;->access$400(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/CharacteristicToJsObjectConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bleplx/converter/CharacteristicToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Characteristic;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bleplx/utils/SafePromise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 573
    check-cast p1, Lcom/polidea/multiplatformbleadapter/Characteristic;

    invoke-virtual {p0, p1}, Lcom/bleplx/BlePlxModule$32;->onSuccess(Lcom/polidea/multiplatformbleadapter/Characteristic;)V

    return-void
.end method
