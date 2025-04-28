.class public Lnet/time4j/calendar/astro/SunPosition;
.super Ljava/lang/Object;
.source "SunPosition.java"

# interfaces
.implements Lnet/time4j/calendar/astro/EquatorialCoordinates;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x29f3f7fd75be6912L


# instance fields
.field private final azimuth:D

.field private final declination:D

.field private final elevation:D

.field private final rightAscension:D


# direct methods
.method private constructor <init>(DDDD)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p1, p0, Lnet/time4j/calendar/astro/SunPosition;->rightAscension:D

    .line 87
    iput-wide p3, p0, Lnet/time4j/calendar/astro/SunPosition;->declination:D

    .line 88
    iput-wide p5, p0, Lnet/time4j/calendar/astro/SunPosition;->azimuth:D

    .line 89
    iput-wide p7, p0, Lnet/time4j/calendar/astro/SunPosition;->elevation:D

    return-void
.end method

.method public static at(Lnet/time4j/Moment;Lnet/time4j/calendar/astro/GeoLocation;)Lnet/time4j/calendar/astro/SunPosition;
    .locals 26

    .line 114
    invoke-static/range {p0 .. p0}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->getCenturyJ2000()D

    move-result-wide v1

    .line 116
    sget-object v3, Lnet/time4j/calendar/astro/StdSolarCalculator;->TIME4J:Lnet/time4j/calendar/astro/StdSolarCalculator;

    const/4 v4, 0x2

    new-array v4, v4, [D

    .line 118
    invoke-static {v1, v2, v4}, Lnet/time4j/calendar/astro/StdSolarCalculator;->nutations(D[D)V

    const/4 v5, 0x0

    .line 119
    aget-wide v5, v4, v5

    .line 120
    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/StdSolarCalculator;->meanObliquity(D)D

    move-result-wide v1

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    add-double/2addr v1, v7

    .line 121
    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lnet/time4j/calendar/astro/StdSolarCalculator;->rightAscension(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 122
    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lnet/time4j/calendar/astro/StdSolarCalculator;->declination(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 123
    invoke-interface/range {p1 .. p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 124
    invoke-interface/range {p1 .. p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 125
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    .line 126
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 127
    invoke-interface/range {p1 .. p1}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v0

    .line 129
    invoke-static/range {p0 .. p0}, Lnet/time4j/calendar/astro/JulianDay;->ofMeanSolarTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v4

    invoke-virtual {v4}, Lnet/time4j/calendar/astro/JulianDay;->getMJD()D

    move-result-wide v17

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v5, v1

    .line 131
    invoke-static/range {v17 .. v18}, Lnet/time4j/calendar/astro/AstroUtils;->gmst(D)D

    move-result-wide v1

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-double/2addr v1, v13

    sub-double/2addr v1, v7

    .line 134
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    add-double/2addr v4, v13

    .line 135
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    .line 137
    invoke-interface/range {p1 .. p1}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v3, v13, v14, v0}, Lnet/time4j/calendar/astro/StdSolarCalculator;->getGeodeticAngle(DI)D

    move-result-wide v13

    const-wide/high16 v17, -0x4020000000000000L    # -0.5

    sub-double v17, v17, v13

    cmpl-double v3, v4, v17

    if-ltz v3, :cond_0

    .line 140
    invoke-static {v0}, Lnet/time4j/calendar/astro/AstroUtils;->refractionFactorOfStdAtmosphere(I)D

    move-result-wide v13

    .line 141
    invoke-static {v4, v5}, Lnet/time4j/calendar/astro/AstroUtils;->getRefraction(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    div-double v13, v13, v17

    add-double/2addr v4, v13

    :cond_0
    move-wide/from16 v24, v4

    .line 147
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double/2addr v5, v15

    sub-double/2addr v0, v5

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    add-double v22, v0, v2

    .line 149
    new-instance v0, Lnet/time4j/calendar/astro/SunPosition;

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v25}, Lnet/time4j/calendar/astro/SunPosition;-><init>(DDDD)V

    return-object v0
.end method

.method public static inConstellationOf(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;
    .locals 1

    const/16 v0, 0x53

    .line 169
    invoke-static {v0, p0}, Lnet/time4j/calendar/astro/Zodiac$Event;->ofConstellation(CLnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;

    move-result-object p0

    return-object p0
.end method

.method public static inSignOf(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;
    .locals 1

    const/16 v0, 0x53

    .line 192
    invoke-static {v0, p0}, Lnet/time4j/calendar/astro/Zodiac$Event;->ofSign(CLnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 301
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/astro/SunPosition;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 302
    check-cast p1, Lnet/time4j/calendar/astro/SunPosition;

    .line 303
    iget-wide v3, p0, Lnet/time4j/calendar/astro/SunPosition;->rightAscension:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/SunPosition;->rightAscension:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/SunPosition;->declination:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/SunPosition;->declination:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/SunPosition;->azimuth:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/SunPosition;->azimuth:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/SunPosition;->elevation:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/SunPosition;->elevation:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAzimuth()D
    .locals 2

    .line 229
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SunPosition;->azimuth:D

    return-wide v0
.end method

.method public getDeclination()D
    .locals 2

    .line 206
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SunPosition;->declination:D

    return-wide v0
.end method

.method public getElevation()D
    .locals 2

    .line 251
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SunPosition;->elevation:D

    return-wide v0
.end method

.method public getRightAscension()D
    .locals 2

    .line 199
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SunPosition;->rightAscension:D

    return-wide v0
.end method

.method public getShadowLength(D)D
    .locals 6

    .line 277
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SunPosition;->getElevation()D

    move-result-wide v0

    .line 279
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-lez v4, :cond_3

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p1

    :cond_0
    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_1

    return-wide v2

    .line 287
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    const-wide v0, 0x3f91111111111111L    # 0.016666666666666666

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, p1

    :goto_0
    return-wide v2

    .line 281
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object height must be greater than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object height must be finite and positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .line 318
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SunPosition;->rightAscension:D

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v0

    iget-wide v1, p0, Lnet/time4j/calendar/astro/SunPosition;->declination:D

    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "sun-position[ra="

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-wide v1, p0, Lnet/time4j/calendar/astro/SunPosition;->rightAscension:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",decl="

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-wide v1, p0, Lnet/time4j/calendar/astro/SunPosition;->declination:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",azimuth="

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-wide v1, p0, Lnet/time4j/calendar/astro/SunPosition;->azimuth:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",elevation="

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-wide v1, p0, Lnet/time4j/calendar/astro/SunPosition;->elevation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
