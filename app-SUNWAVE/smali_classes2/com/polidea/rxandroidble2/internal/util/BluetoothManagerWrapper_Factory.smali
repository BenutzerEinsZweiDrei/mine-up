.class public final Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;
.super Ljava/lang/Object;
.source "BluetoothManagerWrapper_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothManagerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothManager;",
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
            "Landroid/bluetooth/BluetoothManager;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;->bluetoothManagerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/bluetooth/BluetoothManager;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/bluetooth/BluetoothManager;)Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;
    .locals 1

    .line 36
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;-><init>(Landroid/bluetooth/BluetoothManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;->bluetoothManagerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;->newInstance(Landroid/bluetooth/BluetoothManager;)Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/BluetoothManagerWrapper;

    move-result-object v0

    return-object v0
.end method
