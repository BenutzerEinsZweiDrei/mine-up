.class Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "FrenchRepublicanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1704
    iput p1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    return-void
.end method

.method private getMax(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I
    .locals 4

    .line 1863
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 1875
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    return p1

    .line 1877
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1868
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1872
    iget p1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    if-ne p1, v3, :cond_3

    const/16 v2, 0x1e

    :cond_3
    return v2

    .line 1869
    :cond_4
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Complementary days (sansculottides) are not part of any month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 p1, 0x4b2

    return p1
.end method

.method private getMin(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I
    .locals 3

    .line 1843
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1856
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1849
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1850
    :cond_2
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Complementary days (sansculottides) are not part of any month or decade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1831
    iget p1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1832
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->SANSCULOTTIDES:Lnet/time4j/engine/ChronoElement;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1834
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_DECADE:Lnet/time4j/engine/ChronoElement;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1818
    iget p1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1819
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1821
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_DECADE:Lnet/time4j/engine/ChronoElement;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I
    .locals 2

    .line 1713
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1721
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    return p1

    .line 1723
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1719
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfMonth()I

    move-result p1

    return p1

    .line 1717
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDecade()I

    move-result p1

    return p1

    .line 1715
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    return p1
.end method

.method public getMaximum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1786
    invoke-direct {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1779
    invoke-direct {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getMin(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1772
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;I)Z
    .locals 4

    .line 1731
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1735
    :cond_1
    invoke-direct {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getMin(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v0

    .line 1736
    invoke-direct {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    if-gt v0, p2, :cond_2

    if-lt p1, p2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1796
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;I)Z

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

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;IZ)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1692
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;IZ)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 2

    .line 1744
    iget p3, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 1745
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day of month not defined on sansculottides: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1746
    :cond_1
    :goto_0
    iget p3, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    .line 1747
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Decade of month not defined on sansculottides: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1748
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 1752
    iget p3, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    if-eqz p3, :cond_7

    if-eq p3, v1, :cond_6

    if-eq p3, v0, :cond_5

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 1762
    new-instance p3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    invoke-direct {p3, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object p3

    .line 1764
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1760
    :cond_5
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p3

    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getMonth()Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(ILnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;I)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    :cond_6
    sub-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0xa

    .line 1757
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfMonth()I

    move-result p3

    sub-int/2addr p3, v1

    rem-int/lit8 p3, p3, 0xa

    add-int/2addr p2, p3

    add-int/2addr p2, v1

    .line 1758
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p3

    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getMonth()Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(ILnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;I)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    .line 1754
    :cond_7
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object p3

    invoke-virtual {p3, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->isLeapYear(I)Z

    move-result p3

    if-eqz p3, :cond_8

    const/16 p3, 0x16e

    goto :goto_2

    :cond_8
    const/16 p3, 0x16d

    .line 1755
    :goto_2
    new-instance v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, p2, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object v0

    .line 1749
    :cond_9
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

.method public withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 1811
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;IZ)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    .line 1808
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing new value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
