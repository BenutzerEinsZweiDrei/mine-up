.class public Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;
.super Ljava/lang/Object;
.source "ScanRecordImplNativeWrapper.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/scan/ScanRecord;


# instance fields
.field private final nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

.field private final scanRecordParser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/ScanRecord;Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 25
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->scanRecordParser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    return-void
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getAdvertiseFlags()I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object p1

    return-object p1
.end method

.method public getServiceSolicitationUuids()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->scanRecordParser:Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;->parseFromBytes([B)Lcom/polidea/rxandroidble2/scan/ScanRecord;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/scan/ScanRecord;->getServiceSolicitationUuids()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplNativeWrapper;->nativeScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getTxPowerLevel()I

    move-result v0

    return v0
.end method
