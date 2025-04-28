.class Lcom/bleplx/BlePlxModule$5;
.super Ljava/lang/Object;
.source "BlePlxModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bleplx/BlePlxModule;->disable(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
        "Ljava/lang/Void;",
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

    .line 150
    iput-object p1, p0, Lcom/bleplx/BlePlxModule$5;->this$0:Lcom/bleplx/BlePlxModule;

    iput-object p2, p0, Lcom/bleplx/BlePlxModule$5;->val$safePromise:Lcom/bleplx/utils/SafePromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bleplx/BlePlxModule$5;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/bleplx/BlePlxModule$5;->val$safePromise:Lcom/bleplx/utils/SafePromise;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bleplx/utils/SafePromise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
