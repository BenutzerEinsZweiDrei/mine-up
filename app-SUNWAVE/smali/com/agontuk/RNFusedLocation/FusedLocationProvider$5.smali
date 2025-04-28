.class Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->checkLocationSettings()V
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

    .line 184
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 187
    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 p1, 0x2136

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$600(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/LocationUtils;->isOnAirplaneMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    .line 235
    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$600(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string v0, "gps"

    invoke-static {p1, v0}, Lcom/agontuk/RNFusedLocation/LocationUtils;->isProviderEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$900(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    goto/16 :goto_2

    .line 241
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationError;->SETTINGS_NOT_SATISFIED:Lcom/agontuk/RNFusedLocation/LocationError;

    invoke-interface {p1, v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$800(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agontuk/RNFusedLocation/LocationOptions;->isShowLocationDialog()Z

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$800(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->isForceRequestLocation()Z

    move-result v1

    .line 193
    iget-object v3, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v3}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$600(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-static {v3}, Lcom/agontuk/RNFusedLocation/LocationUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v0, :cond_5

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 197
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$900(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    goto :goto_2

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    if-eqz v3, :cond_4

    .line 201
    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationError;->SETTINGS_NOT_SATISFIED:Lcom/agontuk/RNFusedLocation/LocationError;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationError;->POSITION_UNAVAILABLE:Lcom/agontuk/RNFusedLocation/LocationError;

    .line 199
    :goto_1
    invoke-interface {p1, v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :cond_5
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 211
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$600(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_6

    .line 214
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationError;->INTERNAL_ERROR:Lcom/agontuk/RNFusedLocation/LocationError;

    const-string v3, "Tried to open location dialog while not attached to an Activity."

    invoke-interface {p1, v0, v1, v3}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    goto :goto_2

    .line 222
    :cond_6
    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$1100(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$1002(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;I)I

    .line 223
    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {v1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$1000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 225
    :catch_0
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$000(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$5;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationError;->INTERNAL_ERROR:Lcom/agontuk/RNFusedLocation/LocationError;

    invoke-interface {p1, v0, v1, v2}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
