.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideBluetoothAdapterFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Landroid/bluetooth/BluetoothAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;
    .locals 1

    .line 26
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 31
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 22
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;->provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideBluetoothAdapterFactory;->get()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method
