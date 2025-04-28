.class public Lcom/polidea/multiplatformbleadapter/utils/mapper/RxScanResultToScanResultMapper;
.super Ljava/lang/Object;
.source "RxScanResultToScanResultMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lcom/polidea/rxandroidble2/scan/ScanResult;)Lcom/polidea/multiplatformbleadapter/ScanResult;
    .locals 9

    .line 10
    new-instance v8, Lcom/polidea/multiplatformbleadapter/ScanResult;

    .line 11
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2/RxBleDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/polidea/rxandroidble2/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanResult;->getRssi()I

    move-result v3

    .line 17
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/scan/ScanResult;->getScanRecord()Lcom/polidea/rxandroidble2/scan/ScanRecord;

    move-result-object p1

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/scan/ScanRecord;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->parseScanResponseData([B)Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    move-result-object v7

    const/16 v4, 0x17

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/multiplatformbleadapter/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/util/UUID;Lcom/polidea/multiplatformbleadapter/AdvertisementData;)V

    return-object v8
.end method
