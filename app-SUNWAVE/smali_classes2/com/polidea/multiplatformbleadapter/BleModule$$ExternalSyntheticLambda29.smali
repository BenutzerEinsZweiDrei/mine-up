.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/OnEventCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda29;->f$0:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda29;->f$0:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeConnectToDevice$21(Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
