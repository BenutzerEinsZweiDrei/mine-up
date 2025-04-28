.class public Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;
.super Ljava/lang/Object;
.source "ConnectorImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/internal/connection/Connector;


# instance fields
.field final callbacksScheduler:Lio/reactivex/Scheduler;

.field private final clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

.field final connectionComponentBuilder:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;Lio/reactivex/Scheduler;)V
    .locals 0
    .param p3    # Lio/reactivex/Scheduler;
        .annotation runtime Lbleshadow/javax/inject/Named;
            value = "bluetooth_callbacks"
        .end annotation
    .end param
    .annotation runtime Lbleshadow/javax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    .line 29
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->connectionComponentBuilder:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    .line 30
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->callbacksScheduler:Lio/reactivex/Scheduler;

    return-void
.end method

.method static synthetic lambda$prepareConnection$0(Ljava/util/Set;Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;

    .line 48
    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;->onConnectionSubscribed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$prepareConnection$1(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;

    .line 53
    invoke-interface {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionSubscriptionWatcher;->onConnectionUnsubscribed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static observeDisconnections(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-interface {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;->gattCallback()Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->observeDisconnect()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static obtainRxBleConnection(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method enqueueConnectOperation(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->clientOperationQueue:Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;

    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;->connectOperation()Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$prepareConnection$2$com-polidea-rxandroidble2-internal-connection-ConnectorImpl(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->connectionComponentBuilder:Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    iget-boolean v1, p1, Lcom/polidea/rxandroidble2/ConnectionSetup;->autoConnect:Z

    .line 37
    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;->autoConnect(Z)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/polidea/rxandroidble2/ConnectionSetup;->suppressOperationCheck:Z

    .line 38
    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;->suppressOperationChecks(Z)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/polidea/rxandroidble2/ConnectionSetup;->operationTimeout:Lcom/polidea/rxandroidble2/Timeout;

    .line 39
    invoke-interface {v0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;->operationTimeout(Lcom/polidea/rxandroidble2/Timeout;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent$Builder;->build()Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;->connectionSubscriptionWatchers()Ljava/util/Set;

    move-result-object v0

    .line 43
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->obtainRxBleConnection(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object v1

    .line 44
    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->observeDisconnections(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 45
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->enqueueConnectOperation(Lcom/polidea/rxandroidble2/internal/connection/ConnectionComponent;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->delaySubscription(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    .line 46
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 51
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->callbacksScheduler:Lio/reactivex/Scheduler;

    .line 56
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;->callbacksScheduler:Lio/reactivex/Scheduler;

    .line 57
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public prepareConnection(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/ConnectionSetup;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl$$ExternalSyntheticLambda3;-><init>(Lcom/polidea/rxandroidble2/internal/connection/ConnectorImpl;Lcom/polidea/rxandroidble2/ConnectionSetup;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
