.class public final Lnet/time4j/calendar/astro/JulianDay;
.super Ljava/lang/Object;
.source "JulianDay.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DAY_IN_SECONDS:I = 0x15180

.field public static final MAX:D = 2817152.0

.field public static final MIN:D = 990575.0

.field private static final MRD:I = 0x3b9aca00

.field private static final OFFSET_1970:J = 0x3118a36940L

.field private static final OFFSET_1972:J = 0x311c65d040L

.field private static final serialVersionUID:J = 0x6bfd89c63606543L


# instance fields
.field private final scale:Lnet/time4j/scale/TimeScale;

.field private final value:D


# direct methods
.method private constructor <init>(DLnet/time4j/scale/TimeScale;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p1, p2, p3}, Lnet/time4j/calendar/astro/JulianDay;->check(DLnet/time4j/scale/TimeScale;)V

    .line 127
    iput-wide p1, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    .line 128
    iput-object p3, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    return-void
.end method

.method private static check(DLnet/time4j/scale/TimeScale;)V
    .locals 2

    .line 573
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 577
    sget-object v0, Lnet/time4j/calendar/astro/JulianDay$1;->$SwitchMap$net$time4j$scale$TimeScale:[I

    invoke-virtual {p2}, Lnet/time4j/scale/TimeScale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported time scale: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-wide v0, 0x412e3ade00000000L    # 990575.0

    .line 581
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p2

    if-gtz p2, :cond_2

    const-wide v0, 0x41457e4000000000L    # 2817152.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p2

    if-gtz p2, :cond_2

    return-void

    .line 582
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 574
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value is not finite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D
    .locals 4

    .line 547
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v0

    invoke-static {p1}, Lnet/time4j/calendar/astro/JulianDay;->jdOffset(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 548
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result p0

    long-to-double v0, v0

    int-to-double p0, p0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v2

    add-double/2addr v0, p0

    const-wide p0, 0x40f5180000000000L    # 86400.0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static jdOffset(Lnet/time4j/scale/TimeScale;)J
    .locals 2

    .line 556
    sget-object v0, Lnet/time4j/calendar/astro/JulianDay$1;->$SwitchMap$net$time4j$scale$TimeScale:[I

    invoke-virtual {p0}, Lnet/time4j/scale/TimeScale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-wide v0, 0x3118a36940L

    return-wide v0

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/scale/TimeScale;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v0, 0x311c65d040L

    return-wide v0
.end method

.method public static ofEphemerisTime(D)Lnet/time4j/calendar/astro/JulianDay;
    .locals 2

    .line 158
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    sget-object v1, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, p0, p1, v1}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public static ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;
    .locals 3

    .line 186
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    sget-object v1, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-static {p0, v1}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide v1

    sget-object p0, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, p0}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public static ofEphemerisTime(Lnet/time4j/engine/CalendarDate;Lnet/time4j/PlainTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/astro/JulianDay;
    .locals 4

    .line 224
    sget-object v0, Lnet/time4j/engine/EpochDays;->JULIAN_DAY_NUMBER:Lnet/time4j/engine/EpochDays;

    invoke-interface {p0}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v1

    sget-object p0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1, v2, p0}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    .line 225
    sget-object p0, Lnet/time4j/PlainTime;->NANO_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, p0}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v2, 0x42d3a52453c00000L    # 8.64E13

    div-double/2addr p0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    add-double/2addr v0, p0

    .line 226
    invoke-virtual {p2}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result p0

    int-to-double p0, p0

    const-wide v2, 0x40f5180000000000L    # 86400.0

    div-double/2addr p0, v2

    sub-double/2addr v0, p0

    .line 227
    new-instance p0, Lnet/time4j/calendar/astro/JulianDay;

    sget-object p1, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-direct {p0, v0, v1, p1}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object p0
.end method

