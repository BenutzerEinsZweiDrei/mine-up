.class public final enum Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;
.super Ljava/lang/Enum;
.source "AnimationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

.field public static final enum Appearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

.field public static final enum Disappearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

.field public static final enum Inactive:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

.field public static final enum Layout:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

.field public static final enum ToRemove:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 65
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    const-string v1, "Inactive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Inactive:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 66
    new-instance v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    const-string v3, "Appearing"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Appearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 67
    new-instance v3, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    const-string v5, "Disappearing"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Disappearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 68
    new-instance v5, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    const-string v7, "Layout"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Layout:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 69
    new-instance v7, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    const-string v9, "ToRemove"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->ToRemove:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 64
    sput-object v9, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->$VALUES:[Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;
    .locals 1

    .line 64
    const-class v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;
    .locals 1

    .line 64
    sget-object v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->$VALUES:[Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-virtual {v0}, [Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    return-object v0
.end method
