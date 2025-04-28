.class public Lorg/reactnative/frame/RNFrameFactory;
.super Ljava/lang/Object;
.source "RNFrameFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFrame(Landroid/graphics/Bitmap;)Lorg/reactnative/frame/RNFrame;
    .locals 3

    .line 19
    new-instance v0, Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/reactnative/camera/utils/ImageDimensions;-><init>(II)V

    const/4 v1, 0x0

    .line 20
    invoke-static {p0, v1}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    .line 21
    new-instance v1, Lorg/reactnative/frame/RNFrame;

    invoke-direct {v1, p0, v0}, Lorg/reactnative/frame/RNFrame;-><init>(Lcom/google/mlkit/vision/common/InputImage;Lorg/reactnative/camera/utils/ImageDimensions;)V

    return-object v1
.end method

.method public static buildFrame([BIII)Lorg/reactnative/frame/RNFrame;
    .locals 2

    .line 12
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 13
    new-instance v0, Lorg/reactnative/camera/utils/ImageDimensions;

    invoke-direct {v0, p1, p2, p3}, Lorg/reactnative/camera/utils/ImageDimensions;-><init>(III)V

    const/16 v1, 0x11

    .line 14
    invoke-static {p0, p1, p2, p3, v1}, Lcom/google/mlkit/vision/common/InputImage;->fromByteBuffer(Ljava/nio/ByteBuffer;IIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    .line 15
    new-instance p1, Lorg/reactnative/frame/RNFrame;

    invoke-direct {p1, p0, v0}, Lorg/reactnative/frame/RNFrame;-><init>(Lcom/google/mlkit/vision/common/InputImage;Lorg/reactnative/camera/utils/ImageDimensions;)V

    return-object p1
.end method