.method public static ofMeanSolarTime(D)Lnet/time4j/calendar/astro/JulianDay;
    .locals 2

    .line 253
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, p0, p1, v1}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public static ofMeanSolarTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;
    .locals 3

    .line 279
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    invoke-static {p0, v1}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide v1

    sget-object p0, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, p0}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public static ofSimplifiedTime(D)Lnet/time4j/calendar/astro/JulianDay;
    .locals 2

    .line 305
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, p0, p1, v1}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public static ofSimplifiedTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;
    .locals 3

    .line 331
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {p0, v1}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide v1

    sget-object p0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, p0}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 602
    iget-wide v0, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    iget-object p1, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    invoke-static {v0, v1, p1}, Lnet/time4j/calendar/astro/JulianDay;->check(DLnet/time4j/scale/TimeScale;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 606
    :catch_0
    new-instance p1, Ljava/io/StreamCorruptedException;

    invoke-direct {p1}, Ljava/io/StreamCorruptedException;-><init>()V

    throw p1

    .line 604
    :catch_1
    new-instance p1, Ljava/io/StreamCorruptedException;

    invoke-direct {p1}, Ljava/io/StreamCorruptedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 482
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/astro/JulianDay;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 483
    check-cast p1, Lnet/time4j/calendar/astro/JulianDay;

    .line 484
    iget-wide v3, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/JulianDay;->value:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    iget-object p1, p1, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getCenturyJ2000()D
    .locals 4

    .line 385
    iget-wide v0, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    const-wide v2, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v0, v2

    const-wide v2, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getMJD()D
    .locals 4

    .line 367
    iget-wide v0, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    const-wide v2, 0x41424f8040000000L    # 2400000.5

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()Lnet/time4j/scale/TimeScale;
    .locals 1

    .line 401
    iget-object v0, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 347
    iget-wide v0, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 494
    iget-wide v0, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v0

    iget-object v1, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    invoke-virtual {v1}, Lnet/time4j/scale/TimeScale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public minusDays(D)Lnet/time4j/calendar/astro/JulianDay;
    .locals 3

    .line 437
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    iget-wide v1, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    sub-double/2addr v1, p1

    iget-object p1, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, p1}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public minusSeconds(D)Lnet/time4j/calendar/astro/JulianDay;
    .locals 5

    .line 473
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    iget-wide v1, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    const-wide v3, 0x40f5180000000000L    # 86400.0

    div-double/2addr p1, v3

    sub-double/2addr v1, p1

    iget-object p1, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, p1}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public plusDays(D)Lnet/time4j/calendar/astro/JulianDay;
    .locals 3

    .line 419
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    iget-wide v1, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    add-double/2addr v1, p1

    iget-object p1, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, p1}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public plusSeconds(D)Lnet/time4j/calendar/astro/JulianDay;
    .locals 5

    .line 455
    new-instance v0, Lnet/time4j/calendar/astro/JulianDay;

    iget-wide v1, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    const-wide v3, 0x40f5180000000000L    # 86400.0

    div-double/2addr p1, v3

    add-double/2addr v1, p1

    iget-object p1, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, p1}, Lnet/time4j/calendar/astro/JulianDay;-><init>(DLnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public toMoment()Lnet/time4j/Moment;
    .locals 7

    .line 522
    iget-wide v0, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    const-wide v2, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v0, v2

    .line 523
    iget-object v2, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    .line 525
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-eq v2, v3, :cond_1

    .line 526
    sget-object v3, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    if-ne v2, v3, :cond_0

    .line 527
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/JulianDay;->getMJD()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    sget-object v4, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-static {v2, v3, v4}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Lnet/time4j/PlainDate;->getYear()I

    move-result v3

    invoke-virtual {v2}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v2

    invoke-static {v3, v2}, Lnet/time4j/scale/TimeScale;->deltaT(II)D

    move-result-wide v2

    sub-double/2addr v0, v2

    :cond_0
    const-wide v2, 0x418e133800000000L    # 6.3072E7

    add-double/2addr v0, v2

    .line 531
    sget-object v2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    :cond_1
    double-to-long v3, v0

    .line 534
    invoke-static {v2}, Lnet/time4j/calendar/astro/JulianDay;->jdOffset(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v3

    .line 535
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v0, v5

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, v5

    double-to-int v0, v0

    .line 537
    invoke-static {v3, v4, v0, v2}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JD("

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v1, p0, Lnet/time4j/calendar/astro/JulianDay;->scale:Lnet/time4j/scale/TimeScale;

    invoke-virtual {v1}, Lnet/time4j/scale/TimeScale;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    iget-wide v1, p0, Lnet/time4j/calendar/astro/JulianDay;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
