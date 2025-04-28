.class public final enum Lnet/time4j/tz/GapResolver;
.super Ljava/lang/Enum;
.source "GapResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/tz/GapResolver;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/tz/GapResolver;

.field public static final enum ABORT:Lnet/time4j/tz/GapResolver;

.field public static final enum NEXT_VALID_TIME:Lnet/time4j/tz/GapResolver;

.field public static final enum PUSH_FORWARD:Lnet/time4j/tz/GapResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 61
    new-instance v0, Lnet/time4j/tz/GapResolver;

    const-string v1, "PUSH_FORWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/tz/GapResolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/tz/GapResolver;->PUSH_FORWARD:Lnet/time4j/tz/GapResolver;

    .line 79
    new-instance v1, Lnet/time4j/tz/GapResolver;

    const-string v3, "NEXT_VALID_TIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/tz/GapResolver;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/tz/GapResolver;->NEXT_VALID_TIME:Lnet/time4j/tz/GapResolver;

    .line 89
    new-instance v3, Lnet/time4j/tz/GapResolver;

    const-string v5, "ABORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/tz/GapResolver;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/tz/GapResolver;->ABORT:Lnet/time4j/tz/GapResolver;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/time4j/tz/GapResolver;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 41
    sput-object v5, Lnet/time4j/tz/GapResolver;->$VALUES:[Lnet/time4j/tz/GapResolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/tz/GapResolver;
    .locals 1

    .line 41
    const-class v0, Lnet/time4j/tz/GapResolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/GapResolver;

    return-object p0
.end method

.method public static values()[Lnet/time4j/tz/GapResolver;
    .locals 1

    .line 41
    sget-object v0, Lnet/time4j/tz/GapResolver;->$VALUES:[Lnet/time4j/tz/GapResolver;

    invoke-virtual {v0}, [Lnet/time4j/tz/GapResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/tz/GapResolver;

    return-object v0
.end method


# virtual methods
.method public and(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;
    .locals 0

    .line 113
    invoke-static {p0, p1}, Lnet/time4j/tz/TransitionResolver;->of(Lnet/time4j/tz/GapResolver;Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionResolver;

    move-result-object p1

    return-object p1
.end method
