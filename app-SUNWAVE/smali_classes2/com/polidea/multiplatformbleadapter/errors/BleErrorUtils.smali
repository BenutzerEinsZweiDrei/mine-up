.class public Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;
.super Ljava/lang/Object;
.source "BleErrorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelled()Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 9
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationCancelled:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static cannotMonitorCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 74
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicNotifyChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    iput-object p1, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    .line 76
    iput-object p2, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    .line 77
    iput-object p3, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    return-object v0
.end method

.method public static characteristicNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 36
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    return-object v0
.end method

.method public static descriptorNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 49
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->descriptorUUID:Ljava/lang/String;

    return-object v0
.end method

.method public static descriptorWriteNotAllowed(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 62
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorWriteNotAllowed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->descriptorUUID:Ljava/lang/String;

    return-object v0
.end method

.method public static deviceNotConnected(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 30
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceNotConnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static deviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 24
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static deviceServicesNotDiscovered(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 82
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServicesNotDiscovered:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs invalidIdentifiers([Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->InvalidIdentifiers:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->internalMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static invalidWriteDataForCharacteristic(Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 42
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicInvalidDataFormat:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    iput-object p1, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    .line 44
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->internalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static invalidWriteDataForDescriptor(Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 55
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorInvalidDataFormat:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    iput-object p1, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->descriptorUUID:Ljava/lang/String;

    .line 57
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->internalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static serviceNotFound(Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 68
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServiceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    iput-object p0, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    return-object v0
.end method
