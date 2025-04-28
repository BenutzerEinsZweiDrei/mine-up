.class Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;
.super Ljava/lang/Object;
.source "JulianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JulianUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/JulianCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/calendar/JulianCalendar$Unit;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/JulianCalendar$Unit;)V
    .locals 0

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    iput-object p1, p0, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->unit:Lnet/time4j/calendar/JulianCalendar$Unit;

    return-void
.end method

.method private static ymValue(Lnet/time4j/calendar/JulianCalendar;)J
    .locals 4

    .line 1713
    invoke-static {p0}, Lnet/time4j/calendar/JulianCalendar;->access$700(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    invoke-static {p0}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1639
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->addTo(Lnet/time4j/calendar/JulianCalendar;J)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/JulianCalendar;J)Lnet/time4j/calendar/JulianCalendar;
    .locals 4

    .line 1660
    sget-object v0, Lnet/time4j/calendar/JulianCalendar$2;->$SwitchMap$net$time4j$calendar$JulianCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->unit:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/JulianCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1682
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->unit:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/JulianCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, 0x7

    .line 1676
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1679
    :goto_0
    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 1680
    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    return-object p1

    :cond_2
    const-wide/16 v2, 0xc

    .line 1662
    invoke-static {p2, p3, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1665
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->ymValue(Lnet/time4j/calendar/JulianCalendar;)J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    const/16 v0, 0xc

    .line 1666
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v2

    .line 1667
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    add-int/2addr p2, v1

    .line 1670
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    .line 1671
    invoke-static {v2, p2}, Lnet/time4j/calendar/JulianCalendar;->access$600(II)I

    move-result p3

    .line 1669
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lt v2, v1, :cond_4

    .line 1672
    sget-object p3, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    goto :goto_1

    :cond_4
    sget-object p3, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    :goto_1
    if-lt v2, v1, :cond_5

    goto :goto_2

    .line 1673
    :cond_5
    invoke-static {v1, v2}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result v2

    .line 1674
    :goto_2
    invoke-static {p3, v2, p2, p1}, Lnet/time4j/calendar/JulianCalendar;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1639
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->between(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/calendar/JulianCalendar;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/calendar/JulianCalendar;)J
    .locals 7

    .line 1690
    sget-object v0, Lnet/time4j/calendar/JulianCalendar$2;->$SwitchMap$net$time4j$calendar$JulianCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->unit:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/JulianCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1704
    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 1706
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->unit:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/JulianCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1702
    :cond_1
    sget-object v0, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-virtual {p1, p2, v0}, Lnet/time4j/calendar/JulianCalendar;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide p1

    const-wide/16 v0, 0x7

    div-long/2addr p1, v0

    return-wide p1

    .line 1694
    :cond_2
    invoke-static {p2}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->ymValue(Lnet/time4j/calendar/JulianCalendar;)J

    move-result-wide v0

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;->ymValue(Lnet/time4j/calendar/JulianCalendar;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-lez v2, :cond_3

    .line 1695
    invoke-static {p2}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v5

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v6

    if-ge v5, v6, :cond_3

    sub-long/2addr v0, v3

    goto :goto_0

    :cond_3
    if-gez v2, :cond_4

    .line 1697
    invoke-static {p2}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p2

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    if-le p2, p1, :cond_4

    add-long/2addr v0, v3

    :cond_4
    :goto_0
    return-wide v0

    .line 1692
    :cond_5
    sget-object v0, Lnet/time4j/calendar/JulianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-virtual {p1, p2, v0}, Lnet/time4j/calendar/JulianCalendar;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide p1

    const-wide/16 v0, 0xc

    div-long/2addr p1, v0

    return-wide p1
.end method
