.class Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;
.super Ljava/lang/Object;
.source "ConnectOperation.java"

# interfaces
.implements Lio/reactivex/SingleTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->wrapWithTimeoutWhenNotAutoconnecting()Lio/reactivex/SingleTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleTransformer<",
        "Landroid/bluetooth/BluetoothGatt;",
        "Landroid/bluetooth/BluetoothGatt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Single;)Lio/reactivex/Single;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;)",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    iget-boolean v0, v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->autoConnect:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectTimeout:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-wide v2, v0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeout:J

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectTimeout:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v4, v0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    iget-object v0, v0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->connectTimeout:Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v5, v0, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;->timeoutScheduler:Lio/reactivex/Scheduler;

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;->this$0:Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;

    .line 97
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation;->prepareConnectionTimeoutError()Lio/reactivex/Single;

    move-result-object v6

    move-object v1, p1

    .line 96
    invoke-virtual/range {v1 .. v6}, Lio/reactivex/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Single;)Lio/reactivex/SingleSource;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ConnectOperation$2;->apply(Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
