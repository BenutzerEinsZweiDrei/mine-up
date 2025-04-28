.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideComputationSchedulerFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lio/reactivex/Scheduler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;
    .locals 1

    .line 25
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideComputationScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 29
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideComputationScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-static {v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    return-object v0
.end method


# virtual methods
.method public get()Lio/reactivex/Scheduler;
    .locals 1

    .line 21
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->provideComputationScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideComputationSchedulerFactory;->get()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
