.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/Characteristic;

.field public final synthetic f$1:Lcom/polidea/multiplatformbleadapter/OnEventCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda28;->f$0:Lcom/polidea/multiplatformbleadapter/Characteristic;

    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda28;->f$1:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda28;->f$0:Lcom/polidea/multiplatformbleadapter/Characteristic;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda28;->f$1:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

    check-cast p1, [B

    invoke-static {v0, v1, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeMonitorCharacteristicForDevice$43(Lcom/polidea/multiplatformbleadapter/Characteristic;Lcom/polidea/multiplatformbleadapter/OnEventCallback;[B)V

    return-void
.end method
