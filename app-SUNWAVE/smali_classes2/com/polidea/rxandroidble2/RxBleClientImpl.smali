.class Lcom/polidea/rxandroidble2/RxBleClientImpl;
.super Lcom/polidea/rxandroidble2/RxBleClient;
.source "RxBleClientImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RxBleClient"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final backgroundScanner:Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

.field final bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

.field private final bluetoothManagerWrapper:Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;

.field private final checkerConnectPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

.field private final checkerScanPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

.field private final clientComponentFinalizer:Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

.field final internalToExternalScanResultMapFunction:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyClientStateObservable:Lbleshadow/dagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/dagger/Lazy<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

.field final operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

.field final queuedScanOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rxBleAdapterStateObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

.field private final rxBleDeviceProvider:Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

.field final scanPreconditionVerifier:Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

.field private final scanRecordParser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

.field final scanSetupBuilder:Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lbleshadow/dagger/Lazy;Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;Lcom/polidea/rxandroidble2/scan/BackgroundScanner;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;)V
    .locals 2
    .param p12    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_interaction"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            "Lbleshadow/dagger/Lazy<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;",
            "Lio/reactivex/Scheduler;",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
            "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/RxBleClient;-><init>()V

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->queuedScanOperations:Ljava/util/Map;

    move-object v1, p3

    .line 87
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    move-object v1, p1

    .line 88
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->bluetoothManagerWrapper:Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;

    move-object v1, p2

    .line 89
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    move-object v1, p4

    .line 90
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleAdapterStateObservable:Lio/reactivex/Observable;

    move-object v1, p5

    .line 91
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanRecordParser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    move-object v1, p6

    .line 92
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    move-object v1, p7

    .line 93
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->lazyClientStateObservable:Lbleshadow/dagger/Lazy;

    move-object v1, p8

    .line 94
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleDeviceProvider:Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    move-object v1, p9

    .line 95
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanSetupBuilder:Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;

    move-object v1, p10

    .line 96
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanPreconditionVerifier:Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    move-object v1, p11

    .line 97
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->internalToExternalScanResultMapFunction:Lio/reactivex/functions/Function;

    move-object v1, p12

    .line 98
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    move-object v1, p13

    .line 99
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->clientComponentFinalizer:Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

    move-object/from16 v1, p14

    .line 100
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->backgroundScanner:Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    move-object/from16 v1, p15

    .line 101
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->checkerScanPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

    move-object/from16 v1, p16

    .line 102
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->checkerConnectPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    return-void
.end method

