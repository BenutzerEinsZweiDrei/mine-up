.class Lnet/time4j/calendar/EthiopianCalendar$TabotRule;
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
    name = "TabotRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/EthiopianCalendar;",
        "Lnet/time4j/calendar/Tabot;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V
    .locals 0

    .line 1495
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1495
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;->getChildAtCeiling(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1495
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;->getChildAtFloor(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1495
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;->getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Tabot;
    .locals 1

    .line 1517
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/EthiopianCalendar;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/calendar/Tabot;->of(I)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1495
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;->getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Tabot;
    .locals 0

    const/4 p1, 0x1

    .line 1510
    invoke-static {p1}, Lnet/time4j/calendar/Tabot;->of(I)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1495
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;->getValue(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Tabot;
    .locals 0

    .line 1503
    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getDayOfMonth()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/calendar/Tabot;->of(I)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1495
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    check-cast p2, Lnet/time4j/calendar/Tabot;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;->isValid(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/Tabot;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/Tabot;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1527
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;->getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Tabot;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/time4j/calendar/Tabot;->compareTo(Lnet/time4j/calendar/Tabot;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1495
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    check-cast p2, Lnet/time4j/calendar/Tabot;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;->withValue(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/Tabot;Z)Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/Tabot;Z)Lnet/time4j/calendar/EthiopianCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 1542
    sget-object p3, Lnet/time4j/calendar/EthiopianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p2}, Lnet/time4j/calendar/Tabot;->getDayOfMonth()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/calendar/EthiopianCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    return-object p1

    .line 1539
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing tabot."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
