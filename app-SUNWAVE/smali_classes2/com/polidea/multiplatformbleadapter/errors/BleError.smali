.class public Lcom/polidea/multiplatformbleadapter/errors/BleError;
.super Ljava/lang/Throwable;
.source "BleError.java"


# instance fields
.field public androidCode:Ljava/lang/Integer;

.field public characteristicUUID:Ljava/lang/String;

.field public descriptorUUID:Ljava/lang/String;

.field public deviceID:Ljava/lang/String;

.field public errorCode:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

.field public internalMessage:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public serviceUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->errorCode:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    .line 17
    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->reason:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->errorCode:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", android code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceUuid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", characteristicUuid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", descriptorUuid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->descriptorUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internalMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/errors/BleError;->internalMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
