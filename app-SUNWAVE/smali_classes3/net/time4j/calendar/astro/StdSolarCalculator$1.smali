.class final enum Lnet/time4j/calendar/astro/StdSolarCalculator$1;
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

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/astro/StdSolarCalculator;-><init>(Ljava/lang/String;ILnet/time4j/calendar/astro/StdSolarCalculator$1;)V

    return-void
.end method

.method private event(Lnet/time4j/engine/CalendarDate;DDDZ)Lnet/time4j/Moment;
    .locals 22

    .line 254
    invoke-static/range {p1 .. p1}, Lnet/time4j/calendar/astro/SolarTime;->toGregorian(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v1

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    div-double v4, p4, v2

    int-to-double v6, v1

    if-eqz p8, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    :goto_0
    int-to-double v8, v1

    sub-double/2addr v8, v4

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    move-object/from16 v1, p0

    .line 258
    invoke-direct {v1, v6, v7}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->trueLongitudeOfSunInDegrees(D)D

    move-result-wide v8

    const-wide v12, 0x3fed5d4e8fb00bccL    # 0.91764

    .line 260
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    .line 261
    invoke-static {v12, v13}, Lnet/time4j/calendar/astro/AstroUtils;->toRange_0_360(D)D

    move-result-wide v12

    const-wide v14, 0x4056800000000000L    # 90.0

    div-double v16, v8, v14

    .line 262
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    div-double v18, v12, v14

    .line 263
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    mul-double v18, v18, v14

    sub-double v16, v16, v18

    add-double v12, v12, v16

    div-double/2addr v12, v2

    const-wide v14, 0x3fd975e2046c764bL    # 0.39782

    .line 265
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v14

    .line 266
    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 267
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 269
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v8, v8, v20

    sub-double v18, v18, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v14, v8

    div-double v8, v18, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 270
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v14

    if-gtz v14, :cond_6

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v14

    if-gez v14, :cond_1

    goto/16 :goto_2

    .line 274
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    if-eqz p8, :cond_2

    const-wide v14, 0x4076800000000000L    # 360.0

    sub-double v8, v14, v8

    :cond_2
    div-double/2addr v8, v2

    add-double/2addr v8, v12

    const-wide v2, 0x3fb0d25edd052935L    # 0.06571

    mul-double/2addr v6, v2

    sub-double/2addr v8, v6

    const-wide v2, 0x401a7ced916872b0L    # 6.622

    sub-double/2addr v8, v2

    const-wide/16 v2, 0x0

    .line 280
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-lez v2, :cond_3

    add-double/2addr v8, v10

    goto :goto_1

    .line 282
    :cond_3
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gtz v2, :cond_4

    sub-double/2addr v8, v10

    :cond_4
    :goto_1
    sub-double/2addr v8, v4

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v8, v2

    .line 286
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 287
    sget-object v3, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v3}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x15180

    mul-long/2addr v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 289
    sget-object v0, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    .line 290
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    const-wide/32 v5, 0x3c26700

    add-long/2addr v3, v5

    .line 292
    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    :cond_5
    long-to-double v2, v3

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object v0

    .line 295
    sget-object v2, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    return-object v0

    :cond_6
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private time0(D)D
    .locals 4

    .line 236
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/astro/JulianDay;->toMoment()Lnet/time4j/Moment;

    move-result-object p1

    sget-object p2, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p1, p2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result p2

    int-to-double v0, p2

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object p1

    sget-object p2, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double p1, p1

    const-wide v2, 0x40f5180000000000L    # 86400.0

    div-double/2addr p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private trueLongitudeOfSunInDegrees(D)D
    .locals 4

    const-wide v0, 0x3fef8a0902de00d2L    # 0.9856

    mul-double/2addr p1, v0

    const-wide v0, 0x400a4fdf3b645a1dL    # 3.289

    sub-double/2addr p1, v0

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3ffea7ef9db22d0eL    # 1.916

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    const-wide p1, 0x4071aa24dd2f1aa0L    # 282.634

    add-double/2addr v0, p1

    .line 244
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/AstroUtils;->toRange_0_360(D)D

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public declination(D)D
    .locals 2

    .line 219
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->time0(D)D

    move-result-wide p1

    .line 220
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->trueLongitudeOfSunInDegrees(D)D

    move-result-wide p1

    .line 221
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide v0, 0x3fd975e2046c764bL    # 0.39782

    mul-double/2addr p1, v0

    .line 222
    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public equationOfTime(D)D
    .locals 4

    .line 203
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->time0(D)D

    move-result-wide p1

    const-wide v0, 0x3fef8a0902de00d2L    # 0.9856

    mul-double/2addr v0, p1

    const-wide v2, 0x400e666666666666L    # 3.8

    sub-double/2addr v0, v2

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, -0x3fe15c28f5c28f5cL    # -7.66

    mul-double/2addr v0, v2

    const-wide v2, 0x3fff8a0902de00d2L    # 1.9712

    mul-double/2addr p1, v2

    const-wide v2, 0x4031f5c28f5c28f6L    # 17.96

    add-double/2addr p1, v2

    .line 206
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide v2, 0x40238f5c28f5c28fL    # 9.78

    mul-double/2addr p1, v2

    sub-double/2addr v0, p1

    const-wide/high16 p1, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public getGeodeticAngle(DI)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getZenithAngle(DI)D
    .locals 2

    .line 215
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->getGeodeticAngle(DI)D

    move-result-wide p1

    const-wide v0, 0x4056b55555555555L    # 90.83333333333333

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public rightAscension(D)D
    .locals 6

    .line 226
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->time0(D)D

    move-result-wide p1

    .line 227
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->trueLongitudeOfSunInDegrees(D)D

    move-result-wide p1

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide v2, 0x3fed5d4e8fb00bccL    # 0.91764

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 230
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/AstroUtils;->toRange_0_360(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr p1, v2

    .line 231
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    mul-double/2addr p1, v2

    div-double v4, v0, v2

    .line 232
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    add-double/2addr v0, p1

    sub-double/2addr v0, v4

    return-wide v0
.end method

.method public sunrise(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 194
    invoke-direct/range {v0 .. v8}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->event(Lnet/time4j/engine/CalendarDate;DDDZ)Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method

.method public sunset(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 198
    invoke-direct/range {v0 .. v8}, Lnet/time4j/calendar/astro/StdSolarCalculator$1;->event(Lnet/time4j/engine/CalendarDate;DDDZ)Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method
