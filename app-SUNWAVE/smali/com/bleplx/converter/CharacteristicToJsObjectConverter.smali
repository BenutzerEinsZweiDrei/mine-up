.class public Lcom/bleplx/converter/CharacteristicToJsObjectConverter;
.super Lcom/bleplx/converter/JSObjectConverter;
.source "CharacteristicToJsObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bleplx/converter/CharacteristicToJsObjectConverter$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bleplx/converter/JSObjectConverter<",
        "Lcom/polidea/multiplatformbleadapter/Characteristic;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/bleplx/converter/JSObjectConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic toJSCallback(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/bleplx/converter/JSObjectConverter;->toJSCallback(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1
.end method

.method public toJSObject(Lcom/polidea/multiplatformbleadapter/Characteristic;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 28
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getId()I

    move-result v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getServiceID()I

    move-result v1

    const-string v2, "serviceID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getServiceUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceUUID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->isReadable()Z

    move-result v1

    const-string v2, "isReadable"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->isWritableWithResponse()Z

    move-result v1

    const-string v2, "isWritableWithResponse"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->isWritableWithoutResponse()Z

    move-result v1

    const-string v2, "isWritableWithoutResponse"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->isNotifiable()Z

    move-result v1

    const-string v2, "isNotifiable"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->isIndicatable()Z

    move-result v1

    const-string v2, "isIndicatable"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->isNotifying()Z

    move-result v1

    const-string v2, "isNotifying"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getValue()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/Base64Converter;->encode([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v1, "value"

    .line 41
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toJSObject(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 9
    check-cast p1, Lcom/polidea/multiplatformbleadapter/Characteristic;

    invoke-virtual {p0, p1}, Lcom/bleplx/converter/CharacteristicToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Characteristic;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method
