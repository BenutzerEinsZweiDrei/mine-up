.class public Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowDelay:Z

.field public mBitmapCloseableRefType:I

.field public mBitmapPrepareToDrawForPrefetch:Z

.field private mBitmapPrepareToDrawMaxSizeBytes:I

.field private mBitmapPrepareToDrawMinSizeBytes:I

.field private final mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

.field private mDecodeCancellationEnabled:Z

.field public mDownsampleIfLargeBitmap:Z

.field public mDownscaleFrameToDrawableDimensions:Z

.field public mEncodedCacheEnabled:Z

.field public mEnsureTranscoderLibraryLoaded:Z

.field public mExperimentalThreadHandoffQueueEnabled:Z

.field public mGingerbreadDecoderEnabled:Z

.field private mHandOffOnUiThreadOnly:Z

.field private mIsDiskCacheProbingEnabled:Z

.field private mIsEncodedMemoryCacheProbingEnabled:Z

.field private mKeepCancelledFetchAsLowPriority:Z

.field public mLazyDataSource:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMaxBitmapSize:I

.field public mMemoryType:J

.field private mNativeCodeDisabled:Z

.field private mPartialImageCachingEnabled:Z

.field private mProducerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public mShouldIgnoreCacheSizeMismatch:Z

.field private mShouldStoreCacheEntrySize:Z

.field public mSuppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackedKeysSize:I

.field private mUseBitmapPrepareToDraw:Z

.field private mUseDownsamplingRatioForResizing:Z

.field private mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mWebpSupportEnabled:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configBuilder"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpSupportEnabled:Z

    .line 245
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mDecodeCancellationEnabled:Z

    .line 247
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseDownsamplingRatioForResizing:Z

    .line 248
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseBitmapPrepareToDraw:Z

    .line 249
    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMinSizeBytes:I

    .line 250
    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMaxSizeBytes:I

    .line 251
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawForPrefetch:Z

    const/16 v1, 0x800

    .line 252
    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mMaxBitmapSize:I

    .line 253
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mNativeCodeDisabled:Z

    .line 254
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mPartialImageCachingEnabled:Z

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mSuppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    const-wide/16 v1, 0x0

    .line 262
    iput-wide v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mMemoryType:J

    const/4 v1, 0x1

    .line 265
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mEncodedCacheEnabled:Z

    .line 266
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mEnsureTranscoderLibraryLoaded:Z

    .line 267
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mIsEncodedMemoryCacheProbingEnabled:Z

    .line 268
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mIsDiskCacheProbingEnabled:Z

    const/16 v1, 0x14

    .line 269
    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mTrackedKeysSize:I

    .line 270
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mAllowDelay:Z

    .line 271
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mHandOffOnUiThreadOnly:Z

    .line 272
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mShouldStoreCacheEntrySize:Z

    .line 273
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mShouldIgnoreCacheSizeMismatch:Z

    .line 276
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpSupportEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mPartialImageCachingEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mProducerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mKeepCancelledFetchAsLowPriority:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mIsEncodedMemoryCacheProbingEnabled:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mIsDiskCacheProbingEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I
    .locals 0

    .line 240
    iget p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mTrackedKeysSize:I

    return p0
.end method

.method static synthetic access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mAllowDelay:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mHandOffOnUiThreadOnly:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mShouldStoreCacheEntrySize:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mDecodeCancellationEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/webp/WebpBitmapFactory;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseDownsamplingRatioForResizing:Z

    return p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseBitmapPrepareToDraw:Z

    return p0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I
    .locals 0

    .line 240
    iget p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMinSizeBytes:I

    return p0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I
    .locals 0

    .line 240
    iget p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMaxSizeBytes:I

    return p0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I
    .locals 0

    .line 240
    iget p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mMaxBitmapSize:I

    return p0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mNativeCodeDisabled:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
    .locals 2

    .line 483
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;)V

    return-object v0
.end method

.method public isPartialImageCachingEnabled()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mPartialImageCachingEnabled:Z

    return v0
.end method

