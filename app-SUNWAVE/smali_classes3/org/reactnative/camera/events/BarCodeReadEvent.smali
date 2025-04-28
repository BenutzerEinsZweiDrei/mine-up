.class public Lorg/reactnative/camera/events/BarCodeReadEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "BarCodeReadEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lorg/reactnative/camera/events/BarCodeReadEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$SynchronizedPool<",
            "Lorg/reactnative/camera/events/BarCodeReadEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBarCode:Lcom/google/zxing/Result;

.field private mCompressedImage:[B

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lorg/reactnative/camera/events/BarCodeReadEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/facebook/react/uimanager/events/Event;-><init>()V

    return-void
.end method

.method private init(ILcom/google/zxing/Result;II[B)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/events/Event;->init(I)V

    .line 40
    iput-object p2, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mBarCode:Lcom/google/zxing/Result;

    .line 41
    iput p3, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mWidth:I

    .line 42
    iput p4, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mHeight:I

    .line 43
    iput-object p5, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mCompressedImage:[B

    return-void
.end method

.method public static obtain(ILcom/google/zxing/Result;II[B)Lorg/reactnative/camera/events/BarCodeReadEvent;
    .locals 7

    .line 30
    sget-object v0, Lorg/reactnative/camera/events/BarCodeReadEvent;->EVENTS_POOL:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactnative/camera/events/BarCodeReadEvent;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/reactnative/camera/events/BarCodeReadEvent;

    invoke-direct {v0}, Lorg/reactnative/camera/events/BarCodeReadEvent;-><init>()V

    :cond_0
    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 34
    invoke-direct/range {v1 .. v6}, Lorg/reactnative/camera/events/BarCodeReadEvent;->init(ILcom/google/zxing/Result;II[B)V

    return-object v0
.end method

.method private serializeEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 10

    .line 70
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lorg/reactnative/camera/events/BarCodeReadEvent;->getViewTag()I

    move-result v2

    const-string v3, "target"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 74
    iget-object v2, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mBarCode:Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mBarCode:Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 77
    array-length v4, v2

    if-lez v4, :cond_1

    .line 78
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 79
    array-length v5, v2

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_0

    aget-byte v7, v2, v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 80
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v8, v3

    const-string v7, "%02x"

    invoke-virtual {v4, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "rawData"

    invoke-interface {v0, v5, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 86
    :cond_1
    iget-object v2, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mBarCode:Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "type"

    invoke-interface {v0, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 88
    iget-object v4, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mBarCode:Lcom/google/zxing/Result;

    invoke-virtual {v4}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 89
    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    if-eqz v6, :cond_2

    .line 91
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    .line 92
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    const-string v9, "x"

    invoke-interface {v7, v9, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    const-string v8, "y"

    invoke-interface {v7, v8, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v2, v7}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "origin"

    .line 98
    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 99
    iget v2, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mHeight:I

    const-string v3, "height"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 100
    iget v2, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mWidth:I

    const-string v3, "width"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v2, "bounds"

    .line 101
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 102
    iget-object v1, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mCompressedImage:[B

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    .line 103
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lorg/reactnative/camera/events/BarCodeReadEvent;->getViewTag()I

    move-result v0

    invoke-virtual {p0}, Lorg/reactnative/camera/events/BarCodeReadEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/reactnative/camera/events/BarCodeReadEvent;->serializeEventData()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public getCoalescingKey()S
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/reactnative/camera/events/BarCodeReadEvent;->mBarCode:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit16 v0, v0, 0x7fff

    int-to-short v0, v0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lorg/reactnative/camera/CameraViewManager$Events;->EVENT_ON_BAR_CODE_READ:Lorg/reactnative/camera/CameraViewManager$Events;

    invoke-virtual {v0}, Lorg/reactnative/camera/CameraViewManager$Events;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
