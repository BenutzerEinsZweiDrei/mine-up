.class Lnet/time4j/Weekmodel$CWRule;
.super Ljava/lang/Object;
.source "Weekmodel.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Weekmodel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CWRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final owner:Lnet/time4j/Weekmodel$CalendarWeekElement;


# direct methods
.method private constructor <init>(Lnet/time4j/Weekmodel$CalendarWeekElement;)V
    .locals 0

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    iput-object p1, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/Weekmodel$CalendarWeekElement;Lnet/time4j/Weekmodel$1;)V
    .locals 0

    .line 1485
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$CWRule;-><init>(Lnet/time4j/Weekmodel$CalendarWeekElement;)V

    return-void
.end method

.method private getCalendarWeek(Lnet/time4j/PlainDate;)I
    .locals 5

    .line 1706
    iget-object v0, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    .line 1707
    invoke-static {v0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v0

    goto :goto_0

    .line 1709
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 1710
    invoke-direct {p0, p1, v1}, Lnet/time4j/Weekmodel$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v0, :cond_3

    sub-int v2, v0, v2

    .line 1713
    div-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v3

    const/16 v4, 0x35

    if-ge v2, v4, :cond_1

    .line 1715
    iget-object v4, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    .line 1717
    invoke-static {v4}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    .line 1720
    :cond_1
    invoke-direct {p0, p1, v3}, Lnet/time4j/Weekmodel$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I

    move-result v4

    .line 1721
    invoke-direct {p0, p1, v1}, Lnet/time4j/Weekmodel$CWRule;->getLengthOfYM(Lnet/time4j/PlainDate;I)I

    move-result p1

    add-int/2addr v4, p1

    if-gt v4, v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    return v3

    :cond_3
    const/4 v1, -0x1

    .line 1729
    invoke-direct {p0, p1, v1}, Lnet/time4j/Weekmodel$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I

    move-result v2

    .line 1730
    invoke-direct {p0, p1, v1}, Lnet/time4j/Weekmodel$CWRule;->getLengthOfYM(Lnet/time4j/PlainDate;I)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 1731
    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    return v0
.end method

.method private getChild()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1534
    iget-object v0, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$400(Lnet/time4j/Weekmodel$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->localDayOfWeek()Lnet/time4j/NavigableElement;

    move-result-object v0

    return-object v0
.end method

.method private getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I
    .locals 0

    .line 1633
    invoke-direct {p0, p1, p2}, Lnet/time4j/Weekmodel$CWRule;->getWeekdayStart(Lnet/time4j/PlainDate;I)Lnet/time4j/Weekday;

    move-result-object p1

    .line 1634
    iget-object p2, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$400(Lnet/time4j/Weekmodel$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object p2

    .line 1635
    invoke-virtual {p1, p2}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    .line 1638
    invoke-virtual {p2}, Lnet/time4j/Weekmodel;->getMinimalDaysInFirstWeek()I

    move-result p2

    rsub-int/lit8 p2, p2, 0x8

    if-gt p1, p2, :cond_0

    rsub-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0x9

    :goto_0
    return p1
.end method

.method private getLengthOfYM(Lnet/time4j/PlainDate;I)I
    .locals 1

    .line 1681
    iget-object v0, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1683
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    return p1

    .line 1688
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    .line 1689
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result p1

    add-int/2addr p1, p2

    if-nez p1, :cond_2

    const/16 p1, 0xc

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/16 p2, 0xd

    if-ne p1, p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/4 p1, 0x1

    .line 1699
    :cond_3
    :goto_1
    invoke-static {v0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1

    return p1
.end method

.method private getMaxCalendarWeek(Lnet/time4j/PlainDate;)I
    .locals 5

    .line 1599
    iget-object v0, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    .line 1600
    invoke-static {v0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v0

    goto :goto_0

    .line 1602
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    .line 1603
    invoke-direct {p0, p1, v1}, Lnet/time4j/Weekmodel$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I

    move-result v2

    if-gt v2, v0, :cond_2

    const/4 v3, 0x1

    .line 1607
    invoke-direct {p0, p1, v3}, Lnet/time4j/Weekmodel$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I

    move-result v4

    invoke-direct {p0, p1, v1}, Lnet/time4j/Weekmodel$CWRule;->getLengthOfYM(Lnet/time4j/PlainDate;I)I

    move-result v1

    add-int/2addr v4, v1

    if-gt v4, v0, :cond_1

    .line 1610
    :try_start_0
    invoke-direct {p0, p1, v3}, Lnet/time4j/Weekmodel$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I

    move-result v0

    const/4 v1, 0x2

    .line 1611
    invoke-direct {p0, p1, v1}, Lnet/time4j/Weekmodel$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I

    move-result v1

    invoke-direct {p0, p1, v3}, Lnet/time4j/Weekmodel$CWRule;->getLengthOfYM(Lnet/time4j/PlainDate;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int v4, v1, p1

    move v2, v0

    goto :goto_1

    :catch_0
    add-int/lit8 v4, v4, 0x7

    :cond_1
    :goto_1
    sub-int/2addr v4, v2

    .line 1617
    div-int/lit8 v4, v4, 0x7

    return v4

    :cond_2
    const/4 v0, -0x1

    .line 1619
    invoke-direct {p0, p1, v0}, Lnet/time4j/Weekmodel$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/PlainDate;I)I

    move-result v1

    .line 1620
    invoke-direct {p0, p1, v0}, Lnet/time4j/Weekmodel$CWRule;->getLengthOfYM(Lnet/time4j/PlainDate;I)I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    .line 1621
    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method private getWeekdayStart(Lnet/time4j/PlainDate;I)Lnet/time4j/Weekday;
    .locals 2

    .line 1651
    iget-object v0, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1653
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1, v1, v1}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result p1

    .line 1652
    invoke-static {p1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1

    .line 1655
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    .line 1656
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result p1

    add-int/2addr p1, p2

    if-nez p1, :cond_1

    const/16 p1, 0xc

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0xd

    if-ne p1, p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_2
    const/16 p2, 0xe

    if-ne p1, p2, :cond_3

    const/4 p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 1670
    :cond_3
    :goto_0
    invoke-static {v0, p1, v1}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result p1

    .line 1669
    invoke-static {p1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method private setCalendarWeek(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;
    .locals 4

    .line 1741
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getCalendarWeek(Lnet/time4j/PlainDate;)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x7

    .line 1747
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceUTC()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lnet/time4j/PlainDate;->withDaysSinceUTC(J)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1485
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1528
    invoke-direct {p0}, Lnet/time4j/Weekmodel$CWRule;->getChild()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1485
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1521
    invoke-direct {p0}, Lnet/time4j/Weekmodel$CWRule;->getChild()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1513
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1514
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getMaxCalendarWeek(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1485
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 1506
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1485
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1541
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1542
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getCalendarWeek(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1485
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1485
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Weekmodel$CWRule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1556
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1558
    iget-object v1, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    .line 1559
    invoke-static {v1}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-lt p2, v2, :cond_1

    const/16 v1, 0x34

    if-gt p2, v1, :cond_1

    return v2

    .line 1566
    :cond_1
    iget-object v1, p0, Lnet/time4j/Weekmodel$CWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {v1}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x35

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 1567
    :cond_3
    :goto_0
    sget-object v1, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    if-lt p2, v2, :cond_4

    .line 1568
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$CWRule;->getMaxCalendarWeek(Lnet/time4j/PlainDate;)I

    move-result p1

    if-gt p2, p1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1485
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Weekmodel$CWRule;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            "Z)TT;"
        }
    .end annotation

    .line 1582
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 1584
    invoke-virtual {p0, p1, p2}, Lnet/time4j/Weekmodel$CWRule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1589
    :cond_0
    sget-object p3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    .line 1591
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v0, p2}, Lnet/time4j/Weekmodel$CWRule;->setCalendarWeek(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 1589
    invoke-virtual {p1, p3, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 1585
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (context="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
