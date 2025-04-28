.class public Lcom/bleplx/converter/DeviceToJsObjectConverter;
.super Lcom/bleplx/converter/JSObjectConverter;
.source "DeviceToJsObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bleplx/converter/DeviceToJsObjectConverter$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bleplx/converter/JSObjectConverter<",
        "Lcom/polidea/multiplatformbleadapter/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/bleplx/converter/JSObjectConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic toJSCallback(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/bleplx/converter/JSObjectConverter;->toJSCallback(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p1

    return-object p1
.end method

.method public toJSObject(Lcom/polidea/multiplatformbleadapter/Device;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 29
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getRssi()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rssi"

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getRssi()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    .line 37
    :goto_0
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getMtu()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mtu"

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Device;->getMtu()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    :goto_1
    const-string p1, "manufacturerData"

    .line 44
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string p1, "serviceData"

    .line 45
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string p1, "serviceUUIDs"

    .line 46
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string p1, "localName"

    .line 47
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string/jumbo p1, "txPowerLevel"

    .line 48
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string p1, "solicitedServiceUUIDs"

    .line 49
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string p1, "isConnectable"

    .line 50
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    const-string p1, "overflowServiceUUIDs"

    .line 51
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toJSObject(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 8
    check-cast p1, Lcom/polidea/multiplatformbleadapter/Device;

    invoke-virtual {p0, p1}, Lcom/bleplx/converter/DeviceToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Device;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method
