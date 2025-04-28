.class public final synthetic Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;->INSTANCE:Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/uuid/Uuid;

    check-cast p2, Lkotlin/uuid/Uuid;

    invoke-static {p1, p2}, Lkotlin/uuid/Uuid;->$r8$lambda$q9JWprOZf9R20M1wUt747sCp_j4(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I

    move-result p1

    return p1
.end method
