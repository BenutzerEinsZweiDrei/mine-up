.class Lnet/time4j/calendar/HijriCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "HijriCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HijriCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HijriCalendar;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    iput p1, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1682
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HijriCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1814
    iget p1, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1815
    sget-object p1, Lnet/time4j/calendar/HijriCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1682
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HijriCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1803
    iget p1, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1804
    sget-object p1, Lnet/time4j/calendar/HijriCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;
    .locals 3

    .line 1740
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    .line 1742
    iget v1, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1748
    sget-object v1, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1750
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1746
    :cond_1
    sget-object v1, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$500(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1744
    :cond_2
    invoke-interface {v0}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getMaximumSinceUTC()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1682
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;
    .locals 2

    .line 1724
    iget v0, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1732
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1730
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1726
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p1

    .line 1727
    invoke-interface {p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getMinimumSinceUTC()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1682
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;
    .locals 5

    .line 1703
    iget v0, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1710
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v1

    const/4 v2, 0x1

    .line 1711
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$500(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1712
    sget-object v3, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v4

    invoke-interface {v1, v3, v4, v2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1714
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1716
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1707
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1705
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1682
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1682
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/HijriCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HijriCalendar;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1765
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;

    move-result-object v1

    .line 1766
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;

    move-result-object p1

    .line 1767
    invoke-virtual {v1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1682
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/HijriCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HijriCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/HijriCalendar;
    .locals 6

    .line 1778
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/HijriCalendar;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1782
    iget p3, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    if-eqz p3, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1792
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/HijriCalendar;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 1793
    invoke-static {p2, p3}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/HijriCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    return-object p1

    .line 1795
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/HijriCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1790
    :cond_1
    new-instance p3, Lnet/time4j/calendar/HijriCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$500(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getVariant()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/calendar/HijriCalendar;-><init>(IIILjava/lang/String;Lnet/time4j/calendar/HijriCalendar$1;)V

    return-object p3

    .line 1784
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    .line 1785
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1786
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$500(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v1

    invoke-interface {p3, v0, p2, v1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p3

    .line 1787
    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1788
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$500(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    invoke-static {v0, p2, p1, p3}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1

    .line 1779
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
