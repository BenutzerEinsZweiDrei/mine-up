.class Lnet/time4j/calendar/HebrewCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "HebrewCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/calendar/HebrewCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    iput p1, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    return-void
.end method

.method private getMax(Lnet/time4j/calendar/HebrewCalendar;)I
    .locals 2

    .line 1612
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1618
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$500(I)I

    move-result p1

    return p1

    .line 1620
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1616
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result p1

    return p1

    :cond_2
    const/16 p1, 0x270f

    return p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1542
    iget p1, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1543
    sget-object p1, Lnet/time4j/calendar/HebrewCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1531
    iget p1, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1532
    sget-object p1, Lnet/time4j/calendar/HebrewCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/HebrewCalendar;)I
    .locals 6

    .line 1553
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 1560
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v1

    invoke-static {v1}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    const/4 v2, 0x1

    .line 1561
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-nez v1, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 1563
    :cond_0
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v3

    sget-object v4, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1566
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 1568
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1557
    :cond_4
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    return p1

    .line 1555
    :cond_5
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    return p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HebrewCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1493
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/HebrewCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HebrewCalendar;)Ljava/lang/Integer;
    .locals 2

    .line 1479
    iget p1, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1485
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1483
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/HebrewCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HebrewCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1472
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/HebrewCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/HebrewCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/HebrewCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HebrewCalendar;I)Z
    .locals 1

    .line 1579
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    const/4 v0, 0x1

    if-gt p2, p1, :cond_0

    if-gt v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid(Lnet/time4j/calendar/HebrewCalendar;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1507
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/HebrewCalendar;)Ljava/lang/Integer;

    move-result-object v1

    .line 1508
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/HebrewCalendar;)Ljava/lang/Integer;

    move-result-object p1

    .line 1509
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

.method public bridge synthetic withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/HebrewCalendar;IZ)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1451
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/HebrewCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HebrewCalendar;IZ)Lnet/time4j/calendar/HebrewCalendar;
    .locals 2

    .line 1590
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/HebrewCalendar;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1594
    iget p3, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    if-eqz p3, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1602
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 1603
    invoke-static {p2, p3}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/HebrewCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    return-object p1

    .line 1605
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1600
    :cond_1
    new-instance p3, Lnet/time4j/calendar/HebrewCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, p2, v1}, Lnet/time4j/calendar/HebrewCalendar;-><init>(ILnet/time4j/calendar/HebrewMonth;ILnet/time4j/calendar/HebrewCalendar$1;)V

    return-object p3

    .line 1596
    :cond_2
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    sget-object v0, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v1

    invoke-interface {p3, v0, p2, v1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p3

    .line 1597
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1598
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->getMonth()Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    invoke-static {p2, p1, p3}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    .line 1591
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValue(Lnet/time4j/calendar/HebrewCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/HebrewCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 1524
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/HebrewCalendar;IZ)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    .line 1521
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing new value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
