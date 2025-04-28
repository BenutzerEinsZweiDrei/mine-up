.class final Lnet/time4j/calendar/HebrewTime$1;
.super Ljava/lang/Object;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/HebrewTime;->at(Lnet/time4j/calendar/astro/SolarTime;)Lnet/time4j/engine/ChronoFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/Moment;",
        "Lnet/time4j/calendar/HebrewTime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$geoLocation:Lnet/time4j/calendar/astro/SolarTime;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/astro/SolarTime;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lnet/time4j/calendar/HebrewTime$1;->val$geoLocation:Lnet/time4j/calendar/astro/SolarTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 472
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$1;->apply(Lnet/time4j/Moment;)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/Moment;)Lnet/time4j/calendar/HebrewTime;
    .locals 11

    .line 475
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lnet/time4j/calendar/HebrewTime$1;->val$geoLocation:Lnet/time4j/calendar/astro/SolarTime;

    invoke-virtual {v1}, Lnet/time4j/calendar/astro/SolarTime;->getLongitude()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Ljava/math/BigDecimal;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/calendar/HebrewTime$1;->val$geoLocation:Lnet/time4j/calendar/astro/SolarTime;

    invoke-virtual {v2}, Lnet/time4j/calendar/astro/SolarTime;->sunset()Lnet/time4j/engine/ChronoFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/Moment;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 484
    invoke-virtual {p1, v1}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v3

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_1

    .line 485
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object v3

    iget-object v6, p0, Lnet/time4j/calendar/HebrewTime$1;->val$geoLocation:Lnet/time4j/calendar/astro/SolarTime;

    invoke-virtual {v6}, Lnet/time4j/calendar/astro/SolarTime;->sunrise()Lnet/time4j/engine/ChronoFunction;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/Moment;

    if-eqz v3, :cond_2

    .line 487
    invoke-virtual {p1, v3}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 488
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object v0

    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v4, v5, v1}, Lnet/time4j/PlainDate;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    iget-object v1, p0, Lnet/time4j/calendar/HebrewTime$1;->val$geoLocation:Lnet/time4j/calendar/astro/SolarTime;

    invoke-virtual {v1}, Lnet/time4j/calendar/astro/SolarTime;->sunset()Lnet/time4j/engine/ChronoFunction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnet/time4j/Moment;

    if-eqz v1, :cond_2

    .line 490
    sget-object v0, Lnet/time4j/calendar/HebrewTime$ClockCycle;->NIGHT:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    goto :goto_0

    .line 495
    :cond_0
    sget-object v0, Lnet/time4j/calendar/HebrewTime$ClockCycle;->DAY:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object v0

    sget-object v3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v4, v5, v3}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    iget-object v3, p0, Lnet/time4j/calendar/HebrewTime$1;->val$geoLocation:Lnet/time4j/calendar/astro/SolarTime;

    invoke-virtual {v3}, Lnet/time4j/calendar/astro/SolarTime;->sunrise()Lnet/time4j/engine/ChronoFunction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    if-eqz v0, :cond_2

    .line 503
    sget-object v3, Lnet/time4j/calendar/HebrewTime$ClockCycle;->NIGHT:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_0

    :cond_2
    move-object v0, v2

    move-object v1, v0

    move-object v3, v1

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 509
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 510
    invoke-virtual {v1, v3, v4}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v4

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v4, v6

    .line 511
    invoke-virtual {v3}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v3

    int-to-long v8, v3

    add-long/2addr v4, v8

    .line 512
    invoke-virtual {v1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v3

    int-to-long v8, v3

    sub-long/2addr v4, v8

    .line 513
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 514
    invoke-virtual {v1, p1, v3}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    .line 515
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    int-to-long v6, p1

    add-long/2addr v8, v6

    .line 516
    invoke-virtual {v1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    int-to-long v6, p1

    sub-long/2addr v8, v6

    const-wide v6, 0x40c9500000000000L    # 12960.0

    long-to-double v8, v8

    mul-double/2addr v8, v6

    long-to-double v3, v4

    div-double/2addr v8, v3

    const-wide v3, 0x4090e00000000000L    # 1080.0

    div-double v3, v8, v3

    .line 518
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p1, v3

    mul-int/lit16 v1, p1, 0x438

    int-to-double v3, v1

    sub-double/2addr v8, v3

    .line 519
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 520
    new-instance v3, Lnet/time4j/calendar/HebrewTime;

    if-nez p1, :cond_3

    const/16 p1, 0xc

    :cond_3
    invoke-direct {v3, v0, p1, v1, v2}, Lnet/time4j/calendar/HebrewTime;-><init>(Lnet/time4j/calendar/HebrewTime$ClockCycle;IILnet/time4j/calendar/HebrewTime$1;)V

    return-object v3

    :cond_4
    return-object v2
.end method
