.class public Lcom/bleplx/converter/DescriptorToJsObjectConverter;
.super Lcom/bleplx/converter/JSObjectConverter;
.source "DescriptorToJsObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bleplx/converter/DescriptorToJsObjectConverter$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bleplx/converter/JSObjectConverter<",
        "Lcom/polidea/multiplatformbleadapter/Descriptor;",
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

.method public toJSObject(Lcom/polidea/multiplatformbleadapter/Descriptor;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 24
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getId()I

    move-result v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 26
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getCharacteristicId()I

    move-result v1

    const-string v2, "characteristicID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getCharacteristicUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "characteristicUUID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getServiceId()I

    move-result v1

    const-string v2, "serviceID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getServiceUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceUUID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getValue()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->setValueFromCache()V

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getValue()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Descriptor;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/utils/Base64Converter;->encode([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v1, "value"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toJSObject(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 9
    check-cast p1, Lcom/polidea/multiplatformbleadapter/Descriptor;

    invoke-virtual {p0, p1}, Lcom/bleplx/converter/DescriptorToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Descriptor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method
