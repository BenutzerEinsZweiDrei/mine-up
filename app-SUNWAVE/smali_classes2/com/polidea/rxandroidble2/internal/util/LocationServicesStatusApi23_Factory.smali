.class public final Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi23_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;",
        ">;"
    }
.end annotation


# instance fields
.field private final checkerLocationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceSdkProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isAndroidWearProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final targetSdkProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->targetSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 37
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->isAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;"
        }
    .end annotation

    .line 50
    new-instance v6, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;IIZ)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;
    .locals 7

    .line 56
    new-instance v6, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;-><init>(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;IIZ)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->targetSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->isAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v4}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;IIZ)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;

    move-result-object v0

    return-object v0
.end method
