.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2/RxBleConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2/RxBleConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda36;->f$0:Lcom/polidea/rxandroidble2/RxBleConnection;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda36;->f$0:Lcom/polidea/rxandroidble2/RxBleConnection;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeConnectToDevice$26(Lcom/polidea/rxandroidble2/RxBleConnection;Ljava/lang/Integer;)Lcom/polidea/rxandroidble2/RxBleConnection;

    move-result-object p1

    return-object p1
.end method
