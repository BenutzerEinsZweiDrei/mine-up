.class final Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/DaggerClientComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceComponentImpl"
.end annotation


# instance fields
.field private final clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

.field private connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private connectorImplProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

.field private final macAddress:Ljava/lang/String;

.field private macAddressProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothDeviceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectionStateRelayProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesDisconnectTimeoutConfProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private rxBleDeviceImplProvider:Lbleshadow/javax/inject/Provider;


# direct methods
.method private constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;Ljava/lang/String;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    .line 389
    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    .line 390
    iput-object p2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->macAddress:Ljava/lang/String;

    .line 391
    invoke-direct {p0, p2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;Ljava/lang/String;Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V
    .locals 0

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->providesDisconnectTimeoutConfProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->bluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->namedTimeoutConfiguration()Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->deviceComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)Lbleshadow/javax/inject/Provider;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->macAddressProvider:Lbleshadow/javax/inject/Provider;

    return-object p0
.end method

.method private bluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->macAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;->access$1700(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;)Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->provideBluetoothDevice(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 3

    .line 405
    invoke-static {p1}, Lbleshadow/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lbleshadow/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->macAddressProvider:Lbleshadow/javax/inject/Provider;

    .line 406
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;->access$600(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideBluetoothDeviceFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideBluetoothDeviceProvider:Lbleshadow/javax/inject/Provider;

    .line 407
    new-instance p1, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;

    invoke-direct {p1, p0}, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl$1;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;)V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 413
    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;->access$1400(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->connectionComponentBuilderProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;->access$800(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->connectorImplProvider:Lbleshadow/javax/inject/Provider;

    .line 414
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;->create()Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateRelayProvider:Lbleshadow/javax/inject/Provider;

    .line 415
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideBluetoothDeviceProvider:Lbleshadow/javax/inject/Provider;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->connectorImplProvider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->clientComponentImpl:Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;

    invoke-static {v2}, Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;->access$2100(Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;)Lbleshadow/javax/inject/Provider;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;->create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->rxBleDeviceImplProvider:Lbleshadow/javax/inject/Provider;

    .line 416
    iget-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateRelayProvider:Lbleshadow/javax/inject/Provider;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;

    move-result-object p1

    invoke-static {p1}, Lbleshadow/dagger/internal/DoubleCheck;->provider(Lbleshadow/javax/inject/Provider;)Lbleshadow/javax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->provideConnectionStateChangeListenerProvider:Lbleshadow/javax/inject/Provider;

    .line 417
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;->create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesDisconnectTimeoutConfFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->providesDisconnectTimeoutConfProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method private namedTimeoutConfiguration()Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 1

    .line 400
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->provideComputationScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;->providesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public provideDevice()Lcom/polidea/rxandroidble2/RxBleDevice;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;->rxBleDeviceImplProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/RxBleDevice;

    return-object v0
.end method
