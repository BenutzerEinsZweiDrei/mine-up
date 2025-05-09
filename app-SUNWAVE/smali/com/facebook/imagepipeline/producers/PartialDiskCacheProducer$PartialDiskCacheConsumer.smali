.class Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PartialDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartialDiskCacheConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final READ_SIZE:I = 0x4000


# instance fields
.field private final mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

.field private final mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final mIsDiskCacheEnabledForWrite:Z

.field private final mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPartialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

.field private final mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/image/EncodedImage;Z)V
    .locals 0
    .param p6    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "consumer",
            "defaultBufferedDiskCache",
            "partialImageCacheKey",
            "pooledByteBufferFactory",
            "byteArrayPool",
            "partialEncodedImageFromCache",
            "isDiskCacheEnabledForWrite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBufferFactory;",
            "Lcom/facebook/common/memory/ByteArrayPool;",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Z)V"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 262
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 263
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 264
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 265
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    .line 266
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 267
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mIsDiskCacheEnabledForWrite:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/image/EncodedImage;ZLcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$1;)V
    .locals 0

    .line 241
    invoke-direct/range {p0 .. p7}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/image/EncodedImage;Z)V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lcom/facebook/common/memory/ByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v2, p3

    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 327
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    if-lez v4, :cond_0

    .line 329
    invoke-virtual {p2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 334
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {p2, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    .line 335
    throw p1

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {p1, v0}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    if-gtz v2, :cond_2

    return-void

    .line 338
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 342
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    const/4 p3, 0x1

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    const-string p3, "Failed to read %d bytes - finished %d short"

    .line 339
    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private merge(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/common/memory/PooledByteBufferOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "initialData",
            "remainingData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/common/BytesRange;

    iget v0, v0, Lcom/facebook/imagepipeline/common/BytesRange;->from:I

    .line 310
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v1

    add-int/2addr v1, v0

    .line 311
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 312
    invoke-interface {v2, v1}, Lcom/facebook/common/memory/PooledByteBufferFactory;->newOutputStream(I)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v1

    .line 315
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStreamOrThrow()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 316
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStreamOrThrow()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result p2

    invoke-direct {p0, p1, v1, p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-object v1
.end method

.method private sendFinalResultToConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pooledOutputStream"
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    const/4 v0, 0x0

    .line 352
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v1, p1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetaData()V

    .line 354
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 357
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 356
    :goto_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 357
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 358
    throw v0
.end method


# virtual methods
.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 272
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->isNotLast(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    :try_start_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    .line 282
    invoke-direct {p0, p2, p1}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->merge(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object p2

    .line 283
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->sendFinalResultToConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 290
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "PartialDiskCacheProducer"

    const-string v1, "Error while merging image data"

    .line 286
    invoke-static {v0, v1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :goto_1
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->remove(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    goto :goto_3

    .line 289
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 290
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialEncodedImageFromCache:Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    .line 291
    throw p2

    .line 294
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mIsDiskCacheEnabledForWrite:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 295
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->statusHasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->isLast(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 298
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v1, :cond_2

    .line 299
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->mPartialImageCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 300
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    goto :goto_3

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 241
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PartialDiskCacheProducer$PartialDiskCacheConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
