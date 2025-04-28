.class final enum Lnet/time4j/calendar/astro/StdSolarCalculator$2;
.super Lnet/time4j/calendar/astro/StdSolarCalculator;
.source "StdSolarCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/astro/StdSolarCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 357
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/astro/StdSolarCalculator;-><init>(Ljava/lang/String;ILnet/time4j/calendar/astro/StdSolarCalculator$1;)V

    return-void
.end method

.method private declinationRad(D)D
    .locals 2

    .line 481
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->obliquity(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->solarLongitude(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    .line 480
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private equationOfCenter(D)D
    .locals 8

    .line 492
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->meanAnomaly(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 494
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3eed5c31593e5fb7L    # 1.4E-5

    mul-double/2addr v4, p1

    const-wide v6, 0x3f73bafd976ff3aeL    # 0.004817

    add-double/2addr v4, v6

    mul-double/2addr v4, p1

    const-wide v6, 0x3ffea235b4edb2f6L    # 1.914602

    sub-double/2addr v6, v4

    mul-double/2addr v2, v6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v0

    .line 495
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v6, 0x3f1a79fec99f1ae3L    # 1.01E-4

    mul-double/2addr p1, v6

    const-wide v6, 0x3f94790b84988095L    # 0.019993

    sub-double/2addr v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p1

    .line 496
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide v0, 0x3f32f09d8c6d612cL    # 2.89E-4

    mul-double/2addr p1, v0

    add-double/2addr v2, p1

    return-wide v2
.end method

.method private event(ZLnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;
    .locals 20

    .line 413
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    move-object/from16 v2, p2

    move-wide/from16 v3, p5

    invoke-static {v2, v1, v3, v4, v0}, Lnet/time4j/calendar/astro/SolarTime;->fromLocalEvent(Lnet/time4j/engine/CalendarDate;IDLjava/lang/String;)Lnet/time4j/Moment;

    move-result-object v0

    .line 414
    sget-object v1, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide v10

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide v4, v10

    move-wide/from16 v6, p3

    move-wide/from16 v8, p7

    .line 415
    invoke-direct/range {v2 .. v9}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->localHourAngle(ZDDD)D

    move-result-wide v1

    .line 416
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    const-wide v5, 0x40f5180000000000L    # 86400.0

    div-double/2addr v1, v5

    add-double v14, v10, v1

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-wide/from16 v16, p3

    move-wide/from16 v18, p7

    .line 419
    invoke-direct/range {v12 .. v19}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->localHourAngle(ZDDD)D

    move-result-wide v1

    .line 420
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    .line 423
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    long-to-double v5, v3

    sub-double/2addr v1, v5

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v1, v5

    double-to-int v1, v1

    .line 425
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v2}, Lnet/time4j/Moment;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/Moment;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    .line 426
    sget-object v1, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    return-object v0
.end method

.method private excentricity(D)D
    .locals 4

    const-wide v0, 0x3e810160fc64d800L    # 1.267E-7

    mul-double/2addr v0, p1

    const-wide v2, 0x3f060a1c525fe303L    # 4.2037E-5

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide p1, 0x3f911c11725d0380L    # 0.016708634

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method private localHourAngle(DDD)D
    .locals 4

    .line 467
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    .line 468
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->declinationRad(D)D

    move-result-wide p1

    .line 470
    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sub-double/2addr p5, v0

    .line 471
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    div-double/2addr p5, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 472
    invoke-static {p5, p6, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-gtz p1, :cond_1

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    invoke-static {p5, p6, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x406e000000000000L    # 240.0

    mul-double/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    const-wide/high16 p1, 0x7ff8000000000000L    # NaN

    return-wide p1
.end method

.method private localHourAngle(ZDDD)D
    .locals 7

    .line 431
    invoke-static {p2, p3}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$100(D)D

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p4

    move-wide v5, p6

    .line 432
    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->localHourAngle(DDD)D

    move-result-wide p2

    .line 433
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p4

    if-eqz p4, :cond_0

    const-wide/high16 p1, 0x7ff8000000000000L    # NaN

    return-wide p1

    :cond_0
    if-eqz p1, :cond_1

    neg-double p2, p2

    :cond_1
    return-wide p2
.end method

.method private meanAnomaly(D)D
    .locals 4

    const-wide v0, 0x3f242550f260db0cL    # 1.537E-4

    mul-double/2addr v0, p1

    const-wide v2, 0x40e193e19bf9c62aL    # 35999.05029

    sub-double/2addr v2, v0

    mul-double/2addr v2, p1

    const-wide p1, 0x407658773c0c1fc9L    # 357.52911

    add-double/2addr v2, p1

    return-wide v2
.end method

.method private meanLongitude(D)D
    .locals 4

    const-wide v0, 0x3f33deda158aabc0L    # 3.032E-4

    mul-double/2addr v0, p1

    const-wide v2, 0x40e19418a272862fL    # 36000.76983

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide p1, 0x407187769ec2ce46L    # 280.46646

    add-double/2addr v0, p1

    const-wide p1, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, p1

    return-wide v0
.end method

.method private obliquity(D)D
    .locals 4

    const-wide v0, 0x3f5db445ed4a1ad6L    # 0.001813

    mul-double/2addr v0, p1

    const-wide v2, -0x40bcaab8a5ce5b42L    # -5.9E-4

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide v2, -0x3fb897ae147ae148L    # -46.815

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide v2, 0x403572b020c49ba6L    # 21.448

    add-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    const-wide v2, 0x40376eeeeeeeeeefL    # 23.433333333333334

    add-double/2addr v0, v2

    const-wide v2, 0x409e388b43958106L    # 1934.136

    mul-double/2addr p1, v2

    const-wide v2, 0x405f428f5c28f5c3L    # 125.04

    sub-double/2addr v2, p1

    .line 446
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    const-wide v2, 0x3f64f8b588e368f1L    # 0.00256

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private solarLongitude(D)D
    .locals 4

    .line 485
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->meanLongitude(D)D

    move-result-wide v0

    .line 486
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->equationOfCenter(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x3f774e65bea0ba1fL    # 0.00569

    sub-double/2addr v0, v2

    const-wide v2, 0x409e388b43958106L    # 1934.136

    mul-double/2addr p1, v2

    const-wide v2, 0x405f428f5c28f5c3L    # 125.04

    sub-double/2addr v2, p1

    .line 488
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide v2, 0x3f7394317acc4ef9L    # 0.00478

    mul-double/2addr p1, v2

    sub-double/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public declination(D)D
    .locals 0

    .line 387
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$100(D)D

    move-result-wide p1

    .line 388
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->declinationRad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public equationOfTime(D)D
    .locals 19

    move-object/from16 v0, p0

    .line 370
    invoke-static/range {p1 .. p2}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$100(D)D

    move-result-wide v1

    .line 371
    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->obliquity(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double/2addr v3, v3

    .line 373
    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->meanLongitude(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 374
    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->excentricity(D)D

    move-result-wide v9

    .line 375
    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->meanAnomaly(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 376
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 378
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v3

    mul-double v15, v9, v5

    mul-double/2addr v15, v11

    sub-double/2addr v13, v15

    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    mul-double v17, v9, v15

    mul-double v17, v17, v3

    mul-double v17, v17, v11

    .line 380
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v17, v17, v11

    add-double v13, v13, v17

    mul-double/2addr v3, v3

    mul-double/2addr v7, v5

    .line 381
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    div-double/2addr v3, v5

    sub-double/2addr v13, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v9

    mul-double/2addr v3, v9

    mul-double/2addr v1, v5

    .line 382
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v3, v1

    div-double/2addr v3, v15

    sub-double/2addr v13, v3

    .line 383
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x406e000000000000L    # 240.0

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public getGeodeticAngle(DI)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getZenithAngle(DI)D
    .locals 2

    .line 396
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->getGeodeticAngle(DI)D

    move-result-wide p1

    const-wide v0, 0x4056b55555555555L    # 90.83333333333333

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public rightAscension(D)D
    .locals 4

    .line 400
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$100(D)D

    move-result-wide p1

    .line 401
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->solarLongitude(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 402
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->obliquity(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr p1, v2

    .line 403
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    .line 404
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/AstroUtils;->toRange_0_360(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public sunrise(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;
    .locals 9

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    .line 360
    invoke-direct/range {v0 .. v8}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->event(ZLnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method

.method public sunset(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;
    .locals 9

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    .line 364
    invoke-direct/range {v0 .. v8}, Lnet/time4j/calendar/astro/StdSolarCalculator$2;->event(ZLnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method
