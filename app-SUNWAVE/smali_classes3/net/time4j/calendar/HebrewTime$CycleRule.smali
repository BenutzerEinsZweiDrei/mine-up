.class Lnet/time4j/calendar/HebrewTime$CycleRule;
.super Ljava/lang/Object;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CycleRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HebrewTime;",
        "Lnet/time4j/calendar/HebrewTime$ClockCycle;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewTime$1;)V
    .locals 0

    .line 1099
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime$CycleRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1099
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$CycleRule;->getChildAtCeiling(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HebrewTime;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1146
    sget-object p1, Lnet/time4j/calendar/HebrewTime;->CLOCK_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1099
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$CycleRule;->getChildAtFloor(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HebrewTime;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1141
    sget-object p1, Lnet/time4j/calendar/HebrewTime;->CLOCK_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1099
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$CycleRule;->getMaximum(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/calendar/HebrewTime$ClockCycle;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/calendar/HebrewTime$ClockCycle;
    .locals 0

    .line 1136
    sget-object p1, Lnet/time4j/calendar/HebrewTime$ClockCycle;->DAY:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1099
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$CycleRule;->getMinimum(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/calendar/HebrewTime$ClockCycle;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/calendar/HebrewTime$ClockCycle;
    .locals 0

    .line 1131
    sget-object p1, Lnet/time4j/calendar/HebrewTime$ClockCycle;->NIGHT:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1099
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$CycleRule;->getValue(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/calendar/HebrewTime$ClockCycle;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/calendar/HebrewTime$ClockCycle;
    .locals 1

    .line 1106
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$600(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    const/16 v0, 0xc

    if-ge p1, v0, :cond_0

    sget-object p1, Lnet/time4j/calendar/HebrewTime$ClockCycle;->NIGHT:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/calendar/HebrewTime$ClockCycle;->DAY:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1099
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    check-cast p2, Lnet/time4j/calendar/HebrewTime$ClockCycle;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewTime$CycleRule;->isValid(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/calendar/HebrewTime$ClockCycle;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/calendar/HebrewTime$ClockCycle;)Z
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

    .line 1099
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    check-cast p2, Lnet/time4j/calendar/HebrewTime$ClockCycle;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewTime$CycleRule;->withValue(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/calendar/HebrewTime$ClockCycle;Z)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/calendar/HebrewTime$ClockCycle;Z)Lnet/time4j/calendar/HebrewTime;
    .locals 2

    if-eqz p2, :cond_0

    .line 1118
    new-instance p3, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewTime;->getClockHour()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewTime;->getPart()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p3, p2, v0, p1, v1}, Lnet/time4j/calendar/HebrewTime;-><init>(Lnet/time4j/calendar/HebrewTime$ClockCycle;IILnet/time4j/calendar/HebrewTime$1;)V

    return-object p3

    .line 1116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing Hebrew cycle."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
