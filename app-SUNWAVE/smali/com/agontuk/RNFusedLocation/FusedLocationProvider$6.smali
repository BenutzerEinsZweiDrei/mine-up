.class Lcom/agontuk/RNFusedLocation/FusedLocationProvider$6;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->checkLocationSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/location/LocationSettingsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;


# direct methods
.method constructor <init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$6;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$6;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$900(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 178
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-virtual {p0, p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$6;->onSuccess(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
