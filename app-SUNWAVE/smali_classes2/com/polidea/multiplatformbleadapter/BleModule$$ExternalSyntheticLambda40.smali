.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/Characteristic;

.field public final synthetic f$1:Lcom/polidea/rxandroidble2/RxBleConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/rxandroidble2/RxBleConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda40;->f$0:Lcom/polidea/multiplatformbleadapter/Characteristic;

    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda40;->f$1:Lcom/polidea/rxandroidble2/RxBleConnection;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda40;->f$0:Lcom/polidea/multiplatformbleadapter/Characteristic;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda40;->f$1:Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-static {v0, v1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeMonitorCharacteristicForDevice$39(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
