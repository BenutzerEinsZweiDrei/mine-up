.class public Lnet/time4j/calendar/astro/Zodiac$Event;
.super Ljava/lang/Object;
.source "Zodiac.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/astro/Zodiac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# instance fields
.field private final body:C

.field private final horoscope:Z

.field private final zodiac:Lnet/time4j/calendar/astro/Zodiac;


# direct methods
.method private constructor <init>(CLnet/time4j/calendar/astro/Zodiac;Z)V
    .locals 1

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x53

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4c

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported celestial body: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 453
    sget-object v0, Lnet/time4j/calendar/astro/Zodiac;->OPHIUCHUS:Lnet/time4j/calendar/astro/Zodiac;

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 454
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ophiuchus is not an astrological zodiac sign."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :cond_3
    :goto_1
    iput-char p1, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->body:C

    .line 458
    iput-object p2, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->zodiac:Lnet/time4j/calendar/astro/Zodiac;

    .line 459
    iput-boolean p3, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->horoscope:Z

    return-void

    .line 452
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Celestial coordinates must be finite."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private atTime(Lnet/time4j/Moment;ZZ)Lnet/time4j/Moment;
    .locals 12

    .line 615
    iget-boolean v0, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->horoscope:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 617
    invoke-direct {p0, p2}, Lnet/time4j/calendar/astro/Zodiac$Event;->getHoroscopeLongitude(Z)I

    move-result p2

    int-to-double v0, p2

    goto :goto_0

    :cond_0
    return-object p1

    .line 622
    :cond_1
    invoke-direct {p0, p2}, Lnet/time4j/calendar/astro/Zodiac$Event;->getZodiac(Z)Lnet/time4j/calendar/astro/Zodiac;

    move-result-object p2

    .line 623
    invoke-static {p2}, Lnet/time4j/calendar/astro/Zodiac;->access$200(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/EquatorialCoordinates;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/calendar/astro/EquatorialCoordinates;->getRightAscension()D

    move-result-wide v0

    invoke-static {p2}, Lnet/time4j/calendar/astro/Zodiac;->access$200(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/EquatorialCoordinates;

    move-result-object p2

    invoke-interface {p2}, Lnet/time4j/calendar/astro/EquatorialCoordinates;->getDeclination()D

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lnet/time4j/calendar/astro/Zodiac;->access$300(Lnet/time4j/Moment;DD)D

    move-result-wide v0

    .line 626
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide p1

    .line 629
    iget-char v2, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->body:C

    const-wide v3, 0x4076800000000000L    # 360.0

    const/16 v5, 0x53

    if-ne v2, v5, :cond_3

    .line 630
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/Zodiac;->access$000(D)D

    move-result-wide v6

    sub-double v6, v0, v6

    if-eqz p3, :cond_2

    .line 632
    invoke-static {v6, v7}, Lnet/time4j/calendar/astro/Zodiac$Event;->modulo360(D)D

    move-result-wide v6

    :cond_2
    const-wide v8, 0x4076d3e00192a737L    # 365.242189

    goto :goto_1

    .line 636
    :cond_3
    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/Zodiac;->access$100(D)D

    move-result-wide v6

    sub-double v6, v0, v6

    if-eqz p3, :cond_4

    .line 638
    invoke-static {v6, v7}, Lnet/time4j/calendar/astro/Zodiac$Event;->modulo360(D)D

    move-result-wide v6

    :cond_4
    const-wide v8, 0x403d87d4abed9decL    # 29.530588861

    :goto_1
    mul-double/2addr v6, v8

    div-double/2addr v6, v3

    add-double/2addr v6, p1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    sub-double v8, v6, v2

    .line 643
    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    add-double/2addr v6, v2

    :goto_2
    add-double v2, p1, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v8

    sub-double v8, v6, p1

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p3, v8, v10

    if-gez p3, :cond_5

    .line 650
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(D)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/astro/JulianDay;->toMoment()Lnet/time4j/Moment;

    move-result-object p1

    sget-object p2, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;

    return-object p1

    .line 653
    :cond_5
    iget-char p3, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->body:C

    if-ne p3, v5, :cond_6

    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/Zodiac;->access$000(D)D

    move-result-wide v8

    goto :goto_3

    :cond_6
    invoke-static {v2, v3}, Lnet/time4j/calendar/astro/Zodiac;->access$100(D)D

    move-result-wide v8

    :goto_3
    sub-double/2addr v8, v0

    .line 655
    invoke-static {v8, v9}, Lnet/time4j/calendar/astro/Zodiac$Event;->modulo360(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpg-double p3, v8, v10

    if-gez p3, :cond_7

    move-wide v6, v2

    goto :goto_2

    :cond_7
    move-wide p1, v2

    goto :goto_2
.end method

.method private getHoroscopeLongitude(Z)I
    .locals 1

    .line 603
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/Zodiac$Event;->getZodiac(Z)Lnet/time4j/calendar/astro/Zodiac;

    move-result-object p1

    .line 604
    sget-object v0, Lnet/time4j/calendar/astro/Zodiac;->OPHIUCHUS:Lnet/time4j/calendar/astro/Zodiac;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/astro/Zodiac;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 605
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/calendar/astro/Zodiac;->ordinal()I

    move-result p1

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x1e

    return p1
.end method

.method private getZodiac(Z)Lnet/time4j/calendar/astro/Zodiac;
    .locals 1

    .line 592
    iget-object v0, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->zodiac:Lnet/time4j/calendar/astro/Zodiac;

    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {v0}, Lnet/time4j/calendar/astro/Zodiac;->next()Lnet/time4j/calendar/astro/Zodiac;

    move-result-object v0

    .line 596
    :cond_0
    iget-boolean p1, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->horoscope:Z

    if-eqz p1, :cond_1

    sget-object p1, Lnet/time4j/calendar/astro/Zodiac;->OPHIUCHUS:Lnet/time4j/calendar/astro/Zodiac;

    if-ne v0, p1, :cond_1

    .line 597
    sget-object v0, Lnet/time4j/calendar/astro/Zodiac;->SAGITTARIUS:Lnet/time4j/calendar/astro/Zodiac;

    :cond_1
    return-object v0
.end method

.method private static modulo360(D)D
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    div-double v2, p0, v0

    .line 664
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    sub-double/2addr p0, v2

    return-wide p0
.end method

.method static ofConstellation(CLnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;
    .locals 2

    .line 588
    new-instance v0, Lnet/time4j/calendar/astro/Zodiac$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/time4j/calendar/astro/Zodiac$Event;-><init>(CLnet/time4j/calendar/astro/Zodiac;Z)V

    return-object v0
.end method

.method static ofSign(CLnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/Zodiac$Event;
    .locals 2

    .line 581
    new-instance v0, Lnet/time4j/calendar/astro/Zodiac$Event;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lnet/time4j/calendar/astro/Zodiac$Event;-><init>(CLnet/time4j/calendar/astro/Zodiac;Z)V

    return-object v0
.end method


# virtual methods
.method public atMomentOfEntry(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 484
    invoke-direct {p0, p1, v0, v1}, Lnet/time4j/calendar/astro/Zodiac$Event;->atTime(Lnet/time4j/Moment;ZZ)Lnet/time4j/Moment;

    move-result-object p1

    .line 485
    invoke-direct {p0, p1, v0, v0}, Lnet/time4j/calendar/astro/Zodiac$Event;->atTime(Lnet/time4j/Moment;ZZ)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public atMomentOfExit(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 2

    const/4 v0, 0x1

    .line 509
    invoke-direct {p0, p1, v0, v0}, Lnet/time4j/calendar/astro/Zodiac$Event;->atTime(Lnet/time4j/Moment;ZZ)Lnet/time4j/Moment;

    move-result-object p1

    const/4 v1, 0x0

    .line 510
    invoke-direct {p0, p1, v0, v1}, Lnet/time4j/calendar/astro/Zodiac$Event;->atTime(Lnet/time4j/Moment;ZZ)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 431
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/astro/Zodiac$Event;->test(Lnet/time4j/Moment;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/Moment;)Z
    .locals 13

    .line 549
    sget-object v0, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;

    .line 550
    invoke-static {p1}, Lnet/time4j/calendar/astro/JulianDay;->ofEphemerisTime(Lnet/time4j/Moment;)Lnet/time4j/calendar/astro/JulianDay;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/JulianDay;->getValue()D

    move-result-wide v0

    .line 551
    iget-char v2, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->body:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/Zodiac;->access$000(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lnet/time4j/calendar/astro/Zodiac;->access$100(D)D

    move-result-wide v0

    .line 556
    :goto_0
    iget-boolean v2, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->horoscope:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 557
    invoke-direct {p0, v4}, Lnet/time4j/calendar/astro/Zodiac$Event;->getHoroscopeLongitude(Z)I

    move-result p1

    int-to-double v5, p1

    .line 558
    invoke-direct {p0, v3}, Lnet/time4j/calendar/astro/Zodiac$Event;->getHoroscopeLongitude(Z)I

    move-result p1

    int-to-double v7, p1

    goto :goto_1

    .line 560
    :cond_1
    iget-object v2, p0, Lnet/time4j/calendar/astro/Zodiac$Event;->zodiac:Lnet/time4j/calendar/astro/Zodiac;

    .line 561
    invoke-virtual {v2}, Lnet/time4j/calendar/astro/Zodiac;->next()Lnet/time4j/calendar/astro/Zodiac;

    move-result-object v5

    .line 562
    invoke-static {v2}, Lnet/time4j/calendar/astro/Zodiac;->access$200(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/EquatorialCoordinates;

    move-result-object v6

    invoke-interface {v6}, Lnet/time4j/calendar/astro/EquatorialCoordinates;->getRightAscension()D

    move-result-wide v6

    invoke-static {v2}, Lnet/time4j/calendar/astro/Zodiac;->access$200(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/EquatorialCoordinates;

    move-result-object v2

    invoke-interface {v2}, Lnet/time4j/calendar/astro/EquatorialCoordinates;->getDeclination()D

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Lnet/time4j/calendar/astro/Zodiac;->access$300(Lnet/time4j/Moment;DD)D

    move-result-wide v6

    .line 563
    invoke-static {v5}, Lnet/time4j/calendar/astro/Zodiac;->access$200(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/EquatorialCoordinates;

    move-result-object v2

    invoke-interface {v2}, Lnet/time4j/calendar/astro/EquatorialCoordinates;->getRightAscension()D

    move-result-wide v8

    invoke-static {v5}, Lnet/time4j/calendar/astro/Zodiac;->access$200(Lnet/time4j/calendar/astro/Zodiac;)Lnet/time4j/calendar/astro/EquatorialCoordinates;

    move-result-object v2

    invoke-interface {v2}, Lnet/time4j/calendar/astro/EquatorialCoordinates;->getDeclination()D

    move-result-wide v10

    invoke-static {p1, v8, v9, v10, v11}, Lnet/time4j/calendar/astro/Zodiac;->access$300(Lnet/time4j/Moment;DD)D

    move-result-wide v8

    move-wide v5, v6

    move-wide v7, v8

    :goto_1
    cmpg-double p1, v7, v5

    if-gez p1, :cond_2

    const-wide v9, 0x4076800000000000L    # 360.0

    add-double/2addr v7, v9

    const-wide v11, 0x4066800000000000L    # 180.0

    cmpg-double p1, v0, v11

    if-gez p1, :cond_2

    add-double/2addr v0, v9

    :cond_2
    cmpl-double p1, v0, v5

    if-ltz p1, :cond_3

    cmpg-double p1, v0, v7

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    return v3
.end method
