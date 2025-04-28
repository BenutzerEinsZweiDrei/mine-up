.class public final synthetic Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothGatt;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->lambda$timeoutFallbackProcedure$2(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Long;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
