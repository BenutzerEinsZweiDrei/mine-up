.class public final synthetic Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda7;->INSTANCE:Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda7;

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

    check-cast p1, Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;

    invoke-static {p1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->lambda$observeOnCharacteristicChangeCallbacks$8(Lcom/polidea/rxandroidble2/internal/util/CharacteristicChangedEvent;)[B

    move-result-object p1

    return-object p1
.end method
