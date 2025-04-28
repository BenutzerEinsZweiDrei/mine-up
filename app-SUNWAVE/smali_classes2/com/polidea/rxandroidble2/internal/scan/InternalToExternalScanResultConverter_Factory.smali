.class public final Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;
.super Ljava/lang/Object;
.source "InternalToExternalScanResultConverter_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
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
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;->deviceProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;)Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;
    .locals 1

    .line 38
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;-><init>(Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;->deviceProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/RxBleDeviceProvider;)Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter_Factory;->get()Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;

    move-result-object v0

    return-object v0
.end method
