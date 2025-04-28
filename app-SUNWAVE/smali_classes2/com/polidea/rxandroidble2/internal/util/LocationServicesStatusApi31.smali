.class public Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi31.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;


# instance fields
.field private final checkerLocationProvider:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

.field private final checkerScanPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

.field private final isAndroidWear:Z

.field private final isNearbyPermissionNeverForLoc:Z


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;ZZ)V
    .locals 0
    .param p3    # Z
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "android-wear"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "nearby-permission-never-for-location"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->checkerLocationProvider:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    .line 26
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->checkerScanPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

    .line 27
    iput-boolean p3, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->isAndroidWear:Z

    .line 28
    iput-boolean p4, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->isNearbyPermissionNeverForLoc:Z

    return-void
.end method

.method private isLocationProviderEnabledRequired()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->isAndroidWear:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->isNearbyPermissionNeverForLoc:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public isLocationPermissionOk()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->checkerScanPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->isScanRuntimePermissionGranted()Z

    move-result v0

    return v0
.end method

.method public isLocationProviderOk()Z
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->isLocationProviderEnabledRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;->checkerLocationProvider:Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->isLocationProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
