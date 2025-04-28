.class public final Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;
.super Ljava/lang/Object;
.source "ClientStateObservable_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bleAdapterStateObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final locationServicesOkObservableProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final timerSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->bleAdapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->locationServicesOkObservableProvider:Lbleshadow/javax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->timerSchedulerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;",
            ">;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;"
        }
    .end annotation

    .line 61
    new-instance v6, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lio/reactivex/Scheduler;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->bleAdapterStateObservableProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observable;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->locationServicesOkObservableProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/Observable;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->timerSchedulerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v4}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/Scheduler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lio/reactivex/Observable;Lio/reactivex/Observable;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/ClientStateObservable;

    move-result-object v0

    return-object v0
.end method
