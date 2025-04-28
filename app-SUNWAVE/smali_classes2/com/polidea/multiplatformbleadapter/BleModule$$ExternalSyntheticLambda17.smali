.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

.field public final synthetic f$1:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;->f$1:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    iput-object p3, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;->f$1:Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;

    iget-object v2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$readRSSIForDevice$5$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/utils/SafeExecutor;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
