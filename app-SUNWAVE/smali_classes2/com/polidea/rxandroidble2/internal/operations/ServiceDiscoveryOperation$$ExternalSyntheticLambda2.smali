.class public final synthetic Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->lambda$timeoutFallbackProcedure$1(Landroid/bluetooth/BluetoothGatt;)Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    move-result-object v0

    return-object v0
.end method
