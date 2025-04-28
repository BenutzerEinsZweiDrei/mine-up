.class public final enum Lnet/time4j/tz/OverlapResolver;
.super Ljava/lang/Enum;
.source "OverlapResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/tz/OverlapResolver;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/tz/OverlapResolver;

.field public static final enum EARLIER_OFFSET:Lnet/time4j/tz/OverlapResolver;

.field public static final enum LATER_OFFSET:Lnet/time4j/tz/OverlapResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Lnet/time4j/tz/OverlapResolver;

    const-string v1, "EARLIER_OFFSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/tz/OverlapResolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/tz/OverlapResolver;->EARLIER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    .line 67
    new-instance v1, Lnet/time4j/tz/OverlapResolver;

    const-string v3, "LATER_OFFSET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/tz/OverlapResolver;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/tz/OverlapResolver;->LATER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/tz/OverlapResolver;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 41
    sput-object v3, Lnet/time4j/tz/OverlapResolver;->$VALUES:[Lnet/time4j/tz/OverlapResolver;

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

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/tz/OverlapResolver;
    .locals 1

    .line 41
    const-class v0, Lnet/time4j/tz/OverlapResolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/OverlapResolver;

    return-object p0
.end method

.method public static values()[Lnet/time4j/tz/OverlapResolver;
    .locals 1

    .line 41
    sget-object v0, Lnet/time4j/tz/OverlapResolver;->$VALUES:[Lnet/time4j/tz/OverlapResolver;

    invoke-virtual {v0}, [Lnet/time4j/tz/OverlapResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/tz/OverlapResolver;

    return-object v0
.end method


# virtual methods
.method public and(Lnet/time4j/tz/GapResolver;)Lnet/time4j/tz/TransitionStrategy;
    .locals 0

    .line 91
    invoke-virtual {p1, p0}, Lnet/time4j/tz/GapResolver;->and(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;

    move-result-object p1

    return-object p1
.end method
