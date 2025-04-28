.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/BleModule;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/BleModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda34;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda34;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    check-cast p1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-static {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->$r8$lambda$KEOpr5KkvadSdIu_hig_VjiQmdI(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
