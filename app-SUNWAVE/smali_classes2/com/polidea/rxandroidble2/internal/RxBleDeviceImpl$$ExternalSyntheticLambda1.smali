.class public final synthetic Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

.field public final synthetic f$1:Lcom/polidea/rxandroidble2/ConnectionSetup;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;Lcom/polidea/rxandroidble2/ConnectionSetup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;->f$1:Lcom/polidea/rxandroidble2/ConnectionSetup;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl$$ExternalSyntheticLambda1;->f$1:Lcom/polidea/rxandroidble2/ConnectionSetup;

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/internal/RxBleDeviceImpl;->lambda$establishConnection$1$com-polidea-rxandroidble2-internal-RxBleDeviceImpl(Lcom/polidea/rxandroidble2/ConnectionSetup;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
