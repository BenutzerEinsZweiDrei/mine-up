.class public Lnet/time4j/calendar/astro/SolarTime$Sunshine;
.super Ljava/lang/Object;
.source "SolarTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/astro/SolarTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sunshine"
.end annotation


# instance fields
.field private final endLocal:Lnet/time4j/PlainTimestamp;

.field private final endUTC:Lnet/time4j/Moment;

.field private final startLocal:Lnet/time4j/PlainTimestamp;

.field private final startUTC:Lnet/time4j/Moment;


# direct methods
.method private constructor <init>(Lnet/time4j/PlainDate;Lnet/time4j/Moment;Lnet/time4j/Moment;Lnet/time4j/tz/TZID;Z)V
    .locals 4

    .line 2088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2090
    invoke-static {p4}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v0

    .line 2091
    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p5, :cond_1

    const/4 p1, 0x0

    .line 2094
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    .line 2095
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    .line 2096
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    .line 2097
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    goto/16 :goto_1

    :cond_1
    const-wide/16 v2, 0x1

    if-eqz p2, :cond_4

    .line 2099
    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    .line 2100
    invoke-virtual {p2, p4}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    if-eqz p3, :cond_2

    .line 2102
    iput-object p3, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    .line 2103
    invoke-virtual {p3, p4}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    goto/16 :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 2105
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v2, v3, p2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 2106
    invoke-virtual {p1, p4}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    .line 2107
    invoke-virtual {p1, p4}, Lnet/time4j/PlainDate;->atStartOfDay(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    goto/16 :goto_1

    .line 2109
    :cond_3
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v2, v3, p2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 2110
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    .line 2111
    invoke-virtual {p1, p4}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    goto/16 :goto_1

    :cond_4
    if-eqz p3, :cond_6

    if-eqz v1, :cond_5

    .line 2115
    invoke-virtual {p1, p4}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    .line 2116
    invoke-virtual {p1, p4}, Lnet/time4j/PlainDate;->atStartOfDay(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    .line 2117
    iput-object p3, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    .line 2118
    invoke-virtual {p3, p4}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    goto :goto_1

    .line 2120
    :cond_5
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    .line 2121
    invoke-virtual {p1, p4}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    .line 2122
    iput-object p3, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    .line 2123
    invoke-virtual {p3, p4}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 2126
    invoke-virtual {p1, p4}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    .line 2127
    invoke-virtual {p1, p4}, Lnet/time4j/PlainDate;->atStartOfDay(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    .line 2128
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v2, v3, p2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 2129
    invoke-virtual {p1, p4}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    .line 2130
    invoke-virtual {p1, p4}, Lnet/time4j/PlainDate;->atStartOfDay(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    goto :goto_1

    .line 2132
    :cond_7
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p2

    invoke-virtual {p2, v0}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    .line 2133
    invoke-virtual {p2, p4}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    .line 2134
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v2, v3, p2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 2135
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    .line 2136
    invoke-virtual {p1, p4}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainDate;Lnet/time4j/Moment;Lnet/time4j/Moment;Lnet/time4j/tz/TZID;ZLnet/time4j/calendar/astro/SolarTime$1;)V
    .locals 0

    .line 2070
    invoke-direct/range {p0 .. p5}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/Moment;Lnet/time4j/Moment;Lnet/time4j/tz/TZID;Z)V

    return-void
.end method

.method private static checkAndGet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 2366
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Sunshine is absent (polar night)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public endLocal()Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 2243
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    invoke-static {v0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->checkAndGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainTimestamp;

    return-object v0
.end method

.method public endUTC()Lnet/time4j/Moment;
    .locals 1

    .line 2191
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    invoke-static {v0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->checkAndGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    return-object v0
.end method

.method public isAbsent()Z
    .locals 1

    .line 2303
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPresent(Lnet/time4j/Moment;)Z
    .locals 2

    .line 2261
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->isAbsent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2265
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->isAfter(Lnet/time4j/scale/UniversalTime;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPresent(Lnet/time4j/PlainTimestamp;)Z
    .locals 2

    .line 2283
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->isAbsent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2287
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->isAfter(Lnet/time4j/PlainTimestamp;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->isBefore(Lnet/time4j/PlainTimestamp;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public length()I
    .locals 3

    .line 2321
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->isAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2325
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public startLocal()Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 2217
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    invoke-static {v0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->checkAndGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainTimestamp;

    return-object v0
.end method

.method public startUTC()Lnet/time4j/Moment;
    .locals 1

    .line 2165
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    invoke-static {v0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->checkAndGet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2342
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->isAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Polar night"

    return-object v0

    .line 2346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sunshine["

    .line 2347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "utc="

    .line 2348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2349
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startUTC:Lnet/time4j/Moment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 2350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2351
    iget-object v2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endUTC:Lnet/time4j/Moment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",local="

    .line 2352
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2353
    iget-object v2, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->startLocal:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2355
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->endLocal:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",length="

    .line 2356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2357
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime$Sunshine;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 2358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
