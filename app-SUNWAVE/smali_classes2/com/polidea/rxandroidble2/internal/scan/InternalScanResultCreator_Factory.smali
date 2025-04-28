.class public final Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;
.super Ljava/lang/Object;
.source "InternalScanResultCreator_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;",
        ">;"
    }
.end annotation


# instance fields
.field private final isConnectableCheckerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final scanRecordParserProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->scanRecordParserProvider:Lbleshadow/javax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->isConnectableCheckerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
    .locals 1

    .line 42
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;-><init>(Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->scanRecordParserProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->isConnectableCheckerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/util/ScanRecordParser;Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;)Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator_Factory;->get()Lcom/polidea/rxandroidble2/internal/scan/InternalScanResultCreator;

    move-result-object v0

    return-object v0
.end method
