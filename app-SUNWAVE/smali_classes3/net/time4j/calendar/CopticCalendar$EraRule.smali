.class Lnet/time4j/calendar/CopticCalendar$EraRule;
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
    name = "EraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/CopticCalendar;",
        "Lnet/time4j/calendar/CopticEra;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/CopticCalendar$1;)V
    .locals 0

    .line 1271
    invoke-direct {p0}, Lnet/time4j/calendar/CopticCalendar$EraRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1271
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$EraRule;->getChildAtCeiling(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 1332
    sget-object p1, Lnet/time4j/calendar/CopticCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1271
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$EraRule;->getChildAtFloor(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 1325
    sget-object p1, Lnet/time4j/calendar/CopticCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1271
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$EraRule;->getMaximum(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticEra;
    .locals 0

    .line 1293
    sget-object p1, Lnet/time4j/calendar/CopticEra;->ANNO_MARTYRUM:Lnet/time4j/calendar/CopticEra;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1271
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$EraRule;->getMinimum(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticEra;
    .locals 0

    .line 1286
    sget-object p1, Lnet/time4j/calendar/CopticEra;->ANNO_MARTYRUM:Lnet/time4j/calendar/CopticEra;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1271
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CopticCalendar$EraRule;->getValue(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/CopticCalendar;)Lnet/time4j/calendar/CopticEra;
    .locals 0

    .line 1279
    sget-object p1, Lnet/time4j/calendar/CopticEra;->ANNO_MARTYRUM:Lnet/time4j/calendar/CopticEra;

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1271
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    check-cast p2, Lnet/time4j/calendar/CopticEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CopticCalendar$EraRule;->isValid(Lnet/time4j/calendar/CopticCalendar;Lnet/time4j/calendar/CopticEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/CopticCalendar;Lnet/time4j/calendar/CopticEra;)Z
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

    .line 1271
    check-cast p1, Lnet/time4j/calendar/CopticCalendar;

    check-cast p2, Lnet/time4j/calendar/CopticEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/CopticCalendar$EraRule;->withValue(Lnet/time4j/calendar/CopticCalendar;Lnet/time4j/calendar/CopticEra;Z)Lnet/time4j/calendar/CopticCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/CopticCalendar;Lnet/time4j/calendar/CopticEra;Z)Lnet/time4j/calendar/CopticCalendar;
    .locals 0

    if-eqz p2, :cond_0

    return-object p1

    .line 1315
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing era value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
