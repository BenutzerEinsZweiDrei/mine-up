.class Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$6;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator;->toMatchLost()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        "Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;
    .locals 9

    .line 192
    new-instance v8, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    .line 193
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getRssi()I

    move-result v2

    .line 195
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getTimestampNanos()J

    move-result-wide v3

    .line 196
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->getScanRecord()Lcom/polidea/rxandroidble2/scan/ScanRecord;

    move-result-object v5

    sget-object v6, Lcom/polidea/rxandroidble2/scan/ScanCallbackType;->CALLBACK_TYPE_MATCH_LOST:Lcom/polidea/rxandroidble2/scan/ScanCallbackType;

    .line 198
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;->isConnectable()Lcom/polidea/rxandroidble2/scan/IsConnectable;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/polidea/rxandroidble2/scan/ScanRecord;Lcom/polidea/rxandroidble2/scan/ScanCallbackType;Lcom/polidea/rxandroidble2/scan/IsConnectable;)V

    return-object v8
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    check-cast p1, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanSettingsEmulator$6;->apply(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;)Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResult;

    move-result-object p1

    return-object p1
.end method
