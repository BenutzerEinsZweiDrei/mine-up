.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

.field public final synthetic f$1:Lcom/polidea/multiplatformbleadapter/OnEventCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/multiplatformbleadapter/BleModule;Lcom/polidea/multiplatformbleadapter/OnEventCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda13;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iput-object p2, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda13;->f$1:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda13;->f$0:Lcom/polidea/multiplatformbleadapter/BleModule;

    iget-object v1, p0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda13;->f$1:Lcom/polidea/multiplatformbleadapter/OnEventCallback;

    check-cast p1, Lcom/polidea/rxandroidble2/scan/ScanResult;

    invoke-virtual {v0, v1, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeStartDeviceScan$19$com-polidea-multiplatformbleadapter-BleModule(Lcom/polidea/multiplatformbleadapter/OnEventCallback;Lcom/polidea/rxandroidble2/scan/ScanResult;)V

    return-void
.end method
