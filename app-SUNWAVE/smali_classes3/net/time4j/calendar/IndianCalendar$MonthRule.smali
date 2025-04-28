.class Lnet/time4j/calendar/IndianCalendar$MonthRule;
.super Ljava/lang/Object;
.source "IndianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/IndianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/IndianCalendar;",
        "Lnet/time4j/calendar/IndianMonth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/IndianCalendar$1;)V
    .locals 0

    .line 1283
    invoke-direct {p0}, Lnet/time4j/calendar/IndianCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1283
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/IndianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1347
    sget-object p1, Lnet/time4j/calendar/IndianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1283
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/IndianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1340
    sget-object p1, Lnet/time4j/calendar/IndianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1283
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/calendar/IndianMonth;
    .locals 0

    .line 1305
    sget-object p1, Lnet/time4j/calendar/IndianMonth;->PHALGUNA:Lnet/time4j/calendar/IndianMonth;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1283
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/calendar/IndianMonth;
    .locals 0

    .line 1298
    sget-object p1, Lnet/time4j/calendar/IndianMonth;->CHAITRA:Lnet/time4j/calendar/IndianMonth;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1283
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$MonthRule;->getValue(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/calendar/IndianMonth;
    .locals 0

    .line 1291
    invoke-virtual {p1}, Lnet/time4j/calendar/IndianCalendar;->getMonth()Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1283
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    check-cast p2, Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/IndianCalendar$MonthRule;->isValid(Lnet/time4j/calendar/IndianCalendar;Lnet/time4j/calendar/IndianMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/IndianCalendar;Lnet/time4j/calendar/IndianMonth;)Z
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

    .line 1283
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    check-cast p2, Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/IndianCalendar$MonthRule;->withValue(Lnet/time4j/calendar/IndianCalendar;Lnet/time4j/calendar/IndianMonth;Z)Lnet/time4j/calendar/IndianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/IndianCalendar;Lnet/time4j/calendar/IndianMonth;Z)Lnet/time4j/calendar/IndianCalendar;
    .locals 2

    if-eqz p2, :cond_0

    .line 1330
    invoke-virtual {p2}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result p2

    .line 1331
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    sget-object v0, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$500(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v1

    invoke-interface {p3, v0, v1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p3

    .line 1332
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$700(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1333
    new-instance v0, Lnet/time4j/calendar/IndianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$500(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/time4j/calendar/IndianCalendar;-><init>(IIILnet/time4j/calendar/IndianCalendar$1;)V

    return-object v0

    .line 1327
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
