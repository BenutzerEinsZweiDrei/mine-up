.class public final synthetic Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/polidea/rxandroidble2/scan/ScanResult;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->lambda$scanBleDevices$0(Lcom/polidea/rxandroidble2/scan/ScanResult;)V

    return-void
.end method
