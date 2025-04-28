.class public Lcom/bleplx/converter/ServiceToJsObjectConverter;
.super Lcom/bleplx/converter/JSObjectConverter;
.source "ServiceToJsObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bleplx/converter/ServiceToJsObjectConverter$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bleplx/converter/JSObjectConverter<",
        "Lcom/polidea/multiplatformbleadapter/Service;",
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

.method public toJSObject(Lcom/polidea/multiplatformbleadapter/Service;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 19
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Service;->getId()I

    move-result v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Service;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/polidea/multiplatformbleadapter/utils/UUIDConverter;->fromUUID(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Service;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceID"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/polidea/multiplatformbleadapter/Service;->isPrimary()Z

    move-result p1

    const-string v1, "isPrimary"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public bridge synthetic toJSObject(Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 8
    check-cast p1, Lcom/polidea/multiplatformbleadapter/Service;

    invoke-virtual {p0, p1}, Lcom/bleplx/converter/ServiceToJsObjectConverter;->toJSObject(Lcom/polidea/multiplatformbleadapter/Service;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method
