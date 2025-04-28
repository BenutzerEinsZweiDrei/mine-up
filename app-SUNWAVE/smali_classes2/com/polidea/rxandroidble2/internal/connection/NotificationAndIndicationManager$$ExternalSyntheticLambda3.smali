.class public final synthetic Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

.field public final synthetic f$1:Lio/reactivex/subjects/PublishSubject;

.field public final synthetic f$2:Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;

.field public final synthetic f$3:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final synthetic f$4:Lcom/polidea/rxandroidble2/NotificationSetupMode;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;Lio/reactivex/subjects/PublishSubject;Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$1:Lio/reactivex/subjects/PublishSubject;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$2:Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;

    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$3:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p5, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$4:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$0:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$1:Lio/reactivex/subjects/PublishSubject;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$2:Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$3:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda3;->f$4:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->lambda$setupServerInitiatedCharacteristicRead$1$com-polidea-rxandroidble2-internal-connection-NotificationAndIndicationManager(Lio/reactivex/subjects/PublishSubject;Lcom/polidea/rxandroidble2/internal/util/CharacteristicNotificationId;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)V

    return-void
.end method
