.class public Lcom/polidea/multiplatformbleadapter/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"


# instance fields
.field private advertisementData:Lcom/polidea/multiplatformbleadapter/AdvertisementData;

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private isConnectable:Z

.field private mtu:I

.field private overflowServiceUUIDs:[Ljava/util/UUID;

.field private rssi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/util/UUID;Lcom/polidea/multiplatformbleadapter/AdvertisementData;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceName:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->rssi:I

    .line 28
    iput p4, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->mtu:I

    .line 29
    iput-boolean p5, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->isConnectable:Z

    .line 30
    iput-object p6, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->overflowServiceUUIDs:[Ljava/util/UUID;

    .line 31
    iput-object p7, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->advertisementData:Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    check-cast p1, Lcom/polidea/multiplatformbleadapter/ScanResult;

    .line 97
    iget v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->rssi:I

    iget v2, p1, Lcom/polidea/multiplatformbleadapter/ScanResult;->rssi:I

    if-eq v1, v2, :cond_2

    return v0

    .line 98
    :cond_2
    iget v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->mtu:I

    iget v2, p1, Lcom/polidea/multiplatformbleadapter/ScanResult;->mtu:I

    if-eq v1, v2, :cond_3

    return v0

    .line 99
    :cond_3
    iget-boolean v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->isConnectable:Z

    iget-boolean v2, p1, Lcom/polidea/multiplatformbleadapter/ScanResult;->isConnectable:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 101
    :cond_5
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->overflowServiceUUIDs:[Ljava/util/UUID;

    iget-object v2, p1, Lcom/polidea/multiplatformbleadapter/ScanResult;->overflowServiceUUIDs:[Ljava/util/UUID;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->advertisementData:Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    iget-object p1, p1, Lcom/polidea/multiplatformbleadapter/ScanResult;->advertisementData:Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    return v0
.end method

.method public getAdvertisementData()Lcom/polidea/multiplatformbleadapter/AdvertisementData;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->advertisementData:Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->mtu:I

    return v0
.end method

.method public getOverflowServiceUUIDs()[Ljava/util/UUID;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->overflowServiceUUIDs:[Ljava/util/UUID;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->rssi:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->rssi:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->mtu:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-boolean v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->isConnectable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->overflowServiceUUIDs:[Ljava/util/UUID;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->advertisementData:Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->isConnectable:Z

    return v0
.end method

.method public setAdvertisementData(Lcom/polidea/multiplatformbleadapter/AdvertisementData;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->advertisementData:Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    return-void
.end method

.method public setConnectable(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->isConnectable:Z

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setMtu(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->mtu:I

    return-void
.end method

.method public setOverflowServiceUUIDs([Ljava/util/UUID;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->overflowServiceUUIDs:[Ljava/util/UUID;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->rssi:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanResult{deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mtu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isConnectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->isConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overflowServiceUUIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->overflowServiceUUIDs:[Ljava/util/UUID;

    .line 128
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", advertisementData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/ScanResult;->advertisementData:Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