.method private createScanOperationApi18([Ljava/util/UUID;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleScanResult;",
            ">;"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->toDistinctSet([Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/polidea/rxandroidble2/internal/operations/LegacyScanOperation;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanRecordParser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    invoke-direct {v1, p1, v2, v3}, Lcom/polidea/rxandroidble2/internal/operations/LegacyScanOperation;-><init>([Ljava/util/UUID;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;)V

    .line 214
    iget-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    invoke-interface {p1, v1}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda0;-><init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;Ljava/util/Set;)V

    .line 215
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    .line 220
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->bluetoothAdapterOffExceptionObservable()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda3;-><init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;)V

    .line 221
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda1;

    .line 222
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private guardBluetoothAdapterAvailable()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->hasBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RxAndroidBle library needs a BluetoothAdapter to be available in the system to work. If this is a test on an emulator then you can use \'https://github.com/Polidea/RxAndroidBle/tree/master/mockrxandroidble\'"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$bluetoothAdapterOffExceptionObservable$3(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$bluetoothAdapterOffExceptionObservable$4(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/MaybeSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    new-instance p0, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;-><init>(I)V

    invoke-static {p0}, Lio/reactivex/Maybe;->error(Ljava/lang/Throwable;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createScanOperationApi18$6(Lcom/polidea/rxandroidble2/RxBleScanResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s"

    .line 222
    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$scanBleDevices$0(Lcom/polidea/rxandroidble2/scan/ScanResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->getShouldLogScannedPeripherals()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s"

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private toDistinctSet([Ljava/util/UUID;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/UUID;

    .line 173
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method bluetoothAdapterOffExceptionObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleAdapterStateObservable:Lio/reactivex/Observable;

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda5;

    .line 197
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda4;->INSTANCE:Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda4;

    .line 199
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Maybe;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method convertToPublicScanResult(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;)Lcom/polidea/rxandroidble2/RxBleScanResult;
    .locals 3

    .line 205
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/polidea/rxandroidble2/RxBleScanResult;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->getRssi()I

    move-result v2

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;->getScanRecord()[B

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lcom/polidea/rxandroidble2/RxBleScanResult;-><init>(Lcom/polidea/rxandroidble2/RxBleDevice;I[B)V

    return-object v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->clientComponentFinalizer:Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;->onFinalize()V

    .line 108
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBackgroundScanner()Lcom/polidea/rxandroidble2/scan/BackgroundScanner;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->backgroundScanner:Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    return-object v0
.end method

.method public getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->guardBluetoothAdapterAvailable()V

    .line 114
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleDeviceProvider:Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object p1

    return-object p1
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->guardBluetoothAdapterAvailable()V

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v1}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 122
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 123
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getConnectedPeripherals()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->bluetoothManagerWrapper:Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;

    invoke-virtual {v1}, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;->getConnectedPeripherals()Ljava/util/List;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 134
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRecommendedConnectRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->checkerConnectPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;->getRecommendedConnectRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedScanRuntimePermissions()[Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->checkerScanPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->getRecommendedScanRuntimePermissions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/polidea/rxandroidble2/RxBleClient$State;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->hasBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleClient$State;->BLUETOOTH_NOT_AVAILABLE:Lcom/polidea/rxandroidble2/RxBleClient$State;

    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;->isLocationPermissionOk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleClient$State;->LOCATION_PERMISSION_NOT_GRANTED:Lcom/polidea/rxandroidble2/RxBleClient$State;

    return-object v0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->rxBleAdapterWrapper:Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleClient$State;->BLUETOOTH_NOT_ENABLED:Lcom/polidea/rxandroidble2/RxBleClient$State;

    return-object v0

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->locationServicesStatus:Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;->isLocationProviderOk()Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleClient$State;->LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2/RxBleClient$State;

    return-object v0

    .line 252
    :cond_3
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleClient$State;->READY:Lcom/polidea/rxandroidble2/RxBleClient$State;

    return-object v0
.end method

.method initializeScan([Ljava/util/UUID;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleScanResult;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->toDistinctSet([Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->queuedScanOperations:Ljava/util/Map;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->queuedScanOperations:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/Observable;

    if-nez v2, :cond_0

    .line 183
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->createScanOperationApi18([Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object v2

    .line 184
    iget-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->queuedScanOperations:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isConnectRuntimePermissionGranted()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->checkerConnectPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;->isConnectRuntimePermissionGranted()Z

    move-result v0

    return v0
.end method

.method public isScanRuntimePermissionGranted()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->checkerScanPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;->isScanRuntimePermissionGranted()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$createScanOperationApi18$5$com-polidea-rxandroidble2-RxBleClientImpl(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->queuedScanOperations:Ljava/util/Map;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->queuedScanOperations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic lambda$scanBleDevices$1$com-polidea-rxandroidble2-RxBleClientImpl(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanPreconditionVerifier:Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanSettings;->shouldCheckLocationProviderState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;->verify(Z)V

    .line 144
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanSetupBuilder:Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;

    invoke-interface {v0, p1, p2}, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;->build(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;

    move-result-object p1

    .line 145
    iget-object p2, p1, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;->scanOperation:Lcom/polidea/rxandroidble2/internal/operations/Operation;

    .line 146
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->operationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    invoke-interface {v0, p2}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p2

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    .line 147
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/scan/ScanSetup;->scanOperationBehaviourEmulatorTransformer:Lio/reactivex/ObservableTransformer;

    .line 148
    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->internalToExternalScanResultMapFunction:Lio/reactivex/functions/Function;

    .line 149
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda2;

    .line 150
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->bluetoothAdapterOffExceptionObservable()Lio/reactivex/Observable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$scanBleDevices$2$com-polidea-rxandroidble2-RxBleClientImpl([Ljava/util/UUID;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->scanPreconditionVerifier:Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;->verify(Z)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->initializeScan([Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public observeStateChanges()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleClient$State;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl;->lazyClientStateObservable:Lbleshadow/dagger/Lazy;

    invoke-interface {v0}, Lbleshadow/dagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public varargs scanBleDevices(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/scan/ScanSettings;",
            "[",
            "Lcom/polidea/rxandroidble2/scan/ScanFilter;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;-><init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public varargs scanBleDevices([Ljava/util/UUID;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleScanResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda7;-><init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;[Ljava/util/UUID;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
