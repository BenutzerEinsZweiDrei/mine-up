.class public final Lnet/time4j/calendar/astro/SolarTime;
.super Ljava/lang/Object;
.source "SolarTime.java"

# interfaces
.implements Lnet/time4j/calendar/astro/GeoLocation;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/astro/SolarTime$Sunshine;,
        Lnet/time4j/calendar/astro/SolarTime$Calculator;,
        Lnet/time4j/calendar/astro/SolarTime$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ARC_MIN:D = 0.016666666666666666

.field private static final CALCULATORS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/time4j/calendar/astro/SolarTime$Calculator;",
            ">;"
        }
    .end annotation
.end field

.field static final DECLINATION:Ljava/lang/String; = "declination"

.field private static final DEFAULT_CALCULATOR:Lnet/time4j/calendar/astro/SolarTime$Calculator;

.field private static final JERUSALEM:Lnet/time4j/calendar/astro/SolarTime;

.field private static final MECCA:Lnet/time4j/calendar/astro/SolarTime;

.field static final RIGHT_ASCENSION:Ljava/lang/String; = "right-ascension"

.field static final STD_REFRACTION:D = 34.0

.field static final STD_ZENITH:D = 90.83333333333333

.field static final SUN_RADIUS:D = 16.0

.field private static final serialVersionUID:J = -0x42d812394a63fc69L


# instance fields
.field private final altitude:I

.field private final calculator:Ljava/lang/String;

.field private final latitude:D

.field private final longitude:D

