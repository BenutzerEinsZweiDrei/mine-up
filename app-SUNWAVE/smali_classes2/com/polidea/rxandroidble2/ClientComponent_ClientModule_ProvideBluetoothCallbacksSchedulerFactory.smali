.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory$InstanceHolder;
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

.method public static create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory;
    .locals 1

    .line 25
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideBluetoothCallbacksScheduler()Lio/reactivex/Scheduler;
    .locals 1

    .line 29
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideBluetoothCallbacksScheduler()Lio/reactivex/Scheduler;

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
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory;->provideBluetoothCallbacksScheduler()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothCallbacksSchedulerFactory;->get()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
