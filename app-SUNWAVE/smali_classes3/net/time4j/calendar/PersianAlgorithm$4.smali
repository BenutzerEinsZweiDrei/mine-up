.class final enum Lnet/time4j/calendar/PersianAlgorithm$4;
.super Lnet/time4j/calendar/PersianAlgorithm;
.source "PersianAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/PersianAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/PersianAlgorithm;-><init>(Ljava/lang/String;ILnet/time4j/calendar/PersianAlgorithm$1;)V

    return-void
.end method

.method private vernalEquinox(ILnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainDate;
    .locals 2

    .line 431
    sget-object v0, Lnet/time4j/calendar/astro/AstronomicalSeason;->VERNAL_EQUINOX:Lnet/time4j/calendar/astro/AstronomicalSeason;

    add-int/lit16 p1, p1, 0x26d

    .line 432
    invoke-virtual {v0, p1}, Lnet/time4j/calendar/astro/AstronomicalSeason;->inYear(I)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {p2}, Lnet/time4j/calendar/astro/SolarTime;->apparentAt(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/Moment;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    .line 433
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getHour()I

    move-result p2

    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    .line 434
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p1

    const-wide/16 v0, 0x1

    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v0, v1, p2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 436
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getMaxPersianYear()I
    .locals 1

    const/16 v0, 0x94a

    return v0
.end method

.method isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z
    .locals 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lnet/time4j/calendar/PersianAlgorithm$4;->getMaxPersianYear()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 379
    new-instance v1, Lnet/time4j/calendar/PersianCalendar;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, v2, v0, v0}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    .line 380
    new-instance v2, Lnet/time4j/calendar/PersianCalendar;

    invoke-direct {v2, p1, v0, v0}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    .line 381
    invoke-virtual {p0, v1, p2}, Lnet/time4j/calendar/PersianAlgorithm$4;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide v3

    invoke-virtual {p0, v2, p2}, Lnet/time4j/calendar/PersianAlgorithm$4;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide p1

    sub-long/2addr v3, p1

    const-wide/16 p1, 0x16e

    cmp-long p1, v3, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 377
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J
    .locals 4

    .line 421
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getYear()I

    move-result v0

    .line 422
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getMonth()Lnet/time4j/calendar/PersianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/PersianMonth;->getValue()I

    move-result v1

    .line 423
    invoke-direct {p0, v0, p2}, Lnet/time4j/calendar/PersianAlgorithm$4;->vernalEquinox(ILnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainDate;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v2

    add-int/lit8 p2, v1, -0x1

    mul-int/lit8 p2, p2, 0x1f

    .line 424
    div-int/lit8 v0, v1, 0x7

    add-int/lit8 v1, v1, -0x7

    mul-int/2addr v0, v1

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getDayOfMonth()I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-long p1, p2

    add-long/2addr v2, p1

    return-wide v2
.end method

.method transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;
    .locals 4

    const-wide/32 v0, -0x785c5

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    const-wide/32 v0, 0x5bafc

    cmp-long v0, p1, v0

    if-gtz v0, :cond_5

    .line 391
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result p2

    add-int/lit16 p2, p2, -0x26d

    .line 393
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 396
    :cond_0
    invoke-direct {p0, p2, p3}, Lnet/time4j/calendar/PersianAlgorithm$4;->vernalEquinox(ILnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 397
    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1, v0, p1}, Lnet/time4j/CalendarUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 400
    invoke-direct {p0, p2, p3}, Lnet/time4j/calendar/PersianAlgorithm$4;->vernalEquinox(ILnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 401
    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1, v0, p1}, Lnet/time4j/CalendarUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    const/16 p3, 0xc

    if-ge p1, p3, :cond_4

    const/4 p3, 0x6

    if-gt p1, p3, :cond_2

    const/16 p3, 0x1f

    goto :goto_2

    :cond_2
    const/16 p3, 0x1e

    :goto_2
    int-to-long v2, p3

    cmp-long p3, v0, v2

    if-gez p3, :cond_3

    goto :goto_3

    :cond_3
    sub-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int p3, v0

    .line 414
    new-instance v0, Lnet/time4j/calendar/PersianCalendar;

    invoke-direct {v0, p2, p1, p3}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    return-object v0

    .line 389
    :cond_5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
