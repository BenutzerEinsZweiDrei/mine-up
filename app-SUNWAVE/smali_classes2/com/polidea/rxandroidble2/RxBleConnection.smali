.class public interface abstract Lcom/polidea/rxandroidble2/RxBleConnection;
.super Ljava/lang/Object;
.source "RxBleConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationAckStrategy;,
        Lcom/polidea/rxandroidble2/RxBleConnection$WriteOperationRetryStrategy;,
        Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;,
        Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;,
        Lcom/polidea/rxandroidble2/RxBleConnection$Connector;,
        Lcom/polidea/rxandroidble2/RxBleConnection$ConnectionPriority;
    }
.end annotation


# static fields
.field public static final GATT_MTU_MAXIMUM:I = 0x203

.field public static final GATT_MTU_MINIMUM:I = 0x17

.field public static final GATT_READ_MTU_OVERHEAD:I = 0x1

.field public static final GATT_WRITE_MTU_OVERHEAD:I = 0x3


# virtual methods
.method public abstract createNewLongWriteBuilder()Lcom/polidea/rxandroidble2/RxBleConnection$LongWriteOperationBuilder;
.end method

.method public abstract discoverServices()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation
.end method

.method public abstract discoverServices(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2/RxBleDeviceServices;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMtu()I
.end method

.method public abstract observeConnectionParametersUpdates()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2/ConnectionParameters;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queue(Lcom/polidea/rxandroidble2/RxBleCustomOperation;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2/RxBleCustomOperation<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract queue(Lcom/polidea/rxandroidble2/RxBleCustomOperation;Lcom/polidea/rxandroidble2/internal/Priority;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2/RxBleCustomOperation<",
            "TT;>;",
            "Lcom/polidea/rxandroidble2/internal/Priority;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract readCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract readDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract readRssi()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestConnectionPriority(IJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;
.end method

.method public abstract requestMtu(I)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Single<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setupIndication(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract setupIndication(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/polidea/rxandroidble2/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract setupIndication(Ljava/util/UUID;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract setupIndication(Ljava/util/UUID;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/polidea/rxandroidble2/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract setupNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract setupNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/polidea/rxandroidble2/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract setupNotification(Ljava/util/UUID;Lcom/polidea/rxandroidble2/NotificationSetupMode;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/polidea/rxandroidble2/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation
.end method

.method public abstract writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "[B)",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract writeCharacteristic(Ljava/util/UUID;[B)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "[B)",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lio/reactivex/Completable;
.end method

.method public abstract writeDescriptor(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)Lio/reactivex/Completable;
.end method
