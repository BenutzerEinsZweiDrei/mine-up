.class public Lcom/agontuk/RNFusedLocation/FusedLocationProvider;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/agontuk/RNFusedLocation/LocationProvider;


# instance fields
.field private activityRequestCode:I

.field private final context:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private isSingleUpdate:Z

.field private final locationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private final locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

.field private locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;

.field private locationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private final settingsClient:Lcom/google/android/gms/location/SettingsClient;

.field private final timeoutHandler:Landroid/os/Handler;

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/agontuk/RNFusedLocation/LocationChangeListener;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->isSingleUpdate:Z

    .line 43
    new-instance v0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;-><init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->timeoutHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$2;-><init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->timeoutRunnable:Ljava/lang/Runnable;

    .line 84
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 86
    iput-object p2, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    .line 87
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object p1

    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->settingsClient:Lcom/google/android/gms/location/SettingsClient;

    return-void
.end method

.method static synthetic access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->isSingleUpdate:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->activityRequestCode:I

    return p0
.end method

.method static synthetic access$1002(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->activityRequestCode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)I
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->getActivityRequestCode()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->timeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->timeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/google/android/gms/location/LocationCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/google/android/gms/location/FusedLocationProviderClient;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static synthetic access$700(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->checkLocationSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationOptions;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;

    return-object p0
.end method

.method static synthetic access$900(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->startLocationUpdates()V

    return-void
.end method

.method private buildLocationRequest(Lcom/agontuk/RNFusedLocation/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;
    .locals 4

    .line 161
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 162
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getAccuracy()Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->getLocationPriority(Lcom/agontuk/RNFusedLocation/LocationAccuracy;)I

    move-result v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getFastestInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 167
    iget-boolean v2, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->isSingleUpdate:Z

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getDistanceFilter()F

    move-result p1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method private checkLocationSettings()V
    .locals 2

    .line 173
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->settingsClient:Lcom/google/android/gms/location/SettingsClient;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$6;

    invoke-direct {v1, p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$6;-><init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;

    invoke-direct {v1, p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;-><init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private getActivityRequestCode()I
    .locals 2

    .line 253
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x2710

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private getLocationPriority(Lcom/agontuk/RNFusedLocation/LocationAccuracy;)I
    .locals 3

    .line 258
    sget-object v0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$7;->$SwitchMap$com$agontuk$RNFusedLocation$LocationAccuracy:[I

    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 p1, 0x69

    return p1

    .line 268
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
    const/16 p1, 0x68

    return p1

    :cond_2
    const/16 p1, 0x66

    return p1

    :cond_3
    const/16 p1, 0x64

    return p1
.end method

.method private startLocationUpdates()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 276
    iget-boolean v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->isSingleUpdate:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;

    invoke-virtual {v0}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->timeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentLocation(Lcom/agontuk/RNFusedLocation/LocationOptions;)V
    .locals 2

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->isSingleUpdate:Z

    .line 94
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;

    .line 95
    invoke-direct {p0, p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->buildLocationRequest(Lcom/agontuk/RNFusedLocation/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 97
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;

    invoke-direct {v1, p0, p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;-><init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;Lcom/agontuk/RNFusedLocation/LocationOptions;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$3;-><init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public onActivityResult(II)Z
    .locals 2

    .line 122
    iget v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->activityRequestCode:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->startLocationUpdates()V

    return v0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;

    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->isForceRequestLocation()Z

    move-result p1

    .line 132
    iget-object p2, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p2}, Lcom/agontuk/RNFusedLocation/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->startLocationUpdates()V

    goto :goto_1

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationChangeListener:Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    if-eqz p2, :cond_3

    .line 139
    sget-object p2, Lcom/agontuk/RNFusedLocation/LocationError;->SETTINGS_NOT_SATISFIED:Lcom/agontuk/RNFusedLocation/LocationError;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/agontuk/RNFusedLocation/LocationError;->POSITION_UNAVAILABLE:Lcom/agontuk/RNFusedLocation/LocationError;

    :goto_0
    const/4 v1, 0x0

    .line 137
    invoke-interface {p1, p0, p2, v1}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method public removeLocationUpdates()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->fusedLocationProviderClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public requestLocationUpdates(Lcom/agontuk/RNFusedLocation/LocationOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->isSingleUpdate:Z

    .line 150
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;

    .line 151
    invoke-direct {p0, p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->buildLocationRequest(Lcom/agontuk/RNFusedLocation/LocationOptions;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 152
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->checkLocationSettings()V

    return-void
.end method
