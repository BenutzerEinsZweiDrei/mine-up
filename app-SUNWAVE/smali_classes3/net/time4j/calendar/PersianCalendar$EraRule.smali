.class Lnet/time4j/calendar/PersianCalendar$EraRule;
.super Ljava/lang/Object;
.source "PersianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/PersianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/PersianCalendar;",
        "Lnet/time4j/calendar/PersianEra;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/PersianCalendar$1;)V
    .locals 0

    .line 1661
    invoke-direct {p0}, Lnet/time4j/calendar/PersianCalendar$EraRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1661
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$EraRule;->getChildAtCeiling(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/PersianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1722
    sget-object p1, Lnet/time4j/calendar/PersianCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1661
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$EraRule;->getChildAtFloor(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/PersianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1715
    sget-object p1, Lnet/time4j/calendar/PersianCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1661
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$EraRule;->getMaximum(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianEra;
    .locals 0

    .line 1683
    sget-object p1, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1661
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$EraRule;->getMinimum(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianEra;
    .locals 0

    .line 1676
    sget-object p1, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1661
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$EraRule;->getValue(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianEra;
    .locals 0

    .line 1669
    sget-object p1, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1661
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    check-cast p2, Lnet/time4j/calendar/PersianEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/PersianCalendar$EraRule;->isValid(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianEra;)Z
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

    .line 1661
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    check-cast p2, Lnet/time4j/calendar/PersianEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/PersianCalendar$EraRule;->withValue(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianEra;Z)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianEra;Z)Lnet/time4j/calendar/PersianCalendar;
    .locals 0

    if-eqz p2, :cond_0

    return-object p1

    .line 1705
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing era value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
