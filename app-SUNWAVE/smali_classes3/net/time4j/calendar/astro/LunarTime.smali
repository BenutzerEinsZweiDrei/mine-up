.class public final Lnet/time4j/calendar/astro/LunarTime;
.super Ljava/lang/Object;
.source "LunarTime.java"

# interfaces
.implements Lnet/time4j/calendar/astro/GeoLocation;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/astro/LunarTime$Moonlight;,
        Lnet/time4j/calendar/astro/LunarTime$Builder;
    }
.end annotation


# static fields
.field private static final MRD:I = 0x3b9aca00

.field private static final serialVersionUID:J = -0x6f6fd5e2a9614cc8L


# instance fields
.field private final altitude:I

.field private final latitude:D

.field private final longitude:D

.field private final observerZoneID:Lnet/time4j/tz/TZID;


# direct methods
.method private constructor <init>(DDILnet/time4j/tz/TZID;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static/range {p1 .. p6}, Lnet/time4j/calendar/astro/LunarTime;->check(DDILnet/time4j/tz/TZID;)V

    .line 132
    iput-wide p1, p0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    .line 133
    iput-wide p3, p0, Lnet/time4j/calendar/astro/LunarTime;->longitude:D

    .line 134
    iput p5, p0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    .line 135
    iput-object p6, p0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    return-void
.end method

.method synthetic constructor <init>(DDILnet/time4j/tz/TZID;Lnet/time4j/calendar/astro/LunarTime$1;)V
    .locals 0

    .line 85
    invoke-direct/range {p0 .. p6}, Lnet/time4j/calendar/astro/LunarTime;-><init>(DDILnet/time4j/tz/TZID;)V

    return-void
.end method

.method private static add(Lnet/time4j/Moment;D)Lnet/time4j/Moment;
    .locals 4

    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr p1, v0

    .line 438
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    long-to-double v2, v0

    sub-double/2addr p1, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr p1, v2

    double-to-long p1, p1

    .line 441
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 442
    invoke-virtual {p0, v0, v1, v2}, Lnet/time4j/Moment;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 443
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/Moment;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    sget-object p1, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 444
    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    return-object p0
.end method

.method private static check(DDILnet/time4j/tz/TZID;)V
    .locals 2

    .line 538
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    .line 540
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 542
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gtz v0, :cond_3

    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_3

    const-wide p0, 0x4066800000000000L    # 180.0

    .line 544
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_2

    const-wide p0, -0x3f99800000000000L    # -180.0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_2

    int-to-double p0, p4

    .line 546
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_1

    if-ltz p4, :cond_0

    const/16 p0, 0x2af8

    if-ge p4, p0, :cond_0

    .line 551
    invoke-static {p5}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    return-void

    .line 549
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Meters out of range 0 <= altitude < +11,000: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 547
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Altitude must be finite: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 545
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Degrees out of range -180.0 <= longitude < +180.0: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 543
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Degrees out of range -90.0 <= latitude <= +90.0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 541
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Longitude must be a finite value: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 539
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Latitude must be a finite value: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static getHorizontalParallax(D)D
    .locals 2

    const-wide v0, 0x40b8ea23d70a3d71L    # 6378.14

    div-double/2addr v0, p0

    .line 527
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static interpolate(DDD[D)I
    .locals 19

    add-double v0, p4, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sub-double v0, v0, p2

    sub-double v4, p4, p0

    mul-double/2addr v4, v2

    neg-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v0

    div-double/2addr v6, v8

    mul-double v8, v0, v6

    add-double/2addr v8, v4

    mul-double/2addr v8, v6

    add-double v8, v8, p2

    mul-double/2addr v4, v4

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v10, v0

    mul-double v10, v10, p2

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    const/4 v11, 0x0

    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    const/4 v14, 0x1

    if-ltz v10, :cond_2

    .line 504
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    sub-double v0, v6, v4

    .line 505
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v15

    if-gtz v2, :cond_0

    move v2, v14

    goto :goto_0

    :cond_0
    move v2, v11

    move-wide v0, v12

    :goto_0
    add-double/2addr v4, v6

    .line 509
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    cmpg-double v3, v17, v15

    if-gtz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-wide v4, v12

    :goto_1
    move-wide v12, v0

    goto :goto_2

    :cond_2
    move v2, v11

    move-wide v4, v12

    .line 515
    :goto_2
    aput-wide v6, p6, v11

    .line 516
    aput-wide v8, p6, v14

    const/4 v0, 0x2

    .line 517
    aput-wide v12, p6, v0

    const/4 v0, 0x3

    .line 518
    aput-wide v4, p6, v0

    return v2
.end method

.method public static ofLocation(Lnet/time4j/tz/TZID;)Lnet/time4j/calendar/astro/LunarTime$Builder;
    .locals 2

    const-string v0, "Missing observer timezone."

    .line 164
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    new-instance v0, Lnet/time4j/calendar/astro/LunarTime$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/astro/LunarTime$Builder;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/calendar/astro/LunarTime$1;)V

    return-object v0
.end method

.method public static ofLocation(Lnet/time4j/tz/TZID;DD)Lnet/time4j/calendar/astro/LunarTime;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 203
    invoke-static/range {v0 .. v5}, Lnet/time4j/calendar/astro/LunarTime;->ofLocation(Lnet/time4j/tz/TZID;DDI)Lnet/time4j/calendar/astro/LunarTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofLocation(Lnet/time4j/tz/TZID;DDI)Lnet/time4j/calendar/astro/LunarTime;
    .locals 8

    .line 242
    new-instance v7, Lnet/time4j/calendar/astro/LunarTime;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/astro/LunarTime;-><init>(DDILnet/time4j/tz/TZID;)V

    return-object v7
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 566
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 567
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    iget-wide v2, p0, Lnet/time4j/calendar/astro/LunarTime;->longitude:D

    iget v4, p0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    iget-object v5, p0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-static/range {v0 .. v5}, Lnet/time4j/calendar/astro/LunarTime;->check(DDILnet/time4j/tz/TZID;)V

    return-void
.end method

.method private static sinAlt(DDDDDDDD)D
    .locals 7

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    div-double v0, p2, v0

    add-double/2addr v0, p0

    const-wide v2, 0x40f5180000000000L    # 86400.0

    div-double v2, p14, v2

    add-double/2addr v2, v0

    .line 461
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/LunarTime;->toJulianCenturies(D)D

    move-result-wide v2

    .line 462
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/MoonPosition;->calculateMeeus47(D)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 463
    aget-wide v3, v2, v3

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 464
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/AstroUtils;->gmst(D)D

    move-result-wide v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-double/2addr v0, p4

    const/4 v3, 0x2

    aget-wide v3, v2, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    sub-double/2addr v0, v3

    const/4 v3, 0x3

    .line 465
    aget-wide v3, v2, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 468
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, p8

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    add-double/2addr v5, v3

    const/4 v0, 0x4

    .line 471
    aget-wide v0, v2, v0

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/LunarTime;->getHorizontalParallax(D)D

    move-result-wide v0

    const-wide v2, 0x3fe747ae147ae148L    # 0.7275

    mul-double/2addr v0, v2

    sub-double v0, v0, p12

    sub-double v0, v0, p10

    .line 474
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double/2addr v5, v0

    return-wide v5
.end method

.method private static toJulianCenturies(D)D
    .locals 2

    const-wide v0, 0x40e92b1000000000L    # 51544.5

    sub-double/2addr p0, v0

    const-wide v0, 0x40e1d5a000000000L    # 36525.0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 293
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/astro/LunarTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 294
    check-cast p1, Lnet/time4j/calendar/astro/LunarTime;

    .line 295
    iget v1, p0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    iget v3, p1, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    .line 297
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/LunarTime;->longitude:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/LunarTime;->longitude:D

    .line 298
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    .line 299
    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAltitude()I
    .locals 1

    .line 263
    iget v0, p0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 249
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 256
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime;->longitude:D

    return-wide v0
.end method

.method public getObserverZoneID()Lnet/time4j/tz/TZID;
    .locals 1

    .line 284
    iget-object v0, p0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 310
    iget-wide v0, p0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-wide v1, p0, Lnet/time4j/calendar/astro/LunarTime;->longitude:D

    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public on(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/astro/LunarTime$Moonlight;
    .locals 53

    move-object/from16 v0, p0

    .line 349
    invoke-static/range {p1 .. p1}, Lnet/time4j/calendar/astro/SolarTime;->toGregorian(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/PlainDate;

    move-result-object v2

    .line 350
    iget-object v1, v0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-static {v1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v3

    if-nez v3, :cond_0

    .line 353
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    .line 354
    invoke-virtual {v2, v1}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object v1

    .line 356
    :goto_0
    invoke-static {v1}, Lnet/time4j/calendar/astro/JulianDay;->ofMeanSolarTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/astro/JulianDay;->getMJD()D

    move-result-wide v20

    .line 357
    iget-wide v3, v0, Lnet/time4j/calendar/astro/LunarTime;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    .line 358
    iget-wide v3, v0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 359
    iget-wide v3, v0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    .line 360
    sget-object v3, Lnet/time4j/calendar/astro/StdSolarCalculator;->TIME4J:Lnet/time4j/calendar/astro/StdSolarCalculator;

    iget-wide v4, v0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    iget v6, v0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    invoke-virtual {v3, v4, v5, v6}, Lnet/time4j/calendar/astro/StdSolarCalculator;->getGeodeticAngle(DI)D

    move-result-wide v28

    .line 361
    iget v3, v0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    invoke-static {v3}, Lnet/time4j/calendar/astro/AstroUtils;->refractionFactorOfStdAtmosphere(I)D

    move-result-wide v3

    const-wide/high16 v5, 0x4041000000000000L    # 34.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    div-double v30, v3, v5

    .line 362
    invoke-static {v2}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v32

    const-wide/16 v6, 0x0

    move-wide/from16 v4, v20

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    move-wide/from16 v12, v26

    move-wide/from16 v14, v28

    move-wide/from16 v16, v30

    move-wide/from16 v18, v32

    .line 364
    invoke-static/range {v4 .. v19}, Lnet/time4j/calendar/astro/LunarTime;->sinAlt(DDDDDDDD)D

    move-result-wide v3

    const/4 v5, 0x4

    new-array v14, v5, [D

    const-wide/16 v34, 0x0

    cmpl-double v5, v3, v34

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-lez v5, :cond_1

    move/from16 v36, v15

    goto :goto_1

    :cond_1
    move/from16 v36, v6

    :goto_1
    const-wide/high16 v7, 0x7ff8000000000000L    # NaN

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v39, v3

    move v3, v6

    move/from16 v41, v3

    move-wide/from16 v42, v7

    move-wide/from16 v44, v42

    move-wide/from16 v46, v37

    :goto_2
    move-wide/from16 v4, v20

    move-wide/from16 v6, v46

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    move-wide/from16 v12, v26

    move/from16 p1, v3

    move-object/from16 v48, v14

    move v3, v15

    move-wide/from16 v14, v28

    move-wide/from16 v16, v30

    move-wide/from16 v18, v32

    .line 377
    invoke-static/range {v4 .. v19}, Lnet/time4j/calendar/astro/LunarTime;->sinAlt(DDDDDDDD)D

    move-result-wide v49

    add-double v6, v46, v37

    .line 379
    invoke-static/range {v4 .. v19}, Lnet/time4j/calendar/astro/LunarTime;->sinAlt(DDDDDDDD)D

    move-result-wide v4

    move-wide/from16 v6, v39

    move-wide/from16 v8, v49

    move-wide v10, v4

    move-object/from16 v12, v48

    .line 381
    invoke-static/range {v6 .. v12}, Lnet/time4j/calendar/astro/LunarTime;->interpolate(DDD[D)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v6, v3, :cond_4

    .line 383
    aget-wide v8, v48, v8

    .line 384
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 385
    aget-wide v8, v48, v7

    :cond_2
    cmpg-double v6, v39, v34

    if-gez v6, :cond_3

    add-double v42, v46, v8

    move v15, v3

    goto :goto_4

    :cond_3
    add-double v44, v46, v8

    move/from16 v15, p1

    move/from16 v41, v3

    goto :goto_4

    :cond_4
    if-ne v6, v8, :cond_6

    .line 395
    aget-wide v9, v48, v3

    cmpg-double v6, v9, v34

    if-gez v6, :cond_5

    .line 396
    aget-wide v6, v48, v7

    add-double v6, v46, v6

    .line 397
    aget-wide v8, v48, v8

    add-double v8, v46, v8

    goto :goto_3

    .line 399
    :cond_5
    aget-wide v8, v48, v8

    add-double v8, v46, v8

    .line 400
    aget-wide v6, v48, v7

    add-double v6, v46, v6

    move-wide/from16 v51, v6

    move-wide v6, v8

    move-wide/from16 v8, v51

    :goto_3
    move v15, v3

    move/from16 v41, v15

    goto :goto_5

    :cond_6
    move/from16 v15, p1

    :goto_4
    move-wide/from16 v6, v42

    move-wide/from16 v8, v44

    :goto_5
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double v46, v46, v10

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    cmpl-double v10, v46, v10

    if-gtz v10, :cond_8

    if-eqz v15, :cond_7

    if-eqz v41, :cond_7

    goto :goto_6

    :cond_7
    move-wide/from16 v39, v4

    move-wide/from16 v42, v6

    move-wide/from16 v44, v8

    move-object/from16 v14, v48

    move/from16 v51, v15

    move v15, v3

    move/from16 v3, v51

    goto/16 :goto_2

    :cond_8
    :goto_6
    const/4 v3, 0x0

    if-eqz v15, :cond_9

    .line 414
    invoke-static {v1, v6, v7}, Lnet/time4j/calendar/astro/LunarTime;->add(Lnet/time4j/Moment;D)Lnet/time4j/Moment;

    move-result-object v4

    .line 415
    iget-object v5, v0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v4, v5}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v5

    invoke-virtual {v5}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    move-object v4, v3

    :cond_a
    if-eqz v41, :cond_c

    .line 421
    invoke-static {v1, v8, v9}, Lnet/time4j/calendar/astro/LunarTime;->add(Lnet/time4j/Moment;D)Lnet/time4j/Moment;

    move-result-object v1

    .line 422
    iget-object v5, v0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v1, v5}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v5

    invoke-virtual {v5}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    move-object v5, v1

    goto :goto_8

    :cond_c
    :goto_7
    move-object v5, v3

    .line 428
    :goto_8
    new-instance v8, Lnet/time4j/calendar/astro/LunarTime$Moonlight;

    iget-object v3, v0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    const/4 v7, 0x0

    move-object v1, v8

    move/from16 v6, v36

    invoke-direct/range {v1 .. v7}, Lnet/time4j/calendar/astro/LunarTime$Moonlight;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/tz/TZID;Lnet/time4j/Moment;Lnet/time4j/Moment;ZLnet/time4j/calendar/astro/LunarTime$1;)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LunarTime["

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",observer-tz="

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lnet/time4j/calendar/astro/LunarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",latitude="

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-wide v1, p0, Lnet/time4j/calendar/astro/LunarTime;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",longitude="

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-wide v1, p0, Lnet/time4j/calendar/astro/LunarTime;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 325
    iget v1, p0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    if-eqz v1, :cond_0

    const-string v1, ",altitude="

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget v1, p0, Lnet/time4j/calendar/astro/LunarTime;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x5d

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
