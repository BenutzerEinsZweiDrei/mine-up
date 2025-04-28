.class public Lcom/bleplx/converter/ScanResultToJsObjectConverter;
.super Lcom/bleplx/converter/JSObjectConverter;
.source "ScanResultToJsObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bleplx/converter/ScanResultToJsObjectConverter$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bleplx/converter/JSObjectConverter<",
        "Lcom/polidea/multiplatformbleadapter/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/bleplx/converter/JSObjectConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic toJSCallback(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/bleplx/converter/JSObjectConverter;->toJSCallback(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1
.end method

.method public toJSObject(Lcom/polidea/multiplatformbleadapter/ScanResult;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    .line 36
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/ScanResult;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/ScanResult;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/ScanResult;->getRssi()I

    move-result v1

    const-string v2, "rssi"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/ScanResult;->getMtu()I

    move-result v1

    const-string v2, "mtu"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/ScanResult;->getAdvertisementData()Lcom/polidea/multiplatformbleadapter/AdvertisementData;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getManufacturerData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getManufacturerData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/Base64Converter;->encode([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "manufacturerData"

    .line 43
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getServiceData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "serviceData"

    if-eqz v1, :cond_2

    .line 48
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getServiceData()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    invoke-static {v5}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/polidea/multiplatformbleadapter/utils/Base64Converter;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-interface {v1, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 55
    :cond_2
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 58
    :goto_2
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getServiceUUIDs()Ljava/util/List;

    move-result-object v1

    const-string v2, "serviceUUIDs"

    if-eqz v1, :cond_4

    .line 59
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getServiceUUIDs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 61
    invoke-static {v4}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_3

    .line 63
    :cond_3
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_4

    .line 65
    :cond_4
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 68
    :goto_4
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "localName"

    if-eqz v1, :cond_5

    .line 69
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 71
    :cond_5
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 74
    :goto_5
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getTxPowerLevel()Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "txPowerLevel"

    if-eqz v1, :cond_6

    .line 75
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getTxPowerLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 77
    :cond_6
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 80
    :goto_6
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getSolicitedServiceUUIDs()Ljava/util/List;

    move-result-object v1

    const-string v2, "solicitedServiceUUIDs"

    if-eqz v1, :cond_8

    .line 81
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/AdvertisementData;->getSolicitedServiceUUIDs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 83
    invoke-static {v3}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_7

    .line 85
    :cond_7
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_8

    .line 87
    :cond_8
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    :goto_8
    const-string p1, "isConnectable"

    .line 91
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string p1, "overflowServiceUUIDs"

    .line 92
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toJSObject(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 16
    check-cast p1, Lcom/polidea/multiplatformbleadapter/ScanResult;

    invoke-virtual {p0, p1}, Lcom/bleplx/converter/ScanResultToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/ScanResult;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method
