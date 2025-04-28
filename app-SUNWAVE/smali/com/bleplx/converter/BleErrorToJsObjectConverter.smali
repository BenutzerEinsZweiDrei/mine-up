.class public Lcom/bleplx/converter/BleErrorToJsObjectConverter;
.super Ljava/lang/Object;
.source "BleErrorToJsObjectConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ",\""

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\":"

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string p2, "null"

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p2, "\""

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method public toJSCallback(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 1

    .line 12
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 13
    invoke-virtual {p0, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    return-object v0
.end method

.method public toJs(Lcom/polidea/multiplatformbleadapter/errors/BleError;)Ljava/lang/String;
    .locals 4

    .line 19
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"errorCode\":"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->errorCode:Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;

    iget v1, v1, Lcom/polidea/multiplatformbleadapter/errors/BleErrorCode;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"attErrorCode\":"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    const/16 v2, 0x80

    const-string v3, "null"

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_1

    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ",\"iosErrorCode\": null"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\"androidErrorCode\":"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_2

    goto :goto_2

    .line 39
    :cond_2
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->androidCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 37
    :cond_3
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_3
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->reason:Ljava/lang/String;

    const-string v2, "reason"

    invoke-direct {p0, v0, v2, v1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->deviceID:Ljava/lang/String;

    const-string v2, "deviceID"

    invoke-direct {p0, v0, v2, v1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->serviceUUID:Ljava/lang/String;

    const-string v2, "serviceUUID"

    invoke-direct {p0, v0, v2, v1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->characteristicUUID:Ljava/lang/String;

    const-string v2, "characteristicUUID"

    invoke-direct {p0, v0, v2, v1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->descriptorUUID:Ljava/lang/String;

    const-string v2, "descriptorUUID"

    invoke-direct {p0, v0, v2, v1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p1, Lcom/polidea/multiplatformbleadapter/errors/BleError;->internalMessage:Ljava/lang/String;

    const-string v1, "internalMessage"

    invoke-direct {p0, v0, v1, p1}, Lcom/bleplx/converter/BleErrorToJsObjectConverter;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "}"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
