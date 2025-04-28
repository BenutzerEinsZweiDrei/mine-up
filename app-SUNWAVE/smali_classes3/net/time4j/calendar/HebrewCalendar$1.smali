.class final Lnet/time4j/calendar/HebrewCalendar$1;
.super Lnet/time4j/calendar/service/StdEnumDateElement;
.source "HebrewCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/service/StdEnumDateElement<",
        "Lnet/time4j/calendar/HebrewMonth;",
        "Lnet/time4j/calendar/HebrewCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    return-void
.end method


# virtual methods
.method protected hasLeapMonth(Lnet/time4j/engine/ChronoDisplay;)Z
    .locals 1

    .line 236
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result p1

    return p1
.end method

.method public parseFromInt(Lnet/time4j/engine/ChronoEntity;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v1, 0xd

    if-gt p2, v1, :cond_0

    .line 259
    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$ParsedMonthElement;->INSTANCE:Lnet/time4j/calendar/HebrewCalendar$ParsedMonthElement;

    invoke-virtual {p1, v1, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic printToInt(Ljava/lang/Enum;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .locals 0

    .line 233
    check-cast p1, Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$1;->printToInt(Lnet/time4j/calendar/HebrewMonth;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic printToInt(Ljava/lang/Object;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .locals 0

    .line 233
    check-cast p1, Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$1;->printToInt(Lnet/time4j/calendar/HebrewMonth;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I

    move-result p1

    return p1
.end method

.method public printToInt(Lnet/time4j/calendar/HebrewMonth;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .locals 3

    .line 244
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth$Order:[I

    invoke-static {}, Lnet/time4j/calendar/HebrewMonth;->order()Lnet/time4j/engine/AttributeKey;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/HebrewMonth$Order;->CIVIL:Lnet/time4j/calendar/HebrewMonth$Order;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/calendar/HebrewMonth$Order;

    invoke-virtual {p3}, Lnet/time4j/calendar/HebrewMonth$Order;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$1;->numerical(Ljava/lang/Enum;)I

    move-result p1

    return p1

    .line 248
    :cond_0
    invoke-virtual {p0, p2}, Lnet/time4j/calendar/HebrewCalendar$1;->hasLeapMonth(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/HebrewMonth;->getBiblicalValue(Z)I

    move-result p1

    return p1

    .line 246
    :cond_1
    invoke-virtual {p0, p2}, Lnet/time4j/calendar/HebrewCalendar$1;->hasLeapMonth(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/HebrewMonth;->getCivilValue(Z)I

    move-result p1

    return p1
.end method
