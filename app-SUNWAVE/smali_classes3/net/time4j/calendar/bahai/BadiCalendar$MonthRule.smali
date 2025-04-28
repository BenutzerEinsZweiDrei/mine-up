.class Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;
.super Ljava/lang/Object;
.source "BadiCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        "Lnet/time4j/calendar/bahai/BadiMonth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/bahai/BadiCalendar$1;)V
    .locals 0

    .line 2005
    invoke-direct {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2005
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2067
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_DIVISION:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2005
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2060
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_DIVISION:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2005
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiMonth;
    .locals 0

    .line 2027
    sget-object p1, Lnet/time4j/calendar/bahai/BadiMonth;->ALA:Lnet/time4j/calendar/bahai/BadiMonth;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2005
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiMonth;
    .locals 0

    .line 2020
    sget-object p1, Lnet/time4j/calendar/bahai/BadiMonth;->BAHA:Lnet/time4j/calendar/bahai/BadiMonth;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2005
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;->getValue(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/bahai/BadiCalendar;)Lnet/time4j/calendar/bahai/BadiMonth;
    .locals 0

    .line 2013
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getMonth()Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2005
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    check-cast p2, Lnet/time4j/calendar/bahai/BadiMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;->isValid(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiMonth;)Z
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

    .line 2005
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    check-cast p2, Lnet/time4j/calendar/bahai/BadiMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;->withValue(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiMonth;Z)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiMonth;Z)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 7

    if-eqz p2, :cond_1

    .line 2051
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x13

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p3

    :goto_0
    move v5, p3

    .line 2052
    new-instance p3, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v3

    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiMonth;->getValue()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    return-object p3

    .line 2049
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing Badi month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
