.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda39;->f$0:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda39;->f$0:Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    check-cast p1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-static {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$changeAdapterState$15(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Z

    move-result p1

    return p1
.end method
