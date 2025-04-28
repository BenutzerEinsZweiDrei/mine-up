.class public final synthetic Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda0;->f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda0;->f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->lambda$createScanOperationApi18$5$com-polidea-rxandroidble2-RxBleClientImpl(Ljava/util/Set;)V

    return-void
.end method
