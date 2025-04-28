.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

.field public final synthetic f$1:Lcom/polidea/rxandroidble2/RxBleDevice;

.field public final synthetic f$2:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

.field public final synthetic f$3:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;->f$1:Lcom/polidea/rxandroidble2/RxBleDevice;

    iput-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;->f$2:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

    iput-object p4, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;->f$3:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;->f$1:Lcom/polidea/rxandroidble2/RxBleDevice;

    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;->f$2:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

    iget-object v3, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda27;->f$3:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeConnectToDevice$28$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/rxandroidble2/RxBleDevice;Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/rxandroidble2/RxBleConnection;)V

    return-void
.end method
