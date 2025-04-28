.class public final Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;
.super Ljava/lang/Object;
.source "CheckerConnectPermission_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;",
        ">;"
    }
.end annotation


# instance fields
.field private final checkerPermissionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final connectPermissionsProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "[[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "[[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;->checkerPermissionProvider:Lbleshadow/javax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;->connectPermissionsProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "[[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;[[Ljava/lang/String;)Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;
    .locals 1

    .line 41
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;-><init>(Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;[[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;->checkerPermissionProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;->connectPermissionsProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/util/CheckerPermission;[[Ljava/lang/String;)Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    move-result-object v0

    return-object v0
.end method
