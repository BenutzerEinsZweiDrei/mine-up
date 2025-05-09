.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideFinalizationCloseableFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;",
        ">;"
    }
.end annotation


# instance fields
.field private final callbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionQueueExecutorServiceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final interactionExecutorServiceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->interactionExecutorServiceProvider:Lbleshadow/javax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->callbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->connectionQueueExecutorServiceProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideFinalizationCloseable(Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;Ljava/util/concurrent/ExecutorService;)Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideFinalizationCloseable(Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;Ljava/util/concurrent/ExecutorService;)Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->interactionExecutorServiceProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->callbacksSchedulerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->connectionQueueExecutorServiceProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->provideFinalizationCloseable(Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;Ljava/util/concurrent/ExecutorService;)Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideFinalizationCloseableFactory;->get()Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;

    move-result-object v0

    return-object v0
.end method
