.class public final Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;
.super Ljava/lang/Object;
.source "LoggerUtilBluetoothServices_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;",
        ">;"
    }
.end annotation


# instance fields
.field private final characteristicPropertiesParserProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;",
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
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;->characteristicPropertiesParserProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;
    .locals 1

    .line 38
    new-instance v0, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;-><init>(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;->characteristicPropertiesParserProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/util/CharacteristicPropertiesParser;)Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices_Factory;->get()Lcom/polidea/rxandroidble2/internal/logger/LoggerUtilBluetoothServices;

    move-result-object v0

    return-object v0
.end method
