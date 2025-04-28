.class public Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;
.super Landroid/os/AsyncTask;
.source "ResolveTakenPictureAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/facebook/react/bridge/WritableMap;",
        ">;"
    }
.end annotation


# static fields
.field private static final ERROR_TAG:Ljava/lang/String; = "E_TAKING_PICTURE_FAILED"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCacheDirectory:Ljava/io/File;

.field private mDeviceOrientation:I

.field private mImageData:[B

.field private mOptions:Lcom/facebook/react/bridge/ReadableMap;

.field private mPictureSavedDelegate:Lorg/reactnative/camera/tasks/PictureSavedDelegate;

.field private mPromise:Lcom/facebook/react/bridge/Promise;

.field private mSoftwareRotation:I


# direct methods
.method public constructor <init>([BLcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReadableMap;Ljava/io/File;IILorg/reactnative/camera/tasks/PictureSavedDelegate;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p2, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    .line 39
    iput-object p3, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    .line 40
    iput-object p1, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mImageData:[B

    .line 41
    iput-object p4, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mCacheDirectory:Ljava/io/File;

    .line 42
    iput p5, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mDeviceOrientation:I

    .line 43
    iput p6, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mSoftwareRotation:I

    .line 44
    iput-object p7, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mPictureSavedDelegate:Lorg/reactnative/camera/tasks/PictureSavedDelegate;

    return-void
.end method

.method private flipHorizontally(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 300
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 301
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getImagePath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "path"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mCacheDirectory:Ljava/io/File;

    const-string v1, ".jpg"

    invoke-static {v0, v1}, Lorg/reactnative/camera/utils/RNFileUtils;->getOutputFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageRotation(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    :goto_0
    return p1
.end method

.method private getQuality()I
    .locals 4

    .line 48
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "quality"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private loadBitmap()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mImageData:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to decode Image Bitmap"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, p2

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 296
    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 286
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 287
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 288
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private writeStreamToFile(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 336
    :try_start_0
    invoke-direct {p0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->getImagePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 345
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 348
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_0
    move-object v0, p1

    .line 340
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_0

    .line 345
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    return-object v1

    .line 353
    :cond_1
    throw v0

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_2

    .line 345
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    :cond_2
    :goto_3
    throw p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/facebook/react/bridge/WritableMap;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "mirrorImage"

    const-string v2, "fixOrientation"

    const-string v3, "exif"

    const-string v4, "E_TAKING_PICTURE_FAILED"

    const-string v5, "writeExif"

    const-string v6, "width"

    .line 63
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v7

    .line 71
    iget v8, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mDeviceOrientation:I

    const-string v9, "deviceOrientation"

    invoke-interface {v7, v9, v8}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 72
    iget-object v8, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v9, "orientation"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_0
    iget v8, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mDeviceOrientation:I

    :goto_0
    const-string v9, "pictureOrientation"

    invoke-interface {v7, v9, v8}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 82
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget-object v10, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mImageData:[B

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    iget v10, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mSoftwareRotation:I

    if-eqz v10, :cond_1

    .line 85
    invoke-direct/range {p0 .. p0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->loadBitmap()V

    .line 86
    iget-object v10, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    iget v11, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mSoftwareRotation:I

    invoke-direct {v1, v10, v11}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 90
    :cond_1
    iget-object v10, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v10, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v11, "Orientation"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_3

    :try_start_2
    iget-object v10, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v10, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v9}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 94
    invoke-virtual {v2, v11, v12}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_2

    .line 96
    invoke-direct {v1, v10}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->getImageRotation(I)I

    move-result v14

    if-eqz v14, :cond_2

    .line 97
    invoke-direct/range {p0 .. p0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->loadBitmap()V

    .line 98
    invoke-direct {v1, v10}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->getImageRotation(I)I

    move-result v10

    .line 99
    iget-object v14, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v14, v10}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    move v10, v13

    goto :goto_1

    :cond_2
    move v10, v12

    goto :goto_1

    :cond_3
    move v10, v12

    const/4 v2, 0x0

    .line 104
    :goto_1
    iget-object v14, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v14, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 105
    invoke-direct/range {p0 .. p0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->loadBitmap()V

    .line 106
    iget-object v14, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v15, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v15, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v1, v14, v15}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 109
    :cond_4
    iget-object v14, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v14, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v14, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    invoke-direct/range {p0 .. p0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->loadBitmap()V

    .line 111
    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->flipHorizontally(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    :cond_5
    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v13

    goto :goto_2

    :cond_6
    move v0, v12

    .line 122
    :goto_2
    iget-object v14, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v14, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x2

    if-eqz v14, :cond_9

    .line 123
    sget-object v14, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    iget-object v8, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v8, v5}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v8

    aget v8, v14, v8

    if-eq v8, v13, :cond_8

    if-eq v8, v15, :cond_7

    goto :goto_3

    .line 128
    :cond_7
    iget-object v8, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v8, v5}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    move v8, v13

    goto :goto_5

    .line 125
    :cond_8
    iget-object v8, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v8, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v8, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v8, v13

    :goto_4
    const/4 v5, 0x0

    :goto_5
    const-string v14, "height"

    if-nez v0, :cond_b

    if-eqz v8, :cond_a

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_9

    .line 140
    :cond_b
    :goto_6
    :try_start_3
    iget-object v15, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_d

    if-nez v5, :cond_d

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    if-nez v2, :cond_e

    .line 142
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v9}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 144
    :cond_e
    invoke-static {v2}, Lorg/reactnative/camera/RNCameraViewHelper;->getExifData(Landroidx/exifinterface/media/ExifInterface;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    if-eqz v5, :cond_f

    .line 147
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 152
    :cond_f
    :goto_8
    iget-object v15, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_10

    .line 153
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-interface {v2, v6, v15}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 154
    iget-object v15, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-interface {v2, v14, v15}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    if-eqz v10, :cond_10

    .line 157
    invoke-interface {v2, v11, v13}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    :cond_10
    if-eqz v0, :cond_11

    .line 163
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 164
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 165
    invoke-interface {v7, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 173
    :cond_11
    :goto_9
    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v3, "uri"

    const-string v10, "doNotSave"

    const-string v11, "base64"

    if-nez v0, :cond_16

    .line 176
    :try_start_4
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 177
    iput-boolean v13, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 178
    iget-object v2, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mImageData:[B

    array-length v13, v2

    invoke-static {v2, v12, v13, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 180
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-interface {v7, v6, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 181
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-interface {v7, v14, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 186
    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v10}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 189
    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 193
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 196
    iget-object v6, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mImageData:[B

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 197
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 198
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz v8, :cond_13

    if-eqz v5, :cond_13

    .line 203
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {v2, v5}, Lorg/reactnative/camera/RNCameraViewHelper;->setExifData(Landroidx/exifinterface/media/ExifInterface;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 205
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    goto :goto_a

    :cond_13
    if-nez v8, :cond_14

    .line 210
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {v2}, Lorg/reactnative/camera/RNCameraViewHelper;->clearExifData(Landroidx/exifinterface/media/ExifInterface;)V

    .line 212
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    .line 217
    :cond_14
    :goto_a
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-interface {v7, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_15
    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v11}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v11}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 222
    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mImageData:[B

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 228
    :cond_16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 229
    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-interface {v7, v14, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 232
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    iget-object v5, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct/range {p0 .. p0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->getQuality()I

    move-result v12

    invoke-virtual {v5, v6, v12, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 234
    iget-object v0, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v2, "Could not compress image to JPEG"

    invoke-interface {v0, v4, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 275
    :try_start_5
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_b
    const/4 v2, 0x0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 278
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :goto_c
    return-object v2

    .line 239
    :cond_17
    :try_start_6
    iget-object v5, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v5, v10}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v5, v10}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 240
    :cond_18
    invoke-direct {v1, v0}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->writeStreamToFile(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_19

    if-eqz v2, :cond_19

    .line 245
    new-instance v6, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v6, v5}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-static {v6, v2}, Lorg/reactnative/camera/RNCameraViewHelper;->setExifData(Landroidx/exifinterface/media/ExifInterface;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 247
    invoke-virtual {v6}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    .line 249
    :cond_19
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-interface {v7, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1a
    iget-object v2, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v11}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v11}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 275
    :cond_1b
    :goto_d
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 278
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    return-object v7

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v8, 0x0

    goto :goto_12

    :catch_4
    move-exception v0

    const/4 v9, 0x0

    .line 269
    :goto_f
    :try_start_8
    iget-object v2, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v3, "An unknown I/O exception has occurred."

    invoke-interface {v2, v4, v3, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v9, :cond_1c

    .line 275
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_11

    :catch_5
    move-exception v0

    const/4 v9, 0x0

    .line 265
    :goto_10
    :try_start_a
    iget-object v2, v1, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    const-string v3, "Documents directory of the app could not be found."

    invoke-interface {v2, v4, v3, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v9, :cond_1c

    .line 275
    :try_start_b
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 278
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c
    :goto_11
    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v8, v9

    :goto_12
    if-eqz v8, :cond_1d

    .line 275
    :try_start_c
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_13

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 278
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    :cond_1d
    :goto_13
    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 3

    .line 361
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 365
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "fastMode"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "id"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    .line 368
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 369
    iget-object p1, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mPictureSavedDelegate:Lorg/reactnative/camera/tasks/PictureSavedDelegate;

    invoke-interface {p1, v0}, Lorg/reactnative/camera/tasks/PictureSavedDelegate;->onPictureSaved(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->mPromise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/tasks/ResolveTakenPictureAsyncTask;->onPostExecute(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
