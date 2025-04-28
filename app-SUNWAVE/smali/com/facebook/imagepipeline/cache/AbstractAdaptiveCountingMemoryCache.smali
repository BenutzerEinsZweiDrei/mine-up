.class public abstract Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;
.super Ljava/lang/Object;
.source "AbstractAdaptiveCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/CountingMemoryCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;,
        Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_ADAPTIVE_RATE_PROMIL:I = 0xa

.field static final DEFAULT_LFU_FRACTION_PROMIL:I = 0x1f4

.field static final MAX_FRACTION_PROMIL:I = 0x384

.field static final MIN_FRACTION_PROMIL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AbstractArcCountingMemoryCache"

.field static final TOTAL_PROMIL:I = 0x3e8


# instance fields
.field final mAdaptiveRatePromil:I

.field private final mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field final mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mFrequentlyUsedThreshold:I

.field final mGhostListMaxSize:I

.field mLFUFractionPromil:I

.field private mLastCacheParamsCheck:J

.field final mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final mLeastFrequentlyUsedKeysGhostList:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache<",
            "TK;TV;>.IntMapArray",
            "List<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

.field private final mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field final mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final mMostFrequentlyUsedKeysGhostList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;Lcom/facebook/imagepipeline/cache/ValueDescriptor;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryCacheParamsSupplier",
            "cacheTrimStrategy",
            "valueDescriptor",
            "adaptiveRatePromil",
            "frequentlyUsedThreshold",
            "ghostListMaxSize",
            "lfuFractionPromil"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;IIII)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AbstractArcCountingMemoryCache"

    const-string v1, "Create Adaptive Replacement Cache"

    .line 135
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    .line 137
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 138
    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 139
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 140
    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 141
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 142
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 143
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 146
    invoke-interface {p1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "mMemoryCacheParamsSupplier returned null"

    .line 145
    invoke-static {p1, p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLastCacheParamsCheck:J

    .line 148
    iput p5, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mFrequentlyUsedThreshold:I

    .line 149
    iput p6, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mGhostListMaxSize:I

    .line 150
    new-instance p1, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;

    invoke-direct {p1, p0, p6}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;-><init>(Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;I)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedKeysGhostList:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;

    .line 151
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedKeysGhostList:Ljava/util/ArrayList;

    const/16 p1, 0x64

    if-lt p7, p1, :cond_1

    const/16 p1, 0x384

    if-le p7, p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iput p7, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLFUFractionPromil:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x1f4

    .line 153
    iput p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLFUFractionPromil:I

    .line 154
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->logIllegalLfuFraction()V

    :goto_1
    if-lez p4, :cond_3

    const/16 p1, 0x3e8

    if-lt p4, p1, :cond_2

    goto :goto_2

    .line 162
    :cond_2
    iput p4, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mAdaptiveRatePromil:I

    goto :goto_3

    :cond_3
    :goto_2
    const/16 p1, 0xa

    .line 159
    iput p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mAdaptiveRatePromil:I

    .line 160
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->logIllegalAdaptiveRate()V

    :goto_3
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    return-void
.end method

.method private declared-synchronized addElementToGhostList(Ljava/lang/Object;ILcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "accessCount",
            "evictionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->LFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    if-ne p3, v0, :cond_0

    .line 335
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedKeysGhostList:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;->addPair(Ljava/lang/Object;Ljava/lang/Integer;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedKeysGhostList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mGhostListMaxSize:I

    if-ne p2, p3, :cond_1

    .line 338
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedKeysGhostList:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 340
    :cond_1
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedKeysGhostList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized canCacheNewValue(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ValueDescriptor;->getSizeInBytes(Ljava/lang/Object;)I

    move-result p1

    .line 240
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntrySize:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->getInUseCount()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 240
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 680
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized increaseAccessCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 671
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 673
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->accessCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->accessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized increaseCounters(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 663
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 665
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    .line 666
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->increaseAccessCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 656
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 658
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized makeOrphans(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 648
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 649
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 652
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized makeOrphans(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldEntries1",
            "oldEntries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 642
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 643
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 362
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_1

    .line 363
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->accessCount:I

    iget v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mFrequentlyUsedThreshold:I

    if-le v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p1, 0x1

    .line 368
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 370
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private maybeClose(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 602
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maybeClose(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldEntries1",
            "oldEntries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 595
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 596
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    return-void
.end method

.method private maybeNotifyExclusiveEntriesRemoval(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries1",
            "entries2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 609
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 610
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private static maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry1",
            "entry2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 615
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 616
    invoke-static {p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    return-void
.end method

.method private maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 622
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized maybeUpdateCacheFraction(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedKeysGhostList:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLFUFractionPromil:I

    iget v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mAdaptiveRatePromil:I

    add-int v2, v0, v1

    const/16 v3, 0x384

    if-gt v2, v3, :cond_0

    add-int/2addr v0, v1

    .line 302
    iput v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLFUFractionPromil:I

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedKeysGhostList:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;->increaseValueIfExists(Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLFUFractionPromil:I

    iget v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mAdaptiveRatePromil:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedKeysGhostList:Ljava/util/ArrayList;

    .line 308
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 311
    iget p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLFUFractionPromil:I

    iget v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mAdaptiveRatePromil:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLFUFractionPromil:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized maybeUpdateCacheParams()V
    .locals 4

    monitor-enter p0

    .line 507
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLastCacheParamsCheck:J

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget-wide v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->paramsCheckIntervalMs:J

    add-long/2addr v0, v2

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 509
    monitor-exit p0

    return-void

    .line 511
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLastCacheParamsCheck:J

    .line 512
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 514
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mMemoryCacheParamsSupplier returned null"

    .line 513
    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->increaseCounters(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 318
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    .line 319
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$2;-><init>(Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 318
    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 686
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 346
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 351
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z

    move-result v0

    .line 352
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 353
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 355
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 356
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 357
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeEvictEntries()V

    return-void

    :catchall_0
    move-exception p1

    .line 353
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized trimExclusivelyOwnedEntries(IILcom/facebook/imagepipeline/cache/CountingLruMap;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "size",
            "ExclusixeEntries",
            "evictionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;",
            "Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 570
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 571
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 573
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_0

    const/4 p1, 0x0

    .line 574
    monitor-exit p0

    return-object p1

    .line 576
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    :goto_0
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_2

    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v1, p2, :cond_1

    goto :goto_1

    .line 584
    :cond_1
    monitor-exit p0

    return-object v0

    .line 578
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getFirstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 580
    invoke-virtual {p3, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->accessCount:I

    .line 579
    invoke-direct {p0, v1, v2, p4}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->addElementToGhostList(Ljava/lang/Object;ILcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)V

    .line 581
    invoke-virtual {p3, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "evictableValueDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;)",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$1;-><init>(Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .param p3    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 209
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 212
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 214
    :goto_1
    invoke-static {v3}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 215
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 217
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 218
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 221
    :goto_2
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->canCacheNewValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->of(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-result-object p2

    .line 224
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedKeysGhostList:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;

    invoke-virtual {p3, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$IntMapArrayList;->getValue(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 225
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    iput v2, p2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->accessCount:I

    .line 226
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    .line 229
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-static {v3}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 231
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 233
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeEvictEntries()V

    return-object v4

    :catchall_0
    move-exception p1

    .line 229
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v2

    .line 437
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 438
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 440
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntriesRemoval(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 441
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeUpdateCacheParams()V

    return-void

    :catchall_0
    move-exception v0

    .line 438
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized contains(Lcom/facebook/common/internal/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Predicate<",
            "TK;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getMatchingEntries(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 252
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 258
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 259
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    if-eqz v2, :cond_0

    .line 261
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeUpdateCacheFraction(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 265
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 267
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 268
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeEvictEntries()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 265
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCachedEntries()Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEvictionQueueCount()I
    .locals 2

    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 719
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 718
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEvictionQueueSizeInBytes()I
    .locals 2

    monitor-enter p0

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 725
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 724
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInUseCount()I
    .locals 2

    monitor-enter p0

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 705
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 706
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    .line 704
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInUseSizeInBytes()I
    .locals 2

    monitor-enter p0

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 712
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 713
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    .line 711
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMemoryCacheParams()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    return-object v0
.end method

.method public getOtherEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 811
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSizeInBytes()I
    .locals 1

    monitor-enter p0

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public inspect(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract logIllegalAdaptiveRate()V
.end method

.method protected abstract logIllegalLfuFraction()V
.end method

.method public maybeEvictEntries()V
    .locals 9

    .line 531
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueEntries:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    .line 535
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->getInUseCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 533
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueSize:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I

    .line 539
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v3

    sub-int/2addr v2, v3

    .line 537
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v0

    .line 540
    iget v4, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLFUFractionPromil:I

    int-to-long v5, v4

    mul-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    long-to-int v2, v2

    int-to-long v7, v1

    int-to-long v3, v4

    mul-long/2addr v7, v3

    .line 541
    div-long/2addr v7, v5

    long-to-int v3, v7

    .line 542
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    sget-object v5, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->LFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    .line 543
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->trimExclusivelyOwnedEntries(IILcom/facebook/imagepipeline/cache/CountingLruMap;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;

    move-result-object v4

    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    .line 545
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    sget-object v3, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->MFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    .line 546
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->trimExclusivelyOwnedEntries(IILcom/facebook/imagepipeline/cache/CountingLruMap;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 551
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 552
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 554
    invoke-direct {p0, v4, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntriesRemoval(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 552
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public probe(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 282
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    :cond_0
    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->increaseAccessCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 291
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z

    .line 293
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll(Lcom/facebook/common/internal/Predicate;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Predicate<",
            "TK;>;)I"
        }
    .end annotation

    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object p1

    .line 419
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 420
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 422
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntriesRemoval(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 423
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 424
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeEvictEntries()V

    .line 425
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 420
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public reportData()Ljava/lang/String;
    .locals 3

    const-string v0, "CountingMemoryCache"

    .line 729
    invoke-static {v0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/String;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 730
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1

    const-string v2, "cached_entries_count:"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 731
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->getEvictionQueueCount()I

    move-result v1

    const-string v2, "exclusive_entries_count"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reuse(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 380
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 390
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 391
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget v3, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v3, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 395
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move v1, v2

    .line 398
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 400
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 398
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public trim(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;->getTrimRatio(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 475
    monitor-enter p0

    .line 476
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    double-to-int p1, v2

    .line 477
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 478
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1

    sub-int v2, p1, v1

    .line 480
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    move v0, v2

    .line 485
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mLeastFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    sget-object v2, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->LFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    const v3, 0x7fffffff

    .line 486
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->trimExclusivelyOwnedEntries(IILcom/facebook/imagepipeline/cache/CountingLruMap;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->mMostFrequentlyUsedExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    sget-object v2, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;->MFU:Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;

    .line 492
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->trimExclusivelyOwnedEntries(IILcom/facebook/imagepipeline/cache/CountingLruMap;Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache$ArrayListType;)Ljava/util/ArrayList;

    move-result-object p1

    .line 497
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 498
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 500
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeNotifyExclusiveEntriesRemoval(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 501
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 502
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/AbstractAdaptiveCountingMemoryCache;->maybeEvictEntries()V

    return-void

    :catchall_0
    move-exception p1

    .line 498
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
