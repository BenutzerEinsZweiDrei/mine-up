.class public final synthetic Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothGatt;

.field public final synthetic f$1:Lio/reactivex/Scheduler;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGatt;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/BluetoothGatt;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda3;->f$1:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda3;->f$1:Lio/reactivex/Scheduler;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->lambda$timeoutFallbackProcedure$3(Landroid/bluetooth/BluetoothGatt;Lio/reactivex/Scheduler;)Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
