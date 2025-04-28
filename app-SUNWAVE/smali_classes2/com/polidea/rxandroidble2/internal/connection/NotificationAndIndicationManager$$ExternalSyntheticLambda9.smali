.class public final synthetic Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/polidea/rxandroidble2/NotificationSetupMode;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2/NotificationSetupMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-boolean p3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$2:Z

    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$3:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-boolean v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$2:Z

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda9;->f$3:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->lambda$setupServerInitiatedCharacteristicRead$2$com-polidea-rxandroidble2-internal-connection-NotificationAndIndicationManager(Landroid/bluetooth/BluetoothGattCharacteristic;ZLcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
