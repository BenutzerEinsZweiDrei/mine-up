.class Lnet/time4j/calendar/CopticCalendar$MonthRule;
.super Ljava/lang/Object;
.source "CopticCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/CopticCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/CopticCalendar;",
        "Lnet/time4j/calendar/CopticMonth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/CopticCalendar$1;)V
    .locals 0

    .line 1201
    invoke-direct {p0}, Lnet/time4j/calendar/CopticCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1201
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/CopticCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1265
    sget-object p1, Lnet/time4j/calendar/CopticCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1201
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/CopticCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1258
    sget-object p1, Lnet/time4j/calendar/CopticCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1201
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticMonth;
    .locals 0

    .line 1223
    sget-object p1, Lnet/time4j/calendar/CopticMonth;->NASIE:Lnet/time4j/calendar/CopticMonth;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1201
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticMonth;
    .locals 0

    .line 1216
    sget-object p1, Lnet/time4j/calendar/CopticMonth;->TOUT:Lnet/time4j/calendar/CopticMonth;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1201
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$MonthRule;->getValue(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticMonth;
    .locals 0

    .line 1209
    invoke-virtual {p1}, Lnet/time4j/calendar/CopticCalendar;->getMonth()Lnet/time4j/calendar/CopticMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1201
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    check-cast p2, Lnet/time4j/calendar/CopticMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CopticCalendar$MonthRule;->isValid(Lnet/time4j/calendar/CopticCalendar;Lnet/time4j/calendar/CopticMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/CopticCalendar;Lnet/time4j/calendar/CopticMonth;)Z
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

    .line 1201
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    check-cast p2, Lnet/time4j/calendar/CopticMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/CopticCalendar$MonthRule;->withValue(Lnet/time4j/calendar/CopticCalendar;Lnet/time4j/calendar/CopticMonth;Z)Lnet/time4j/calendar/CopticCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/CopticCalendar;Lnet/time4j/calendar/CopticMonth;Z)Lnet/time4j/calendar/CopticCalendar;
    .locals 2

    if-eqz p2, :cond_0

    .line 1248
    invoke-virtual {p2}, Lnet/time4j/calendar/CopticMonth;->getValue()I

    move-result p2

    .line 1249
    invoke-static {}, Lnet/time4j/calendar/CopticCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    sget-object v0, Lnet/time4j/calendar/CopticEra;->ANNO_MARTYRUM:Lnet/time4j/calendar/CopticEra;

    invoke-static {p1}, Lnet/time4j/calendar/CopticCalendar;->access$700(Lnet/time4j/calendar/CopticCalendar;)I

    move-result v1

    invoke-interface {p3, v0, v1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p3

    .line 1250
    invoke-static {p1}, Lnet/time4j/calendar/CopticCalendar;->access$900(Lnet/time4j/calendar/CopticCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1251
    new-instance v0, Lnet/time4j/calendar/CopticCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/CopticCalendar;->access$700(Lnet/time4j/calendar/CopticCalendar;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/time4j/calendar/CopticCalendar;-><init>(IIILnet/time4j/calendar/CopticCalendar$1;)V

    return-object v0

    .line 1245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
