.class public Lio/codebakery/imagerotate/ImageRotateModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ImageRotateModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;,
        Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;
    }
.end annotation


# static fields
.field private static final COMPRESS_QUALITY:I = 0x5a

.field private static final EXIF_ATTRIBUTES:[Ljava/lang/String;

.field private static final LOCAL_URI_PREFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "ReactNative_rotated_image_"


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v0, "file://"

    const-string v1, "content://"

    .line 45
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/codebakery/imagerotate/ImageRotateModule;->LOCAL_URI_PREFIXES:Ljava/util/List;

    const-string v1, "FNumber"

    const-string v2, "DateTime"

    const-string v3, "DateTimeDigitized"

    const-string v4, "ExposureTime"

    const-string v5, "Flash"

    const-string v6, "FocalLength"

    const-string v7, "GPSAltitude"

    const-string v8, "GPSAltitudeRef"

    const-string v9, "GPSDateStamp"

    const-string v10, "GPSLatitude"

    const-string v11, "GPSLatitudeRef"

    const-string v12, "GPSLongitude"

    const-string v13, "GPSLongitudeRef"

    const-string v14, "GPSProcessingMethod"

    const-string v15, "GPSTimeStamp"

    const-string v16, "ImageLength"

    const-string v17, "ImageWidth"

    const-string v18, "ISOSpeedRatings"

    const-string v19, "Make"

    const-string v20, "Model"

    const-string v21, "Orientation"

    const-string v22, "SubSecTime"

    const-string v23, "SubSecTimeDigitized"

    const-string v24, "SubSecTimeOriginal"

    const-string v25, "WhiteBalance"

    .line 53
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/codebakery/imagerotate/ImageRotateModule;->EXIF_ATTRIBUTES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 83
    new-instance p1, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;

    invoke-virtual {p0}, Lio/codebakery/imagerotate/ImageRotateModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Lio/codebakery/imagerotate/ImageRotateModule$1;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 0

    .line 43
    invoke-static {p0}, Lio/codebakery/imagerotate/ImageRotateModule;->isLocalUri(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p0, p1}, Lio/codebakery/imagerotate/ImageRotateModule;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2}, Lio/codebakery/imagerotate/ImageRotateModule;->writeCompressedBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p0, p1, p2}, Lio/codebakery/imagerotate/ImageRotateModule;->copyExif(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    return-void
.end method

.method private static copyExif(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-static {p0, p1}, Lio/codebakery/imagerotate/ImageRotateModule;->getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get real path for uri: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReactNative"

    invoke-static {p1, p0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_0
    new-instance p1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance p0, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 269
    sget-object p2, Lio/codebakery/imagerotate/ImageRotateModule;->EXIF_ATTRIBUTES:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 270
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 272
    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V

    return-void
.end method

.method private static createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No cache directory available"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    :cond_2
    move-object v0, p0

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    goto :goto_1

    .line 362
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 365
    :goto_1
    invoke-static {p1}, Lio/codebakery/imagerotate/ImageRotateModule;->getFileExtensionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReactNative_rotated_image_"

    invoke-static {p1, p0, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getCompressFormatForType(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string v0, "image/png"

    .line 321
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    :cond_0
    const-string v0, "image/webp"

    .line 324
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 325
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 327
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method private static getFileExtensionForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "image/png"

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ".png"

    return-object p0

    :cond_0
    const-string v0, "image/webp"

    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ".webp"

    return-object p0

    :cond_1
    const-string p0, ".jpg"

    return-object p0
.end method

.method private static getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 279
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 283
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 286
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 287
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 294
    throw p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isLocalUri(Ljava/lang/String;)Z
    .locals 2

    .line 302
    sget-object v0, Lio/codebakery/imagerotate/ImageRotateModule;->LOCAL_URI_PREFIXES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static writeCompressedBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 334
    :try_start_0
    invoke-static {p1}, Lio/codebakery/imagerotate/ImageRotateModule;->getCompressFormatForType(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    const/16 p2, 0x5a

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 339
    throw p0
.end method


# virtual methods
.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageRotateModule"

    return-object v0
.end method

.method public onCatalystInstanceDestroy()V
    .locals 3

    .line 98
    new-instance v0, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;

    invoke-virtual {p0}, Lio/codebakery/imagerotate/ImageRotateModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Lio/codebakery/imagerotate/ImageRotateModule$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public rotateImage(Ljava/lang/String;FLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;

    .line 162
    invoke-virtual {p0}, Lio/codebakery/imagerotate/ImageRotateModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;FLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lio/codebakery/imagerotate/ImageRotateModule$1;)V

    .line 168
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 158
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string p2, "Please specify a URI"

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