.field private final observerZoneID:Lnet/time4j/tz/TZID;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    .line 216
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 217
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    const-class v3, Lnet/time4j/calendar/astro/SolarTime$Calculator;

    invoke-virtual {v2, v3}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/astro/SolarTime$Calculator;

    .line 219
    invoke-interface {v0}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {}, Lnet/time4j/calendar/astro/StdSolarCalculator;->values()[Lnet/time4j/calendar/astro/StdSolarCalculator;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 222
    invoke-interface {v5}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    :cond_1
    sput-object v1, Lnet/time4j/calendar/astro/SolarTime;->CALCULATORS:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_2

    .line 225
    sget-object v0, Lnet/time4j/calendar/astro/StdSolarCalculator;->NOAA:Lnet/time4j/calendar/astro/StdSolarCalculator;

    :cond_2
    sput-object v0, Lnet/time4j/calendar/astro/SolarTime;->DEFAULT_CALCULATOR:Lnet/time4j/calendar/astro/SolarTime$Calculator;

    .line 229
    invoke-static {}, Lnet/time4j/calendar/astro/SolarTime;->ofLocation()Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    const/16 v1, 0x23

    const/16 v2, 0xe

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    .line 230
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/astro/SolarTime$Builder;->easternLongitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    const/16 v1, 0x1f

    const/16 v2, 0x2e

    const-wide/high16 v3, 0x4046000000000000L    # 44.0

    .line 231
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/astro/SolarTime$Builder;->northernLatitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    const/16 v1, 0x2d1

    .line 232
    invoke-virtual {v0, v1}, Lnet/time4j/calendar/astro/SolarTime$Builder;->atAltitude(I)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/astro/StdSolarCalculator;->TIME4J:Lnet/time4j/calendar/astro/StdSolarCalculator;

    .line 233
    invoke-virtual {v0, v1}, Lnet/time4j/calendar/astro/SolarTime$Builder;->usingCalculator(Lnet/time4j/calendar/astro/SolarTime$Calculator;)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lnet/time4j/calendar/astro/SolarTime$Builder;->build()Lnet/time4j/calendar/astro/SolarTime;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/astro/SolarTime;->JERUSALEM:Lnet/time4j/calendar/astro/SolarTime;

    .line 236
    invoke-static {}, Lnet/time4j/calendar/astro/SolarTime;->ofLocation()Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    const/16 v1, 0x27

    const/16 v2, 0x31

    const-wide v3, 0x404107ae147ae148L    # 34.06

    .line 237
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/astro/SolarTime$Builder;->easternLongitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    const/16 v1, 0x15

    const/16 v2, 0x19

    const-wide v3, 0x40353851eb851eb8L    # 21.22

    .line 238
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/astro/SolarTime$Builder;->northernLatitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    const/16 v1, 0x12a

    .line 239
    invoke-virtual {v0, v1}, Lnet/time4j/calendar/astro/SolarTime$Builder;->atAltitude(I)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/astro/StdSolarCalculator;->TIME4J:Lnet/time4j/calendar/astro/StdSolarCalculator;

    .line 240
    invoke-virtual {v0, v1}, Lnet/time4j/calendar/astro/SolarTime$Builder;->usingCalculator(Lnet/time4j/calendar/astro/SolarTime$Calculator;)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lnet/time4j/calendar/astro/SolarTime$Builder;->build()Lnet/time4j/calendar/astro/SolarTime;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/astro/SolarTime;->MECCA:Lnet/time4j/calendar/astro/SolarTime;

    return-void
.end method

.method private constructor <init>(DDILjava/lang/String;Lnet/time4j/tz/TZID;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-wide p1, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    .line 289
    iput-wide p3, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    .line 290
    iput p5, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    .line 291
    iput-object p6, p0, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    .line 292
    iput-object p7, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    return-void
.end method

.method synthetic constructor <init>(DDILjava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/calendar/astro/SolarTime$1;)V
    .locals 0

    .line 199
    invoke-direct/range {p0 .. p7}, Lnet/time4j/calendar/astro/SolarTime;-><init>(DDILjava/lang/String;Lnet/time4j/tz/TZID;)V

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/calendar/astro/SolarTime;Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDate;
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/SolarTime;->toLMT(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lnet/time4j/Moment;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 199
    invoke-static {p0, p1}, Lnet/time4j/calendar/astro/SolarTime;->onAverage(Lnet/time4j/Moment;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100()Lnet/time4j/calendar/astro/SolarTime$Calculator;
    .locals 1

    .line 199
    sget-object v0, Lnet/time4j/calendar/astro/SolarTime;->DEFAULT_CALCULATOR:Lnet/time4j/calendar/astro/SolarTime$Calculator;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 199
    sget-object v0, Lnet/time4j/calendar/astro/SolarTime;->CALCULATORS:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$200(Lnet/time4j/calendar/astro/SolarTime;)D
    .locals 2

    .line 199
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    return-wide v0
.end method

.method static synthetic access$300(Lnet/time4j/calendar/astro/SolarTime;)D
    .locals 2

    .line 199
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    return-wide v0
.end method

.method static synthetic access$400(Lnet/time4j/calendar/astro/SolarTime;)D
    .locals 2

    .line 199
    invoke-direct {p0}, Lnet/time4j/calendar/astro/SolarTime;->zenithAngle()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lnet/time4j/calendar/astro/SolarTime;)Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lnet/time4j/engine/CalendarDate;DLjava/lang/String;)Lnet/time4j/Moment;
    .locals 0

    .line 199
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/astro/SolarTime;->transitAtNoon(Lnet/time4j/engine/CalendarDate;DLjava/lang/String;)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lnet/time4j/engine/CalendarDate;DLjava/lang/String;)Lnet/time4j/Moment;
    .locals 0

    .line 199
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/astro/SolarTime;->transitAtMidnight(Lnet/time4j/engine/CalendarDate;DLjava/lang/String;)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lnet/time4j/calendar/astro/SolarTime;Lnet/time4j/engine/CalendarDate;ZDD)Lnet/time4j/Moment;
    .locals 0

    .line 199
    invoke-direct/range {p0 .. p6}, Lnet/time4j/calendar/astro/SolarTime;->timeOfShadow(Lnet/time4j/engine/CalendarDate;ZDD)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method public static apparentAt(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 1121
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$12;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/astro/SolarTime$12;-><init>(Lnet/time4j/tz/ZonalOffset;)V

    return-object v0
.end method

.method public static apparentAt(Lnet/time4j/tz/ZonalOffset;Ljava/lang/String;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 1163
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$13;

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/astro/SolarTime$13;-><init>(Lnet/time4j/tz/ZonalOffset;Ljava/lang/String;)V

    return-object v0
.end method

.method private static check(DDILjava/lang/String;)V
    .locals 2

    .line 1440
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1442
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_6

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 1444
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gtz v0, :cond_5

    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_5

    const-wide p0, 0x4066800000000000L    # 180.0

    .line 1446
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gez p0, :cond_4

    const-wide p0, -0x3f99800000000000L    # -180.0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_4

    int-to-double p0, p4

    .line 1448
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_3

    if-ltz p4, :cond_2

    const/16 p0, 0x2af8

    if-ge p4, p0, :cond_2

    .line 1452
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1454
    sget-object p0, Lnet/time4j/calendar/astro/SolarTime;->CALCULATORS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p5}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1455
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown calculator: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1453
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing calculator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1451
    :cond_2
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

    .line 1449
    :cond_3
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

    .line 1447
    :cond_4
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

    .line 1445
    :cond_5
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

    .line 1443
    :cond_6
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

    .line 1441
    :cond_7
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

.method private checkShadow(DD)V
    .locals 2

    .line 1368
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpg-double p1, p1, v0

    if-lez p1, :cond_2

    .line 1370
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    cmpg-double p1, p3, v0

    if-ltz p1, :cond_1

    .line 1372
    iget-wide p1, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide p3, 0x4050800000000000L    # 66.0

    cmpl-double p1, p1, p3

    if-gtz p1, :cond_0

    return-void

    .line 1373
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot calculate time of shadow for polar regions."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1371
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Length of shadow must be finite and not negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1369
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Object height must be finite and positive."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static equalZones(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TZID;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 1485
    :cond_2
    invoke-interface {p0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equationOfTime(Lnet/time4j/Moment;)D
    .locals 2

    .line 1229
    sget-object v0, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-static {p0, v0}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide v0

    .line 1230
    sget-object p0, Lnet/time4j/calendar/astro/SolarTime;->DEFAULT_CALCULATOR:Lnet/time4j/calendar/astro/SolarTime$Calculator;

    invoke-interface {p0, v0, v1}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->equationOfTime(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static equationOfTime(Lnet/time4j/Moment;Ljava/lang/String;)D
    .locals 3

    const-string v0, "Missing calculator parameter."

    .line 1266
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1267
    sget-object v0, Lnet/time4j/calendar/astro/SolarTime;->CALCULATORS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    sget-object v1, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-static {p0, v1}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide v1

    .line 1269
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/astro/SolarTime$Calculator;

    invoke-interface {p0, v1, v2}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->equationOfTime(D)D

    move-result-wide p0

    return-wide p0

    .line 1271
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown calculator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static fromLocalEvent(Lnet/time4j/engine/CalendarDate;IDLjava/lang/String;)Lnet/time4j/Moment;
    .locals 6

    .line 1314
    sget-object v0, Lnet/time4j/calendar/astro/SolarTime;->CALCULATORS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/time4j/calendar/astro/SolarTime$Calculator;

    .line 1315
    invoke-interface {p0}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long/2addr v0, v2

    mul-int/lit16 p1, p1, 0xe10

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-double p0, v0

    const-wide/high16 v0, 0x406e000000000000L    # 240.0

    mul-double/2addr p2, v0

    sub-double/2addr p0, p2

    .line 1316
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-long p2, p2

    long-to-double v0, p2

    sub-double/2addr p0, v0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr p0, v0

    double-to-int p0, p0

    .line 1318
    sget-object p1, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    .line 1319
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/32 v2, 0x3c26700

    add-long/2addr p2, v2

    .line 1321
    sget-object p1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 1323
    :cond_0
    invoke-static {p2, p3, p0, p1}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p0

    .line 1324
    sget-object p1, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-static {p0, p1}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide p1

    invoke-interface {p4, p1, p2}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->equationOfTime(D)D

    move-result-wide p1

    .line 1326
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    long-to-double v4, v2

    sub-double/2addr p1, v4

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 1328
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, p2}, Lnet/time4j/Moment;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    check-cast p2, Lnet/time4j/Moment;

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, p1}, Lnet/time4j/Moment;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;

    .line 1329
    sget-object p2, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-static {p1, p2}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide p1

    invoke-interface {p4, p1, p2}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->equationOfTime(D)D

    move-result-wide p1

    .line 1331
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    double-to-long p3, p3

    long-to-double v2, p3

    sub-double/2addr p1, v2

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 1333
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p3, p4, p2}, Lnet/time4j/Moment;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    int-to-long p1, p1

    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Moment;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    return-object p0