.method public setAllowDelay(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowDelay"
        }
    .end annotation

    .line 478
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mAllowDelay:Z

    .line 479
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setBitmapCloseableRefType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapCloseableRefType"
        }
    .end annotation

    .line 417
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapCloseableRefType:I

    .line 418
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setBitmapPrepareToDraw(ZIIZ)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "useBitmapPrepareToDraw",
            "minBitmapSizeBytes",
            "maxBitmapSizeBytes",
            "preparePrefetch"
        }
    .end annotation

    .line 362
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseBitmapPrepareToDraw:Z

    .line 363
    iput p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMinSizeBytes:I

    .line 364
    iput p3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawMaxSizeBytes:I

    .line 365
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mBitmapPrepareToDrawForPrefetch:Z

    .line 366
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setDecodeCancellationEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodeCancellationEnabled"
        }
    .end annotation

    .line 328
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mDecodeCancellationEnabled:Z

    .line 329
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setDownsampleIfLargeBitmap(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downsampleIfLargeBitmap"
        }
    .end annotation

    .line 445
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mDownsampleIfLargeBitmap:Z

    .line 446
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setEncodedCacheEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedCacheEnabled"
        }
    .end annotation

    .line 450
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mEncodedCacheEnabled:Z

    .line 451
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setEnsureTranscoderLibraryLoaded(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ensureTranscoderLibraryLoaded"
        }
    .end annotation

    .line 456
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mEnsureTranscoderLibraryLoaded:Z

    .line 457
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setExperimentalMemoryType(J)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "MemoryType"
        }
    .end annotation

    .line 434
    iput-wide p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mMemoryType:J

    .line 435
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setExperimentalThreadHandoffQueueEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "experimentalThreadHandoffQueueEnabled"
        }
    .end annotation

    .line 429
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mExperimentalThreadHandoffQueueEnabled:Z

    .line 430
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setGingerbreadDecoderEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gingerbreadDecoderEnabled"
        }
    .end annotation

    .line 406
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mGingerbreadDecoderEnabled:Z

    .line 407
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setHandOffOnUiThreadOnly(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handOffOnUiThreadOnly"
        }
    .end annotation

    .line 280
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mHandOffOnUiThreadOnly:Z

    .line 281
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setIgnoreCacheSizeMismatch(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldIgnoreCacheSizeMismatch"
        }
    .end annotation

    .line 291
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mShouldIgnoreCacheSizeMismatch:Z

    .line 292
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setIsDiskCacheProbingEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDiskCacheProbingEnabled"
        }
    .end annotation

    .line 462
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mIsDiskCacheProbingEnabled:Z

    .line 463
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setIsEncodedMemoryCacheProbingEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEncodedMemoryCacheProbingEnabled"
        }
    .end annotation

    .line 468
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mIsEncodedMemoryCacheProbingEnabled:Z

    .line 469
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setKeepCancelledFetchAsLowPriority(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepCancelledFetchAsLowPriority"
        }
    .end annotation

    .line 440
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mKeepCancelledFetchAsLowPriority:Z

    .line 441
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setLazyDataSource(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lazyDataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mLazyDataSource:Lcom/facebook/common/internal/Supplier;

    .line 401
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setMaxBitmapSize(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBitmapSize"
        }
    .end annotation

    .line 373
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mMaxBitmapSize:I

    .line 374
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setNativeCodeDisabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCodeDisabled"
        }
    .end annotation

    .line 384
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mNativeCodeDisabled:Z

    .line 385
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setPartialImageCachingEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialImageCachingEnabled"
        }
    .end annotation

    .line 312
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mPartialImageCachingEnabled:Z

    .line 313
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setProducerFactoryMethod(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerFactoryMethod"
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mProducerFactoryMethod:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$ProducerFactoryMethod;

    .line 395
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setShouldDownscaleFrameToDrawableDimensions(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downscaleFrameToDrawableDimensions"
        }
    .end annotation

    .line 412
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mDownscaleFrameToDrawableDimensions:Z

    .line 413
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setStoreCacheEntrySize(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldStoreCacheEntrySize"
        }
    .end annotation

    .line 285
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mShouldStoreCacheEntrySize:Z

    .line 286
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setSuppressBitmapPrefetchingSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppressBitmapPrefetchingSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mSuppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 424
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setTrackedKeysSize(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackedKeysSize"
        }
    .end annotation

    .line 473
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mTrackedKeysSize:I

    .line 474
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setUseDownsampligRatioForResizing(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useDownsamplingRatioForResizing"
        }
    .end annotation

    .line 302
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mUseDownsamplingRatioForResizing:Z

    .line 303
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setWebpBitmapFactory(Lcom/facebook/common/webp/WebpBitmapFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpBitmapFactory"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 340
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setWebpErrorLogger(Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpErrorLogger"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    .line 335
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method

.method public setWebpSupportEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpSupportEnabled"
        }
    .end annotation

    .line 296
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mWebpSupportEnabled:Z

    .line 297
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->mConfigBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p1
.end method
