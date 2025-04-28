.class public Lcom/polidea/multiplatformbleadapter/Service;
.super Ljava/lang/Object;
.source "Service.java"


# instance fields
.field private final btGattService:Landroid/bluetooth/BluetoothGattService;

.field private final deviceID:Ljava/lang/String;

.field private final id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/polidea/multiplatformbleadapter/Service;->id:I

    .line 21
    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/Service;->deviceID:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/polidea/multiplatformbleadapter/Service;->btGattService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method


# virtual methods
.method public getCharacteristicByUUID(Ljava/util/UUID;)Lcom/polidea/multiplatformbleadapter/Characteristic;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/Service;->btGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    new-instance v0, Lcom/polidea/multiplatformbleadapter/Characteristic;

    invoke-direct {v0, p0, p1}, Lcom/polidea/multiplatformbleadapter/Characteristic;-><init>(Lcom/polidea/multiplatformbleadapter/Service;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-object v0
.end method

.method public getCharacteristics()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/polidea/multiplatformbleadapter/Characteristic;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/Service;->btGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/Service;->btGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 51
    new-instance v3, Lcom/polidea/multiplatformbleadapter/Characteristic;

    invoke-direct {v3, p0, v2}, Lcom/polidea/multiplatformbleadapter/Characteristic;-><init>(Lcom/polidea/multiplatformbleadapter/Service;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/Service;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/polidea/multiplatformbleadapter/Service;->id:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/Service;->btGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/Service;->btGattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
