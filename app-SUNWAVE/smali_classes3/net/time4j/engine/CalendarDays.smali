.class public final Lnet/time4j/engine/CalendarDays;
.super Ljava/lang/Object;
.source "CalendarDays.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/engine/CalendarDays;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ONE:Lnet/time4j/engine/CalendarDays;

.field public static final ZERO:Lnet/time4j/engine/CalendarDays;


# instance fields
.field private final days:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lnet/time4j/engine/CalendarDays;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/engine/CalendarDays;-><init>(J)V

    sput-object v0, Lnet/time4j/engine/CalendarDays;->ZERO:Lnet/time4j/engine/CalendarDays;

    .line 66
    new-instance v0, Lnet/time4j/engine/CalendarDays;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lnet/time4j/engine/CalendarDays;-><init>(J)V

    sput-object v0, Lnet/time4j/engine/CalendarDays;->ONE:Lnet/time4j/engine/CalendarDays;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide p1, p0, Lnet/time4j/engine/CalendarDays;->days:J

    return-void
.end method

.method public static between(Lnet/time4j/engine/CalendarDate;Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDays;
    .locals 2

    .line 184
    invoke-interface {p0}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 185
    invoke-interface {p1}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide p0

    .line 186
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p0

    return-object p0
.end method

.method public static of(J)Lnet/time4j/engine/CalendarDays;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 105
    sget-object p0, Lnet/time4j/engine/CalendarDays;->ZERO:Lnet/time4j/engine/CalendarDays;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    sget-object p0, Lnet/time4j/engine/CalendarDays;->ONE:Lnet/time4j/engine/CalendarDays;

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/time4j/engine/CalendarDays;

    invoke-direct {v0, p0, p1}, Lnet/time4j/engine/CalendarDays;-><init>(J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abs()Lnet/time4j/engine/CalendarDays;
    .locals 4

    .line 204
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lnet/time4j/engine/CalendarDays;->inverse()Lnet/time4j/engine/CalendarDays;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lnet/time4j/engine/CalendarDays;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarDays;->compareTo(Lnet/time4j/engine/CalendarDays;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/engine/CalendarDays;)I
    .locals 4

    .line 269
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    iget-wide v2, p1, Lnet/time4j/engine/CalendarDays;->days:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 278
    :cond_0
    instance-of v1, p1, Lnet/time4j/engine/CalendarDays;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 279
    iget-wide v3, p0, Lnet/time4j/engine/CalendarDays;->days:J

    check-cast p1, Lnet/time4j/engine/CalendarDays;

    iget-wide v5, p1, Lnet/time4j/engine/CalendarDays;->days:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAmount()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 289
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public inverse()Lnet/time4j/engine/CalendarDays;
    .locals 2

    .line 222
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object v0

    return-object v0
.end method

.method public isNegative()Z
    .locals 4

    .line 159
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 4

    .line 141
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarDays;
    .locals 4

    .line 262
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    iget-wide v2, p1, Lnet/time4j/engine/CalendarDays;->days:J

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarDays;
    .locals 4

    .line 242
    iget-wide v0, p0, Lnet/time4j/engine/CalendarDays;->days:J

    iget-wide v2, p1, Lnet/time4j/engine/CalendarDays;->days:J

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    iget-wide v1, p0, Lnet/time4j/engine/CalendarDays;->days:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/16 v1, 0x2d

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x50

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    iget-wide v1, p0, Lnet/time4j/engine/CalendarDays;->days:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
