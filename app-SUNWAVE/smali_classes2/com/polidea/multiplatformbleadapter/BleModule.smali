.class public Lcom/polidea/multiplatformbleadapter/BleModule;
.super Ljava/lang/Object;
.source "BleModule.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/BleAdapter;


# instance fields
.field private final activeConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation
.end field

.field private adapterStateChangesSubscription:Lio/reactivex/disposables/Disposable;

.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final connectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final connectingDevices:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

.field private final context:Landroid/content/Context;

.field private currentLogLevel:I

.field private final discoveredCharacteristics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveredDescriptors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveredDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final discoveredServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/polidea/multiplatformbleadapter/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

.field private final pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

.field private rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

.field private final rxBleDeviceToDeviceMapper:Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;

.field private final rxScanResultToScanResultMapper:Lcom/polidea/multiplatformbleadapter/utils/mapper/RxScanResultToScanResultMapper;

.field private scanSubscription:Lio/reactivex/disposables/Disposable;

.field private final serviceFactory:Lcom/polidea/multiplatformbleadapter/utils/ServiceFactory;


# direct methods
.method public static synthetic $r8$lambda$KEOpr5KkvadSdIu_hig_VjiQmdI(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->mapRxBleAdapterStateToLocalBluetoothState(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDevices:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectedDevices:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->activeConnections:Ljava/util/HashMap;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDescriptors:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    .line 80
    new-instance v0, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectingDevices:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    .line 94
    new-instance v0, Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleDeviceToDeviceMapper:Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;

    .line 96
    new-instance v0, Lcom/polidea/multiplatformbleadapter/utils/mapper/RxScanResultToScanResultMapper;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/utils/mapper/RxScanResultToScanResultMapper;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxScanResultToScanResultMapper:Lcom/polidea/multiplatformbleadapter/utils/mapper/RxScanResultToScanResultMapper;

    .line 98
    new-instance v0, Lcom/polidea/multiplatformbleadapter/utils/ServiceFactory;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/utils/ServiceFactory;-><init>()V

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->serviceFactory:Lcom/polidea/multiplatformbleadapter/utils/ServiceFactory;

    const v0, 0x7fffffff

    .line 100
    iput v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->currentLogLevel:I

    .line 103
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->context:Landroid/content/Context;

    const-string v0, "bluetooth"

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 105
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private changeAdapterState(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1071
    new-instance p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothStateChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string p3, "BluetoothManager is null"

    invoke-direct {p1, p2, p3, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p4, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 1075
    :cond_0
    new-instance v0, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v0, p3, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 1077
    new-instance p3, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->context:Landroid/content/Context;

    invoke-direct {p3, v2}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda39;

    invoke-direct {v2, p1}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda39;-><init>(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)V

    .line 1078
    invoke-virtual {p3, v2}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->takeUntil(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p3

    .line 1079
    invoke-virtual {p3}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p3

    new-instance v2, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, v0, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda33;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p3, v2}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p3

    new-instance v2, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda15;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    new-instance v3, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, v0, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda16;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p3, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p3

    const/16 v0, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1095
    :try_start_0
    sget-object v4, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    if-ne p1, v4, :cond_2

    .line 1096
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v0, :cond_1

    .line 1097
    iget-object v4, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->context:Landroid/content/Context;

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_5

    .line 1098
    check-cast v4, Landroid/app/Activity;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    goto :goto_3

    .line 1102
    :cond_1
    iget-object v4, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    goto :goto_0

    .line 1105
    :cond_2
    iget-object v4, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    xor-int/2addr v0, v3

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1122
    new-instance v4, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v5, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothStateChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    new-array v6, v3, [Ljava/lang/Object;

    .line 1124
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "unknown error"

    :goto_1
    aput-object v0, v6, v2

    const-string v0, "Couldn\'t set bluetooth adapter state because of: %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1122
    invoke-interface {p4, v4}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    goto :goto_2

    .line 1108
    :catch_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v0, :cond_4

    .line 1109
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v4, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothUnauthorized:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v5, "Method requires BLUETOOTH_CONNECT permission"

    invoke-direct {v0, v4, v5, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p4, v0}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    goto :goto_2

    .line 1115
    :cond_4
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v4, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothUnauthorized:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v5, "Method requires BLUETOOTH_ADMIN permission"

    invoke-direct {v0, v4, v5, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p4, v0}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 1129
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1130
    new-instance p2, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p3, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothStateChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    new-array v0, v3, [Ljava/lang/Object;

    .line 1132
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Couldn\'t set bluetooth adapter state to %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1130
    invoke-interface {p4, p2}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    goto :goto_4

    .line 1135
    :cond_6
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2, p3}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    :goto_4
    return-void
.end method

.method private cleanServicesAndCharacteristicsForDevice(Lcom/polidea/multiplatformbleadapter/Device;)V
    .locals 4

    .line 1536
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1537
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1538
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/multiplatformbleadapter/Service;

    .line 1540
    invoke-virtual {v2}, Lcom/polidea/multiplatformbleadapter/Service;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1541
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 1545
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1546
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/multiplatformbleadapter/Characteristic;

    .line 1548
    invoke-virtual {v2}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1549
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1553
    :cond_3
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDescriptors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    .line 1554
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDescriptors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1555
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDescriptors:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/multiplatformbleadapter/Descriptor;

    .line 1556
    invoke-virtual {v2}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1557
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDescriptors:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private getCharacteristicOrEmitError(ILcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Characteristic;

    if-nez v0, :cond_0

    .line 1528
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getCharacteristicOrEmitError(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;
    .locals 3

    .line 1501
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 1503
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-object v1

    .line 1507
    :cond_0
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/multiplatformbleadapter/Service;

    if-nez v2, :cond_1

    .line 1509
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-object v1

    .line 1513
    :cond_1
    invoke-virtual {v2, v0}, Lcom/polidea/multiplatformbleadapter/Service;->getCharacteristicByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1515
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-object v1

    :cond_2
    return-object p1
.end method

.method private getCharacteristicOrEmitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    .line 1469
    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert([Ljava/lang/String;)[Ljava/util/UUID;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    aput-object p3, p1, v3

    .line 1471
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-object v4

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectedDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Device;

    if-nez v0, :cond_1

    .line 1477
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceNotConnected(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-object v4

    .line 1481
    :cond_1
    aget-object p1, v1, v2

    invoke-virtual {v0, p1}, Lcom/polidea/multiplatformbleadapter/Device;->getServiceByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Service;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1483
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-object v4

    .line 1487
    :cond_2
    aget-object p2, v1, v3

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/Service;->getCharacteristicByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1489
    invoke-static {p3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-object v4

    :cond_3
    return-object p1
.end method

.method private getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleConnection;

    if-nez v0, :cond_0

    .line 1201
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceNotConnected(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getDescriptor(I)Lcom/polidea/multiplatformbleadapter/Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDescriptors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Descriptor;

    if-eqz v0, :cond_0

    return-object v0

    .line 1016
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->descriptorNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method private getDescriptor(ILjava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    .line 994
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 999
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/multiplatformbleadapter/Characteristic;

    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {v1, v0}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDescriptorByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 1006
    :cond_0
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->descriptorNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    .line 1001
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 996
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method private getDescriptor(ILjava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    .line 969
    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert([Ljava/lang/String;)[Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 974
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Service;

    if-eqz v0, :cond_2

    .line 979
    aget-object p1, v1, v2

    invoke-virtual {v0, p1}, Lcom/polidea/multiplatformbleadapter/Service;->getCharacteristicByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 984
    aget-object p2, v1, v3

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDescriptorByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 986
    :cond_0
    invoke-static {p3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->descriptorNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    .line 981
    :cond_1
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    .line 976
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    :cond_3
    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    aput-object p3, p1, v3

    .line 971
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method private getDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    const/4 v4, 0x2

    aput-object p4, v1, v4

    .line 938
    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert([Ljava/lang/String;)[Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 943
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectedDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Device;

    if-eqz v0, :cond_3

    .line 948
    aget-object p1, v1, v2

    invoke-virtual {v0, p1}, Lcom/polidea/multiplatformbleadapter/Device;->getServiceByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Service;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 953
    aget-object p2, v1, v3

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/Service;->getCharacteristicByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 958
    aget-object p2, v1, v4

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDescriptorByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 960
    :cond_0
    invoke-static {p4}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->descriptorNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    .line 955
    :cond_1
    invoke-static {p3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    .line 950
    :cond_2
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    .line 945
    :cond_3
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceNotConnected(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    :cond_4
    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    aput-object p3, p1, v3

    aput-object p4, p1, v4

    .line 940
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method private getDeviceById(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectedDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Device;

    if-eqz v0, :cond_0

    return-object v0

    .line 1191
    :cond_0
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceNotConnected(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method static synthetic lambda$changeAdapterState$15(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$safeConnectToDevice$21(Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1221
    sget-object p1, Lcom/polidea/multiplatformbleadapter/ConnectionState;->CONNECTING:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    invoke-interface {p0, p1}, Lcom/polidea/multiplatformbleadapter/OnEventCallback;->onEvent(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$safeConnectToDevice$23(Lcom/polidea/rxandroidble2/RxBleConnection;Ljava/lang/Boolean;)Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$safeConnectToDevice$24(Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1229
    new-instance v0, Lcom/polidea/multiplatformbleadapter/utils/RefreshGattCustomOperation;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/utils/RefreshGattCustomOperation;-><init>()V

    .line 1230
    invoke-interface {p0, v0}, Lcom/polidea/rxandroidble2/RxBleConnection;->queue(Lcom/polidea/rxandroidble2/RxBleCustomOperation;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda35;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;)V

    .line 1231
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$safeConnectToDevice$25(ILcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1235
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 1236
    invoke-interface {p1, p0, v1, v2, v0}, Lcom/polidea/rxandroidble2/RxBleConnection;->requestConnectionPriority(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object p0

    .line 1237
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$safeConnectToDevice$26(Lcom/polidea/rxandroidble2/RxBleConnection;Ljava/lang/Integer;)Lcom/polidea/rxandroidble2/RxBleConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$safeConnectToDevice$27(ILcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1243
    invoke-interface {p1, p0}, Lcom/polidea/rxandroidble2/RxBleConnection;->requestMtu(I)Lio/reactivex/Single;

    move-result-object p0

    new-instance v0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda36;-><init>(Lcom/polidea/rxandroidble2/RxBleConnection;)V

    .line 1244
    invoke-virtual {p0, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p0

    .line 1245
    invoke-virtual {p0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$safeMonitorCharacteristicForDevice$39(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1429
    sget-object v0, Lcom/polidea/multiplatformbleadapter/utils/Constants;->CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getGattDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1431
    sget-object v0, Lcom/polidea/rxandroidble2/NotificationSetupMode;->QUICK_SETUP:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    goto :goto_0

    .line 1432
    :cond_0
    sget-object v0, Lcom/polidea/rxandroidble2/NotificationSetupMode;->COMPAT:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    .line 1433
    :goto_0
    invoke-virtual {p0}, Lcom/polidea/multiplatformbleadapter/Characteristic;->isNotifiable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1434
    iget-object p0, p0, Lcom/polidea/multiplatformbleadapter/Characteristic;->gattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-interface {p1, p0, v0}, Lcom/polidea/rxandroidble2/RxBleConnection;->setupNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 1437
    :cond_1
    invoke-virtual {p0}, Lcom/polidea/multiplatformbleadapter/Characteristic;->isIndicatable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1438
    iget-object p0, p0, Lcom/polidea/multiplatformbleadapter/Characteristic;->gattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-interface {p1, p0, v0}, Lcom/polidea/rxandroidble2/RxBleConnection;->setupIndication(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 1441
    :cond_2
    new-instance p1, Lcom/polidea/multiplatformbleadapter/exceptions/CannotMonitorCharacteristicException;

    invoke-direct {p1, p0}, Lcom/polidea/multiplatformbleadapter/exceptions/CannotMonitorCharacteristicException;-><init>(Lcom/polidea/multiplatformbleadapter/Characteristic;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$safeMonitorCharacteristicForDevice$40(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$safeMonitorCharacteristicForDevice$43(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/multiplatformbleadapter/OnEventCallback;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Notification from"

    .line 1452
    invoke-virtual {p0, v0, p2}, Lcom/polidea/multiplatformbleadapter/Characteristic;->logValue(Ljava/lang/String;[B)V

    .line 1453
    invoke-virtual {p0, p2}, Lcom/polidea/multiplatformbleadapter/Characteristic;->setValue([B)V

    .line 1454
    new-instance p2, Lcom/polidea/multiplatformbleadapter/Characteristic;

    invoke-direct {p2, p0}, Lcom/polidea/multiplatformbleadapter/Characteristic;-><init>(Lcom/polidea/multiplatformbleadapter/Characteristic;)V

    invoke-interface {p1, p2}, Lcom/polidea/multiplatformbleadapter/OnEventCallback;->onEvent(Ljava/lang/Object;)V

    return-void
.end method

.method private mapNativeAdapterStateToLocalBluetoothState(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown"

    return-object p1

    :pswitch_0
    const-string p1, "PoweredOn"

    return-object p1

    :pswitch_1
    const-string p1, "Resetting"

    return-object p1

    :pswitch_2
    const-string p1, "PoweredOff"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private mapRxBleAdapterStateToLocalBluetoothState(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Ljava/lang/String;
    .locals 1

    .line 1056
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    if-ne p1, v0, :cond_0

    const-string p1, "PoweredOn"

    return-object p1

    .line 1058
    :cond_0
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    if-ne p1, v0, :cond_1

    const-string p1, "PoweredOff"

    return-object p1

    :cond_1
    const-string p1, "Resetting"

    return-object p1
.end method

.method private monitorAdapterStateChanges(Landroid/content/Context;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 1039
    invoke-direct {p0}, Lcom/polidea/multiplatformbleadapter/BleModule;->supportsBluetoothLowEnergy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1043
    :cond_0
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

    invoke-direct {v0, p1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda34;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;)V

    .line 1044
    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 1045
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda30;

    invoke-direct {v0, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda30;-><init>(Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method private onDeviceDisconnected(Lcom/polidea/rxandroidble2/RxBleDevice;)V
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->activeConnections:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectedDevices:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/multiplatformbleadapter/Device;

    if-nez p1, :cond_0

    return-void

    .line 1278
    :cond_0
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->cleanServicesAndCharacteristicsForDevice(Lcom/polidea/multiplatformbleadapter/Device;)V

    .line 1279
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectingDevices:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method private safeConnectToDevice(Lcom/polidea/rxandroidble2/RxBleDevice;ZILcom/polidea/multiplatformbleadapter/RefreshGattMoment;Ljava/lang/Long;ILcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleDevice;",
            "ZI",
            "Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;",
            "Ljava/lang/Long;",
            "I",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/ConnectionState;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1217
    new-instance v0, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v0, p7, p9}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 1220
    invoke-interface {p1, p2}, Lcom/polidea/rxandroidble2/RxBleDevice;->establishConnection(Z)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p7, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda29;

    invoke-direct {p7, p8}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda29;-><init>(Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V

    .line 1221
    invoke-virtual {p2, p7}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p7, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda22;

    invoke-direct {p7, p0, v0, p1, p8}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda22;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V

    .line 1222
    invoke-virtual {p2, p7}, Lio/reactivex/Observable;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p2

    .line 1228
    sget-object p7, Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;->ON_CONNECTED:Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    if-ne p4, p7, :cond_0

    .line 1229
    sget-object p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda37;->INSTANCE:Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda37;

    invoke-virtual {p2, p4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    :cond_0
    if-lez p6, :cond_1

    .line 1235
    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda31;

    invoke-direct {p4, p6}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda31;-><init>(I)V

    invoke-virtual {p2, p4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    :cond_1
    if-lez p3, :cond_2

    .line 1242
    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda32;

    invoke-direct {p4, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda32;-><init>(I)V

    invoke-virtual {p2, p4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    :cond_2
    if-eqz p5, :cond_3

    .line 1250
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p3, p4, p5}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 1254
    :cond_3
    new-instance p3, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;

    invoke-direct {p3, p0, p1, p8, v0}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;)V

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda14;

    invoke-direct {p4, p0, v0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda14;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/rxandroidble2/RxBleDevice;)V

    .line 1255
    invoke-virtual {p2, p3, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 1268
    iget-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectingDevices:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private safeDiscoverAllServicesAndCharacteristicsForDevice(Lcom/polidea/multiplatformbleadapter/Device;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1286
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1291
    :cond_0
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v1, p3, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 1294
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/RxBleConnection;->discoverServices()Lio/reactivex/Single;

    move-result-object p3

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda44;

    invoke-direct {p4, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda44;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p3, p4}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p3

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p1, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda8;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/Device;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda20;

    invoke-direct {p1, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda20;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p3, p4, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 1325
    iget-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p3, p2, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private safeMonitorCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1421
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1426
    :cond_0
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 1428
    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda40;

    invoke-direct {p4, p1, v0}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda40;-><init>(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/rxandroidble2/RxBleConnection;)V

    invoke-static {p4}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p4

    sget-object v0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda38;->INSTANCE:Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda38;

    .line 1443
    invoke-virtual {p4, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p4

    sget-object v0, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    .line 1444
    invoke-virtual {p4, v0}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p4

    .line 1445
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p4, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p4

    new-instance v0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda45;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p4, v0}, Lio/reactivex/Flowable;->doOnCancel(Lio/reactivex/functions/Action;)Lio/reactivex/Flowable;

    move-result-object p4

    new-instance v0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda4;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p4, v0}, Lio/reactivex/Flowable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Flowable;

    move-result-object p4

    new-instance v0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda28;-><init>(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda21;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p4, v0, p1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 1460
    iget-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p3, p2, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private safeReadCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1332
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1337
    :cond_0
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v1, p3, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 1339
    iget-object p3, p1, Lcom/polidea/multiplatformbleadapter/Characteristic;->gattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1340
    invoke-interface {v0, p3}, Lcom/polidea/rxandroidble2/RxBleConnection;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Single;

    move-result-object p3

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda46;

    invoke-direct {p4, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda46;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p3, p4}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p3

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda5;

    invoke-direct {p4, p0, p1, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda5;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda23;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p3, p4, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 1355
    iget-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p3, p2, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private safeReadDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 776
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 781
    :cond_0
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v1, p3, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 784
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getNativeDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/polidea/rxandroidble2/RxBleConnection;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/Single;

    move-result-object p3

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda1;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p3, p4}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p3

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda7;

    invoke-direct {p4, p0, p1, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda7;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/Descriptor;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda24;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p3, p4, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 799
    iget-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p3, p2, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private safeStartDeviceScan([Ljava/util/UUID;IILcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/UUID;",
            "II",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/ScanResult;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    if-nez v0, :cond_0

    .line 1161
    new-instance p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 p3, 0x0

    const-string p4, "BleManager not created when tried to start device scan"

    invoke-direct {p1, p2, p4, p3}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 1165
    :cond_0
    new-instance v0, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;-><init>()V

    .line 1166
    invoke-virtual {v0, p2}, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->setScanMode(I)Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;

    move-result-object p2

    .line 1167
    invoke-virtual {p2, p3}, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->setCallbackType(I)Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;

    move-result-object p2

    .line 1168
    invoke-virtual {p2}, Lcom/polidea/rxandroidble2/scan/ScanSettings$Builder;->build()Lcom/polidea/rxandroidble2/scan/ScanSettings;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p1, :cond_1

    move v0, p3

    goto :goto_0

    .line 1170
    :cond_1
    array-length v0, p1

    .line 1171
    :goto_0
    new-array v1, v0, [Lcom/polidea/rxandroidble2/scan/ScanFilter;

    :goto_1
    if-ge p3, v0, :cond_2

    .line 1173
    new-instance v2, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    invoke-direct {v2}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;-><init>()V

    aget-object v3, p1, p3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->build()Lcom/polidea/rxandroidble2/scan/ScanFilter;

    move-result-object v2

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1176
    :cond_2
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    .line 1177
    invoke-virtual {p1, p2, v1}, Lcom/polidea/rxandroidble2/RxBleClient;->scanBleDevices(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, p4}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda13;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V

    new-instance p3, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0, p5}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda12;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 1178
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->scanSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private safeWriteCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;[BLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1391
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1396
    :cond_0
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v1, p4, p5}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 1398
    iget-object p4, p1, Lcom/polidea/multiplatformbleadapter/Characteristic;->gattCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1399
    invoke-interface {v0, p4, p2}, Lcom/polidea/rxandroidble2/RxBleConnection;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lio/reactivex/Single;

    move-result-object p2

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, v1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda2;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p2, p4}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p2

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0, p1, v1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda6;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0, v1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda25;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 1404
    invoke-virtual {p2, p4, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 1414
    iget-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p2, p3, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private safeWriteDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 890
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getNativeDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Lcom/polidea/multiplatformbleadapter/utils/Constants;->CLIENT_CHARACTERISTIC_CONFIG_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->descriptorWriteNotAllowed(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 897
    :cond_0
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 904
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/utils/Base64Converter;->decode(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    new-instance p2, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {p2, p4, p5}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 914
    invoke-interface {v1, v0, v5}, Lcom/polidea/rxandroidble2/RxBleConnection;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lio/reactivex/Completable;

    move-result-object p4

    new-instance p5, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p2, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda3;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 915
    invoke-virtual {p4, p5}, Lio/reactivex/Completable;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p4

    new-instance p5, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda0;

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda0;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/Descriptor;[BLcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, p2, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda26;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 919
    invoke-virtual {p4, p5, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 929
    iget-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p2, p3, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void

    .line 906
    :catchall_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    .line 907
    invoke-static {p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidWriteDataForDescriptor(Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void
.end method

.method private supportsBluetoothLowEnergy()Z
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private writeCharacteristicWithValue(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1366
    :try_start_0
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/utils/Base64Converter;->decode(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/Characteristic;->setWriteType(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1378
    invoke-direct/range {v0 .. v5}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeWriteCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;[BLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void

    .line 1370
    :catchall_0
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    .line 1369
    invoke-static {p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidWriteDataForCharacteristic(Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    .line 1368
    invoke-interface {p6, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void
.end method


# virtual methods
.method public cancelDeviceConnection(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 411
    new-instance p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const-string v0, "BleManager not created when tried to cancel device connection"

    invoke-direct {p1, p2, v0, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 415
    :cond_0
    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/RxBleClient;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    .line 417
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectingDevices:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {v2, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 418
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleDeviceToDeviceMapper:Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;

    invoke-virtual {p1, v0, v1}, Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;->map(Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/rxandroidble2/RxBleConnection;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 421
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceNotConnected(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method

.method public cancelTransaction(Ljava/lang/String;)V
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {v0, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public connectToDevice(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/ConnectionOptions;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/ConnectionOptions;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/ConnectionState;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    if-nez v0, :cond_0

    .line 386
    new-instance p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 p3, 0x0

    const-string p4, "BleManager not created when tried to connect to device"

    invoke-direct {p1, p2, p4, p3}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 390
    :cond_0
    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/RxBleClient;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 392
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 398
    :cond_1
    invoke-virtual {p2}, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->getAutoConnect()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 399
    invoke-virtual {p2}, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->getRequestMTU()I

    move-result v3

    .line 400
    invoke-virtual {p2}, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->getRefreshGattMoment()Lcom/polidea/multiplatformbleadapter/RefreshGattMoment;

    move-result-object v4

    .line 401
    invoke-virtual {p2}, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->getTimeoutInMillis()Ljava/lang/Long;

    move-result-object v5

    .line 402
    invoke-virtual {p2}, Lcom/polidea/multiplatformbleadapter/ConnectionOptions;->getConnectionPriority()I

    move-result v6

    move-object v0, p0

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 396
    invoke-direct/range {v0 .. v9}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeConnectToDevice(Lcom/polidea/rxandroidble2/RxBleDevice;ZILcom/polidea/multiplatformbleadapter/RefreshGattMoment;Ljava/lang/Long;ILcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public createClient(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/RxBleClient;->create(Landroid/content/Context;)Lcom/polidea/rxandroidble2/RxBleClient;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    .line 113
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/polidea/multiplatformbleadapter/BleModule;->monitorAdapterStateChanges(Landroid/content/Context;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->adapterStateChangesSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 117
    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnEventCallback;->onEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public descriptorsForCharacteristic(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Characteristic;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDescriptors()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 550
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method public descriptorsForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    .line 505
    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert([Ljava/lang/String;)[Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 510
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDeviceById(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object p1

    .line 512
    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/Device;->getServiceByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Service;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 517
    aget-object p2, v1, v3

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/Service;->getCharacteristicByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDescriptors()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 519
    :cond_0
    invoke-static {p3}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    .line 514
    :cond_1
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    :cond_2
    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    aput-object p3, p1, v3

    .line 507
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method public descriptorsForService(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    .line 528
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 533
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/multiplatformbleadapter/Service;

    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {v1, v0}, Lcom/polidea/multiplatformbleadapter/Service;->getCharacteristicByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDescriptors()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 540
    :cond_0
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    .line 535
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 530
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method public destroyClient()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->adapterStateChangesSubscription:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 125
    iput-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->adapterStateChangesSubscription:Lio/reactivex/disposables/Disposable;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->scanSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->scanSubscription:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 129
    iput-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->scanSubscription:Lio/reactivex/disposables/Disposable;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {v0}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeAllSubscriptions()V

    .line 132
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectingDevices:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {v0}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeAllSubscriptions()V

    .line 134
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 135
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 136
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDescriptors:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 137
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectedDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 139
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 141
    iput-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    .line 142
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/utils/IdGenerator;->clear()V

    return-void
.end method

.method public disable(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_OFF:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/polidea/multiplatformbleadapter/BleModule;->changeAdapterState(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public discoverAllServicesAndCharacteristicsForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 455
    :try_start_0
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDeviceById(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object p1
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeDiscoverAllServicesAndCharacteristicsForDevice(Lcom/polidea/multiplatformbleadapter/Device;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void

    :catch_0
    move-exception p1

    .line 457
    invoke-interface {p4, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void
.end method

.method public enable(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;->STATE_ON:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/polidea/multiplatformbleadapter/BleModule;->changeAdapterState(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public getCharacteristicsForDevice(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    .line 477
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDeviceById(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object p1

    .line 484
    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/Device;->getServiceByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Service;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Service;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 486
    :cond_0
    invoke-static {p2}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 479
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method public getCharacteristicsForService(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/multiplatformbleadapter/Service;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/polidea/multiplatformbleadapter/Service;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 496
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method public getConnectedDevices([Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "[",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    if-nez v0, :cond_0

    .line 344
    new-instance p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v0, 0x0

    const-string v1, "BleManager not created when tried to get connected devices"

    invoke-direct {p1, p2, v1, v0}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 348
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p1, v1, [Lcom/polidea/multiplatformbleadapter/Device;

    .line 349
    invoke-interface {p2, p1}, Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 353
    :cond_1
    array-length v0, p1

    new-array v2, v0, [Ljava/util/UUID;

    move v3, v1

    .line 354
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 355
    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_2

    .line 358
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 362
    :cond_2
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    iget-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectedDevices:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/multiplatformbleadapter/Device;

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_4

    .line 367
    aget-object v5, v2, v4

    .line 368
    invoke-virtual {v3, v5}, Lcom/polidea/multiplatformbleadapter/Device;->getServiceByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Service;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 369
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 375
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Lcom/polidea/multiplatformbleadapter/Device;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/polidea/multiplatformbleadapter/Device;

    invoke-interface {p2, p1}, Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public getCurrentState()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/polidea/multiplatformbleadapter/BleModule;->supportsBluetoothLowEnergy()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unsupported"

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_1

    const-string v0, "PoweredOff"

    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/polidea/multiplatformbleadapter/BleModule;->mapNativeAdapterStateToLocalBluetoothState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKnownDevices([Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "[",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    if-nez v0, :cond_0

    .line 319
    new-instance p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v0, 0x0

    const-string v1, "BleManager not created when tried to get known devices"

    invoke-direct {p1, p2, v1, v0}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    .line 326
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/multiplatformbleadapter/Device;

    if-eqz v3, :cond_2

    .line 332
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/polidea/multiplatformbleadapter/Device;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/polidea/multiplatformbleadapter/Device;

    invoke-interface {p2, p1}, Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public getLogLevel()Ljava/lang/String;
    .locals 1

    .line 1034
    iget v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->currentLogLevel:I

    invoke-static {v0}, Lcom/polidea/multiplatformbleadapter/utils/LogLevel;->fromLogLevel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServicesForDevice(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Service;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/polidea/multiplatformbleadapter/errors/BleError;
        }
    .end annotation

    .line 466
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDeviceById(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 469
    :cond_0
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceServicesNotDiscovered(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    throw p1
.end method

.method public isDeviceConnected(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleClient:Lcom/polidea/rxandroidble2/RxBleClient;

    if-nez v0, :cond_0

    .line 433
    new-instance p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothManagerDestroyed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v0, 0x0

    const-string v1, "BleManager not created when tried to check if device is connected"

    invoke-direct {p1, p2, v1, v0}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 437
    :cond_0
    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/RxBleClient;->getBleDevice(Ljava/lang/String;)Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 439
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->deviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    .line 443
    :cond_1
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/RxBleDevice;->getConnectionState()Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    move-result-object p1

    sget-object p3, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    .line 444
    invoke-virtual {p1, p3}, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 445
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$changeAdapterState$16$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1081
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1082
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$changeAdapterState$17$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1085
    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 1086
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$changeAdapterState$18$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1089
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$readRSSIForDevice$3$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 263
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$readRSSIForDevice$4$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/Device;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    invoke-virtual {p1, p4}, Lcom/polidea/multiplatformbleadapter/Device;->setRssi(Ljava/lang/Integer;)V

    .line 267
    invoke-virtual {p2, p1}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 268
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$readRSSIForDevice$5$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 271
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$requestConnectionPriorityForDevice$0$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 228
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$requestConnectionPriorityForDevice$1$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/multiplatformbleadapter/Device;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$requestConnectionPriorityForDevice$2$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 234
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$requestMTUForDevice$6$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 301
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$requestMTUForDevice$7$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/Device;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    invoke-virtual {p1, p4}, Lcom/polidea/multiplatformbleadapter/Device;->setMtu(Ljava/lang/Integer;)V

    .line 304
    invoke-virtual {p2, p1}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 305
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$requestMTUForDevice$8$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 308
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeConnectToDevice$22$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1223
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1224
    invoke-direct {p0, p2}, Lcom/polidea/multiplatformbleadapter/BleModule;->onDeviceDisconnected(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    .line 1225
    sget-object p1, Lcom/polidea/multiplatformbleadapter/ConnectionState;->DISCONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    invoke-interface {p3, p1}, Lcom/polidea/multiplatformbleadapter/OnEventCallback;->onEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$safeConnectToDevice$28$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/rxandroidble2/RxBleConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleDeviceToDeviceMapper:Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;

    invoke-virtual {v0, p1, p4}, Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;->map(Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/rxandroidble2/RxBleConnection;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object v0

    .line 1257
    sget-object v1, Lcom/polidea/multiplatformbleadapter/ConnectionState;->CONNECTED:Lcom/polidea/multiplatformbleadapter/ConnectionState;

    invoke-interface {p2, v1}, Lcom/polidea/multiplatformbleadapter/OnEventCallback;->onEvent(Ljava/lang/Object;)V

    .line 1258
    invoke-direct {p0, v0}, Lcom/polidea/multiplatformbleadapter/BleModule;->cleanServicesAndCharacteristicsForDevice(Lcom/polidea/multiplatformbleadapter/Device;)V

    .line 1259
    iget-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->connectedDevices:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iget-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->activeConnections:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    invoke-virtual {p3, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$safeConnectToDevice$29$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/rxandroidble2/RxBleDevice;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    .line 1264
    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1265
    invoke-direct {p0, p2}, Lcom/polidea/multiplatformbleadapter/BleModule;->onDeviceDisconnected(Lcom/polidea/rxandroidble2/RxBleDevice;)V

    return-void
.end method

.method public synthetic lambda$safeDiscoverAllServicesAndCharacteristicsForDevice$30$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1296
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1297
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeDiscoverAllServicesAndCharacteristicsForDevice$31$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/Device;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Lcom/polidea/rxandroidble2/RxBleDeviceServices;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    invoke-virtual {p4}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getBluetoothGattServices()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 1302
    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->serviceFactory:Lcom/polidea/multiplatformbleadapter/utils/ServiceFactory;

    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/polidea/multiplatformbleadapter/utils/ServiceFactory;->create(Ljava/lang/String;Landroid/bluetooth/BluetoothGattService;)Lcom/polidea/multiplatformbleadapter/Service;

    move-result-object v2

    .line 1303
    iget-object v3, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/polidea/multiplatformbleadapter/Service;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1304
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1307
    new-instance v4, Lcom/polidea/multiplatformbleadapter/Characteristic;

    invoke-direct {v4, v2, v3}, Lcom/polidea/multiplatformbleadapter/Characteristic;-><init>(Lcom/polidea/multiplatformbleadapter/Service;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 1308
    iget-object v5, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredCharacteristics:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1310
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 1311
    new-instance v6, Lcom/polidea/multiplatformbleadapter/Descriptor;

    invoke-direct {v6, v4, v5}, Lcom/polidea/multiplatformbleadapter/Descriptor;-><init>(Lcom/polidea/multiplatformbleadapter/Characteristic;Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 1312
    iget-object v5, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDescriptors:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getId()I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1316
    :cond_2
    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/Device;->setServices(Ljava/util/List;)V

    .line 1318
    invoke-virtual {p2, p1}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 1319
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeDiscoverAllServicesAndCharacteristicsForDevice$32$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1321
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1322
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeMonitorCharacteristicForDevice$41$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1447
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1448
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeMonitorCharacteristicForDevice$42$com-polidea-multiplatformbleadapter-BleModule(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {v0, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeMonitorCharacteristicForDevice$44$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1457
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeReadCharacteristicForDevice$33$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1342
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1343
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeReadCharacteristicForDevice$34$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Read from"

    .line 1346
    invoke-virtual {p1, v0, p4}, Lcom/polidea/multiplatformbleadapter/Characteristic;->logValue(Ljava/lang/String;[B)V

    .line 1347
    invoke-virtual {p1, p4}, Lcom/polidea/multiplatformbleadapter/Characteristic;->setValue([B)V

    .line 1348
    new-instance p4, Lcom/polidea/multiplatformbleadapter/Characteristic;

    invoke-direct {p4, p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;-><init>(Lcom/polidea/multiplatformbleadapter/Characteristic;)V

    invoke-virtual {p2, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 1349
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeReadCharacteristicForDevice$35$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1351
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1352
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeReadDescriptorForDevice$10$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/Descriptor;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Read from"

    .line 790
    invoke-virtual {p1, v0, p4}, Lcom/polidea/multiplatformbleadapter/Descriptor;->logValue(Ljava/lang/String;[B)V

    .line 791
    invoke-virtual {p1, p4}, Lcom/polidea/multiplatformbleadapter/Descriptor;->setValue([B)V

    .line 792
    new-instance p4, Lcom/polidea/multiplatformbleadapter/Descriptor;

    invoke-direct {p4, p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;-><init>(Lcom/polidea/multiplatformbleadapter/Descriptor;)V

    invoke-virtual {p2, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 793
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeReadDescriptorForDevice$11$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 796
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeReadDescriptorForDevice$9$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 786
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 787
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeStartDeviceScan$19$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/rxandroidble2/scan/ScanResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1179
    invoke-virtual {p2}, Lcom/polidea/rxandroidble2/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDevices:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->discoveredDevices:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxBleDeviceToDeviceMapper:Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;

    invoke-virtual {p2}, Lcom/polidea/rxandroidble2/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;->map(Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/rxandroidble2/RxBleConnection;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->rxScanResultToScanResultMapper:Lcom/polidea/multiplatformbleadapter/utils/mapper/RxScanResultToScanResultMapper;

    invoke-virtual {v0, p2}, Lcom/polidea/multiplatformbleadapter/utils/mapper/RxScanResultToScanResultMapper;->map(Lcom/polidea/rxandroidble2/scan/ScanResult;)Lcom/polidea/multiplatformbleadapter/ScanResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/polidea/multiplatformbleadapter/OnEventCallback;->onEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$safeStartDeviceScan$20$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/OnErrorCallback;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p2}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void
.end method

.method public synthetic lambda$safeWriteCharacteristicForDevice$36$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1401
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1402
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeWriteCharacteristicForDevice$37$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Write to"

    .line 1405
    invoke-virtual {p1, v0, p4}, Lcom/polidea/multiplatformbleadapter/Characteristic;->logValue(Ljava/lang/String;[B)V

    .line 1406
    invoke-virtual {p1, p4}, Lcom/polidea/multiplatformbleadapter/Characteristic;->setValue([B)V

    .line 1407
    new-instance p4, Lcom/polidea/multiplatformbleadapter/Characteristic;

    invoke-direct {p4, p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;-><init>(Lcom/polidea/multiplatformbleadapter/Characteristic;)V

    invoke-virtual {p2, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 1408
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeWriteCharacteristicForDevice$38$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 1411
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeWriteDescriptorForDevice$12$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 916
    invoke-static {}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 917
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeWriteDescriptorForDevice$13$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/Descriptor;[BLcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Write to"

    .line 920
    invoke-virtual {p1, v0, p2}, Lcom/polidea/multiplatformbleadapter/Descriptor;->logValue(Ljava/lang/String;[B)V

    .line 921
    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/Descriptor;->setValue([B)V

    .line 922
    new-instance p2, Lcom/polidea/multiplatformbleadapter/Descriptor;

    invoke-direct {p2, p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;-><init>(Lcom/polidea/multiplatformbleadapter/Descriptor;)V

    invoke-virtual {p3, p2}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->success(Ljava/lang/Object;)V

    .line 923
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p4}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic lambda$safeWriteDescriptorForDevice$14$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->errorConverter:Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;

    invoke-virtual {v0, p3}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;->error(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    .line 926
    iget-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p1, p2}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->removeSubscription(Ljava/lang/String;)Z

    return-void
.end method

.method public monitorCharacteristic(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 704
    invoke-direct {p0, p1, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(ILcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 709
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeMonitorCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public monitorCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 676
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 682
    :cond_0
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeMonitorCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public monitorCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 691
    invoke-direct {p0, p1, p2, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeMonitorCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readCharacteristic(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 592
    invoke-direct {p0, p1, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(ILcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeReadCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 563
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 569
    :cond_0
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeReadCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readCharacteristicForService(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 578
    invoke-direct {p0, p1, p2, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeReadCharacteristicForDevice(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public readDescriptor(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 765
    :try_start_0
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDescriptor(I)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object p1

    .line 766
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeReadDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 768
    invoke-interface {p4, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method

.method public readDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 752
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDescriptor(ILjava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object p1

    .line 753
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeReadDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 755
    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method

.method public readDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 722
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object p1

    .line 723
    invoke-direct {p0, p1, p5, p6, p7}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeReadDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 725
    invoke-interface {p7, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method

.method public readDescriptorForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 737
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDescriptor(ILjava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object p1

    .line 738
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeReadDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 740
    invoke-interface {p6, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method

.method public readRSSIForDevice(Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDeviceById(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object p1
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v1, p3, p4}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 260
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/RxBleConnection;->readRssi()Lio/reactivex/Single;

    move-result-object p3

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda41;

    invoke-direct {p4, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda41;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3, p4}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p3

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0, p1, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda9;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/Device;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0, v1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p3, p4, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 274
    iget-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p3, p2, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void

    :catch_0
    move-exception p1

    .line 249
    invoke-interface {p4, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void
.end method

.method public requestConnectionPriorityForDevice(Ljava/lang/String;ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDeviceById(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object p1
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v1, p4, p5}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    const-wide/16 p4, 0x1

    .line 224
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 225
    invoke-interface {v0, p2, p4, p5, v2}, Lcom/polidea/rxandroidble2/RxBleConnection;->requestConnectionPriority(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object p2

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda42;

    invoke-direct {p4, p0, v1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda42;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2, p4}, Lio/reactivex/Completable;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p2

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;

    invoke-direct {p4, p0, v1, p1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/multiplatformbleadapter/Device;Ljava/lang/String;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0, v1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda18;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2, p4, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p2, p3, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void

    :catch_0
    move-exception p1

    .line 213
    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void
.end method

.method public requestMTUForDevice(Ljava/lang/String;ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Device;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 284
    :try_start_0
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDeviceById(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Device;

    move-result-object p1
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/polidea/multiplatformbleadapter/BleModule;->getConnectionOrEmitError(Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    invoke-direct {v1, p4, p5}, Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;-><init>(Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    .line 298
    invoke-interface {v0, p2}, Lcom/polidea/rxandroidble2/RxBleConnection;->requestMtu(I)Lio/reactivex/Single;

    move-result-object p2

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda43;

    invoke-direct {p4, p0, v1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda43;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2, p4}, Lio/reactivex/Single;->doOnDispose(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p2

    new-instance p4, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda10;

    invoke-direct {p4, p0, p1, v1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda10;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/Device;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    new-instance p1, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, v1, p3}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda19;-><init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2, p4, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 311
    iget-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->pendingTransactions:Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;

    invoke-virtual {p2, p3, p1}, Lcom/polidea/multiplatformbleadapter/utils/DisposableMap;->replaceSubscription(Ljava/lang/String;Lio/reactivex/disposables/Disposable;)V

    return-void

    :catch_0
    move-exception p1

    .line 286
    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 0

    .line 1028
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/LogLevel;->toLogLevel(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->currentLogLevel:I

    .line 1029
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->setLogLevel(I)V

    return-void
.end method

.method public startDeviceScan([Ljava/lang/String;IILcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II",
            "Lcom/polidea/multiplatformbleadapter/OnEventCallback<",
            "Lcom/polidea/multiplatformbleadapter/ScanResult;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 185
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->convert([Ljava/lang/String;)[Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :cond_1
    move-object v2, v0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 192
    invoke-direct/range {v1 .. v6}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeStartDeviceScan([Ljava/util/UUID;IILcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public stopDeviceScan()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->scanSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule;->scanSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public writeCharacteristic(ILjava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 654
    invoke-direct {p0, p1, p6}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(ILcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 659
    invoke-direct/range {v0 .. v6}, Lcom/polidea/multiplatformbleadapter/BleModule;->writeCharacteristicWithValue(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeCharacteristicForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 609
    invoke-direct {p0, p1, p2, p3, p8}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v2, p4

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 615
    invoke-direct/range {v0 .. v6}, Lcom/polidea/multiplatformbleadapter/BleModule;->writeCharacteristicWithValue(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeCharacteristicForService(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 632
    invoke-direct {p0, p1, p2, p7}, Lcom/polidea/multiplatformbleadapter/BleModule;->getCharacteristicOrEmitError(ILjava/lang/String;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 641
    :cond_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 638
    invoke-direct/range {v0 .. v6}, Lcom/polidea/multiplatformbleadapter/BleModule;->writeCharacteristicWithValue(Lcom/polidea/multiplatformbleadapter/Characteristic;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V

    return-void
.end method

.method public writeDescriptor(ILjava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 872
    :try_start_0
    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDescriptor(I)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 873
    invoke-direct/range {v0 .. v5}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeWriteDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 880
    invoke-interface {p5, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method

.method public writeDescriptorForCharacteristic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 853
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDescriptor(ILjava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 854
    invoke-direct/range {v0 .. v5}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeWriteDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 861
    invoke-interface {p6, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method

.method public writeDescriptorForDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 812
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    .line 813
    invoke-direct/range {v0 .. v5}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeWriteDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 820
    invoke-interface {p8, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method

.method public writeDescriptorForService(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/polidea/multiplatformbleadapter/OnSuccessCallback<",
            "Lcom/polidea/multiplatformbleadapter/Descriptor;",
            ">;",
            "Lcom/polidea/multiplatformbleadapter/OnErrorCallback;",
            ")V"
        }
    .end annotation

    .line 833
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/polidea/multiplatformbleadapter/BleModule;->getDescriptor(ILjava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/Descriptor;

    move-result-object v1

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 834
    invoke-direct/range {v0 .. v5}, Lcom/polidea/multiplatformbleadapter/BleModule;->safeWriteDescriptorForDevice(Lcom/polidea/multiplatformbleadapter/Descriptor;Ljava/lang/String;Ljava/lang/String;Lcom/polidea/multiplatformbleadapter/OnSuccessCallback;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    :try_end_0
    .catch Lcom/polidea/multiplatformbleadapter/errors/BleError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 841
    invoke-interface {p7, p1}, Lcom/polidea/multiplatformbleadapter/OnErrorCallback;->onError(Lcom/polidea/multiplatformbleadapter/errors/BleError;)V

    :goto_0
    return-void
.end method
