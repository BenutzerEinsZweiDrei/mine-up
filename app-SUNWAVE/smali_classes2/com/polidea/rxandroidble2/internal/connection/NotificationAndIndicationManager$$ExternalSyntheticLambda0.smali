.class public final synthetic Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/CompletableTransformer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/NotificationSetupMode;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final synthetic f$2:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;->f$0:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;->f$2:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;->f$3:[B

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Completable;)Lio/reactivex/CompletableSource;
    .locals 4

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;->f$0:Lcom/polidea/rxandroidble2/NotificationSetupMode;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;->f$2:Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda0;->f$3:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->lambda$teardownModeTransformer$6(Lcom/polidea/rxandroidble2/NotificationSetupMode;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/internal/connection/DescriptorWriter;[BLio/reactivex/Completable;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
