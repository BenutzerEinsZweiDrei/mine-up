.class Lnet/time4j/calendar/HebrewCalendar$MonthRule;
.super Ljava/lang/Object;
.source "HebrewCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HebrewCalendar;",
        "Lnet/time4j/calendar/HebrewMonth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewCalendar$1;)V
    .locals 0

    .line 1627
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1627
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 1692
    sget-object p1, Lnet/time4j/calendar/HebrewCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1627
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 1685
    sget-object p1, Lnet/time4j/calendar/HebrewCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1627
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;
    .locals 0

    .line 1649
    sget-object p1, Lnet/time4j/calendar/HebrewMonth;->ELUL:Lnet/time4j/calendar/HebrewMonth;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1627
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;
    .locals 0

    .line 1642
    sget-object p1, Lnet/time4j/calendar/HebrewMonth;->TISHRI:Lnet/time4j/calendar/HebrewMonth;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1627
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;->getValue(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;
    .locals 0

    .line 1635
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1627
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    check-cast p2, Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;->isValid(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewMonth;)Z
    .locals 1

    if-eqz p2, :cond_1

    .line 1659
    sget-object v0, Lnet/time4j/calendar/HebrewMonth;->ADAR_I:Lnet/time4j/calendar/HebrewMonth;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1627
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    check-cast p2, Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;->withValue(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewMonth;Z)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewMonth;Z)Lnet/time4j/calendar/HebrewCalendar;
    .locals 2

    if-eqz p2, :cond_2

    .line 1672
    sget-object p3, Lnet/time4j/calendar/HebrewMonth;->ADAR_I:Lnet/time4j/calendar/HebrewMonth;

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1673
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ADAR-I cannot be set in a standard year: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1676
    :cond_1
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p3

    invoke-static {p3, p2}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result p3

    .line 1677
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1678
    new-instance v0, Lnet/time4j/calendar/HebrewCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/time4j/calendar/HebrewCalendar;-><init>(ILnet/time4j/calendar/HebrewMonth;ILnet/time4j/calendar/HebrewCalendar$1;)V

    return-object v0

    .line 1671
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
