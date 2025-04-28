.class Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;
.super Ljava/lang/Object;
.source "EastAsianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EastAsianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/calendar/EastAsianCalendar<",
        "*TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final child:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation
.end field

.field private final index:I


# direct methods
.method private constructor <init>(ILnet/time4j/engine/ChronoElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput p1, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    .line 608
    iput-object p2, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->child:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method synthetic constructor <init>(ILnet/time4j/engine/ChronoElement;Lnet/time4j/calendar/EastAsianCalendar$1;)V
    .locals 0

    .line 591
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;-><init>(ILnet/time4j/engine/ChronoElement;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->getChildAtCeiling(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 783
    iget-object p1, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->child:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->getChildAtFloor(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 778
    iget-object p1, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->child:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->getInt(Lnet/time4j/calendar/EastAsianCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/EastAsianCalendar;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)I"
        }
    .end annotation

    .line 615
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 628
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p1

    return p1

    .line 630
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v0

    .line 622
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getLeapMonth()I

    move-result v1

    if-lez v1, :cond_2

    if-lt v1, v0, :cond_3

    .line 623
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0

    .line 619
    :cond_5
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfYear()I

    move-result p1

    return p1

    .line 617
    :cond_6
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p1

    return p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 736
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 747
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object p1

    .line 748
    invoke-interface {p1}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p1

    goto :goto_0

    .line 751
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 744
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->isLeapYear()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xd

    goto :goto_0

    :cond_2
    const/16 p1, 0xc

    goto :goto_0

    .line 741
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfYear()I

    move-result p1

    goto :goto_0

    .line 738
    :cond_4
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfMonth()I

    move-result p1

    .line 753
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->getMaximum(Lnet/time4j/calendar/EastAsianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 725
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 726
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object p1

    .line 727
    invoke-interface {p1}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 729
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->getMinimum(Lnet/time4j/calendar/EastAsianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EastAsianCalendar;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 720
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->getInt(Lnet/time4j/calendar/EastAsianCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->getValue(Lnet/time4j/calendar/EastAsianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EastAsianCalendar;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    .line 641
    :cond_0
    iget v2, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    if-nez v2, :cond_4

    const/16 v2, 0x1e

    if-le p2, v2, :cond_1

    return v0

    :cond_1
    if-ne p2, v2, :cond_3

    .line 645
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfMonth()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    if-ne v2, v1, :cond_6

    .line 650
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfYear()I

    move-result p1

    if-gt p2, p1, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const/16 v2, 0xc

    if-le p2, v2, :cond_7

    const/16 v2, 0xd

    if-ne p2, v2, :cond_8

    .line 652
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getLeapMonth()I

    move-result p1

    if-lez p1, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    return v0

    :cond_9
    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    .line 654
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object p1

    .line 655
    invoke-interface {p1}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v2

    .line 656
    invoke-interface {p1}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p1

    if-lt p2, v2, :cond_a

    if-gt p2, p1, :cond_a

    move v0, v1

    :cond_a
    return v0

    .line 659
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown element index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValid(Lnet/time4j/calendar/EastAsianCalendar;Ljava/lang/Integer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 761
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;I)Z

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

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->withValue(Lnet/time4j/calendar/EastAsianCalendar;IZ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 591
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->withValue(Lnet/time4j/calendar/EastAsianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EastAsianCalendar;IZ)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;IZ)TD;"
        }
    .end annotation

    .line 669
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_7

    const/4 p3, 0x2

    const/4 v2, 0x0

    if-eq v0, p3, :cond_2

    const/4 p3, 0x3

    if-ne v0, p3, :cond_1

    .line 706
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 707
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result p3

    sub-int/2addr p2, p3

    .line 708
    invoke-static {v2}, Lnet/time4j/calendar/EastAsianCalendar;->getUnitRule(I)Lnet/time4j/engine/UnitRule;

    move-result-object p3

    int-to-long v0, p2

    .line 709
    invoke-interface {p3, p1, v0, v1}, Lnet/time4j/engine/UnitRule;->addTo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    return-object p1

    .line 711
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sexagesimal cycle out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 714
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 688
    :cond_2
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->isValid(Lnet/time4j/calendar/EastAsianCalendar;I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 689
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getLeapMonth()I

    move-result p3

    if-lez p3, :cond_4

    if-ge p3, p2, :cond_4

    add-int/2addr p3, v1

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    add-int/lit8 p2, p2, -0x1

    move v2, v1

    .line 697
    :cond_4
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    if-eqz v2, :cond_5

    .line 699
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    .line 701
    :cond_5
    invoke-static {p1, p2}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;->withMonth(Lnet/time4j/calendar/EastAsianCalendar;Lnet/time4j/calendar/EastAsianMonth;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1

    .line 703
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ordinal month out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-nez p3, :cond_9

    if-lt p2, v1, :cond_8

    .line 682
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfYear()I

    move-result p3

    if-gt p2, p3, :cond_8

    goto :goto_1

    .line 683
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day of year out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 685
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    int-to-long p2, p2

    add-long/2addr v0, p2

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfYear()I

    move-result p2

    int-to-long p2, p2

    sub-long/2addr v0, p2

    .line 686
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1

    :cond_a
    if-eqz p3, :cond_b

    .line 672
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    int-to-long p2, p2

    add-long/2addr v0, p2

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p2

    int-to-long p2, p2

    sub-long/2addr v0, p2

    .line 673
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1

    :cond_b
    if-lt p2, v1, :cond_d

    const/16 p3, 0x1e

    if-gt p2, p3, :cond_d

    if-ne p2, p3, :cond_c

    .line 674
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->lengthOfMonth()I

    move-result v0

    if-lt v0, p3, :cond_d

    .line 677
    :cond_c
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result p3

    int-to-long v2, p3

    sub-long v9, v0, v2

    .line 678
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v4

    .line 679
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v5

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v6

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v7

    move v8, p2

    .line 678
    invoke-virtual/range {v4 .. v10}, Lnet/time4j/calendar/EastAsianCS;->create(IILnet/time4j/calendar/EastAsianMonth;IJ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1

    .line 675
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day of month out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValue(Lnet/time4j/calendar/EastAsianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/Integer;",
            "Z)TD;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 773
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;->withValue(Lnet/time4j/calendar/EastAsianCalendar;IZ)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1

    .line 771
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
