.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

.field public final synthetic f$1:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

.field public final synthetic f$2:Lcom/polidea/multiplatformbleadapter/Device;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/multiplatformbleadapter/Device;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;->f$1:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    iput-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;->f$2:Lcom/polidea/multiplatformbleadapter/Device;

    iput-object p4, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;->f$1:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;->f$2:Lcom/polidea/multiplatformbleadapter/Device;

    iget-object v3, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$requestConnectionPriorityForDevice$1$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Lcom/polidea/multiplatformbleadapter/Device;Ljava/lang/String;)V

    return-void
.end method
