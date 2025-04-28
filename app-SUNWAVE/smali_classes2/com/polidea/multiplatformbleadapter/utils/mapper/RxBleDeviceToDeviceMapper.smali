.class public Lcom/polidea/multiplatformbleadapter/utils/mapper/RxBleDeviceToDeviceMapper;
.super Ljava/lang/Object;
.source "RxBleDeviceToDeviceMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/rxandroidble2/RxBleConnection;)Lcom/polidea/multiplatformbleadapter/Device;
    .locals 2

    .line 13
    new-instance v0, Lcom/polidea/multiplatformbleadapter/Device;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/polidea/multiplatformbleadapter/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 15
    invoke-interface {p2}, Lcom/polidea/rxandroidble2/RxBleConnection;->getMtu()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/polidea/multiplatformbleadapter/Device;->setMtu(Ljava/lang/Integer;)V

    :cond_0
    return-object v0
.end method
