.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda31;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda31;->f$0:I

    check-cast p1, Lcom/polidea/rxandroidble2/RxBleConnection;

    invoke-static {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeConnectToDevice$25(ILcom/polidea/rxandroidble2/RxBleConnection;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
