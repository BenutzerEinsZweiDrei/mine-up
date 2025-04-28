.class public Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;
.super Ljava/lang/Object;
.source "RxBleAdapterWrapper.java"


# static fields
.field private static nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;


# instance fields
.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/polidea/rxandroidble2/exceptions/BleException;

    const-string v1, "bluetoothAdapter is null"

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/exceptions/BleException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    sget-object v0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    throw v0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    .line 34
    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    throw p1
.end method

.method public hasBluetoothAdapter()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/app/PendingIntent;",
            ")I"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I

    move-result p1

    return p1

    .line 74
    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    throw p1
.end method

.method public startLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 66
    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    throw p1
.end method

.method public startLegacyLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p1

    return p1

    .line 50
    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    throw p1
.end method

.method public stopLeScan(Landroid/app/PendingIntent;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/app/PendingIntent;)V

    return-void

    .line 82
    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    throw p1
.end method

.method public stopLeScan(Landroid/bluetooth/le/ScanCallback;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "BluetoothAdapter is disabled, calling BluetoothLeScanner.stopScan(ScanCallback) may cause IllegalStateException"

    .line 94
    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 104
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Cannot call BluetoothLeScanner.stopScan(ScanCallback) on \'null\' reference; BluetoothAdapter.isEnabled() == %b"

    .line 102
    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 90
    :cond_2
    sget-object p1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    throw p1
.end method

.method public stopLegacyLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    return-void

    .line 58
    :cond_0
    sget-object p1, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;->nullBluetoothAdapter:Lcom/polidea/rxandroidble2/exceptions/BleException;

    throw p1
.end method
