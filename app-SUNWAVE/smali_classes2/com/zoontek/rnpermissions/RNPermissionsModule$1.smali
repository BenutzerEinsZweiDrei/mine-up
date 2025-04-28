.class Lcom/zoontek/rnpermissions/RNPermissionsModule$1;
.super Ljava/lang/Object;
.source "RNPermissionsModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoontek/rnpermissions/RNPermissionsModule;->requestPermission(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zoontek/rnpermissions/RNPermissionsModule;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/zoontek/rnpermissions/RNPermissionsModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;->this$0:Lcom/zoontek/rnpermissions/RNPermissionsModule;

    iput-object p2, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 254
    aget-object v1, p1, v0

    check-cast v1, [I

    .line 256
    array-length v2, v1

    if-lez v2, :cond_0

    aget v0, v1, v0

    if-nez v0, :cond_0

    .line 257
    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "granted"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 259
    aget-object p1, p1, v0

    check-cast p1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    .line 261
    iget-object v0, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;->val$permission:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "denied"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/zoontek/rnpermissions/RNPermissionsModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "blocked"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
