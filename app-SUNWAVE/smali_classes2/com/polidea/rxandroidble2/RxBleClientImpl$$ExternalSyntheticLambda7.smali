.class public final synthetic Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

.field public final synthetic f$1:[Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/RxBleClientImpl;[Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda7;->f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda7;->f$1:[Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda7;->f$0:Lcom/polidea/rxandroidble2/RxBleClientImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda7;->f$1:[Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->lambda$scanBleDevices$2$com-polidea-rxandroidble2-RxBleClientImpl([Ljava/util/UUID;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
