.class Lcom/agontuk/RNFusedLocation/FusedLocationProvider$2;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 71
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    sget-object v2, Lcom/agontuk/RNFusedLocation/LocationError;->TIMEOUT:Lcom/agontuk/RNFusedLocation/LocationError;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$500(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$400(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/google/android/gms/location/LocationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
