.class public final Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory;
.super Ljava/lang/Object;
.source "BluetoothGattProvider_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;
    .locals 1

    .line 27
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;
    .locals 1

    .line 19
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory;->newInstance()Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/BluetoothGattProvider;

    move-result-object v0

    return-object v0
.end method
