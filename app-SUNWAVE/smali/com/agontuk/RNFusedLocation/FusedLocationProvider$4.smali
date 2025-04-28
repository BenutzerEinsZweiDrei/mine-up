.class Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->getCurrentLocation(Lcom/agontuk/RNFusedLocation/LocationOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

.field final synthetic val$locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;


# direct methods
.method constructor <init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;Lcom/agontuk/RNFusedLocation/LocationOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    iput-object p2, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;->val$locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/location/Location;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 102
    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/LocationUtils;->getLocationAge(Landroid/location/Location;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;->val$locationOptions:Lcom/agontuk/RNFusedLocation/LocationOptions;

    invoke-virtual {v2}, Lcom/agontuk/RNFusedLocation/LocationOptions;->getMaximumAge()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "RNFusedLocation"

    const-string v1, "returning cached location."

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-interface {v0, v1, p1}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationChange(Lcom/agontuk/RNFusedLocation/LocationProvider;Landroid/location/Location;)V

    return-void

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$700(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$4;->onSuccess(Landroid/location/Location;)V

    return-void
.end method
