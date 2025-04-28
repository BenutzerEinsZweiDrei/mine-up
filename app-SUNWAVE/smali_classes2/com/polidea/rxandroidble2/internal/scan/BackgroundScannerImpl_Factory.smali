.class public final Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;
.super Ljava/lang/Object;
.source "BackgroundScannerImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final internalToExternalScanResultConverterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final scanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;",
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
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->scanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->internalToExternalScanResultConverterProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;)Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;
    .locals 1

    .line 54
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;-><init>(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->rxBleAdapterWrapperProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->scanObjectsConverterProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->internalScanResultCreatorProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->internalToExternalScanResultConverterProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;

    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/util/RxBleAdapterWrapper;Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;Lcom/polidea/rxandroidble2/internal/scan/InternalToExternalScanResultConverter;)Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl_Factory;->get()Lcom/polidea/rxandroidble2/internal/scan/BackgroundScannerImpl;

    move-result-object v0

    return-object v0
.end method
