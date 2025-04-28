.class public Lcom/polidea/multiplatformbleadapter/utils/RefreshGattCustomOperation;
.super Ljava/lang/Object;
.source "RefreshGattCustomOperation.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/RxBleCustomOperation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/polidea/rxandroidble2/RxBleCustomOperation<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$asObservable$0(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 33
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    :try_start_1
    const-string v1, "BluetoothGatt.refresh() returned false"

    new-array v2, v0, [Ljava/lang/Object;

    .line 35
    invoke-static {v1, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move p0, v0

    :goto_0
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Could not call function BluetoothGatt.refresh()"

    .line 37
    invoke-static {v1, v3, v2}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v2, "Success"

    goto :goto_2

    :cond_1
    const-string v2, "Failure"

    :goto_2
    aput-object v2, v1, v0

    const-string v0, "Calling BluetoothGatt.refresh() status: %s"

    .line 40
    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asObservable(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex/ObservableSource;

    .line 27
    new-instance v1, Lcom/polidea/multiplatformbleadapter/utils/RefreshGattCustomOperation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/polidea/multiplatformbleadapter/utils/RefreshGattCustomOperation$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    .line 28
    invoke-static {v1}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 44
    invoke-virtual {p1, v2, v3, v1, p3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, v0, p3

    .line 45
    invoke-virtual {p2}, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;->observeDisconnect()Lio/reactivex/Observable;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 27
    invoke-static {v0}, Lio/reactivex/Observable;->ambArray([Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
