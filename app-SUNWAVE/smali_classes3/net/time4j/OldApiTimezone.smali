.class final Lnet/time4j/OldApiTimezone;
.super Ljava/util/TimeZone;
.source "OldApiTimezone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x60087612c3b0d237L


# instance fields
.field private final tz:Lnet/time4j/tz/Timezone;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/Timezone;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 56
    iput-object p1, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    .line 58
    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object p1

    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/OldApiTimezone;->setID(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 180
    instance-of v0, p1, Lnet/time4j/OldApiTimezone;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lnet/time4j/OldApiTimezone;

    .line 182
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    iget-object p1, p1, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDSTSavings()I
    .locals 5

    .line 113
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_2

    .line 117
    invoke-interface {v0}, Lnet/time4j/tz/TransitionHistory;->getStdTransitions()Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v1

    :goto_0
    if-ltz v2, :cond_3

    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v4}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v4

    if-ne v3, v1, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    if-eq v3, v4, :cond_1

    .line 123
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :cond_3
    if-ne v3, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    mul-int/lit16 v0, v3, 0x3e8

    :goto_2
    return v0
.end method

.method getDelegate()Lnet/time4j/tz/Timezone;
    .locals 1

    .line 205
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    return-object v0
.end method

.method public getOffset(IIIIII)I
    .locals 1

    if-ltz p6, :cond_3

    const v0, 0x5265c00

    if-ge p6, v0, :cond_3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    rsub-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    if-lt p5, v0, :cond_1

    const/4 p1, 0x7

    if-gt p5, p1, :cond_1

    .line 89
    :goto_0
    iget-object p1, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    add-int/2addr p3, v0

    .line 90
    invoke-static {p2, p3, p4}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 91
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object p3

    int-to-long p4, p6

    sget-object p6, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    invoke-virtual {p3, p4, p5, p6}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p3

    check-cast p3, Lnet/time4j/base/WallTime;

    .line 89
    invoke-virtual {p1, p2, p3}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    return p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Day-of-week out of range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown era: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Milliseconds out of range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOffset(J)I
    .locals 2

    .line 68
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    sget-object v1, Lnet/time4j/TemporalType;->MILLIS_SINCE_UNIX:Lnet/time4j/TemporalType;

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/time4j/TemporalType;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/base/UnixTime;

    .line 68
    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    return p1
.end method

.method public getRawOffset()I
    .locals 2

    .line 106
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-static {}, Lnet/time4j/SystemClock;->currentMoment()Lnet/time4j/Moment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/tz/Timezone;->getStandardOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 168
    :cond_0
    instance-of v0, p1, Lnet/time4j/OldApiTimezone;

    if-eqz v0, :cond_1

    .line 169
    check-cast p1, Lnet/time4j/OldApiTimezone;

    .line 170
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v0

    iget-object p1, p1, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 192
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 2

    .line 159
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    sget-object v1, Lnet/time4j/TemporalType;->JAVA_UTIL_DATE:Lnet/time4j/TemporalType;

    invoke-virtual {v1, p1}, Lnet/time4j/TemporalType;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/base/UnixTime;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->isDaylightSaving(Lnet/time4j/base/UnixTime;)Z

    move-result p1

    return p1
.end method

.method public setRawOffset(I)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 6

    .line 135
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->isFixed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lnet/time4j/OldApiTimezone;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 139
    invoke-interface {v0}, Lnet/time4j/tz/TransitionHistory;->getStdTransitions()Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/high16 v3, -0x80000000

    move v4, v3

    :goto_0
    if-ltz v1, :cond_2

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v5}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v5

    if-ne v4, v3, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    if-eq v4, v5, :cond_1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
