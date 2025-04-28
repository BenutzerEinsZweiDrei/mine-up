.class Lnet/time4j/calendar/HistoricCalendar$MonthRule;
.super Ljava/lang/Object;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        "Lnet/time4j/Month;",
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

.method synthetic constructor <init>(Lnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 1290
    invoke-direct {p0}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1351
    sget-object p1, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1344
    sget-object p1, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/Month;
    .locals 1

    .line 1312
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HistoricCalendar;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/Month;
    .locals 1

    .line 1305
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HistoricCalendar;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;->getValue(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/Month;
    .locals 0

    .line 1298
    invoke-virtual {p1}, Lnet/time4j/calendar/HistoricCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    check-cast p2, Lnet/time4j/Month;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;->isValid(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/Month;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/Month;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1326
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v0

    invoke-virtual {p2}, Lnet/time4j/Month;->getValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lnet/time4j/calendar/HistoricCalendar;->isValid(Lnet/time4j/engine/ChronoElement;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1290
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    check-cast p2, Lnet/time4j/Month;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;->withValue(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/Month;Z)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/Month;Z)Lnet/time4j/calendar/HistoricCalendar;
    .locals 0

    .line 1337
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object p3

    invoke-virtual {p2}, Lnet/time4j/Month;->getValue()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/calendar/HistoricCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    return-object p1
.end method
