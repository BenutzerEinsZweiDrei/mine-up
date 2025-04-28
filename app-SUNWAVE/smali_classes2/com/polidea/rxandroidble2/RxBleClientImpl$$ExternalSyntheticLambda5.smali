.class public final synthetic Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/polidea/rxandroidble2/RxBleClientImpl$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/RxBleClientImpl;->lambda$bluetoothAdapterOffExceptionObservable$3(Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable$BleAdapterState;)Z

    move-result p1

    return p1
.end method
