.class public Lnet/time4j/tz/model/GregorianTimezoneRule;
.super Lnet/time4j/tz/model/DaylightSavingRule;
.source "GregorianTimezoneRule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lnet/time4j/format/CalendarType;
    value = "iso8601"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient month:B


# direct methods
.method protected constructor <init>(Lnet/time4j/Month;ILnet/time4j/tz/model/OffsetIndicator;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p2, p3, p4}, Lnet/time4j/tz/model/DaylightSavingRule;-><init>(ILnet/time4j/tz/model/OffsetIndicator;I)V

    .line 90
    invoke-virtual {p1}, Lnet/time4j/Month;->getValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lnet/time4j/tz/model/GregorianTimezoneRule;->month:B

    return-void
.end method

.method public static ofFixedDay(Lnet/time4j/Month;IILnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;
    .locals 7

    .line 170
    new-instance v6, Lnet/time4j/tz/model/FixedDayPattern;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/time4j/tz/model/FixedDayPattern;-><init>(Lnet/time4j/Month;IILnet/time4j/tz/model/OffsetIndicator;I)V

    return-object v6
.end method

.method public static ofFixedDay(Lnet/time4j/Month;ILnet/time4j/PlainTime;Lnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;
    .locals 1

    .line 131
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p2, v0}, Lnet/time4j/PlainTime;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/tz/model/GregorianTimezoneRule;->ofFixedDay(Lnet/time4j/Month;IILnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;

    move-result-object p0

    return-object p0
.end method

.method public static ofLastWeekday(Lnet/time4j/Month;Lnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;
    .locals 7

    .line 244
    new-instance v6, Lnet/time4j/tz/model/LastWeekdayPattern;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/time4j/tz/model/LastWeekdayPattern;-><init>(Lnet/time4j/Month;Lnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)V

    return-object v6
.end method

.method public static ofLastWeekday(Lnet/time4j/Month;Lnet/time4j/Weekday;Lnet/time4j/PlainTime;Lnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;
    .locals 1

    .line 207
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p2, v0}, Lnet/time4j/PlainTime;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/tz/model/GregorianTimezoneRule;->ofLastWeekday(Lnet/time4j/Month;Lnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;

    move-result-object p0

    return-object p0
.end method

.method public static ofWeekdayAfterDate(Lnet/time4j/Month;ILnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;
    .locals 9

    .line 341
    new-instance v8, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;-><init>(Lnet/time4j/Month;ILnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;IZ)V

    return-object v8
.end method

.method public static ofWeekdayAfterDate(Lnet/time4j/Month;ILnet/time4j/Weekday;Lnet/time4j/PlainTime;Lnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;
    .locals 7

    .line 292
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    .line 293
    invoke-virtual {p3, v0}, Lnet/time4j/PlainTime;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    .line 292
    invoke-static/range {v1 .. v6}, Lnet/time4j/tz/model/GregorianTimezoneRule;->ofWeekdayAfterDate(Lnet/time4j/Month;ILnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;

    move-result-object p0

    return-object p0
.end method

.method public static ofWeekdayBeforeDate(Lnet/time4j/Month;ILnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;
    .locals 9

    .line 426
    new-instance v8, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;-><init>(Lnet/time4j/Month;ILnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;IZ)V

    return-object v8
.end method

.method public static ofWeekdayBeforeDate(Lnet/time4j/Month;ILnet/time4j/Weekday;Lnet/time4j/PlainTime;Lnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;
    .locals 7

    .line 383
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    .line 384
    invoke-virtual {p3, v0}, Lnet/time4j/PlainTime;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    .line 383
    invoke-static/range {v1 .. v6}, Lnet/time4j/tz/model/GregorianTimezoneRule;->ofWeekdayBeforeDate(Lnet/time4j/Month;ILnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)Lnet/time4j/tz/model/GregorianTimezoneRule;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getCalendarType()Ljava/lang/String;
    .locals 1

    const-string v0, "iso8601"

    return-object v0
.end method

.method public final getDate(I)Lnet/time4j/PlainDate;
    .locals 3

    .line 433
    invoke-virtual {p0, p1}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getDate0(I)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getDayOverflow()J

    move-result-wide v0

    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method

.method protected getDate0(I)Lnet/time4j/PlainDate;
    .locals 1

    .line 458
    new-instance p1, Ljava/lang/AbstractMethodError;

    const-string v0, "Implemented by subclasses."

    invoke-direct {p1, v0}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMonth()Lnet/time4j/Month;
    .locals 1

    .line 451
    iget-byte v0, p0, Lnet/time4j/tz/model/GregorianTimezoneRule;->month:B

    invoke-static {v0}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v0

    return-object v0
.end method

.method getMonthValue()B
    .locals 1

    .line 502
    iget-byte v0, p0, Lnet/time4j/tz/model/GregorianTimezoneRule;->month:B

    return v0
.end method

.method protected isEqual(Lnet/time4j/tz/model/GregorianTimezoneRule;)Z
    .locals 4

    .line 487
    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getTimeOfDay()Lnet/time4j/PlainTime;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getTimeOfDay()Lnet/time4j/PlainTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/PlainTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getDayOverflow()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getDayOverflow()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getIndicator()Lnet/time4j/tz/model/OffsetIndicator;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getIndicator()Lnet/time4j/tz/model/OffsetIndicator;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 490
    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getSavings()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getSavings()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lnet/time4j/tz/model/GregorianTimezoneRule;->month:B

    iget-byte p1, p1, Lnet/time4j/tz/model/GregorianTimezoneRule;->month:B

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected toCalendarYear(J)I
    .locals 0

    .line 465
    invoke-static {p1, p2}, Lnet/time4j/base/GregorianMath;->toPackedDate(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lnet/time4j/base/GregorianMath;->readYear(J)I

    move-result p1

    return p1
.end method

.method protected toCalendarYear(Lnet/time4j/base/GregorianDate;)I
    .locals 0

    .line 472
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result p1

    return p1
.end method
