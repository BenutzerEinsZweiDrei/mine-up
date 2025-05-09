.class Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "EncodedMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodedMemoryCacheConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEncodedCacheEnabled:Z

.field private final mIsEncodedCacheEnabledForWrite:Z

.field private final mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedCacheKey:Lcom/facebook/cache/common/CacheKey;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/cache/common/CacheKey;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "consumer",
            "memoryCache",
            "requestedCacheKey",
            "isEncodedCacheEnabledForWrite",
            "encodedCacheEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/cache/common/CacheKey;",
            "ZZ)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 137
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 138
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mRequestedCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 139
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mIsEncodedCacheEnabledForWrite:Z

    .line 140
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mEncodedCacheEnabled:Z

    return-void
.end method


# virtual methods
.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .locals 3
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

    .line 146
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EncodedMemoryCacheProducer#onNewResultImpl"

    .line 147
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->isNotLast(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    .line 153
    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->statusHasAnyFlag(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 154
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getByteBufferRef()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 164
    :try_start_1
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mEncodedCacheEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mIsEncodedCacheEnabledForWrite:Z

    if-eqz v2, :cond_2

    .line 165
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->mRequestedCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-interface {v1, v2, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 168
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_4

    .line 173
    :try_start_3
    new-instance v0, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    .line 174
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->copyMetaDataFrom(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    :try_start_4
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 179
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 180
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    :try_start_6
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 189
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 190
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 183
    :try_start_7
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 184
    throw p1

    :catchall_1
    move-exception p1

    .line 176
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 177
    throw p1

    :catchall_2
    move-exception p1

    .line 168
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 169
    throw p1

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 189
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 190
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_5
    return-void

    .line 155
    :cond_6
    :goto_0
    :try_start_8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 190
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_7
    return-void

    :catchall_3
    move-exception p1

    .line 189
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 190
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 192
    :cond_8
    throw p1
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

    .line 122
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/EncodedMemoryCacheProducer$EncodedMemoryCacheConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
