.class final enum Lcom/beefe/picker/view/LoopView$ACTION;
.super Ljava/lang/Enum;
.source "LoopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beefe/picker/view/LoopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beefe/picker/view/LoopView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beefe/picker/view/LoopView$ACTION;

.field public static final enum CLICK:Lcom/beefe/picker/view/LoopView$ACTION;

.field public static final enum DRAG:Lcom/beefe/picker/view/LoopView$ACTION;

.field public static final enum FLING:Lcom/beefe/picker/view/LoopView$ACTION;


# direct methods
.method private static synthetic $values()[Lcom/beefe/picker/view/LoopView$ACTION;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/beefe/picker/view/LoopView$ACTION;

    .line 34
    sget-object v1, Lcom/beefe/picker/view/LoopView$ACTION;->CLICK:Lcom/beefe/picker/view/LoopView$ACTION;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beefe/picker/view/LoopView$ACTION;->FLING:Lcom/beefe/picker/view/LoopView$ACTION;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/beefe/picker/view/LoopView$ACTION;->DRAG:Lcom/beefe/picker/view/LoopView$ACTION;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/beefe/picker/view/LoopView$ACTION;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beefe/picker/view/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beefe/picker/view/LoopView$ACTION;->CLICK:Lcom/beefe/picker/view/LoopView$ACTION;

    new-instance v0, Lcom/beefe/picker/view/LoopView$ACTION;

    const-string v1, "FLING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/beefe/picker/view/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beefe/picker/view/LoopView$ACTION;->FLING:Lcom/beefe/picker/view/LoopView$ACTION;

    new-instance v0, Lcom/beefe/picker/view/LoopView$ACTION;

    const-string v1, "DRAG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/beefe/picker/view/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beefe/picker/view/LoopView$ACTION;->DRAG:Lcom/beefe/picker/view/LoopView$ACTION;

    .line 34
    invoke-static {}, Lcom/beefe/picker/view/LoopView$ACTION;->$values()[Lcom/beefe/picker/view/LoopView$ACTION;

    move-result-object v0

    sput-object v0, Lcom/beefe/picker/view/LoopView$ACTION;->$VALUES:[Lcom/beefe/picker/view/LoopView$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beefe/picker/view/LoopView$ACTION;
    .locals 1

    .line 34
    const-class v0, Lcom/beefe/picker/view/LoopView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beefe/picker/view/LoopView$ACTION;

    return-object p0
.end method

.method public static values()[Lcom/beefe/picker/view/LoopView$ACTION;
    .locals 1

    .line 34
    sget-object v0, Lcom/beefe/picker/view/LoopView$ACTION;->$VALUES:[Lcom/beefe/picker/view/LoopView$ACTION;

    invoke-virtual {v0}, [Lcom/beefe/picker/view/LoopView$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beefe/picker/view/LoopView$ACTION;

    return-object v0
.end method
