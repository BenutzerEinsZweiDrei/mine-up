.class public final synthetic Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

.field public final synthetic f$1:Lcom/polidea/rxandroidble2/scan/ScanSettings;

.field public final synthetic f$2:[Lcom/polidea/rxandroidble2/scan/ScanFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;->f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;->f$1:Lcom/polidea/rxandroidble2/scan/ScanSettings;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;->f$2:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;->f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;->f$1:Lcom/polidea/rxandroidble2/scan/ScanSettings;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda6;->f$2:[Lcom/polidea/rxandroidble2/scan/ScanFilter;

    invoke-virtual {v0, v1, v2}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->lambda$scanBleDevices$1$com-polidea-rxandroidble2-RxBleClientImpl(Lcom/polidea/rxandroidble2/scan/ScanSettings;[Lcom/polidea/rxandroidble2/scan/ScanFilter;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
