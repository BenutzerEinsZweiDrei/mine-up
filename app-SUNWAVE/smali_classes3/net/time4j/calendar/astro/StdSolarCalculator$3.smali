.class final enum Lnet/time4j/calendar/astro/StdSolarCalculator$3;
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

    .line 536
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/astro/StdSolarCalculator;-><init>(Ljava/lang/String;ILnet/time4j/calendar/astro/StdSolarCalculator$1;)V

    return-void
.end method

.method private approxMomentOfDepression(DDDDZ)D
    .locals 17

    .line 657
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    sub-double v3, p1, p5

    move-object/from16 v2, p0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p7

    .line 658
    invoke-direct/range {v2 .. v8}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->sineOffset(DDD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, p7, v4

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    if-ltz v4, :cond_1

    if-eqz p9, :cond_0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    :goto_0
    long-to-double v4, v4

    goto :goto_1

    :cond_1
    long-to-double v4, v0

    add-double/2addr v4, v13

    .line 660
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v15

    if-lez v6, :cond_2

    sub-double v7, v4, p5

    move-object/from16 v6, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p7

    invoke-direct/range {v6 .. v12}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->sineOffset(DDD)D

    move-result-wide v2

    .line 661
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v15

    if-gtz v4, :cond_4

    if-eqz p9, :cond_3

    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    int-to-double v4, v4

    .line 663
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v6

    add-double/2addr v2, v13

    rem-double/2addr v2, v15

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v2, v6

    mul-double/2addr v4, v2

    long-to-double v0, v0

    add-double/2addr v4, v0

    add-double/2addr v4, v13

    sub-double v0, v4, p5

    move-object/from16 v2, p0

    .line 666
    invoke-virtual {v2, v0, v1}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->equationOfTime(D)D

    move-result-wide v0

    const-wide v6, 0x40f5180000000000L    # 86400.0

    div-double/2addr v0, v6

    sub-double/2addr v4, v0

    return-wide v4

    :cond_4
    move-object/from16 v2, p0

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    return-wide v0
.end method

.method private declinationRad(D)D
    .locals 4

    .line 680
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->obliquity(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 681
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->nutation(D)D

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$200(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    .line 679
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private event(ZLnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;
    .locals 12

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 554
    :goto_0
    sget-object v2, Lnet/time4j/engine/EpochDays;->JULIAN_DAY_NUMBER:Lnet/time4j/engine/EpochDays;

    .line 555
    invoke-interface {p2}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v3

    sget-object v5, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v2, v3, v4, v5}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v2

    long-to-double v2, v2

    add-double v1, v2, v0

    .line 557
    invoke-static {p2}, Lnet/time4j/calendar/astro/SolarTime;->toGregorian(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v3

    const-wide v5, 0x40e5180000000000L    # 43200.0

    sub-double/2addr v3, v5

    .line 558
    new-instance v0, Ljava/math/BigDecimal;

    move-wide/from16 v5, p5

    invoke-direct {v0, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    .line 559
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Ljava/math/BigDecimal;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v0

    int-to-double v5, v0

    sub-double/2addr v5, v3

    const-wide v3, 0x40f5180000000000L    # 86400.0

    div-double v10, v5, v3

    const-wide v3, 0x4056800000000000L    # 90.0

    sub-double v7, p7, v3

    move-object v0, p0

    move-wide v3, p3

    move-wide v5, v10

    move v9, p1

    .line 561
    invoke-direct/range {v0 .. v9}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->momentOfDepression(DDDDZ)D

    move-result-wide v0

    .line 562
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    sub-double/2addr v0, v10

    .line 565
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->toMoment()Lnet/time4j/Moment;

    move-result-object v0

    .line 566
    sget-object v1, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    return-object v0
.end method

.method private excentricity(D)D
    .locals 4

    const-wide v0, 0x3e8096dd18f8b401L    # 1.236E-7

    mul-double/2addr v0, p1

    const-wide v2, 0x3f060a1c525fe303L    # 4.2037E-5

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide p1, 0x3f911c104e4e3915L    # 0.016708617

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method private meanAnomaly(D)D
    .locals 4

    const-wide v0, 0x3ea01b2b29a4692bL    # 4.8E-7

    mul-double/2addr v0, p1

    const-wide v2, -0x40db90dd32759e12L    # -1.559E-4

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide v2, 0x40e193e19c0ebee0L    # 35999.0503

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide p1, 0x40765877318fc505L    # 357.5291

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private meanLongitude(D)D
    .locals 4

    const-wide v0, 0x3f33deda158aabc0L    # 3.032E-4

    mul-double/2addr v0, p1

    const-wide v2, 0x40e19418a272862fL    # 36000.76983

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide p1, 0x4071877694467382L    # 280.46645

    add-double/2addr v0, p1

    const-wide p1, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, p1

    return-wide v0
.end method

.method private momentOfDepression(DDDDZ)D
    .locals 10

    .line 641
    invoke-direct/range {p0 .. p9}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->approxMomentOfDepression(DDDDZ)D

    move-result-wide v1

    .line 642
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    return-wide v0

    :cond_0
    sub-double v3, p1, v1

    .line 645
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    move-object v0, p0

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    .line 648
    invoke-direct/range {v0 .. v9}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->momentOfDepression(DDDDZ)D

    move-result-wide v0

    return-wide v0
.end method

.method private nutation(D)D
    .locals 6

    const-wide v0, 0x3f60e66cb10342abL    # 0.002063

    mul-double/2addr v0, p1

    const-wide v2, -0x3f61c776c8b43958L    # -1934.134

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide v2, 0x405f39999999999aL    # 124.9

    add-double/2addr v0, v2

    .line 684
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide v2, 0x3f42ad81adea8976L    # 5.7E-4

    mul-double/2addr v2, p1

    const-wide v4, 0x40f194189a6b50b1L    # 72001.5377

    add-double/2addr v2, v4

    mul-double/2addr v2, p1

    const-wide p1, 0x406923851eb851ecL    # 201.11

    add-double/2addr v2, p1

    .line 685
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 686
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, -0x408c6de76427c7c5L    # -0.004778

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide v2, 0x3f38083481e7cc2dL    # 3.667E-4

    mul-double/2addr p1, v2

    sub-double/2addr v0, p1

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

    const-wide p1, 0x403572b020c49ba6L    # 21.448

    add-double/2addr v0, p1

    const-wide p1, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, p1

    const-wide p1, 0x40376eeeeeeeeeefL    # 23.433333333333334

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private sineOffset(DDD)D
    .locals 4

    .line 672
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$100(D)D

    move-result-wide p1

    .line 673
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    .line 674
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->declinationRad(D)D

    move-result-wide p1

    .line 675
    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 676
    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide p5

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    div-double/2addr p5, p1

    add-double/2addr v0, p5

    return-wide v0
.end method


# virtual methods
.method public declination(D)D
    .locals 1

    const-string v0, "declination"

    .line 588
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->getFeature(DLjava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public equationOfTime(D)D
    .locals 19

    move-object/from16 v0, p0

    .line 571
    invoke-static/range {p1 .. p2}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$100(D)D

    move-result-wide v1

    .line 572
    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->obliquity(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double/2addr v3, v3

    .line 574
    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->meanLongitude(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 575
    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->excentricity(D)D

    move-result-wide v9

    .line 576
    invoke-direct {v0, v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->meanAnomaly(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 577
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 579
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

    .line 581
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v17, v17, v11

    add-double v13, v13, v17

    mul-double/2addr v3, v3

    mul-double/2addr v7, v5

    .line 582
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v3, v7

    div-double/2addr v3, v5

    sub-double/2addr v13, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v9

    mul-double/2addr v3, v9

    mul-double/2addr v1, v5

    .line 583
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v3, v1

    div-double/2addr v3, v15

    sub-double/2addr v13, v3

    .line 584
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x406e000000000000L    # 240.0

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public getFeature(DLjava/lang/String;)D
    .locals 4

    .line 599
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$100(D)D

    move-result-wide p1

    const-string v0, "declination"

    .line 601
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->declinationRad(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string v0, "right-ascension"

    .line 603
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->nutation(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$200(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 605
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->obliquity(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr p1, v2

    .line 606
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    .line 607
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/AstroUtils;->toRange_0_360(D)D

    move-result-wide p1

    return-wide p1

    :cond_1
    const-string v0, "nutation"

    .line 608
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->nutation(D)D

    move-result-wide p1

    return-wide p1

    :cond_2
    const-string v0, "obliquity"

    .line 610
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 611
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->obliquity(D)D

    move-result-wide p1

    return-wide p1

    :cond_3
    const-string v0, "mean-anomaly"

    .line 612
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->meanAnomaly(D)D

    move-result-wide p1

    return-wide p1

    :cond_4
    const-string v0, "solar-longitude"

    .line 614
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->nutation(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lnet/time4j/calendar/astro/StdSolarCalculator;->access$200(DD)D

    move-result-wide p1

    return-wide p1

    :cond_5
    const-string p1, "solar-latitude"

    .line 616
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_6
    const-wide/high16 p1, 0x7ff8000000000000L    # NaN

    return-wide p1
.end method

.method public getGeodeticAngle(DI)D
    .locals 4

    if-nez p3, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    const-wide p1, 0x41584ea800000000L    # 6372000.0

    int-to-double v0, p3

    add-double v2, v0, p1

    div-double/2addr p1, v2

    .line 628
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3f759e26af37c049L    # 0.005277777777777778

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public getZenithAngle(DI)D
    .locals 2

    .line 632
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->getGeodeticAngle(DI)D

    move-result-wide p1

    const-wide v0, 0x4056b55555555555L    # 90.83333333333333

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public rightAscension(D)D
    .locals 1

    const-string v0, "right-ascension"

    .line 592
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->getFeature(DLjava/lang/String;)D

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

    .line 539
    invoke-direct/range {v0 .. v8}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->event(ZLnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

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

    .line 543
    invoke-direct/range {v0 .. v8}, Lnet/time4j/calendar/astro/StdSolarCalculator$3;->event(ZLnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method
