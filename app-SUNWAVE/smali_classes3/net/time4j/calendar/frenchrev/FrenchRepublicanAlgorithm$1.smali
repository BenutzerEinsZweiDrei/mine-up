.class final enum Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;
.super Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;
.source "FrenchRepublicanAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;-><init>(Ljava/lang/String;ILnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;)V

    return-void
.end method

.method private autumnalEquinox(I)Lnet/time4j/PlainDate;
    .locals 1

    .line 92
    sget-object v0, Lnet/time4j/calendar/astro/AstronomicalSeason;->AUTUMNAL_EQUINOX:Lnet/time4j/calendar/astro/AstronomicalSeason;

    add-int/lit16 p1, p1, 0x6ff

    .line 94
    invoke-virtual {v0, p1}, Lnet/time4j/calendar/astro/AstronomicalSeason;->inYear(I)Lnet/time4j/Moment;

    move-result-object p1

    .line 95
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->access$200()Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/astro/SolarTime;->apparentAt(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    .line 96
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isLeapYear(I)Z
    .locals 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0x4b2

    if-gt p1, v1, :cond_1

    .line 64
    invoke-direct {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;->autumnalEquinox(I)Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v1

    add-int/2addr p1, v0

    .line 65
    invoke-direct {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;->autumnalEquinox(I)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x16e

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J
    .locals 4

    .line 88
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getYear()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;->autumnalEquinox(I)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 89
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfYear()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 4

    .line 70
    invoke-static {p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->access$100(J)V

    .line 71
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result p2

    add-int/lit16 p2, p2, -0x6ff

    .line 73
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 76
    :cond_0
    invoke-direct {p0, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;->autumnalEquinox(I)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 77
    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1, v0, p1}, Lnet/time4j/CalendarUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 80
    invoke-direct {p0, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;->autumnalEquinox(I)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 81
    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1, v0, p1}, Lnet/time4j/CalendarUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 84
    new-instance v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-direct {v0, p2, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object v0
.end method
