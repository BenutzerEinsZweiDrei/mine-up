.class public Lcom/agontuk/RNFusedLocation/LocationManagerProvider;
.super Ljava/lang/Object;
.source "LocationManagerProvider.java"

# interfaces
.implements Lcom/agontuk/RNFusedLocation/LocationProvider;


# instance fields
.field private isSingleUpdate:Z

.field private final locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

.field private final locationListener:Landroid/location/LocationListener;

.field private final locationManager:Landroid/location/LocationManager;

.field private final timeoutHandler:Landroid/os/Handler;

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/agontuk/RNFusedLocation/LocationChangeListener;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->isSingleUpdate:Z

    .line 25
    new-instance v0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;

    invoke-direct {v0, p0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;-><init>(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)V

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationListener:Landroid/location/LocationListener;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->timeoutHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$2;

    invoke-direct {v0, p0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$2;-><init>(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)V

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->timeoutRunnable:Ljava/lang/Runnable;

    .line 73
    iput-object p2, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    const-string p2, "location"

    .line 74
    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->isSingleUpdate:Z

    return p0
.end method

.method static synthetic access$200(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Ljava/lang/Runnable;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->timeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->timeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getBestProvider(Lcom/agontuk/RNFusedLocation/LocationAccuracy;)Ljava/lang/String;
    .locals 2

    .line 145
    invoke-direct {p0, p1}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->getProviderCriteria(Lcom/agontuk/RNFusedLocation/LocationAccuracy;)Landroid/location/Criteria;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p1

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getProviderCriteria(Lcom/agontuk/RNFusedLocation/LocationAccuracy;)Landroid/location/Criteria;
    .locals 5

    .line 161
    sget-object v0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$3;->$SwitchMap$com$agontuk$RNFusedLocation$LocationAccuracy:[I

    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v3

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    move v3, v2

    .line 186
    :goto_2
    new-instance p1, Landroid/location/Criteria;

    invoke-direct {p1}, Landroid/location/Criteria;-><init>()V

    .line 187
    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 188
    invoke-virtual {p1, v2}, Landroid/location/Criteria;->setBearingAccuracy(I)V

    .line 189
    invoke-virtual {p1, v2}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 190
    invoke-virtual {p1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 191
    invoke-virtual {p1, v2}, Landroid/location/Criteria;->setSpeedAccuracy(I)V

    .line 192
    invoke-virtual {p1, v2}, Landroid/location/Criteria;->setVerticalAccuracy(I)V

    return-object p1
.end method

.method private startLocationUpdates(Ljava/lang/String;JFJ)V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationListener:Landroid/location/LocationListener;

    .line 204
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 199
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 207
    iget-boolean p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->isSingleUpdate:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-lez p1, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    cmp-long p1, p5, p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->timeoutHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentLocation(Lcom/agontuk/RNFusedLocation/LocationOptions;)V
    .locals 8

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->isSingleUpdate:Z

    .line 81
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getAccuracy()Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->getBestProvider(Lcom/agontuk/RNFusedLocation/LocationAccuracy;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 84
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    sget-object v0, Lcom/agontuk/RNFusedLocation/LocationError;->POSITION_UNAVAILABLE:Lcom/agontuk/RNFusedLocation/LocationError;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/LocationUtils;->getLocationAge(Landroid/location/Location;)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getMaximumAge()D

    move-result-wide v5

    cmpg-double v1, v3, v5

    if-gez v1, :cond_1

    const-string p1, "RNFusedLocation"

    const-string v1, "returning cached location."

    .line 97
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    invoke-interface {p1, p0, v0}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationChange(Lcom/agontuk/RNFusedLocation/LocationProvider;Landroid/location/Location;)V

    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getInterval()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getTimeout()J

    move-result-wide v6

    move-object v1, p0

    .line 102
    invoke-direct/range {v1 .. v7}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->startLocationUpdates(Ljava/lang/String;JFJ)V

    return-void
.end method

.method public onActivityResult(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeLocationUpdates()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/agontuk/RNFusedLocation/LocationOptions;)V
    .locals 8

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->isSingleUpdate:Z

    .line 118
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getAccuracy()Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->getBestProvider(Lcom/agontuk/RNFusedLocation/LocationAccuracy;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 121
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    sget-object v0, Lcom/agontuk/RNFusedLocation/LocationError;->POSITION_UNAVAILABLE:Lcom/agontuk/RNFusedLocation/LocationError;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getInterval()J

    move-result-wide v3

    .line 132
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getDistanceFilter()F

    move-result v5

    .line 133
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getTimeout()J

    move-result-wide v6

    move-object v1, p0

    .line 129
    invoke-direct/range {v1 .. v7}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->startLocationUpdates(Ljava/lang/String;JFJ)V

    return-void
.end method
