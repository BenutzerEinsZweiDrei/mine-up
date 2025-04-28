.class public Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;
.super Ljava/lang/Object;
.source "ErrorConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toError(ILjava/lang/String;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 1

    .line 154
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CONNECTION_STATE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne v0, p3, :cond_0

    .line 155
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p5, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceDisconnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p5, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    iput-object p4, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    return-object p3

    .line 158
    :cond_0
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->SERVICE_DISCOVERY:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne v0, p3, :cond_1

    .line 159
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p5, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServicesDiscoveryFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p5, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iput-object p4, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    return-object p3

    .line 162
    :cond_1
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-eq v0, p3, :cond_9

    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_CHANGED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne v0, p3, :cond_2

    goto/16 :goto_1

    .line 168
    :cond_2
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-eq v0, p3, :cond_8

    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CHARACTERISTIC_LONG_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-eq v0, p3, :cond_8

    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->RELIABLE_WRITE_COMPLETED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne v0, p3, :cond_3

    goto :goto_0

    .line 174
    :cond_3
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->DESCRIPTOR_READ:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne v0, p3, :cond_4

    .line 175
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, v0, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    iput-object p4, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    .line 177
    iput-object p5, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    .line 178
    iput-object p6, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    .line 179
    iput-object p7, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->descriptorUUID:Ljava/lang/String;

    return-object p3

    .line 181
    :cond_4
    sget-object v0, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->DESCRIPTOR_WRITE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne v0, p3, :cond_5

    .line 182
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v0, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DescriptorWriteFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, v0, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    iput-object p4, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    .line 184
    iput-object p5, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    .line 185
    iput-object p6, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    .line 186
    iput-object p7, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->descriptorUUID:Ljava/lang/String;

    return-object p3

    .line 188
    :cond_5
    sget-object p5, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->READ_RSSI:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne p5, p3, :cond_6

    .line 189
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p5, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceRSSIReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p5, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    iput-object p4, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    return-object p3

    .line 192
    :cond_6
    sget-object p5, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->ON_MTU_CHANGED:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    if-ne p5, p3, :cond_7

    .line 193
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p5, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceMTUChangeFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p5, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    iput-object p4, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    return-object p3

    .line 196
    :cond_7
    sget-object p3, Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;->CONNECTION_PRIORITY_CHANGE:Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    .line 200
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p4, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->UnknownError:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p4, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p3

    .line 169
    :cond_8
    :goto_0
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p7, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicWriteFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p7, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    iput-object p4, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    .line 171
    iput-object p5, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    .line 172
    iput-object p6, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    return-object p3

    .line 163
    :cond_9
    :goto_1
    new-instance p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object p7, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicReadFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p7, p2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    iput-object p4, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    .line 165
    iput-object p5, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    .line 166
    iput-object p6, p3, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    return-object p3
.end method

