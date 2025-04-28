.class public Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;
.super Ljava/lang/Object;
.source "RxBleInternalScanResult.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/ScanResultInterface;


# instance fields
.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final isConnectable:Lcom/polidea/rxandroidble2/scan/IsConnectable;

.field private final rssi:I

.field private final scanCallbackType:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

.field private final scanRecord:Lcom/polidea/rxandroidble2/scan/ScanRecord;

.field private final timestampNanos:J


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2/scan/ScanRecord;Lcom/polidea/rxandroidble2/scan/ScanCallbackType;Lcom/polidea/rxandroidble2/scan/IsConnectable;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 22
    iput p2, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->rssi:I

    .line 23
    iput-wide p3, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->timestampNanos:J

    .line 24
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->scanRecord:Lcom/polidea/rxandroidble2/scan/ScanRecord;

    .line 25
    iput-object p6, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->scanCallbackType:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    .line 26
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->isConnectable:Lcom/polidea/rxandroidble2/scan/IsConnectable;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->rssi:I

    return v0
.end method

.method public getScanCallbackType()Lcom/polidea/rxandroidble2/scan/ScanCallbackType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->scanCallbackType:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    return-object v0
.end method

.method public getScanRecord()Lcom/polidea/rxandroidble2/scan/ScanRecord;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->scanRecord:Lcom/polidea/rxandroidble2/scan/ScanRecord;

    return-object v0
.end method

.method public getTimestampNanos()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->timestampNanos:J

    return-wide v0
.end method

.method public isConnectable()Lcom/polidea/rxandroidble2/scan/IsConnectable;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->isConnectable:Lcom/polidea/rxandroidble2/scan/IsConnectable;

    return-object v0
.end method
