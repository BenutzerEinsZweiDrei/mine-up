.class Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;
.super Ljava/lang/Object;
.source "FrenchRepublicanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V
    .locals 0

    .line 1884
    invoke-direct {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1884
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1947
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1884
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1940
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1884
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;
    .locals 0

    .line 1906
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;->FRUCTIDOR:Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1884
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;
    .locals 0

    .line 1899
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;->VENDEMIAIRE:Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1884
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;->getValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;
    .locals 0

    .line 1892
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getMonth()Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1884
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;->isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1884
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;->withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;Z)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;Z)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 0

    if-eqz p2, :cond_1

    .line 1929
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1930
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    const/16 p3, 0x1e

    invoke-static {p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(ILnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;I)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    .line 1932
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p3

    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfMonth()I

    move-result p1

    invoke-static {p3, p2, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(ILnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;I)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    .line 1928
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing republican month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
