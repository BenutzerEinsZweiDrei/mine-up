.class public Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToAndroidImageFormat(I)I
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const v2, 0x32315659

    const/16 v3, 0x11

    const/16 v4, 0x13

    if-lt v0, v4, :cond_3

    if-eq p0, v3, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v0

    :cond_2
    return v3

    :cond_3
    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    return v3
.end method

.method public static convertToMVRotation(I)I
    .locals 3

    if-eqz p0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    .line 1
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method static zza(Lcom/google/android/odml/image/MlImage;)Lcom/google/mlkit/vision/common/InputImage;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getContainedImageProperties()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/odml/image/ImageProperties;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/odml/image/ImageProperties;->getStorageType()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x13

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    return-object v5

    .line 17
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    .line 3
    invoke-static {p0}, Lcom/google/android/odml/image/MediaImageExtractor;->extract(Lcom/google/android/odml/image/MlImage;)Landroid/media/Image;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v4

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    :goto_0
    move v9, v0

    .line 7
    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/4 v4, 0x5

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 9
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getHeight()I

    move-result v7

    .line 10
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getWidth()I

    move-result v8

    .line 11
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getRotation()I

    move-result v10

    .line 12
    invoke-static/range {v3 .. v10}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->zzb(IIJIIII)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getRotation()I

    move-result p0

    invoke-static {v2, p0}, Lcom/google/mlkit/vision/common/InputImage;->fromMediaImage(Landroid/media/Image;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v5

    .line 14
    :cond_3
    invoke-static {p0}, Lcom/google/android/odml/image/ByteBufferExtractor;->extract(Lcom/google/android/odml/image/MlImage;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/google/android/odml/image/ImageProperties;->getImageFormat()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    move-object v0, v5

    goto :goto_1

    :cond_4
    const v0, 0x32315659

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v0, 0x11

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 20
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getHeight()I

    move-result v10

    .line 21
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getWidth()I

    move-result v11

    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    .line 23
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getRotation()I

    move-result v13

    .line 24
    invoke-static/range {v6 .. v13}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->zzb(IIJIIII)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getWidth()I

    move-result v2

    .line 26
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getHeight()I

    move-result v3

    .line 27
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getRotation()I

    move-result p0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/mlkit/vision/common/InputImage;->fromByteBuffer(Ljava/nio/ByteBuffer;IIII)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v5

    .line 30
    :cond_7
    invoke-static {p0}, Lcom/google/android/odml/image/BitmapExtractor;->extract(Lcom/google/android/odml/image/MlImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 32
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getHeight()I

    move-result v9

    .line 33
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getWidth()I

    move-result v10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v4, :cond_8

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    goto :goto_2

    .line 35
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    :goto_2
    move v11, v1

    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getRotation()I

    move-result v12

    .line 37
    invoke-static/range {v5 .. v12}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->zzb(IIJIIII)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/odml/image/MlImage;->getRotation()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(IIJIIII)V
    .locals 10

    const-string v0, "vision-common"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    move-result-object v1

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;IIJIIII)V

    return-void
.end method
