.class Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl$1;
.super Ljava/lang/Object;
.source "LongWriteOperationBuilderImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;->setCharacteristicUuid(Ljava/util/UUID;)Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
        "Lio/reactivex/SingleSource<",
        "+",
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;

.field final synthetic val$uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;Ljava/util/UUID;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl$1;->this$0:Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl$1;->val$uuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl$1;->val$uuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Lcom/polidea/rxandroidble2/RxBleDeviceServices;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl$1;->apply(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
