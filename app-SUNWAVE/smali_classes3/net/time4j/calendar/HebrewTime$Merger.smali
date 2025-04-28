.class Lnet/time4j/calendar/HebrewTime$Merger;
.super Ljava/lang/Object;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/HebrewTime;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewTime$1;)V
    .locals 0

    .line 1275
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1275
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewTime$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 1275
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/HebrewTime$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/HebrewTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/HebrewTime;"
        }
    .end annotation

    .line 1287
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 1289
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/format/Leniency;

    invoke-virtual {p2}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1290
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object p2

    .line 1295
    :goto_0
    invoke-static {p2}, Lnet/time4j/calendar/HebrewTime;->at(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p2

    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/HebrewTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/HebrewTime;"
        }
    .end annotation

    .line 1306
    sget-object p2, Lnet/time4j/calendar/HebrewTime;->PART_OF_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 1307
    sget-object p2, Lnet/time4j/calendar/HebrewTime;->PART_OF_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    if-ltz p2, :cond_0

    const/16 p4, 0x438

    if-lt p2, p4, :cond_2

    .line 1309
    :cond_0
    sget-object p4, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PART_OF_HOUR out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p3

    :cond_1
    const/4 p2, 0x0

    .line 1313
    :cond_2
    sget-object p4, Lnet/time4j/calendar/HebrewTime;->CLOCK_CYCLE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p4

    if-eqz p4, :cond_5

    sget-object p4, Lnet/time4j/calendar/HebrewTime;->CLOCK_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1314
    sget-object p4, Lnet/time4j/calendar/HebrewTime;->CLOCK_CYCLE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/time4j/calendar/HebrewTime$ClockCycle;

    .line 1315
    sget-object v0, Lnet/time4j/calendar/HebrewTime;->CLOCK_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    const/16 v1, 0xc

    if-le v0, v1, :cond_3

    goto :goto_0

    .line 1320
    :cond_3
    new-instance p1, Lnet/time4j/calendar/HebrewTime;

    invoke-direct {p1, p4, v0, p2, p3}, Lnet/time4j/calendar/HebrewTime;-><init>(Lnet/time4j/calendar/HebrewTime$ClockCycle;IILnet/time4j/calendar/HebrewTime$1;)V

    return-object p1

    .line 1317
    :cond_4
    :goto_0
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLOCK_HOUR out of range: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p3

    .line 1321
    :cond_5
    sget-object p4, Lnet/time4j/calendar/HebrewTime;->DIGITAL_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 1322
    sget-object p4, Lnet/time4j/calendar/HebrewTime;->DIGITAL_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p4

    if-ltz p4, :cond_7

    const/16 v0, 0x17

    if-le p4, v0, :cond_6

    goto :goto_1

    .line 1327
    :cond_6
    new-instance p1, Lnet/time4j/calendar/HebrewTime;

    invoke-direct {p1, p4, p2, p3}, Lnet/time4j/calendar/HebrewTime;-><init>(IILnet/time4j/calendar/HebrewTime$1;)V

    return-object p1

    .line 1324
    :cond_7
    :goto_1
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIGITAL_HOUR out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p3

    .line 1329
    :cond_8
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p4, "Missing cycle or hour of cycle."

    invoke-virtual {p1, p2, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p3
.end method

.method public getDefaultPivotYear()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 1354
    sget-object v0, Lnet/time4j/engine/StartOfDay;->EVENING:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1349
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Localized format patterns are not available."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 1275
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewTime$Merger;->preformat(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    return-object p1
.end method

.method public preparser()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
