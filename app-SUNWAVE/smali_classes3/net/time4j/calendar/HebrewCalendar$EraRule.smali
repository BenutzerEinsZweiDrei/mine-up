.class Lnet/time4j/calendar/HebrewCalendar$EraRule;
.super Ljava/lang/Object;
.source "HebrewCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HebrewCalendar;",
        "Lnet/time4j/calendar/HebrewEra;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewCalendar$1;)V
    .locals 0

    .line 1698
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewCalendar$EraRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1698
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$EraRule;->getChildAtCeiling(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1759
    sget-object p1, Lnet/time4j/calendar/HebrewCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1698
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$EraRule;->getChildAtFloor(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1752
    sget-object p1, Lnet/time4j/calendar/HebrewCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1698
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$EraRule;->getMaximum(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewEra;
    .locals 0

    .line 1720
    sget-object p1, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1698
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$EraRule;->getMinimum(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewEra;
    .locals 0

    .line 1713
    sget-object p1, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1698
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$EraRule;->getValue(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewEra;
    .locals 0

    .line 1706
    sget-object p1, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1698
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    check-cast p2, Lnet/time4j/calendar/HebrewEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$EraRule;->isValid(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewEra;)Z
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

    .line 1698
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    check-cast p2, Lnet/time4j/calendar/HebrewEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$EraRule;->withValue(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewEra;Z)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/HebrewEra;Z)Lnet/time4j/calendar/HebrewCalendar;
    .locals 0

    if-eqz p2, :cond_0

    return-object p1

    .line 1742
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing era value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
