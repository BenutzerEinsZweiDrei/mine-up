.class public final Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
.super Ljava/lang/Object;
.source "ScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/scan/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceSolicitationUuid:Landroid/os/ParcelUuid;

.field private mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mServiceUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 545
    iput v0, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/polidea/rxandroidble2/scan/ScanFilter;
    .locals 14

    .line 737
    new-instance v13, Lcom/polidea/rxandroidble2/scan/ScanFilter;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    iget-object v6, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    iget-object v7, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v8, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceData:[B

    iget-object v9, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceDataMask:[B

    iget v10, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerId:I

    iget-object v11, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerData:[B

    iget-object v12, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerDataMask:[B

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/polidea/rxandroidble2/scan/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V

    return-object v13
.end method

.method public setDeviceAddress(Ljava/lang/String;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 3

    if-eqz p1, :cond_1

    .line 566
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid device address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setManufacturerData(I[B)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 0

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_1
    :goto_0
    iput p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerId:I

    .line 692
    iput-object p2, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerData:[B

    const/4 p1, 0x0

    .line 693
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setManufacturerData(I[B[B)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 2

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerDataMask:[B

    if-eqz v0, :cond_4

    .line 714
    iget-object v1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerData:[B

    if-eqz v1, :cond_3

    .line 720
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 721
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 725
    :cond_4
    :goto_1
    iput p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerId:I

    .line 726
    iput-object p2, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerData:[B

    .line 727
    iput-object p3, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 641
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 642
    iput-object p2, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceData:[B

    const/4 p1, 0x0

    .line 643
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    .line 639
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 2

    if-eqz p1, :cond_3

    .line 662
    iget-object v0, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceDataMask:[B

    if-eqz v0, :cond_2

    .line 663
    iget-object v1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceData:[B

    if-eqz v1, :cond_1

    .line 669
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for service data and service data mask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 664
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceData is null while serviceDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 674
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 675
    iput-object p2, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceData:[B

    .line 676
    iput-object p3, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    .line 660
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceSolicitationUuid(Landroid/os/ParcelUuid;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    const/4 p1, 0x0

    .line 604
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceSolicitationUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SolicitationUuid is null while SolicitationUuidMask is not null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 627
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceSolicitationUuid:Landroid/os/ParcelUuid;

    .line 628
    iput-object p2, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceSolicitationUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uuid is null while uuidMask is not null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 594
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 595
    iput-object p2, p0, Lcom/polidea/rxandroidble2/scan/ScanFilter$Builder;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method