.end method

.method private geodeticAngle()D
    .locals 4

    .line 1427
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime;->getCalculator()Lnet/time4j/calendar/astro/SolarTime$Calculator;

    move-result-object v0

    iget-wide v1, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    iget v3, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    invoke-interface {v0, v1, v2, v3}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->getGeodeticAngle(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ofJerusalem()Lnet/time4j/calendar/astro/SolarTime;
    .locals 1

    .line 471
    sget-object v0, Lnet/time4j/calendar/astro/SolarTime;->JERUSALEM:Lnet/time4j/calendar/astro/SolarTime;

    return-object v0
.end method

.method public static ofLocation()Lnet/time4j/calendar/astro/SolarTime$Builder;
    .locals 2

    .line 320
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/calendar/astro/SolarTime$Builder;-><init>(Lnet/time4j/calendar/astro/SolarTime$1;)V

    return-object v0
.end method

.method public static ofLocation(DD)Lnet/time4j/calendar/astro/SolarTime;
    .locals 6

    .line 363
    sget-object v5, Lnet/time4j/calendar/astro/SolarTime;->DEFAULT_CALCULATOR:Lnet/time4j/calendar/astro/SolarTime$Calculator;

    const/4 v4, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lnet/time4j/calendar/astro/SolarTime;->ofLocation(DDILnet/time4j/calendar/astro/SolarTime$Calculator;)Lnet/time4j/calendar/astro/SolarTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofLocation(DDILjava/lang/String;)Lnet/time4j/calendar/astro/SolarTime;
    .locals 9

    .line 406
    invoke-static/range {p0 .. p5}, Lnet/time4j/calendar/astro/SolarTime;->check(DDILjava/lang/String;)V

    .line 407
    new-instance v8, Lnet/time4j/calendar/astro/SolarTime;

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lnet/time4j/calendar/astro/SolarTime;-><init>(DDILjava/lang/String;Lnet/time4j/tz/TZID;)V

    return-object v8
.end method

.method public static ofLocation(DDILnet/time4j/calendar/astro/SolarTime$Calculator;)Lnet/time4j/calendar/astro/SolarTime;
    .locals 8

    .line 448
    invoke-interface {p5}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->name()Ljava/lang/String;

    move-result-object v6

    .line 449
    sget-object v0, Lnet/time4j/calendar/astro/SolarTime;->CALCULATORS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v6, p5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v0, p0

    move-wide v2, p2

    move v4, p4

    move-object v5, v6

    .line 450
    invoke-static/range {v0 .. v5}, Lnet/time4j/calendar/astro/SolarTime;->check(DDILjava/lang/String;)V

    .line 451
    new-instance p5, Lnet/time4j/calendar/astro/SolarTime;

    const/4 v7, 0x0

    move-object v0, p5

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lnet/time4j/calendar/astro/SolarTime;-><init>(DDILjava/lang/String;Lnet/time4j/tz/TZID;)V

    return-object p5
.end method

.method public static ofMecca()Lnet/time4j/calendar/astro/SolarTime;
    .locals 1

    .line 499
    sget-object v0, Lnet/time4j/calendar/astro/SolarTime;->MECCA:Lnet/time4j/calendar/astro/SolarTime;

    return-object v0
.end method

.method private static onAverage(Lnet/time4j/Moment;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;
    .locals 4

    .line 1338
    sget-object v0, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    .line 1340
    invoke-virtual {p0, v0}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v0

    const-wide/32 v2, 0x3c26700

    add-long/2addr v0, v2

    sget-object v2, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    .line 1341
    invoke-virtual {p0, v2}, Lnet/time4j/Moment;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result p0

    sget-object v2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 1339
    invoke-static {v0, v1, p0, v2}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p0

    .line 1343
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p0

    return-object p0
.end method

.method public static onAverage(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 1192
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$14;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/astro/SolarTime$14;-><init>(Lnet/time4j/tz/ZonalOffset;)V

    return-object v0
.end method

.method private static precision(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 1423
    sget-object v0, Lnet/time4j/calendar/astro/StdSolarCalculator;->SIMPLE:Lnet/time4j/calendar/astro/StdSolarCalculator;

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/StdSolarCalculator;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1499
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1500
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    iget-wide v2, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    iget v4, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    iget-object v5, p0, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lnet/time4j/calendar/astro/SolarTime;->check(DDILjava/lang/String;)V

    return-void
.end method

.method private timeOfShadow(JJD)Lnet/time4j/Moment;
    .locals 9

    .line 1410
    invoke-static {p1, p2, p3, p4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sget-object v2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {v0, v1, v2}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object v0

    .line 1411
    invoke-static {v0, p0}, Lnet/time4j/calendar/astro/SunPosition;->at(Lnet/time4j/Moment;Lnet/time4j/calendar/astro/GeoLocation;)Lnet/time4j/calendar/astro/SunPosition;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/astro/SunPosition;->getElevation()D

    move-result-wide v1

    sub-double v3, v1, p5

    .line 1413
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f91111111111111L    # 0.016666666666666666

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    return-object v0

    .line 1415
    :cond_0
    invoke-static {p5, p6, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 1416
    invoke-virtual {v0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v3

    move-object v2, p0

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Lnet/time4j/calendar/astro/SolarTime;->timeOfShadow(JJD)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 1418
    :cond_1
    invoke-virtual {v0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v3

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/astro/SolarTime;->timeOfShadow(JJD)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method private timeOfShadow(Lnet/time4j/engine/CalendarDate;ZDD)Lnet/time4j/Moment;
    .locals 10

    .line 1383
    invoke-direct {p0, p1}, Lnet/time4j/calendar/astro/SolarTime;->toLMT(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDate;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/astro/SolarTime;->toGregorian(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1384
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime;->sunset()Lnet/time4j/engine/ChronoFunction;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime;->sunrise()Lnet/time4j/engine/ChronoFunction;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/Moment;

    .line 1386
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime;->transitAtNoon()Lnet/time4j/engine/ChronoFunction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    move-object v9, p0

    .line 1387
    invoke-static {v0, p0}, Lnet/time4j/calendar/astro/SunPosition;->at(Lnet/time4j/Moment;Lnet/time4j/calendar/astro/GeoLocation;)Lnet/time4j/calendar/astro/SunPosition;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/astro/SunPosition;->getElevation()D

    move-result-wide v2

    const-wide v4, 0x3f91111111111111L    # 0.016666666666666666

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1

    return-object v1

    :cond_1
    const-wide/16 v6, 0x0

    cmpl-double v6, p5, v6

    if-nez v6, :cond_2

    const-wide v6, 0x4056800000000000L    # 90.0

    goto :goto_1

    :cond_2
    div-double v6, p3, p5

    .line 1395
    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    :goto_1
    move-wide v7, v6

    add-double/2addr v2, v4

    cmpl-double v2, v7, v2

    if-lez v2, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 1400
    :cond_3
    invoke-virtual {v1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v5

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lnet/time4j/calendar/astro/SolarTime;->timeOfShadow(JJD)Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method

.method static toGregorian(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/PlainDate;
    .locals 2

    .line 1298
    instance-of v0, p0, Lnet/time4j/PlainDate;

    if-eqz v0, :cond_0

    .line 1299
    check-cast p0, Lnet/time4j/PlainDate;

    return-object p0

    .line 1301
    :cond_0
    invoke-interface {p0}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    sget-object p0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {v0, v1, p0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method private toLMT(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDate;
    .locals 4

    .line 1460
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4062c00000000000L    # 150.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 1464
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/astro/SolarTime;->toGregorian(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    const/16 v1, 0xc

    .line 1465
    invoke-static {v1}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 1467
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainTimestamp;->isValid(Lnet/time4j/tz/TZID;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1472
    new-instance p1, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    invoke-direct {p1, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Ljava/math/BigDecimal;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 1473
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainTimestamp;->inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 1468
    :cond_1
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar date does not exist in zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    .line 1469
    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static transitAtMidnight(Lnet/time4j/engine/CalendarDate;DLjava/lang/String;)Lnet/time4j/Moment;
    .locals 1

    const/4 v0, 0x0

    .line 1360
    invoke-static {p0, v0, p1, p2, p3}, Lnet/time4j/calendar/astro/SolarTime;->fromLocalEvent(Lnet/time4j/engine/CalendarDate;IDLjava/lang/String;)Lnet/time4j/Moment;

    move-result-object p0

    .line 1361
    sget-object p1, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    invoke-static {p3}, Lnet/time4j/calendar/astro/SolarTime;->precision(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    return-object p0
.end method

.method private static transitAtNoon(Lnet/time4j/engine/CalendarDate;DLjava/lang/String;)Lnet/time4j/Moment;
    .locals 1

    const/16 v0, 0xc

    .line 1351
    invoke-static {p0, v0, p1, p2, p3}, Lnet/time4j/calendar/astro/SolarTime;->fromLocalEvent(Lnet/time4j/engine/CalendarDate;IDLjava/lang/String;)Lnet/time4j/Moment;

    move-result-object p0

    .line 1352
    sget-object p1, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    invoke-static {p3}, Lnet/time4j/calendar/astro/SolarTime;->precision(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    return-object p0
.end method

.method private zenithAngle()D
    .locals 4

    .line 1431
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime;->getCalculator()Lnet/time4j/calendar/astro/SolarTime$Calculator;

    move-result-object v0

    iget-wide v1, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    iget v3, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    invoke-interface {v0, v1, v2, v3}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->getZenithAngle(DI)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1044
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/astro/SolarTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1045
    check-cast p1, Lnet/time4j/calendar/astro/SolarTime;

    .line 1046
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    iget-object v3, p1, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    .line 1047
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    .line 1048
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    iget-wide v5, p1, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    .line 1049
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    iget v3, p1, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    iget-object p1, p1, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    .line 1051
    invoke-static {v1, p1}, Lnet/time4j/calendar/astro/SolarTime;->equalZones(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TZID;)Z

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

    .line 520
    iget v0, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    return v0
.end method

.method public getCalculator()Lnet/time4j/calendar/astro/SolarTime$Calculator;
    .locals 2

    .line 538
    sget-object v0, Lnet/time4j/calendar/astro/SolarTime;->CALCULATORS:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/astro/SolarTime$Calculator;

    return-object v0
.end method

.method getHighestElevationOfSun(Lnet/time4j/PlainDate;)D
    .locals 8

    .line 1279
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime;->transitAtNoon()Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;

    .line 1280
    sget-object v0, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    invoke-static {p1, v0}, Lnet/time4j/calendar/astro/JulianDay;->getValue(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)D

    move-result-wide v0

    .line 1281
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime;->getCalculator()Lnet/time4j/calendar/astro/SolarTime$Calculator;

    move-result-object p1

    const-string v2, "declination"

    invoke-interface {p1, v0, v1, v2}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->getFeature(DLjava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1282
    iget-wide v2, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 1284
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    .line 1285
    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 1287
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_0

    return-wide v0

    .line 1288
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Solar declination not supported by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-virtual {p0}, Lnet/time4j/calendar/astro/SolarTime;->getCalculator()Lnet/time4j/calendar/astro/SolarTime$Calculator;

    move-result-object v1

    invoke-interface {v1}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLatitude()D
    .locals 2

    .line 506
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 513
    iget-wide v0, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    return-wide v0
.end method

.method public getObserverZoneID()Lnet/time4j/tz/TZID;
    .locals 1

    .line 568
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1062
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    .line 1063
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    .line 1064
    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-wide v1, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    .line 1065
    invoke-static {v1, v2}, Lnet/time4j/calendar/astro/AstroUtils;->hashCode(D)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public midnightSun()Lnet/time4j/engine/ChronoCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/CalendarDate;",
            ">;"
        }
    .end annotation

    .line 860
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$7;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/astro/SolarTime$7;-><init>(Lnet/time4j/calendar/astro/SolarTime;)V

    return-object v0
.end method

.method public polarNight()Lnet/time4j/engine/ChronoCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/CalendarDate;",
            ">;"
        }
    .end annotation

    .line 819
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$6;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/astro/SolarTime$6;-><init>(Lnet/time4j/calendar/astro/SolarTime;)V

    return-object v0
.end method

.method public sunrise()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$1;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/astro/SolarTime$1;-><init>(Lnet/time4j/calendar/astro/SolarTime;)V

    return-object v0
.end method

.method public sunrise(Lnet/time4j/calendar/astro/Twilight;)Lnet/time4j/engine/ChronoFunction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/astro/Twilight;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 650
    invoke-direct {p0}, Lnet/time4j/calendar/astro/SolarTime;->geodeticAngle()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v2

    invoke-virtual {p1}, Lnet/time4j/calendar/astro/Twilight;->getAngle()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 651
    new-instance p1, Lnet/time4j/calendar/astro/SolarTime$2;

    invoke-direct {p1, p0, v0, v1}, Lnet/time4j/calendar/astro/SolarTime$2;-><init>(Lnet/time4j/calendar/astro/SolarTime;D)V

    return-object p1
.end method

.method public sunset()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$3;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/astro/SolarTime$3;-><init>(Lnet/time4j/calendar/astro/SolarTime;)V

    return-object v0
.end method

.method public sunset(Lnet/time4j/calendar/astro/Twilight;)Lnet/time4j/engine/ChronoFunction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/astro/Twilight;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 739
    invoke-direct {p0}, Lnet/time4j/calendar/astro/SolarTime;->geodeticAngle()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v2

    invoke-virtual {p1}, Lnet/time4j/calendar/astro/Twilight;->getAngle()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 740
    new-instance p1, Lnet/time4j/calendar/astro/SolarTime$4;

    invoke-direct {p1, p0, v0, v1}, Lnet/time4j/calendar/astro/SolarTime$4;-><init>(Lnet/time4j/calendar/astro/SolarTime;D)V

    return-object p1
.end method

.method public sunshine(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/calendar/astro/SolarTime$Sunshine;",
            ">;"
        }
    .end annotation

    .line 778
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$5;

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/astro/SolarTime$5;-><init>(Lnet/time4j/calendar/astro/SolarTime;Lnet/time4j/tz/TZID;)V

    return-object v0
.end method

.method public timeOfShadowAfterNoon(DD)Lnet/time4j/engine/ChronoFunction;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 1029
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/astro/SolarTime;->checkShadow(DD)V

    .line 1030
    new-instance v6, Lnet/time4j/calendar/astro/SolarTime$11;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/calendar/astro/SolarTime$11;-><init>(Lnet/time4j/calendar/astro/SolarTime;DD)V

    return-object v6
.end method

.method public timeOfShadowBeforeNoon(DD)Lnet/time4j/engine/ChronoFunction;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 980
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/astro/SolarTime;->checkShadow(DD)V

    .line 981
    new-instance v6, Lnet/time4j/calendar/astro/SolarTime$10;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/calendar/astro/SolarTime$10;-><init>(Lnet/time4j/calendar/astro/SolarTime;DD)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SolarTime[latitude="

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    iget-wide v1, p0, Lnet/time4j/calendar/astro/SolarTime;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",longitude="

    .line 1077
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    iget-wide v1, p0, Lnet/time4j/calendar/astro/SolarTime;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1079
    iget v1, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    if-eqz v1, :cond_0

    const-string v1, ",altitude="

    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    iget v1, p0, Lnet/time4j/calendar/astro/SolarTime;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1083
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    sget-object v2, Lnet/time4j/calendar/astro/SolarTime;->DEFAULT_CALCULATOR:Lnet/time4j/calendar/astro/SolarTime$Calculator;

    invoke-interface {v2}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ",calculator="

    .line 1084
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->calculator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    :cond_1
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    if-eqz v1, :cond_2

    const-string v1, ",observerZoneID="

    .line 1088
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime;->observerZoneID:Lnet/time4j/tz/TZID;

    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x5d

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transitAtMidnight()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 932
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$9;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/astro/SolarTime$9;-><init>(Lnet/time4j/calendar/astro/SolarTime;)V

    return-object v0
.end method

.method public transitAtNoon()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 902
    new-instance v0, Lnet/time4j/calendar/astro/SolarTime$8;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/astro/SolarTime$8;-><init>(Lnet/time4j/calendar/astro/SolarTime;)V

    return-object v0
.end method
