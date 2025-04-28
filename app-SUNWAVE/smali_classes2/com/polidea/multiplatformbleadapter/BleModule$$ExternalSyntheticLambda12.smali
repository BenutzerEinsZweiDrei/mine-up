.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

.field public final synthetic f$1:Lcom/polidea/multiplatformbleadapter/OnErrorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/OnErrorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda12;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda12;->f$1:Lcom/polidea/multiplatformbleadapter/OnErrorCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda12;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda12;->f$1:Lcom/polidea/multiplatformbleadapter/OnErrorCallback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeStartDeviceScan$20$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/OnErrorCallback;Ljava/lang/Throwable;)V

    return-void
.end method
