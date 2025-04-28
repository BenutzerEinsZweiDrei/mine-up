.class public final Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;
.super Ljava/lang/Object;
.source "RxBleClientImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/RxBleClientImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final backgroundScannerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothManagerWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final checkerConnectPermissionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final clientComponentFinalizerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
            ">;"
        }
    .end annotation
.end field

.field private final clientStateObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final internalToExternalScanResultMapFunctionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final operationQueueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final scanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private final scanRecordParserProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;",
            ">;"
        }
    .end annotation
.end field

.field private final scanSetupBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 85
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->bluetoothManagerWrapperProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p2

    .line 86
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p3

    .line 87
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p4

    .line 88
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p5

    .line 89
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanRecordParserProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p6

    .line 90
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p7

    .line 91
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->clientStateObservableProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p8

    .line 92
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p9

    .line 93
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanSetupBuilderProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p10

    .line 94
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p11

    .line 95
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->internalToExternalScanResultMapFunctionProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p12

    .line 96
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    move-object v1, p13

    .line 97
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->clientComponentFinalizerProvider:Lbleshadow/javax/inject/Provider;

    move-object/from16 v1, p14

    .line 98
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->backgroundScannerProvider:Lbleshadow/javax/inject/Provider;

    move-object/from16 v1, p15

    .line 99
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    move-object/from16 v1, p16

    .line 100
    iput-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->checkerConnectPermissionProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
            "Lcom/polidea/rxandroidble2/scan/ScanResult;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/scan/BackgroundScanner;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;",
            ">;)",
            "Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 125
    new-instance v17, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v17
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lbleshadow/dagger/Lazy;Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;Lcom/polidea/rxandroidble2/scan/BackgroundScanner;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;)Lcom/polidea/rxandroidble2/RxBleClientImpl;
    .locals 18
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
            ")",
            "Lcom/polidea/rxandroidble2/RxBleClientImpl;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 140
    new-instance v17, Lcom/polidea/rxandroidble2/RxBleClientImpl;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/polidea/rxandroidble2/RxBleClientImpl;-><init>(Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lbleshadow/dagger/Lazy;Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;Lcom/polidea/rxandroidble2/scan/BackgroundScanner;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;)V

    return-object v17
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/RxBleClientImpl;
    .locals 18

    move-object/from16 v0, p0

    .line 105
    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->bluetoothManagerWrapperProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->adapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lio/reactivex/Observable;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanRecordParserProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->clientStateObservableProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {v1}, Lbleshadow/dagger/internal/DoubleCheck;->lazy(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/Lazy;

    move-result-object v8

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->rxBleDeviceProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanSetupBuilderProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->scanPreconditionVerifierProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->internalToExternalScanResultMapFunctionProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/reactivex/functions/Function;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->bluetoothInteractionSchedulerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lio/reactivex/Scheduler;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->clientComponentFinalizerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->backgroundScannerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/polidea/rxandroidble2/scan/BackgroundScanner;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->checkerScanPermissionProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;

    iget-object v1, v0, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->checkerConnectPermissionProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    invoke-static/range {v2 .. v17}, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lbleshadow/dagger/Lazy;Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;Lcom/polidea/rxandroidble2/internal/scan/ScanSetupBuilder;Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifier;Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;Lcom/polidea/rxandroidble2/scan/BackgroundScanner;Lcom/polidea/rxandroidble2/internal/util/CheckerScanPermission;Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;)Lcom/polidea/rxandroidble2/RxBleClientImpl;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/RxBleClientImpl_Factory;->get()Lcom/polidea/rxandroidble2/RxBleClientImpl;

    move-result-object v0

    return-object v0
.end method
