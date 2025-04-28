.class public final synthetic Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda3;->f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda3;->f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    check-cast p1, Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->convertToPublicScanResult(Lcom/polidea/rxandroidble2/internal/scan/RxBleInternalScanResultLegacy;)Lcom/polidea/rxandroidble2/RxBleScanResult;

    move-result-object p1

    return-object p1
.end method
