.class public Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;
.super Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;
.source "ServiceDiscoveryOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2/internal/SingleResponseOperation<",
        "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
        ">;"
    }
.end annotation


# instance fields
.field final bleServicesLogger:Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;

.field final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->SERVICE_DISCOVERY:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {p0, p2, p1, v0, p4}, Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V

    .line 33
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 34
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->bleServicesLogger:Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;

    return-void
.end method

.method static synthetic lambda$timeoutFallbackProcedure$1(Landroid/bluetooth/BluetoothGatt;)Lcom/polidea/rxandroidble2/RxBleDeviceServices;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic lambda$timeoutFallbackProcedure$2(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Long;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    new-instance p1, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    invoke-static {p1}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$timeoutFallbackProcedure$3(Landroid/bluetooth/BluetoothGatt;Lio/reactivex/Scheduler;)Lio/reactivex/SingleSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;

    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->SERVICE_DISCOVERY:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    invoke-direct {p1, p0, v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x5

    .line 81
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    invoke-static {v0, v1, v2, p1}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    .line 83
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getCallback(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->getOnServicesDiscovered()Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda0;-><init>(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;)V

    .line 40
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getCallback$0$com-polidea-rxandroidble2-internal-operations-ServiceDiscoveryOperation(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->bleServicesLogger:Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;->log(Lcom/polidea/rxandroidble2/RxBleDeviceServices;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method protected startOperation(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0

    .line 46
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    return p1
.end method

.method protected timeoutFallbackProcedure(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)Lio/reactivex/Single;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance p2, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, p3}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothGatt;Lio/reactivex/Scheduler;)V

    invoke-static {p2}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceDiscoveryOperation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/polidea/rxandroidble2/internal/SingleResponseOperation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
