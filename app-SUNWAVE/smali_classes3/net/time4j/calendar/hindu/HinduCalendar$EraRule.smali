.class Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;
.super Ljava/lang/Object;
.source "HinduCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/HinduCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/hindu/HinduCalendar;",
        "Lnet/time4j/calendar/hindu/HinduEra;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/hindu/HinduCalendar$1;)V
    .locals 0

    .line 1470
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1470
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;->getChildAtCeiling(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1534
    sget-object p1, Lnet/time4j/calendar/hindu/HinduCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1470
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;->getChildAtFloor(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1529
    sget-object p1, Lnet/time4j/calendar/hindu/HinduCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1470
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;->getMaximum(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduEra;
    .locals 6

    .line 1487
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1488
    invoke-static {}, Lnet/time4j/calendar/hindu/HinduEra;->values()[Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v0

    .line 1490
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v2, :cond_1

    .line 1491
    aget-object v3, v0, v1

    .line 1492
    sget-object v4, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$400(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lnet/time4j/calendar/hindu/HinduEra;->yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I

    move-result v4

    if-ltz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1498
    :cond_1
    sget-object p1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1470
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;->getMinimum(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduEra;
    .locals 0

    .line 1482
    sget-object p1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1470
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;->getValue(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduEra;
    .locals 0

    .line 1477
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getEra()Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1470
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    check-cast p2, Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;->isValid(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduEra;)Z
    .locals 2

    .line 1506
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1470
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    check-cast p2, Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;->withValue(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduEra;Z)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduEra;Z)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 7

    .line 1515
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;->isValid(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduEra;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1516
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p3

    invoke-virtual {p3, p2}, Lnet/time4j/calendar/hindu/HinduVariant;->with(Lnet/time4j/calendar/hindu/HinduEra;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v1

    .line 1517
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p2

    if-ne v1, p2, :cond_0

    return-object p1

    .line 1520
    :cond_0
    new-instance p2, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$400(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v3

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$600(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v4

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide v5

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduCalendar;-><init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V

    return-object p2

    .line 1523
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Hindu era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
