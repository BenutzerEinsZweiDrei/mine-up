.class public Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFusedLocationModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;
.implements Lcom/agontuk/RNFusedLocation/LocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RNFusedLocation"


# instance fields
.field private continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

.field private final pendingRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/agontuk/RNFusedLocation/LocationProvider;",
            "Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 31
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->pendingRequests:Ljava/util/HashMap;

    const-string p1, "RNFusedLocation"

    const-string v0, "RNFusedLocation initialized"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createLocationProvider(Z)Lcom/agontuk/RNFusedLocation/LocationProvider;
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/LocationUtils;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-direct {p1, v0, p0}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/agontuk/RNFusedLocation/LocationChangeListener;)V

    return-object p1

    .line 159
    :cond_1
    :goto_0
    new-instance p1, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-direct {p1, v0, p0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/agontuk/RNFusedLocation/LocationChangeListener;)V

    return-object p1
.end method

.method private emitEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getCurrentPosition(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/LocationUtils;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 104
    sget-object v0, Lcom/agontuk/RNFusedLocation/LocationError;->PERMISSION_DENIED:Lcom/agontuk/RNFusedLocation/LocationError;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/agontuk/RNFusedLocation/LocationUtils;->buildError(Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->fromReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/agontuk/RNFusedLocation/LocationOptions;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->isForceLocationManager()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->createLocationProvider(Z)Lcom/agontuk/RNFusedLocation/LocationProvider;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->pendingRequests:Ljava/util/HashMap;

    new-instance v2, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;

    invoke-direct {v2, p2, p3}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-interface {v0, p1}, Lcom/agontuk/RNFusedLocation/LocationProvider;->getCurrentLocation(Lcom/agontuk/RNFusedLocation/LocationOptions;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNFusedLocation"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1, p2, p3}, Lcom/agontuk/RNFusedLocation/LocationProvider;->onActivityResult(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->pendingRequests:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/agontuk/RNFusedLocation/LocationProvider;

    .line 54
    invoke-interface {p4, p2, p3}, Lcom/agontuk/RNFusedLocation/LocationProvider;->onActivityResult(II)Z

    move-result p4

    if-eqz p4, :cond_1

    :cond_2
    return-void
.end method

.method public onLocationChange(Lcom/agontuk/RNFusedLocation/LocationProvider;Landroid/location/Location;)V
    .locals 3

    .line 67
    invoke-static {p2}, Lcom/agontuk/RNFusedLocation/LocationUtils;->locationToMap(Landroid/location/Location;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "geolocationDidChange"

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->emitEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->pendingRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, v0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;->successCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 78
    iget-object p2, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->pendingRequests:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V
    .locals 2

    .line 84
    invoke-static {p2, p3}, Lcom/agontuk/RNFusedLocation/LocationUtils;->buildError(Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 86
    iget-object p3, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "geolocationError"

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->emitEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    .line 91
    :cond_0
    iget-object p3, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->pendingRequests:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;

    if-eqz p3, :cond_1

    .line 94
    iget-object p3, p3, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;->errorCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 95
    iget-object p2, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->pendingRequests:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public startObserving(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->getContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/LocationUtils;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    sget-object p1, Lcom/agontuk/RNFusedLocation/LocationError;->PERMISSION_DENIED:Lcom/agontuk/RNFusedLocation/LocationError;

    const/4 v0, 0x0

    .line 122
    invoke-static {p1, v0}, Lcom/agontuk/RNFusedLocation/LocationUtils;->buildError(Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "geolocationError"

    .line 120
    invoke-direct {p0, v0, p1}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->emitEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->fromReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/agontuk/RNFusedLocation/LocationOptions;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/agontuk/RNFusedLocation/LocationOptions;->isForceLocationManager()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->createLocationProvider(Z)Lcom/agontuk/RNFusedLocation/LocationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

    invoke-interface {v0, p1}, Lcom/agontuk/RNFusedLocation/LocationProvider;->requestLocationUpdates(Lcom/agontuk/RNFusedLocation/LocationOptions;)V

    return-void
.end method

.method public stopObserving()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lcom/agontuk/RNFusedLocation/LocationProvider;->removeLocationUpdates()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;->continuousLocationProvider:Lcom/agontuk/RNFusedLocation/LocationProvider;

    :cond_0
    return-void
.end method
