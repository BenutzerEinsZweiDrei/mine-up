.class public final Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;
.super Ljava/lang/Object;
.source "DeviceModule_ProvidesConnectTimeoutConfFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private final timeoutSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
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
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;->timeoutSchedulerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static providesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule;->providesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;->timeoutSchedulerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;->providesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvidesConnectTimeoutConfFactory;->get()Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    move-result-object v0

    return-object v0
.end method
