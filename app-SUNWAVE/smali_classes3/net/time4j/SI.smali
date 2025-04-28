.class public final enum Lnet/time4j/SI;
.super Ljava/lang/Enum;
.source "SI.java"

# interfaces
.implements Lnet/time4j/engine/ChronoUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/SI;",
        ">;",
        "Lnet/time4j/engine/ChronoUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/SI;

.field public static final enum NANOSECONDS:Lnet/time4j/SI;

.field public static final enum SECONDS:Lnet/time4j/SI;


# instance fields
.field private final length:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v0, Lnet/time4j/SI;

    const-string v1, "SECONDS"

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/SI;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    .line 61
    new-instance v1, Lnet/time4j/SI;

    const-string v3, "NANOSECONDS"

    const/4 v4, 0x1

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    invoke-direct {v1, v3, v4, v5, v6}, Lnet/time4j/SI;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/time4j/SI;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 54
    sput-object v3, Lnet/time4j/SI;->$VALUES:[Lnet/time4j/SI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-wide p3, p0, Lnet/time4j/SI;->length:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/SI;
    .locals 1

    .line 54
    const-class v0, Lnet/time4j/SI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/SI;

    return-object p0
.end method

.method public static values()[Lnet/time4j/SI;
    .locals 1

    .line 54
    sget-object v0, Lnet/time4j/SI;->$VALUES:[Lnet/time4j/SI;

    invoke-virtual {v0}, [Lnet/time4j/SI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/SI;

    return-object v0
.end method


# virtual methods
.method public between(Lnet/time4j/Moment;Lnet/time4j/Moment;)J
    .locals 5

    .line 98
    invoke-static {p1}, Lnet/time4j/Moment;->check1972(Lnet/time4j/Moment;)V

    .line 99
    invoke-static {p2}, Lnet/time4j/Moment;->check1972(Lnet/time4j/Moment;)V

    .line 101
    sget-object v0, Lnet/time4j/SI$1;->$SwitchMap$net$time4j$SI:[I

    invoke-virtual {p0}, Lnet/time4j/SI;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 117
    sget-object v0, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 120
    invoke-virtual {p2, v0}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v0

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 121
    invoke-virtual {p1, v2}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v2

    .line 119
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    .line 118
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 125
    invoke-virtual {p2}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-long p1, p2

    .line 117
    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    return-wide p1

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 103
    :cond_1
    sget-object v0, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 104
    invoke-virtual {p2, v0}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v0

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 105
    invoke-virtual {p1, v2}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-gez v2, :cond_2

    .line 107
    invoke-virtual {p2}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    if-le p2, p1, :cond_3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    .line 111
    invoke-virtual {p2}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    if-ge p2, p1, :cond_3

    sub-long/2addr v0, v3

    :cond_3
    :goto_0
    return-wide v0
.end method

.method public getLength()D
    .locals 2

    .line 136
    iget-wide v0, p0, Lnet/time4j/SI;->length:D

    return-wide v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
