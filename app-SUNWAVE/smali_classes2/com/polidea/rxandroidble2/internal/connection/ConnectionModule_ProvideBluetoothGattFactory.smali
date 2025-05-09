.class public final Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;
.super Ljava/lang/Object;
.source "ConnectionModule_ProvideBluetoothGattFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Landroid/bluetooth/BluetoothGatt;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothGattProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBluetoothGatt(Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule;->provideBluetoothGatt(Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;->bluetoothGattProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;->provideBluetoothGatt(Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ConnectionModule_ProvideBluetoothGattFactory;->get()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method
