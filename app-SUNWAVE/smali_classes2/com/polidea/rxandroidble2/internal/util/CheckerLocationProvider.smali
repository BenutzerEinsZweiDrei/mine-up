.class public Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;
.super Ljava/lang/Object;
.source "CheckerLocationProvider.java"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/location/LocationManager;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 24
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private isLocationProviderEnabledBelowApi19()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 53
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

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

.method private isLocationProviderEnabledBelowApi28()Z
    .locals 3

    const/4 v0, 0x0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Could not use LOCATION_MODE check. Falling back to a legacy/heuristic function."

    .line 46
    invoke-static {v1, v2, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->isLocationProviderEnabledBelowApi19()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isLocationProviderEnabled()Z
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    return v0

    .line 31
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 32
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->isLocationProviderEnabledBelowApi28()Z

    move-result v0

    return v0

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;->isLocationProviderEnabledBelowApi19()Z

    move-result v0

    return v0
.end method
