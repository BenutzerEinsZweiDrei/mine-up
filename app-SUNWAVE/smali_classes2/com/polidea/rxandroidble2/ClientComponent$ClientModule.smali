.class public abstract Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;
.super Ljava/lang/Object;
.source "ClientComponent.java"


# annotations
.annotation runtime Lbleshadow/dagger/Module;
    subcomponents = {
        Lcom/polidea/rxandroidble2/internal/DeviceComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/ClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClientModule"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .line 141
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method

.method static provideBluetoothCallbacksScheduler()Lio/reactivex/Scheduler;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "bluetooth_callbacks"
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation

    .line 268
    new-instance v0, Lcom/polidea/rxandroidble2/internal/serialization/RxBleThreadFactory;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/serialization/RxBleThreadFactory;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->createSingleScheduler(Ljava/util/concurrent/ThreadFactory;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method static provideBluetoothInteractionExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "executor_bluetooth_interaction"
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation

    .line 254
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static provideBluetoothInteractionScheduler(Ljava/util/concurrent/ExecutorService;)Lio/reactivex/Scheduler;
    .locals 0
    .param p0    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "executor_bluetooth_interaction"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "bluetooth_interaction"
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation

    .line 261
    invoke-static {p0}, Lio/reactivex/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method static provideBluetoothManager(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    const-string v0, "bluetooth"

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    return-object p0
.end method

.method static provideComputationScheduler()Lio/reactivex/Scheduler;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "computation"
    .end annotation

    .line 147
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method static provideConnectionQueueExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "executor_connection_queue"
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation

    .line 247
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static provideContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 0
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static provideDeviceSdk()I
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "device-sdk"
    .end annotation

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method static provideDisableNotificationValue()[B
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "disable-notification-value"
    .end annotation

    .line 376
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    return-object v0
.end method

.method static provideEnableIndicationValue()[B
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "enable-indication-value"
    .end annotation

    .line 370
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    return-object v0
.end method

.method static provideEnableNotificationValue()[B
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "enable-notification-value"
    .end annotation

    .line 364
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    return-object v0
.end method

.method static provideFinalizationCloseable(Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;Ljava/util/concurrent/ExecutorService;)Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;
    .locals 1
    .param p0    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "executor_bluetooth_interaction"
        .end annotation
    .end param
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_callbacks"
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "executor_connection_queue"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .line 277
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;-><init>(Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method static provideIsAndroidWear(Landroid/content/Context;I)Z
    .locals 1
    .param p1    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "android-wear"
    .end annotation

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android.hardware.type.watch"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static provideIsConnectableChecker(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;
    .locals 1
    .param p0    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi26;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;"
        }
    .end annotation

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_0

    .line 356
    invoke-interface {p1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;

    return-object p0

    .line 358
    :cond_0
    invoke-interface {p2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;

    return-object p0
.end method

.method static provideIsNearbyPermissionNeverForLocation(Landroid/content/Context;)Z
    .locals 4
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "nearby-permission-never-for-location"
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation

    const/4 v0, 0x0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    .line 315
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    move v1, v0

    .line 319
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    .line 320
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget p0, p0, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, 0x10000

    and-int/2addr p0, v1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Could not find application PackageInfo"

    .line 326
    invoke-static {p0, v2, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v0
.end method

.method static provideLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    const-string v0, "location"

    .line 289
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method

.method static provideLocationServicesOkObservable(ILcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "location-ok-boolean-observable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    .line 239
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/polidea/rxandroidble2/internal/util/ObservableUtil;->justOnNext(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;->get()Lio/reactivex/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static provideLocationServicesStatus(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;
    .locals 1
    .param p0    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;"
        }
    .end annotation

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    .line 223
    invoke-interface {p1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    return-object p0

    :cond_0
    const/16 p1, 0x1f

    if-ge p0, p1, :cond_1

    .line 226
    invoke-interface {p2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    return-object p0

    .line 229
    :cond_1
    invoke-interface {p3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    return-object p0
.end method

.method static provideRecommendedConnectRuntimePermissionNames(II)[[Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "target-sdk"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "connect-permissions"
    .end annotation

    .line 200
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    new-array p0, p1, [[Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [[Ljava/lang/String;

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 205
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    return-object p0
.end method

.method static provideRecommendedScanRuntimePermissionNames(IIZ)[[Ljava/lang/String;
    .locals 3
    .param p0    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .param p1    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "target-sdk"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "nearby-permission-never-for-location"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "scan-permissions"
    .end annotation

    .line 163
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    new-array p0, p1, [[Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v0, 0x1d

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x1

    if-ge p0, v0, :cond_1

    new-array p0, v2, [[Ljava/lang/String;

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 170
    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    return-object p0

    :cond_1
    const/16 v0, 0x1f

    if-ge p0, v0, :cond_2

    new-array p0, v2, [[Ljava/lang/String;

    .line 176
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    return-object p0

    :cond_2
    const-string p0, "android.permission.BLUETOOTH_SCAN"

    if-eqz p2, :cond_3

    new-array p2, v2, [[Ljava/lang/String;

    .line 183
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, p1

    return-object p2

    :cond_3
    const/4 p2, 0x2

    new-array p2, p2, [[Ljava/lang/String;

    .line 188
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, p1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    return-object p2
.end method

.method static provideScanPreconditionVerifier(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;
    .locals 1
    .param p0    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;"
        }
    .end annotation

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    .line 386
    invoke-interface {p1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    return-object p0

    .line 388
    :cond_0
    invoke-interface {p2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    return-object p0
.end method

.method static provideScanSetupProvider(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;
    .locals 1
    .param p0    # I
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "device-sdk"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi21;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilderImplApi23;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;"
        }
    .end annotation

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 341
    invoke-interface {p1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;

    return-object p0

    :cond_0
    const/16 p1, 0x17

    if-ge p0, p1, :cond_1

    .line 343
    invoke-interface {p2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;

    return-object p0

    .line 345
    :cond_1
    invoke-interface {p3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;

    return-object p0
.end method

.method static provideTargetSdk(Landroid/content/Context;)I
    .locals 2
    .annotation runtime Lbleshadow/dagger/Provides;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "target-sdk"
    .end annotation

    .line 296
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method abstract bindBackgroundScanner(Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;)Lcom/polidea/rxandroidble2/scan/BackgroundScanner;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation
.end method

.method abstract bindClientOperationQueue(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueueImpl;)Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation
.end method

.method abstract bindRxBleClient(Lcom/polidea/rxandroidble2/RxBleClientImpl;)Lcom/polidea/rxandroidble2/RxBleClient;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation runtime Lcom/polidea/rxandroidble2/ClientScope;
    .end annotation
.end method

.method abstract bindStateObs(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;)Lio/reactivex/Observable;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;"
        }
    .end annotation
.end method

.method abstract bindTimeoutScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .param p1    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "computation"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation runtime Lbleshadow/javax/inject/Named;
        value = "timeout"
    .end annotation
.end method

.method abstract provideScanResultMapper(Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;)Lio/reactivex/functions/Function;
    .annotation runtime Lbleshadow/dagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;"
        }
    .end annotation
.end method
