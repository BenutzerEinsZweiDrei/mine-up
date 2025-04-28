.class public Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;
.super Ljava/lang/Object;
.source "BluetoothManagerWrapper.java"


# instance fields
.field private final bluetoothManager:Landroid/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothManager;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-void
.end method


# virtual methods
.method public getConnectedPeripherals()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
