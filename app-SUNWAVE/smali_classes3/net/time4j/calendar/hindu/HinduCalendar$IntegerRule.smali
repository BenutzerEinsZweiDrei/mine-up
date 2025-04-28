.class Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "HinduCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/HinduCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/calendar/hindu/HinduCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    iput p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    return-void
.end method

.method private getMax(Lnet/time4j/calendar/hindu/HinduCalendar;)I
    .locals 5

    .line 1704
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1709
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 1710
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object p1

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide v1

    const-wide/16 v3, 0x190

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    .line 1711
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide v1

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p1, v1

    return p1

    .line 1713
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1706
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isUsingElapsedYears()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x176f

    goto :goto_0

    :cond_2
    const/16 v0, 0x1770

    .line 1707
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getEra()Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object p1

    sget-object v1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {p1, v1, v0}, Lnet/time4j/calendar/hindu/HinduEra;->yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I

    move-result p1

    return p1
.end method

.method private getMin(Lnet/time4j/calendar/hindu/HinduCalendar;)I
    .locals 2

    .line 1691
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    return p1

    .line 1698
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1693
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x4b0

    .line 1694
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->isUsingElapsedYears()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1683
    iget p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1684
    sget-object p1, Lnet/time4j/calendar/hindu/HinduCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1674
    iget p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1675
    sget-object p1, Lnet/time4j/calendar/hindu/HinduCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/hindu/HinduCalendar;)I
    .locals 2

    .line 1558
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1562
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDayOfYear()I

    move-result p1

    return p1

    .line 1564
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1560
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getYear()I

    move-result p1

    return p1
.end method

.method public getMaximum(Lnet/time4j/calendar/hindu/HinduCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1648
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/hindu/HinduCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/hindu/HinduCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1643
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getMin(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/hindu/HinduCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/hindu/HinduCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1638
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/hindu/HinduCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/hindu/HinduCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/hindu/HinduCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/hindu/HinduCalendar;I)Z
    .locals 1

    .line 1570
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getMin(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result v0

    .line 1571
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p1

    if-gt v0, p2, :cond_0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValid(Lnet/time4j/calendar/hindu/HinduCalendar;Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1656
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/hindu/HinduCalendar;I)Z

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

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/hindu/HinduCalendar;IZ)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1539
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/hindu/HinduCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/hindu/HinduCalendar;IZ)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 8

    .line 1581
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/hindu/HinduCalendar;I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 1585
    iget p3, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    if-ne p3, v0, :cond_0

    .line 1629
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 1630
    invoke-static {p2, p3}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    return-object p1

    .line 1632
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1587
    :cond_1
    sget-object p3, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getEra()Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Lnet/time4j/calendar/hindu/HinduEra;->yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I

    move-result p2

    .line 1589
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduVariant;->isUsingElapsedYears()Z

    move-result p3

    if-nez p3, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 1593
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$400(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p3

    if-ne p2, p3, :cond_3

    return-object p1

    :cond_3
    const/16 p3, 0xf

    .line 1599
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isPurnimanta()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1600
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$600(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result p3

    const/16 v1, 0x10

    if-lt p3, v1, :cond_4

    const/16 p3, 0x1d

    goto :goto_0

    :cond_4
    const/4 p3, 0x2

    .line 1603
    :cond_5
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v1

    .line 1604
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    .line 1605
    invoke-virtual {v1, p2, v2}, Lnet/time4j/calendar/hindu/HinduCS;->isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;)Z

    move-result v3

    const-wide/16 v4, 0x1e

    if-eqz v3, :cond_7

    .line 1608
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v2

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$400(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result v6

    if-le p2, v6, :cond_6

    const/4 v0, -0x1

    :cond_6
    invoke-virtual {v2, v0}, Lnet/time4j/calendar/IndianMonth;->roll(I)Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->of(Lnet/time4j/calendar/IndianMonth;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    .line 1609
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$400(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 1610
    invoke-static {p3}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v0

    invoke-virtual {v1, p2, v2, v0}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 1611
    invoke-virtual {v1, v6, v7}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    .line 1612
    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->withLeap()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/time4j/calendar/hindu/HinduMonth;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v2, v0

    .line 1618
    :cond_7
    invoke-static {p3}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object p3

    invoke-virtual {v1, p2, v2, p3}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p2

    if-nez v3, :cond_8

    .line 1620
    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1621
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCS;->transform(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p2

    .line 1622
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result p3

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v0

    if-le p3, v0, :cond_8

    .line 1623
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide p2

    sub-long/2addr p2, v4

    invoke-virtual {v1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p2

    .line 1627
    :cond_8
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$600(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$800(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1

    .line 1582
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

.method public withValue(Lnet/time4j/calendar/hindu/HinduCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 1669
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/hindu/HinduCalendar;IZ)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1

    .line 1666
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing new value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
