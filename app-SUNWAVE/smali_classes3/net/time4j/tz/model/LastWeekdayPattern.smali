.class final Lnet/time4j/tz/model/LastWeekdayPattern;
.super Lnet/time4j/tz/model/GregorianTimezoneRule;
.source "LastWeekdayPattern.java"


# static fields
.field private static final serialVersionUID:J = -0xd23d9560fbf6e14L


# instance fields
.field private final transient dayOfWeek:B


# direct methods
.method constructor <init>(Lnet/time4j/Month;Lnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p3, p4, p5}, Lnet/time4j/tz/model/GregorianTimezoneRule;-><init>(Lnet/time4j/Month;ILnet/time4j/tz/model/OffsetIndicator;I)V

    .line 61
    invoke-virtual {p2}, Lnet/time4j/Weekday;->getValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/time4j/tz/model/LastWeekdayPattern;->dayOfWeek:B

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 163
    new-instance v0, Lnet/time4j/tz/model/SPX;

    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getType()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/model/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lnet/time4j/tz/model/LastWeekdayPattern;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 89
    check-cast p1, Lnet/time4j/tz/model/LastWeekdayPattern;

    .line 90
    iget-byte v1, p0, Lnet/time4j/tz/model/LastWeekdayPattern;->dayOfWeek:B

    iget-byte v3, p1, Lnet/time4j/tz/model/LastWeekdayPattern;->dayOfWeek:B

    if-ne v1, v3, :cond_1

    .line 92
    invoke-super {p0, p1}, Lnet/time4j/tz/model/GregorianTimezoneRule;->isEqual(Lnet/time4j/tz/model/GregorianTimezoneRule;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method protected getDate0(I)Lnet/time4j/PlainDate;
    .locals 4

    .line 70
    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getMonthValue()B

    move-result v0

    .line 71
    invoke-static {p1, v0}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v1

    .line 72
    invoke-static {p1, v0, v1}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result v2

    .line 73
    iget-byte v3, p0, Lnet/time4j/tz/model/LastWeekdayPattern;->dayOfWeek:B

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    add-int/lit8 v2, v2, 0x7

    :cond_0
    sub-int/2addr v1, v2

    .line 79
    invoke-static {p1, v0, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method getDayOfWeek()B
    .locals 1

    .line 135
    iget-byte v0, p0, Lnet/time4j/tz/model/LastWeekdayPattern;->dayOfWeek:B

    return v0
.end method

.method getType()I
    .locals 1

    const/16 v0, 0x7a

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget-byte v0, p0, Lnet/time4j/tz/model/LastWeekdayPattern;->dayOfWeek:B

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getMonthValue()B

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LastDayOfWeekPattern:[month="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getMonthValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",day-of-week="

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-byte v1, p0, Lnet/time4j/tz/model/LastWeekdayPattern;->dayOfWeek:B

    invoke-static {v1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",day-overflow="

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getDayOverflow()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",time-of-day="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getTimeOfDay()Lnet/time4j/PlainTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",offset-indicator="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getIndicator()Lnet/time4j/tz/model/OffsetIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",dst-offset="

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getSavings()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
