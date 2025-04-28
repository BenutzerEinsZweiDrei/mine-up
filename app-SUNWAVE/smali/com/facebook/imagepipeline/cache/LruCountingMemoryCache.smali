.class public Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;
.super Ljava/lang/Object;
.source "LruCountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
.implements Lcom/facebook/imagepipeline/cache/MemoryCache;
.implements Lcom/facebook/cache/common/HasDebugData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache<",
        "TK;TV;>;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache<",
        "TK;TV;>;",
        "Lcom/facebook/cache/common/HasDebugData;"
    }
.end annotation


# instance fields
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

.field private final mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mIgnoreSizeMismatch:Z

.field private mLastCacheParamsCheck:J

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

.field final mOtherEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreEntrySize:Z

.field private final mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;ZZ)V
    .locals 2
    .param p4    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "valueDescriptor",
            "cacheTrimStrategy",
            "memoryCacheParamsSupplier",
            "entryStateObserver",
            "storeEntrySize",
            "ignoreSizeMismatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "TK;>;ZZ)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mOtherEntries:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    .line 86
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 87
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 88
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 89
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 92
    invoke-interface {p3}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "mMemoryCacheParamsSupplier returned null"

    .line 91
    invoke-static {p1, p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mLastCacheParamsCheck:J

    .line 94
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 95
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mStoreEntrySize:Z

    .line 96
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mIgnoreSizeMismatch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mStoreEntrySize:Z

    return p0
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    return-void
.end method

.method private declared-synchronized canCacheNewValueOfSize(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValueSize"
        }
    .end annotation

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntrySize:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseCount()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 179
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

    .line 519
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 521
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized increaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
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

    .line 512
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 514
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
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

    .line 505
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 507
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
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

    .line 497
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

    .line 498
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 501
    :cond_0
    monitor-exit p0

    return-void
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

    .line 263
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 265
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 267
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

    .line 468
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 469
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    :cond_0
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

    .line 489
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 490
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

    .line 483
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    :cond_0
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

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 477
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized maybeUpdateCacheParams()V
    .locals 4

    monitor-enter p0

    .line 377
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mLastCacheParamsCheck:J

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget-wide v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->paramsCheckIntervalMs:J

    add-long/2addr v0, v2

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 379
    monitor-exit p0

    return-void

    .line 381
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mLastCacheParamsCheck:J

    .line 382
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 384
    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mMemoryCacheParamsSupplier returned null"

    .line 383
    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
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

    .line 234
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->increaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 235
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    .line 236
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$2;-><init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 235
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

    .line 527
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
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

    .line 247
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z

    move-result v0

    .line 253
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 254
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 256
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 257
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 258
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    return-void

    :catchall_0
    move-exception p1

    .line 254
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 435
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 436
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 438
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v1, p2, :cond_0

    const/4 p1, 0x0

    .line 439
    monitor-exit p0

    return-object p1

    .line 441
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    if-gt v2, p1, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    if-le v2, p2, :cond_2

    .line 443
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getFirstKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 445
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mIgnoreSizeMismatch:Z

    if-eqz p1, :cond_3

    .line 446
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->resetSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :cond_2
    monitor-exit p0

    return-object v1

    .line 449
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "key is null, but exclusiveEntries count: %d, size: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 452
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 450
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 454
    :cond_4
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
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

    .line 101
    new-instance v0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache$1;-><init>(Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

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

    .line 121
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;
    .locals 5
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

    .line 137
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 145
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 148
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 151
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 154
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/cache/ValueDescriptor;->getSizeInBytes(Ljava/lang/Object;)I

    move-result v3

    .line 156
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->canCacheNewValueOfSize(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mStoreEntrySize:Z

    if-eqz v2, :cond_1

    .line 159
    invoke-static {p1, p2, v3, p3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->of(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;ILcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-result-object p2

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->of(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-result-object p2

    .line 163
    :goto_1
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    .line 166
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 168
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 170
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    return-object v2

    :catchall_0
    move-exception p1

    .line 166
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v1

    .line 329
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 330
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 332
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 333
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    return-void

    :catchall_0
    move-exception v0

    .line 330
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

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

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

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

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
    .locals 2
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

    .line 191
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 196
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    if-eqz p1, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 200
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 202
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 203
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 200
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCachedEntries()Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingLruMap<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

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

.method public declared-synchronized getDebugData()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CountingMemoryCache"

    .line 568
    invoke-static {v0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/String;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cached_entries_count"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 569
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cached_entries_size_bytes"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 570
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "exclusive_entries_count"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 571
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "exclusive_entries_size_bytes"

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 572
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEvictionQueueCount()I
    .locals 1

    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

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

.method public declared-synchronized getEvictionQueueSizeInBytes()I
    .locals 1

    monitor-enter p0

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

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

.method public declared-synchronized getInUseCount()I
    .locals 2

    monitor-enter p0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

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

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMemoryCacheParams()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

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

    .line 398
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mOtherEntries:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getSizeInBytes()I
    .locals 1

    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

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

.method public declared-synchronized inspect(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 211
    monitor-exit p0

    return-object p1

    .line 213
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public maybeEvictEntries()V
    .locals 4

    .line 410
    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v0, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueEntries:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    .line 414
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseCount()I

    move-result v2

    sub-int/2addr v1, v2

    .line 412
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueSize:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I

    .line 418
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v3

    sub-int/2addr v2, v3

    .line 416
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 419
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 420
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 421
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 423
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception v0

    .line 421
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public probe(Ljava/lang/Object;)V
    .locals 2
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
            "(TK;)V"
        }
    .end annotation

    .line 222
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
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
    .locals 2
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

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/facebook/common/internal/Predicate;)Ljava/util/ArrayList;

    move-result-object p1

    .line 312
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 313
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 315
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 316
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 317
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    .line 318
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 313
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
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

    .line 278
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 285
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 286
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget v3, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 290
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move v1, v2

    .line 293
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 295
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 293
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

    .line 362
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;->getTrimRatio(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v0

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    double-to-int p1, v2

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->getInUseSizeInBytes()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const v0, 0x7fffffff

    .line 366
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 367
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 368
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 371
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeUpdateCacheParams()V

    .line 372
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/LruCountingMemoryCache;->maybeEvictEntries()V

    return-void

    :catchall_0
    move-exception p1

    .line 368
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
