.class Lnet/time4j/calendar/EthiopianCalendar$MonthRule;
.super Ljava/lang/Object;
.source "EthiopianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/EthiopianCalendar;",
        "Lnet/time4j/calendar/EthiopianMonth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V
    .locals 0

    .line 1290
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1354
    sget-object p1, Lnet/time4j/calendar/EthiopianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1347
    sget-object p1, Lnet/time4j/calendar/EthiopianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/EthiopianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/EthiopianMonth;
    .locals 0

    .line 1312
    sget-object p1, Lnet/time4j/calendar/EthiopianMonth;->PAGUMEN:Lnet/time4j/calendar/EthiopianMonth;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/EthiopianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/EthiopianMonth;
    .locals 0

    .line 1305
    sget-object p1, Lnet/time4j/calendar/EthiopianMonth;->MESKEREM:Lnet/time4j/calendar/EthiopianMonth;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;->getValue(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/EthiopianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/EthiopianMonth;
    .locals 0

    .line 1298
    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getMonth()Lnet/time4j/calendar/EthiopianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    check-cast p2, Lnet/time4j/calendar/EthiopianMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;->isValid(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/EthiopianMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/EthiopianMonth;)Z
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

    .line 1290
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    check-cast p2, Lnet/time4j/calendar/EthiopianMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;->withValue(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/EthiopianMonth;Z)Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/EthiopianMonth;Z)Lnet/time4j/calendar/EthiopianCalendar;
    .locals 2

    if-eqz p2, :cond_0

    .line 1337
    invoke-virtual {p2}, Lnet/time4j/calendar/EthiopianMonth;->getValue()I

    move-result p2

    .line 1338
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->access$300()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result v1

    invoke-interface {p3, v0, v1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p3

    .line 1339
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1100(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1340
    new-instance v0, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$900(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/time4j/calendar/EthiopianCalendar;-><init>(IIILnet/time4j/calendar/EthiopianCalendar$1;)V

    return-object v0

    .line 1334
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
