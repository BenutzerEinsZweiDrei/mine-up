.class public final Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi31_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;",
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

.field private final isAndroidWearProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isNearbyPermissionNeverForLocProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
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
            "Ljava/lang/Boolean;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->isAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->isNearbyPermissionNeverForLocProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;
    .locals 1
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
            "Ljava/lang/Boolean;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;ZZ)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;
    .locals 1

    .line 53
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;-><init>(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;ZZ)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->checkerLocationProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->isAndroidWearProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->isNearbyPermissionNeverForLocProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;ZZ)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;

    move-result-object v0

    return-object v0
.end method
