.class abstract Lnet/time4j/calendar/EastAsianCS;
.super Ljava/lang/Object;
.source "EastAsianCS.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/calendar/EastAsianCalendar<",
        "*TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "TD;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_REFORM_1645:J

.field private static final EPOCH_CHINESE:J

.field private static final MAX_LIMIT:J

.field static final MEAN_SYNODIC_MONTH:D = 29.530588861

.field static final MEAN_TROPICAL_YEAR:D = 365.242189


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x66d

    const/4 v1, 0x1

    const/16 v2, 0x1c

    .line 44
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v2

    sput-wide v2, Lnet/time4j/calendar/EastAsianCS;->CALENDAR_REFORM_1645:J

    const/16 v0, 0xbb8

    const/16 v2, 0x1b

    .line 45
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/EastAsianCS;->MAX_LIMIT:J

    const/16 v0, -0xa4c

    const/4 v1, 0x2

    const/16 v2, 0xf

    .line 47
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sput-wide v0, Lnet/time4j/calendar/EastAsianCS;->EPOCH_CHINESE:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private firstDayOfMonth(IILnet/time4j/calendar/EastAsianMonth;)J
    .locals 2

    .line 283
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->newYear(II)J

    move-result-wide p1

    .line 284
    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x1d

    int-to-long v0, v0

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide p1

    .line 286
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/time4j/calendar/EastAsianMonth;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-wide p1

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 289
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private hasLeapMonth(JJ)Z
    .locals 1

    cmp-long v0, p3, p1

    if-ltz v0, :cond_1

    .line 273
    invoke-virtual {p0, p3, p4}, Lnet/time4j/calendar/EastAsianCS;->hasNoMajorSolarTerm(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3, p4}, Lnet/time4j/calendar/EastAsianCS;->newMoonBefore(J)J

    move-result-wide p3

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/EastAsianCS;->hasLeapMonth(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static lunations(JJ)J
    .locals 0

    sub-long/2addr p2, p0

    long-to-double p0, p2

    const-wide p2, 0x403d87d4abed9decL    # 29.530588861

    div-double/2addr p0, p2

    .line 241
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private newMoonBefore(J)J
    .locals 2

    .line 235
    sget-object v0, Lnet/time4j/calendar/astro/MoonPhase;->NEW_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->midnight(J)Lnet/time4j/Moment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/astro/MoonPhase;->before(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object v0

    .line 236
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->getOffset(J)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide p1

    return-wide p1
.end method

.method private newYearInSui(J)J
    .locals 8

    .line 246
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->winterOnOrBefore(J)J

    move-result-wide p1

    const-wide/16 v0, 0x172

    add-long/2addr v0, p1

    .line 247
    invoke-direct {p0, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->winterOnOrBefore(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    .line 248
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide p1

    add-long v4, p1, v2

    .line 249
    invoke-virtual {p0, v4, v5}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide v4

    add-long/2addr v0, v2

    .line 250
    invoke-direct {p0, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->newMoonBefore(J)J

    move-result-wide v0

    .line 252
    invoke-static {p1, p2, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->lunations(JJ)J

    move-result-wide v0

    const-wide/16 v6, 0xc

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->hasNoMajorSolarTerm(J)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v4, v5}, Lnet/time4j/calendar/EastAsianCS;->hasNoMajorSolarTerm(J)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    add-long/2addr v4, v2

    .line 253
    invoke-virtual {p0, v4, v5}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    return-wide v4
.end method

.method private newYearOnOrBefore(J)J
    .locals 3

    .line 261
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->newYearInSui(J)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xb4

    sub-long/2addr p1, v0

    .line 265
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->newYearInSui(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private winterOnOrBefore(J)J
    .locals 2

    .line 295
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->getOffset(J)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    .line 296
    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v1}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result p2

    const/16 v1, 0xb

    if-le p2, v1, :cond_1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p2

    const/16 v1, 0xf

    if-gt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 298
    :goto_1
    sget-object v1, Lnet/time4j/calendar/astro/AstronomicalSeason;->WINTER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;

    invoke-virtual {v1, p2}, Lnet/time4j/calendar/astro/AstronomicalSeason;->inYear(I)Lnet/time4j/Moment;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v1

    .line 300
    invoke-virtual {v1, p1}, Lnet/time4j/PlainDate;->isAfter(Lnet/time4j/engine/CalendarDate;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 301
    sget-object p1, Lnet/time4j/calendar/astro/AstronomicalSeason;->WINTER_SOLSTICE:Lnet/time4j/calendar/astro/AstronomicalSeason;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/astro/AstronomicalSeason;->inYear(I)Lnet/time4j/Moment;

    move-result-object p1

    .line 302
    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v1

    .line 304
    :cond_2
    invoke-virtual {v1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method abstract create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lnet/time4j/calendar/EastAsianMonth;",
            "IJ)TD;"
        }
    .end annotation
.end method

.method final getLeapMonth(II)I
    .locals 4

    .line 135
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonths()[I

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    .line 137
    aget v1, v0, p2

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    .line 140
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 141
    aget v3, v0, v1

    if-ge v3, p1, :cond_0

    sub-int v3, p1, v3

    .line 144
    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 148
    aget p2, v0, v1

    :cond_2
    :goto_1
    return p2
.end method

.method abstract getLeapMonths()[I
.end method

.method final getMajorSolarTerm(J)I
    .locals 2

    .line 208
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->midnight(J)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide p1

    .line 209
    invoke-static {p1, p2}, Lnet/time4j/calendar/SolarTerm;->solarLongitude(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x2

    const/16 p2, 0xc

    rem-int/2addr p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    return p2
.end method

.method public final getMaximumSinceUTC()J
    .locals 2

    .line 114
    sget-wide v0, Lnet/time4j/calendar/EastAsianCS;->MAX_LIMIT:J

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    .line 107
    sget-wide v0, Lnet/time4j/calendar/EastAsianCS;->CALENDAR_REFORM_1645:J

    return-wide v0
.end method

.method abstract getOffset(J)Lnet/time4j/tz/ZonalOffset;
.end method

.method final hasNoMajorSolarTerm(J)Z
    .locals 6

    .line 215
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->midnight(J)Lnet/time4j/Moment;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide v0

    .line 216
    invoke-static {v0, v1}, Lnet/time4j/calendar/SolarTerm;->solarLongitude(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0xc

    const-wide/16 v4, 0x1

    add-long/2addr p1, v4

    .line 217
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->midnight(J)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide p1

    .line 218
    invoke-static {p1, p2}, Lnet/time4j/calendar/SolarTerm;->solarLongitude(D)D

    move-result-wide p1

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x2

    rem-int/lit8 p1, p1, 0xc

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isValid(IILnet/time4j/calendar/EastAsianMonth;I)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x48

    if-lt p1, v1, :cond_5

    const/16 v2, 0x5e

    if-gt p1, v2, :cond_5

    const/4 v3, 0x1

    if-lt p2, v3, :cond_5

    const/16 v4, 0x3c

    if-gt p2, v4, :cond_5

    if-ne p1, v1, :cond_0

    const/16 v1, 0x16

    if-lt p2, v1, :cond_5

    :cond_0
    if-ne p1, v2, :cond_1

    const/16 v1, 0x38

    if-gt p2, v1, :cond_5

    :cond_1
    if-lt p4, v3, :cond_5

    const/16 v1, 0x1e

    if-gt p4, v1, :cond_5

    if-eqz p3, :cond_5

    .line 184
    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v4

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-ne p4, v1, :cond_4

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCS;->firstDayOfMonth(IILnet/time4j/calendar/EastAsianMonth;)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    add-long/2addr p3, p1

    .line 189
    invoke-virtual {p0, p3, p4}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide p3

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x1e

    cmp-long p1, p3, p1

    if-nez p1, :cond_3

    move v0, v3

    :cond_3
    return v0

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v0
.end method

.method midnight(J)Lnet/time4j/Moment;
    .locals 1

    .line 230
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->getOffset(J)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method final newMoonOnOrAfter(J)J
    .locals 2

    .line 224
    sget-object v0, Lnet/time4j/calendar/astro/MoonPhase;->NEW_MOON:Lnet/time4j/calendar/astro/MoonPhase;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->midnight(J)Lnet/time4j/Moment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/astro/MoonPhase;->atOrAfter(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object v0

    .line 225
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->getOffset(J)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide p1

    return-wide p1
.end method

.method final newYear(II)J
    .locals 4

    .line 201
    sget-wide v0, Lnet/time4j/calendar/EastAsianCS;->EPOCH_CHINESE:J

    long-to-double v0, v0

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    int-to-double p1, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p1, v2

    const-wide v2, 0x4076d3e00192a737L    # 365.242189

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    .line 202
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 203
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->newYearOnOrBefore(J)J

    move-result-wide p1

    return-wide p1
.end method

.method final transform(IILnet/time4j/calendar/EastAsianMonth;I)J
    .locals 1

    .line 163
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/EastAsianCS;->isValid(IILnet/time4j/calendar/EastAsianMonth;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCS;->firstDayOfMonth(IILnet/time4j/calendar/EastAsianMonth;)J

    move-result-wide p1

    int-to-long p3, p4

    add-long/2addr p1, p3

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    return-wide p1

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid date."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 39
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCS;->transform(Lnet/time4j/calendar/EastAsianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final transform(Lnet/time4j/calendar/EastAsianCalendar;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)J"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public final transform(J)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 57
    invoke-direct/range {p0 .. p2}, Lnet/time4j/calendar/EastAsianCS;->winterOnOrBefore(J)J

    move-result-wide v0

    const-wide/16 v2, 0x172

    add-long/2addr v2, v0

    .line 58
    invoke-direct {v7, v2, v3}, Lnet/time4j/calendar/EastAsianCS;->winterOnOrBefore(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 59
    invoke-virtual {v7, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide v0

    add-long/2addr v2, v4

    .line 60
    invoke-direct {v7, v2, v3}, Lnet/time4j/calendar/EastAsianCS;->newMoonBefore(J)J

    move-result-wide v2

    add-long v8, p1, v4

    .line 61
    invoke-direct {v7, v8, v9}, Lnet/time4j/calendar/EastAsianCS;->newMoonBefore(J)J

    move-result-wide v8

    .line 62
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/calendar/EastAsianCS;->lunations(JJ)J

    move-result-wide v2

    const-wide/16 v10, 0xc

    cmp-long v2, v2, v10

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-static {v0, v1, v8, v9}, Lnet/time4j/calendar/EastAsianCS;->lunations(JJ)J

    move-result-wide v10

    if-eqz v2, :cond_1

    .line 66
    invoke-direct {v7, v0, v1, v8, v9}, Lnet/time4j/calendar/EastAsianCS;->hasLeapMonth(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    sub-long/2addr v10, v4

    :cond_1
    const/16 v6, 0xc

    .line 70
    invoke-static {v10, v11, v6}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    move v6, v10

    :goto_1
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    int-to-double v12, v6

    const-wide/high16 v14, 0x4028000000000000L    # 12.0

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    .line 76
    sget-wide v12, Lnet/time4j/calendar/EastAsianCS;->EPOCH_CHINESE:J

    sub-long v12, p1, v12

    long-to-double v12, v12

    const-wide v14, 0x4076d3e00192a737L    # 365.242189

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 77
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-long v10, v10

    sub-long v12, v10, v4

    const/16 v14, 0x3c

    .line 79
    invoke-static {v12, v13, v14}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v12

    long-to-int v12, v12

    add-int/2addr v3, v12

    .line 80
    invoke-static {v10, v11, v14}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    move v14, v10

    :goto_2
    sub-long v10, p1, v8

    add-long/2addr v10, v4

    long-to-int v4, v10

    .line 87
    invoke-static {v6}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v5

    if-eqz v2, :cond_4

    .line 89
    invoke-virtual {v7, v8, v9}, Lnet/time4j/calendar/EastAsianCS;->hasNoMajorSolarTerm(J)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {v7, v8, v9}, Lnet/time4j/calendar/EastAsianCS;->newMoonBefore(J)J

    move-result-wide v8

    invoke-direct {v7, v0, v1, v8, v9}, Lnet/time4j/calendar/EastAsianCS;->hasLeapMonth(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    invoke-virtual {v5}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    move-object v5, v0

    :cond_4
    move-object/from16 v0, p0

    move v1, v3

    move v2, v14

    move-object v3, v5

    move-wide/from16 v5, p1

    .line 93
    invoke-virtual/range {v0 .. v6}, Lnet/time4j/calendar/EastAsianCS;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v0

    return-object v0
.end method
