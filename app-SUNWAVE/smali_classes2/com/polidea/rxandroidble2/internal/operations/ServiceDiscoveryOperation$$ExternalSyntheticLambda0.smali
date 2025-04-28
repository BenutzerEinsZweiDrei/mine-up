.class public final synthetic Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda0;->f$0:Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation$$ExternalSyntheticLambda0;->f$0:Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;

    check-cast p1, Lcom/polidea/rxandroidble2/RxBleDeviceServices;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2/internal/operations/ServiceDiscoveryOperation;->lambda$getCallback$0$com-polidea-rxandroidble2-internal-operations-ServiceDiscoveryOperation(Lcom/polidea/rxandroidble2/RxBleDeviceServices;)V

    return-void
.end method
