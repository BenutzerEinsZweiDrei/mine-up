.class public Lcom/google/mlkit/common/sdkinternal/MlKitContext;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/mlkit/common/sdkinternal/MlKitContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzb:Lcom/google/firebase/components/ComponentRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 3

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MlKitContext has not been initialized"

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/util/List;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;)",
            "Lcom/google/mlkit/common/sdkinternal/MlKitContext;"
        }
    .end annotation

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;-><init>()V

    .line 1
    invoke-static {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/google/firebase/components/ComponentRuntime;

    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/firebase/components/Component;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 3
    invoke-static {p0, v4, v6}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p0

    aput-object p0, v3, v5

    const-class p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    new-array v4, v5, [Ljava/lang/Class;

    .line 4
    invoke-static {v0, p0, v4}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p0

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-direct {v1, v2, p1, v3}, Lcom/google/firebase/components/ComponentRuntime;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/Component;)V

    iput-object v1, v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/firebase/components/ComponentRuntime;

    .line 5
    invoke-virtual {v1, v4}, Lcom/google/firebase/components/ComponentRuntime;->initializeEagerComponents(Z)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-nez p0, :cond_0

    move v5, v4

    :cond_0
    const-string p0, "MlKitContext is already initialized"

    .line 7
    invoke-static {v5, p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 5

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;-><init>()V

    .line 1
    invoke-static {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/google/mlkit/common/internal/MlKitComponentDiscoveryService;

    .line 2
    invoke-static {p0, v1}, Lcom/google/firebase/components/ComponentDiscovery;->forContext(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/ComponentDiscovery;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/components/ComponentDiscovery;->discoverLazy()Ljava/util/List;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {v2}, Lcom/google/firebase/components/ComponentRuntime;->builder(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addLazyComponentRegistrars(Ljava/util/Collection;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 7
    invoke-static {p0, v2, v4}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object p0

    const-class v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    new-array v2, v3, [Ljava/lang/Class;

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/ComponentRuntime$Builder;->addComponent(Lcom/google/firebase/components/Component;)Lcom/google/firebase/components/ComponentRuntime$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/components/ComponentRuntime$Builder;->build()Lcom/google/firebase/components/ComponentRuntime;

    move-result-object p0

    iput-object p0, v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/firebase/components/ComponentRuntime;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/firebase/components/ComponentRuntime;->initializeEagerComponents(Z)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-nez p0, :cond_0

    move v3, v1

    :cond_0
    const-string p0, "MlKitContext is already initialized"

    .line 12
    invoke-static {v3, p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-object v0
.end method

.method private static zzb(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MlKitContext has been deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/firebase/components/ComponentRuntime;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/firebase/components/ComponentRuntime;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/components/ComponentRuntime;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    const-class v0, Landroid/content/Context;

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
