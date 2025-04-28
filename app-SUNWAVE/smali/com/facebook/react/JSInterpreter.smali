.class public final enum Lcom/facebook/react/JSInterpreter;
.super Ljava/lang/Enum;
.source "JSInterpreter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/react/JSInterpreter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/react/JSInterpreter;

.field public static final enum HERMES:Lcom/facebook/react/JSInterpreter;

.field public static final enum JSC:Lcom/facebook/react/JSInterpreter;

.field public static final enum OLD_LOGIC:Lcom/facebook/react/JSInterpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/facebook/react/JSInterpreter;

    const-string v1, "OLD_LOGIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/JSInterpreter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/react/JSInterpreter;->OLD_LOGIC:Lcom/facebook/react/JSInterpreter;

    .line 16
    new-instance v1, Lcom/facebook/react/JSInterpreter;

    const-string v3, "JSC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/react/JSInterpreter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/react/JSInterpreter;->JSC:Lcom/facebook/react/JSInterpreter;

    .line 17
    new-instance v3, Lcom/facebook/react/JSInterpreter;

    const-string v5, "HERMES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/react/JSInterpreter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/react/JSInterpreter;->HERMES:Lcom/facebook/react/JSInterpreter;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/react/JSInterpreter;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 14
    sput-object v5, Lcom/facebook/react/JSInterpreter;->$VALUES:[Lcom/facebook/react/JSInterpreter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/react/JSInterpreter;
    .locals 1

    .line 14
    const-class v0, Lcom/facebook/react/JSInterpreter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/JSInterpreter;

    return-object p0
.end method

.method public static values()[Lcom/facebook/react/JSInterpreter;
    .locals 1

    .line 14
    sget-object v0, Lcom/facebook/react/JSInterpreter;->$VALUES:[Lcom/facebook/react/JSInterpreter;

    invoke-virtual {v0}, [Lcom/facebook/react/JSInterpreter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/JSInterpreter;

    return-object v0
.end method
