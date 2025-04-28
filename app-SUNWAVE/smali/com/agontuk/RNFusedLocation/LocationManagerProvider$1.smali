.class Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;
.super Ljava/lang/Object;
.source "LocationManagerProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agontuk/RNFusedLocation/LocationManagerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;


# direct methods
.method constructor <init>(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->access$000(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-interface {v0, v1, p1}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationChange(Lcom/agontuk/RNFusedLocation/LocationProvider;Landroid/location/Location;)V

    .line 30
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->access$100(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->access$300(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->access$200(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->removeLocationUpdates()V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .line 52
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->access$000(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationError;->POSITION_UNAVAILABLE:Lcom/agontuk/RNFusedLocation/LocationError;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$1;->onProviderDisabled(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
