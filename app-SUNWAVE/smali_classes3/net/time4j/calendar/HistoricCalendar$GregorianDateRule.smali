.class Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;
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
    name = "GregorianDateRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 1357
    invoke-direct {p0}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1357
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;->getChildAtCeiling(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 1423
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1357
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;->getChildAtFloor(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 1416
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1357
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;->getMaximum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;
    .locals 2

    .line 1379
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$800(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->date()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/time4j/PlainDate;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1357
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;->getMinimum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;
    .locals 2

    .line 1372
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$800(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->date()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/time4j/PlainDate;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1357
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;->getValue(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;
    .locals 0

    .line 1365
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$800(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1357
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    check-cast p2, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;->isValid(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/PlainDate;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/PlainDate;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1394
    :cond_0
    :try_start_0
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1357
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    check-cast p2, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;->withValue(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/PlainDate;Z)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/PlainDate;Z)Lnet/time4j/calendar/HistoricCalendar;
    .locals 1

    .line 1409
    new-instance p3, Lnet/time4j/calendar/HistoricCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lnet/time4j/calendar/HistoricCalendar;-><init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/PlainDate;Lnet/time4j/calendar/HistoricCalendar$1;)V

    return-object p3
.end method
