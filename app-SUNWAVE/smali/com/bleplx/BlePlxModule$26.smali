.class Lcom/bleplx/BlePlxModule$26;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->discoverAllServicesAndCharacteristicsForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
        "Lcom/polidea/multiplatformbleadapter/Device;",
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

    .line 403
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$26;->this$0:Lcom/bleplx/BlePlxModule;

    iput-object p2, p0, Lcom/bleplx/BlePlxModule$26;->val$safePromise:Lcom/bleplx/utils/SafePromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/polidea/multiplatformbleadapter/Device;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/bleplx/BlePlxModule$26;->val$safePromise:Lcom/bleplx/utils/SafePromise;

    iget-object v1, p0, Lcom/bleplx/BlePlxModule$26;->this$0:Lcom/bleplx/BlePlxModule;

    invoke-static {v1}, Lcom/bleplx/BlePlxModule;->access$300(Lcom/bleplx/BlePlxModule;)Lcom/bleplx/converter/DeviceToJsObjectConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bleplx/converter/DeviceToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Device;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bleplx/utils/SafePromise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 403
    check-cast p1, Lcom/polidea/multiplatformbleadapter/Device;

    invoke-virtual {p0, p1}, Lcom/bleplx/BlePlxModule$26;->onSuccess(Lcom/polidea/multiplatformbleadapter/Device;)V

    return-void
.end method
