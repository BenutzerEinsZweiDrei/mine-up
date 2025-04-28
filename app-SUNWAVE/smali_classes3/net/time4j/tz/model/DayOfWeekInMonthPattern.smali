.class final Lnet/time4j/tz/model/DayOfWeekInMonthPattern;
.super Lnet/time4j/tz/model/GregorianTimezoneRule;
.source "DayOfWeekInMonthPattern.java"


# static fields
.field private static final serialVersionUID:J = -0x6610f811b5b27227L


# instance fields
.field private final transient after:Z

.field private final transient dayOfMonth:B

.field private final transient dayOfWeek:B


# direct methods
.method constructor <init>(Lnet/time4j/Month;ILnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;IZ)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p4, p5, p6}, Lnet/time4j/tz/model/GregorianTimezoneRule;-><init>(Lnet/time4j/Month;ILnet/time4j/tz/model/OffsetIndicator;I)V

    .line 68
    invoke-virtual {p1}, Lnet/time4j/Month;->getValue()I

    move-result p1

    const/16 p4, 0x7d0

    invoke-static {p4, p1, p2}, Lnet/time4j/base/GregorianMath;->checkDate(III)V

    int-to-byte p1, p2

    .line 69
    iput-byte p1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfMonth:B

    .line 70
    invoke-virtual {p3}, Lnet/time4j/Weekday;->getValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfWeek:B

    .line 71
    iput-boolean p7, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->after:Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 214
    new-instance v0, Lnet/time4j/tz/model/SPX;

    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getType()I

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

    .line 109
    :cond_0
    instance-of v1, p1, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 110
    check-cast p1, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;

    .line 111
    iget-byte v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfMonth:B

    iget-byte v3, p1, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfMonth:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfWeek:B

    iget-byte v3, p1, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfWeek:B

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->after:Z

    iget-boolean v3, p1, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->after:Z

    if-ne v1, v3, :cond_1

    .line 115
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
    .locals 3

    .line 80
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getMonthValue()B

    move-result v0

    .line 81
    iget-byte v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfMonth:B

    invoke-static {p1, v0, v1}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result v1

    .line 82
    iget-byte v2, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfMonth:B

    invoke-static {p1, v0, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    .line 84
    iget-byte v0, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfWeek:B

    if-ne v1, v0, :cond_0

    return-object p1

    :cond_0
    sub-int/2addr v1, v0

    const/4 v0, -0x1

    .line 91
    iget-boolean v2, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->after:Z

    if-eqz v2, :cond_1

    neg-int v1, v1

    const/4 v0, 0x1

    :cond_1
    if-gez v1, :cond_2

    add-int/lit8 v1, v1, 0x7

    :cond_2
    mul-int/2addr v1, v0

    int-to-long v0, v1

    .line 100
    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method

.method getDayOfMonth()I
    .locals 1

    .line 164
    iget-byte v0, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfMonth:B

    return v0
.end method

.method getDayOfWeek()B
    .locals 1

    .line 175
    iget-byte v0, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfWeek:B

    return v0
.end method

.method getType()I
    .locals 1

    const/16 v0, 0x79

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 126
    iget-byte v0, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfMonth:B

    .line 127
    iget-byte v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfWeek:B

    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getMonthValue()B

    move-result v2

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 128
    iget-boolean v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->after:Z

    add-int/2addr v0, v1

    return v0
.end method

.method isAfter()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->after:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DayOfWeekInMonthPattern:[month="

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getMonthValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dayOfMonth="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-byte v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfMonth:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dayOfWeek="

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-byte v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->dayOfWeek:B

    invoke-static {v1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",day-overflow="

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getDayOverflow()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",time-of-day="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getTimeOfDay()Lnet/time4j/PlainTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",offset-indicator="

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getIndicator()Lnet/time4j/tz/model/OffsetIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",dst-offset="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getSavings()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",after="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-boolean v1, p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->after:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
