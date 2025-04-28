.class Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;
.super Ljava/lang/Object;
.source "HebrewCalendar.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HebrewUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/HebrewCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/calendar/HebrewCalendar$Unit;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/HebrewCalendar$Unit;)V
    .locals 0

    .line 1969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1971
    iput-object p1, p0, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;->unit:Lnet/time4j/calendar/HebrewCalendar$Unit;

    return-void
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1959
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;->addTo(Lnet/time4j/calendar/HebrewCalendar;J)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/HebrewCalendar;J)Lnet/time4j/calendar/HebrewCalendar;
    .locals 8

    .line 1980
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;->unit:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2024
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;->unit:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/HebrewCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, 0x7

    .line 2018
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 2021
    :goto_0
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 2022
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    return-object p1

    .line 1993
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v0

    .line 1994
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v2

    .line 1995
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_7

    cmp-long v5, p2, v5

    const/4 v6, 0x6

    if-lez v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_3

    .line 1998
    invoke-static {v0}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v5, 0xe

    if-ne v2, v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    if-ne v2, v6, :cond_5

    .line 2006
    invoke-static {v0}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    const/16 v2, 0xd

    add-int/lit8 v0, v0, -0x1

    :cond_6
    :goto_2
    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    goto :goto_1

    .line 2014
    :cond_7
    invoke-static {v2}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p2

    .line 2015
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    invoke-static {v0, p2}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2016
    invoke-static {v0, p2, p1}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    .line 1982
    :cond_8
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    invoke-static {p2, p3}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p2

    if-lt p2, v1, :cond_a

    const/16 p3, 0x270f

    if-gt p2, p3, :cond_a

    .line 1986
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p3

    .line 1987
    sget-object v0, Lnet/time4j/calendar/HebrewMonth;->ADAR_I:Lnet/time4j/calendar/HebrewMonth;

    if-ne p3, v0, :cond_9

    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1988
    sget-object p3, Lnet/time4j/calendar/HebrewMonth;->SHEVAT:Lnet/time4j/calendar/HebrewMonth;

    .line 1990
    :cond_9
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    invoke-static {p2, p3}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1991
    new-instance v0, Lnet/time4j/calendar/HebrewCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p1, v1}, Lnet/time4j/calendar/HebrewCalendar;-><init>(ILnet/time4j/calendar/HebrewMonth;ILnet/time4j/calendar/HebrewCalendar$1;)V

    return-object v0

    .line 1984
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resulting year out of bounds: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1959
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    check-cast p2, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;->between(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewCalendar;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewCalendar;)J
    .locals 6

    .line 2032
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;->unit:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2078
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 2080
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;->unit:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/HebrewCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2076
    :cond_1
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$Unit;->between(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    div-int/lit8 p1, p1, 0x7

    int-to-long p1, p1

    return-wide p1

    .line 2053
    :cond_2
    invoke-virtual {p1, p2}, Lnet/time4j/calendar/HebrewCalendar;->isAfter(Lnet/time4j/engine/CalendarDate;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v3, p1

    move-object v2, p2

    goto :goto_0

    :cond_3
    move-object v2, p1

    move-object v3, p2

    :goto_0
    const/4 p1, 0x0

    .line 2059
    invoke-static {v2}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p2

    .line 2060
    invoke-static {v2}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v4

    invoke-virtual {v4}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v4

    .line 2061
    :cond_4
    :goto_1
    invoke-static {v3}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v5

    if-lt p2, v5, :cond_8

    invoke-static {v3}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v5

    if-ne p2, v5, :cond_5

    invoke-static {v3}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v5

    invoke-virtual {v5}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v5

    if-ge v4, v5, :cond_5

    goto :goto_2

    :cond_5
    if-lez p1, :cond_6

    .line 2071
    invoke-static {v2}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p2

    invoke-static {v3}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v1

    if-le p2, v1, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    if-eqz v0, :cond_7

    neg-int p1, p1

    :cond_7
    int-to-long p1, p1

    return-wide p1

    :cond_8
    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 p1, p1, 0x1

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    .line 2064
    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v5

    if-nez v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    const/16 v5, 0xe

    if-ne v4, v5, :cond_4

    add-int/lit8 p2, p2, 0x1

    move v4, v1

    goto :goto_1

    .line 2034
    :cond_a
    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_c

    .line 2036
    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v2

    if-ge v1, v2, :cond_b

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 2038
    :cond_b
    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_e

    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p2

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    if-ge p2, p1, :cond_e

    goto :goto_3

    :cond_c
    if-gez v0, :cond_e

    .line 2042
    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v2

    if-le v1, v2, :cond_d

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2044
    :cond_d
    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_e

    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p2

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    if-le p2, p1, :cond_e

    goto :goto_4

    :cond_e
    :goto_5
    int-to-long p1, v0

    return-wide p1
.end method
