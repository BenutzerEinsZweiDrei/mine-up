.class public final Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;
.super Ljava/lang/Object;
.source "MtuRequestOperation_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private final requestedMtuProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;",
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
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
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
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->requestedMtuProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;
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
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;I)Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;
    .locals 1

    .line 53
    new-instance v0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;-><init>(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;I)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->rxBleGattCallbackProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->timeoutConfigurationProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->requestedMtuProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2/internal/operations/TimeoutConfiguration;I)Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation_Factory;->get()Lcom/polidea/rxandroidble2/internal/operations/MtuRequestOperation;

    move-result-object v0

    return-object v0
.end method
