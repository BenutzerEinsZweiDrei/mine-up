.class public final Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;
.super Ljava/lang/Object;
.source "AndroidScanObjectsConverter_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceSdkProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(I)Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;
    .locals 1

    .line 34
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;->newInstance(I)Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter_Factory;->get()Lcom/polidea/rxandroidble2/internal/scan/AndroidScanObjectsConverter;

    move-result-object v0

    return-object v0
.end method
