.class Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "FusedLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agontuk/RNFusedLocation/FusedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;


# direct methods
.method constructor <init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 3

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    .line 60
    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$600(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationError;->POSITION_UNAVAILABLE:Lcom/agontuk/RNFusedLocation/LocationError;

    const-string v2, "Unable to retrieve location."

    invoke-interface {p1, v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    .line 46
    invoke-interface {v0, v1, p1}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationChange(Lcom/agontuk/RNFusedLocation/LocationProvider;Landroid/location/Location;)V

    .line 51
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$100(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$300(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$200(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$500(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$400(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
