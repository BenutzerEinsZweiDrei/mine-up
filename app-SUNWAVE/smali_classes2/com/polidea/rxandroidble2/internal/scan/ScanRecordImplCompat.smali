.class public Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;
.super Ljava/lang/Object;
.source "ScanRecordImplCompat.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/scan/ScanRecord;


# instance fields
.field private final advertiseFlags:I

.field private final bytes:[B

.field private final deviceName:Ljava/lang/String;

.field private final manufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final serviceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final serviceSolicitationUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final txPowerLevel:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->serviceUuids:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->serviceSolicitationUuids:Ljava/util/List;

    .line 53
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->manufacturerSpecificData:Landroid/util/SparseArray;

    .line 54
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->serviceData:Ljava/util/Map;

    .line 55
    iput-object p7, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->deviceName:Ljava/lang/String;

    .line 56
    iput p5, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->advertiseFlags:I

    .line 57
    iput p6, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->txPowerLevel:I

    .line 58
    iput-object p8, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->bytes:[B

    return-void
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->advertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->bytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->deviceName:Ljava/lang/String;

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

    .line 92
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->manufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->manufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

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

    .line 108
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->serviceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->serviceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getServiceSolicitationUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->serviceSolicitationUuids:Ljava/util/List;

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

    .line 75
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->serviceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanRecordImplCompat;->txPowerLevel:I

    return v0
.end method
