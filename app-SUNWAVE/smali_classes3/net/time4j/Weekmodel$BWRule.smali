.class Lnet/time4j/Weekmodel$BWRule;
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
    name = "BWRule"
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

    .line 1764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    iput-object p1, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/Weekmodel$CalendarWeekElement;Lnet/time4j/Weekmodel$1;)V
    .locals 0

    .line 1754
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$BWRule;-><init>(Lnet/time4j/Weekmodel$CalendarWeekElement;)V

    return-void
.end method

.method private getChild(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1815
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    .line 1816
    iget-object v1, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    .line 1817
    invoke-static {v1}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$400(Lnet/time4j/Weekmodel$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Weekmodel;->localDayOfWeek()Lnet/time4j/NavigableElement;

    move-result-object v1

    .line 1818
    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz p2, :cond_2

    .line 1821
    iget-object p2, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x34

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    if-lt v2, p2, :cond_4

    .line 1822
    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1823
    iget-object p2, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1824
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result p1

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 1825
    sget-object p1, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    return-object p1

    .line 1827
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p1

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 1828
    sget-object p1, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    return-object p1

    :cond_2
    const/4 p2, 0x1

    if-gt v2, p2, :cond_4

    .line 1832
    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1833
    iget-object p2, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1834
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result p1

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result p2

    if-le p1, p2, :cond_4

    .line 1835
    sget-object p1, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    return-object p1

    .line 1837
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p1

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p2

    if-le p1, p2, :cond_4

    .line 1838
    sget-object p1, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    return-object p1

    :cond_4
    return-object v1
.end method

.method private getLengthOfYM(Lnet/time4j/PlainDate;)I
    .locals 1

    .line 1962
    iget-object v0, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1963
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    return p1

    .line 1966
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    .line 1967
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result p1

    .line 1965
    invoke-static {v0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1

    return p1
.end method

.method private getMaxWeek(Lnet/time4j/PlainDate;)I
    .locals 1

    const/4 v0, 0x1

    .line 1901
    invoke-direct {p0, p1, v0}, Lnet/time4j/Weekmodel$BWRule;->getWeek(Lnet/time4j/PlainDate;I)I

    move-result p1

    return p1
.end method

.method private getMinWeek(Lnet/time4j/PlainDate;)I
    .locals 1

    const/4 v0, -0x1

    .line 1895
    invoke-direct {p0, p1, v0}, Lnet/time4j/Weekmodel$BWRule;->getWeek(Lnet/time4j/PlainDate;I)I

    move-result p1

    return p1
.end method

.method private getWeek(Lnet/time4j/PlainDate;)I
    .locals 1

    const/4 v0, 0x0

    .line 1889
    invoke-direct {p0, p1, v0}, Lnet/time4j/Weekmodel$BWRule;->getWeek(Lnet/time4j/PlainDate;I)I

    move-result p1

    return p1
.end method

.method private getWeek(Lnet/time4j/PlainDate;I)I
    .locals 5

    .line 1910
    iget-object v0, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    .line 1911
    invoke-static {v0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v0

    goto :goto_0

    .line 1913
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v0

    .line 1914
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceUTC()J

    move-result-wide v1

    int-to-long v3, v0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lnet/time4j/Weekmodel;->getDayOfWeek(J)Lnet/time4j/Weekday;

    move-result-object v1

    .line 1915
    iget-object v2, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-static {v2}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$400(Lnet/time4j/Weekmodel$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result v1

    .line 1917
    iget-object v2, p0, Lnet/time4j/Weekmodel$BWRule;->owner:Lnet/time4j/Weekmodel$CalendarWeekElement;

    .line 1918
    invoke-static {v2}, Lnet/time4j/Weekmodel$CalendarWeekElement;->access$400(Lnet/time4j/Weekmodel$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/Weekmodel;->getMinimalDaysInFirstWeek()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x8

    if-gt v1, v2, :cond_1

    rsub-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    rsub-int/lit8 v1, v1, 0x9

    :goto_1
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_4

    if-ne p2, v3, :cond_2

    .line 1933
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getLengthOfYM(Lnet/time4j/PlainDate;)I

    move-result v0

    goto :goto_2

    .line 1936
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    move v0, v3

    :cond_4
    :goto_2
    sub-int/2addr v0, v1

    const/4 p1, 0x7

    .line 1939
    invoke-static {v0, p1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p1

    add-int/2addr p1, v3

    return p1
.end method

.method private setWeek(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;
    .locals 4

    .line 1948
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getWeek(Lnet/time4j/PlainDate;)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x7

    .line 1954
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

    .line 1754
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1806
    invoke-direct {p0, p1, v0}, Lnet/time4j/Weekmodel$BWRule;->getChild(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1754
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1799
    invoke-direct {p0, p1, v0}, Lnet/time4j/Weekmodel$BWRule;->getChild(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoElement;

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

    .line 1791
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1792
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getMaxWeek(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1754
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1783
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1784
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getMinWeek(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1754
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

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

    .line 1775
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1776
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getWeek(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1754
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1754
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Weekmodel$BWRule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z
    .locals 2
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

    .line 1856
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1857
    sget-object v1, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1860
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getMinWeek(Lnet/time4j/PlainDate;)I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1861
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$BWRule;->getMaxWeek(Lnet/time4j/PlainDate;)I

    move-result p1

    if-gt p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1754
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Weekmodel$BWRule;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;

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

    .line 1873
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 1875
    invoke-virtual {p0, p1, p2}, Lnet/time4j/Weekmodel$BWRule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1880
    :cond_0
    sget-object p3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    .line 1882
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v0, p2}, Lnet/time4j/Weekmodel$BWRule;->setWeek(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 1880
    invoke-virtual {p1, p3, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 1876
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
