.class public final Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;
.super Ljava/lang/Object;
.source "ConnectionOperationQueueImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceMacAddressProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectionRouterOutputProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;",
            ">;"
        }
    .end annotation
.end field

.field private final executorServiceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->deviceMacAddressProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->disconnectionRouterOutputProvider:Lbleshadow/javax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->executorServiceProvider:Lbleshadow/javax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;
    .locals 1

    .line 55
    new-instance v0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;-><init>(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->deviceMacAddressProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->disconnectionRouterOutputProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->executorServiceProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->callbackSchedulerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/Scheduler;

    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->newInstance(Ljava/lang/String;Lcom/polidea/rxandroidble2/internal/connection/DisconnectionRouterOutput;Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl_Factory;->get()Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueueImpl;

    move-result-object v0

    return-object v0
.end method
