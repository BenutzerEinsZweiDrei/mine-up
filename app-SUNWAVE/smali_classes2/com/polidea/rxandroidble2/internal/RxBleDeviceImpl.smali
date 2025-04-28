.class Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;
.super Ljava/lang/Object;
.source "RxBleDeviceImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/RxBleDevice;


# annotations
.annotation runtime Lcom/polidea/rxandroidble2/internal/DeviceScope;
.end annotation


# instance fields
.field final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final checkerConnectPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

.field private final connectionStateRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field final connector:Lcom/polidea/rxandroidble2/internal/connection/Connector;

.field final isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/polidea/rxandroidble2/internal/connection/Connector;Lcom/jakewharton/rxrelay2/BehaviorRelay;Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;)V
    .locals 2
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/polidea/rxandroidble2/internal/connection/Connector;",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 39
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connector:Lcom/polidea/rxandroidble2/internal/connection/Connector;

    .line 40
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connectionStateRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    .line 41
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->checkerConnectPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    return-void
.end method

.method private getName(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->checkerConnectPermission:Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/util/CheckerConnectPermission;->isConnectRuntimePermissionGranted()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "[NO BLUETOOTH_CONNECT PERMISSION]"

    return-object p1

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    instance-of v0, p1, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_1
    check-cast p1, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    .line 117
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p1, p1, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public establishConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/ConnectionSetup;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;Lcom/polidea/rxandroidble2/ConnectionSetup;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public establishConnection(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setAutoConnect(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setSuppressIllegalOperationCheck(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->build()Lcom/polidea/rxandroidble2/ConnectionSetup;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->establishConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public establishConnection(ZLcom/polidea/rxandroidble2/Timeout;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/polidea/rxandroidble2/Timeout;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;-><init>()V

    .line 66
    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setAutoConnect(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setOperationTimeout(Lcom/polidea/rxandroidble2/Timeout;)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->setSuppressIllegalOperationCheck(Z)Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/ConnectionSetup$Builder;->build()Lcom/polidea/rxandroidble2/ConnectionSetup;

    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->establishConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getConnectionState()Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connectionStateRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->getName(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$establishConnection$0$com-polidea-rxandroidble2-internal-RxBleDeviceImpl()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public synthetic lambda$establishConnection$1$com-polidea-rxandroidble2-internal-RxBleDeviceImpl(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connector:Lcom/polidea/rxandroidble2/internal/connection/Connector;

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/connection/Connector;->prepareConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;)V

    .line 77
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance p1, Lcom/polidea/rxandroidble2/exceptions/BleAlreadyConnectedException;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/polidea/rxandroidble2/exceptions/BleAlreadyConnectedException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public observeConnectionStateChanges()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->connectionStateRelay:Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RxBleDeviceImpl{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 128
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtil;->commonMacMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 129
    invoke-direct {p0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->getName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
