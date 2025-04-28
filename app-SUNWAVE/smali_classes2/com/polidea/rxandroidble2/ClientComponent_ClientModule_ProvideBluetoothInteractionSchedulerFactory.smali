.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lio/reactivex/Scheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final serviceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;->serviceProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBluetoothInteractionScheduler(Ljava/util/concurrent/ExecutorService;)Lio/reactivex/Scheduler;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideBluetoothInteractionScheduler(Ljava/util/concurrent/ExecutorService;)Lio/reactivex/Scheduler;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/Scheduler;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;->serviceProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;->provideBluetoothInteractionScheduler(Ljava/util/concurrent/ExecutorService;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothInteractionSchedulerFactory;->get()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
