.class Lnet/time4j/calendar/HistoricCalendar$EraRule;
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
    name = "EraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        "Lnet/time4j/history/HistoricEra;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 1429
    invoke-direct {p0}, Lnet/time4j/calendar/HistoricCalendar$EraRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1429
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$EraRule;->getChildAtCeiling(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1508
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1429
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$EraRule;->getChildAtFloor(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1501
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1429
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$EraRule;->getMaximum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 1457
    invoke-virtual {p1}, Lnet/time4j/calendar/HistoricCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    .line 1459
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_0

    .line 1460
    sget-object p1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1429
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$EraRule;->getMinimum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 1444
    invoke-virtual {p1}, Lnet/time4j/calendar/HistoricCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    .line 1446
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_0

    .line 1447
    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1429
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$EraRule;->getValue(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricEra;
    .locals 0

    .line 1437
    invoke-virtual {p1}, Lnet/time4j/calendar/HistoricCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1429
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    check-cast p2, Lnet/time4j/history/HistoricEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar$EraRule;->isValid(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/history/HistoricEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/history/HistoricEra;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1477
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1429
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    check-cast p2, Lnet/time4j/history/HistoricEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HistoricCalendar$EraRule;->withValue(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/history/HistoricEra;Z)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/history/HistoricEra;Z)Lnet/time4j/calendar/HistoricCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 1489
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p3

    if-ne p3, p2, :cond_0

    return-object p1

    .line 1494
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lnet/time4j/history/HistoricEra;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
