.class public final Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;
.super Ljava/lang/Object;
.source "ReadRssiOperation_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;",
        ">;"
    }
.end annotation


# instance fields
.field private final bleGattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->bleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;
    .locals 1

    .line 48
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->bleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;)Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation_Factory;->get()Lcom/polidea/rxandroidble2/internal/operations/ReadRssiOperation;

    move-result-object v0

    return-object v0
.end method