.method private toError(Lcom/polidea/rxandroidble2/exceptions/BleScanException;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 3

    .line 204
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->getReason()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 216
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ScanStartFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->LocationServicesDisabled:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 211
    :cond_1
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothUnauthorized:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 209
    :cond_2
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothUnsupported:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 207
    :cond_3
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->BluetoothPoweredOff:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleScanException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, v2}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public toError(Ljava/lang/Throwable;)Lcom/polidea/multiplatformbleadapter/errors/BleError;
    .locals 9

    .line 32
    instance-of v0, p1, Lcom/polidea/multiplatformbleadapter/exceptions/CannotMonitorCharacteristicException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/polidea/multiplatformbleadapter/exceptions/CannotMonitorCharacteristicException;

    .line 34
    invoke-virtual {v0}, Lcom/polidea/multiplatformbleadapter/exceptions/CannotMonitorCharacteristicException;->getCharacteristic()Lcom/polidea/multiplatformbleadapter/Characteristic;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {v0}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getServiceUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p1, v1, v2, v0}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cannotMonitorCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationTimedOut:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 51
    :cond_1
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleAlreadyConnectedException;

    if-eqz v0, :cond_2

    .line 53
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceAlreadyConnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 56
    :cond_2
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;

    if-eqz v0, :cond_3

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleCannotSetCharacteristicNotificationException;->getBluetoothGattCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p1, v1, v2, v0}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cannotMonitorCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    return-object p1

    .line 68
    :cond_3
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleCharacteristicNotFoundException;

    if-eqz v0, :cond_4

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/polidea/rxandroidble2/exceptions/BleCharacteristicNotFoundException;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleCharacteristicNotFoundException;->getCharacteristicUUID()Ljava/util/UUID;

    move-result-object v0

    .line 70
    new-instance v2, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v3, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->CharacteristicNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    invoke-static {v0}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    return-object v2

    .line 75
    :cond_4
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;

    if-eqz v0, :cond_5

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleConflictingNotificationAlreadySetException;->getCharacteristicUuid()Ljava/util/UUID;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v1, v0}, Lcom/polidea/multiplatformbleadapter/errors/BleErrorUtils;->cannotMonitorCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    return-object p1

    .line 81
    :cond_5
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

    if-eqz v0, :cond_6

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;

    .line 83
    new-instance v1, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->DeviceDisconnected:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget v3, v0, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;->state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    iget-object p1, v0, Lcom/polidea/rxandroidble2/exceptions/BleDisconnectedException;->bluetoothDeviceAddress:Ljava/lang/String;

    iput-object p1, v1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    return-object v1

    .line 88
    :cond_6
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    if-eqz v0, :cond_7

    .line 89
    check-cast p1, Lcom/polidea/rxandroidble2/exceptions/BleScanException;

    invoke-direct {p0, p1}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(Lcom/polidea/rxandroidble2/exceptions/BleScanException;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    return-object p1

    .line 92
    :cond_7
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleServiceNotFoundException;

    if-eqz v0, :cond_8

    .line 93
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->ServiceNotFound:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    check-cast p1, Lcom/polidea/rxandroidble2/exceptions/BleServiceNotFoundException;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleServiceNotFoundException;->getServiceUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    return-object v0

    .line 100
    :cond_8
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;

    if-eqz v0, :cond_9

    .line 101
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationTimedOut:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleGattCallbackTimeoutException;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 104
    :cond_9
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCannotStartException;

    if-eqz v0, :cond_a

    .line 105
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->OperationStartFailed:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCannotStartException;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2/exceptions/BleGattCannotStartException;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 108
    :cond_a
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;

    if-eqz v0, :cond_b

    .line 109
    move-object v0, p1

    check-cast v0, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;

    .line 110
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;->getStatus()I

    move-result v2

    .line 111
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;->getBleGattOperationType()Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    move-result-object v4

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    iget-object p1, v0, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 117
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, v0, Lcom/polidea/rxandroidble2/exceptions/BleGattCharacteristicException;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 118
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    .line 113
    invoke-direct/range {v1 .. v8}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(ILjava/lang/String;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    return-object p1

    .line 122
    :cond_b
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;

    if-eqz v0, :cond_c

    .line 123
    move-object v0, p1

    check-cast v0, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;

    .line 124
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;->getStatus()I

    move-result v2

    .line 125
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;->getBleGattOperationType()Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    move-result-object v4

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    iget-object p1, v0, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 131
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, v0, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 132
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, v0, Lcom/polidea/rxandroidble2/exceptions/BleGattDescriptorException;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 133
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    .line 127
    invoke-direct/range {v1 .. v8}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(ILjava/lang/String;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    return-object p1

    .line 136
    :cond_c
    instance-of v0, p1, Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    if-eqz v0, :cond_d

    .line 137
    move-object v0, p1

    check-cast v0, Lcom/polidea/rxandroidble2/exceptions/BleGattException;

    .line 138
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;->getStatus()I

    move-result v2

    .line 139
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;->getBleGattOperationType()Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;

    move-result-object v4

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/exceptions/BleGattException;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 141
    invoke-direct/range {v1 .. v8}, Lcom/polidea/multiplatformbleadapter/errors/ErrorConverter;->toError(ILjava/lang/String;Lcom/polidea/rxandroidble2/exceptions/BleGattOperationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/polidea/multiplatformbleadapter/errors/BleError;

    move-result-object p1

    return-object p1

    .line 150
    :cond_d
    new-instance v0, Lcom/polidea/multiplatformbleadapter/errors/BleError;

    sget-object v2, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->UnknownError:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1, v1}, Lcom/polidea/multiplatformbleadapter/errors/BleError;-><init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
