.class Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "BadiCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    iput p1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    return-void
.end method

.method private getMax(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 5

    .line 1981
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    const/4 v1, 0x3

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    const/16 v3, 0x13

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    const/4 v4, 0x4

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_0

    const/16 p1, 0x43b

    return p1

    .line 1998
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1994
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x16e

    goto :goto_0

    :cond_2
    const/16 p1, 0x16d

    :goto_0
    return p1

    .line 1988
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1989
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    return v2

    :cond_5
    return v3

    :cond_6
    return v1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1962
    iget p1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1974
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 1969
    :cond_2
    :goto_0
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    .line 1966
    :cond_3
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_VAHID:Lnet/time4j/format/TextElement;

    return-object p1

    .line 1964
    :cond_4
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->VAHID:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1942
    iget p1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1954
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 1949
    :cond_2
    :goto_0
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    .line 1946
    :cond_3
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_VAHID:Lnet/time4j/format/TextElement;

    return-object p1

    .line 1944
    :cond_4
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->VAHID:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 2

    .line 1823
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1835
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getYearOfEra()I

    move-result p1

    return p1

    .line 1837
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1833
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDayOfYear()I

    move-result p1

    return p1

    .line 1831
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    return p1

    .line 1829
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    return p1

    .line 1827
    :cond_4
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    return p1

    .line 1825
    :cond_5
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    return p1
.end method

.method public getMaximum(Lnet/time4j/calendar/bahai/BadiCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1910
    invoke-direct {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/bahai/BadiCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/bahai/BadiCalendar;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x1

    .line 1903
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/bahai/BadiCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/bahai/BadiCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1896
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/bahai/BadiCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/bahai/BadiCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/bahai/BadiCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/bahai/BadiCalendar;I)Z
    .locals 1

    .line 1845
    invoke-direct {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p2, :cond_0

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid(Lnet/time4j/calendar/bahai/BadiCalendar;Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1920
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/bahai/BadiCalendar;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/bahai/BadiCalendar;IZ)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1802
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/bahai/BadiCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/bahai/BadiCalendar;IZ)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 10

    .line 1853
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/bahai/BadiCalendar;I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 1857
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p3

    .line 1859
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p2, -0x1

    const/16 v4, 0x169

    .line 1880
    invoke-static {v0, v4}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v6, v5, -0x1

    mul-int/2addr v6, v4

    sub-int/2addr p2, v6

    sub-int/2addr p2, v3

    const/16 v4, 0x13

    .line 1881
    invoke-static {p2, v4}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p2

    add-int/2addr p2, v3

    .line 1882
    invoke-static {v0, v4}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    add-int/2addr v0, v3

    if-ne p3, v1, :cond_0

    .line 1883
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5, p2, v0}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result v1

    if-nez v1, :cond_0

    move p3, v2

    .line 1886
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDivision()Lnet/time4j/calendar/bahai/BadiDivision;

    move-result-object p1

    invoke-static {v5, p2, v0, p1, p3}, Lnet/time4j/calendar/bahai/BadiCalendar;->ofComplete(IIILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1

    .line 1888
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1878
    :cond_2
    invoke-static {p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$700(Lnet/time4j/calendar/bahai/BadiCalendar;I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1

    .line 1876
    :cond_3
    new-instance p3, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v3

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1300(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p3

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    return-object p3

    :cond_4
    if-ne p3, v1, :cond_5

    .line 1871
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    invoke-static {v0, v1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result v0

    if-nez v0, :cond_5

    move v8, v2

    goto :goto_0

    :cond_5
    move v8, p3

    .line 1874
    :goto_0
    new-instance p3, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v4

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v5

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1300(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v7

    const/4 v9, 0x0

    move-object v3, p3

    move v6, p2

    invoke-direct/range {v3 .. v9}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    return-object p3

    :cond_6
    if-ne p3, v1, :cond_7

    .line 1866
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    invoke-static {v0, p2, v1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result v0

    if-nez v0, :cond_7

    move v8, v2

    goto :goto_1

    :cond_7
    move v8, p3

    .line 1869
    :goto_1
    new-instance p3, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v4

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v6

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1300(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v7

    const/4 v9, 0x0

    move-object v3, p3

    move v5, p2

    invoke-direct/range {v3 .. v9}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    return-object p3

    :cond_8
    if-ne p3, v1, :cond_9

    .line 1861
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result v0

    if-nez v0, :cond_9

    move v8, v2

    goto :goto_2

    :cond_9
    move v8, p3

    .line 1864
    :goto_2
    new-instance p3, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v5

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v6

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1300(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v7

    const/4 v9, 0x0

    move-object v3, p3

    move v4, p2

    invoke-direct/range {v3 .. v9}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    return-object p3

    .line 1854
    :cond_a
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

.method public withValue(Lnet/time4j/calendar/bahai/BadiCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 1935
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/bahai/BadiCalendar;IZ)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1

    .line 1932
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing new value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
