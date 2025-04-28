.class public final synthetic Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda38;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda38;-><init>()V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda38;->INSTANCE:Lcom/polidea/multiplatformbleadapter/BleModule$$ExternalSyntheticLambda38;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/reactivex/Observable;

    invoke-static {p1}, Lcom/polidea/multiplatformbleadapter/BleModule;->lambda$safeMonitorCharacteristicForDevice$40(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
