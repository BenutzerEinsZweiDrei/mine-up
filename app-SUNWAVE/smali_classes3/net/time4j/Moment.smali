.class public final Lnet/time4j/Moment;
.super Lnet/time4j/engine/TimePoint;
.source "Moment.java"

# interfaces
.implements Lnet/time4j/scale/UniversalTime;
.implements Lnet/time4j/engine/Temporal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/Moment$PrecisionRule;,
        Lnet/time4j/Moment$NextLS;,
        Lnet/time4j/Moment$GlobalTimeLine;,
        Lnet/time4j/Moment$Merger;,
        Lnet/time4j/Moment$IntElement;,
        Lnet/time4j/Moment$LongElement;,
        Lnet/time4j/Moment$TimeUnitRule;,
        Lnet/time4j/Moment$Operator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/TimePoint<",
        "Ljava/util/concurrent/TimeUnit;",
        "Lnet/time4j/Moment;",
        ">;",
        "Lnet/time4j/scale/UniversalTime;",
        "Lnet/time4j/engine/Temporal<",
        "Lnet/time4j/scale/UniversalTime;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "iso8601"
.end annotation


# static fields
.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Ljava/util/concurrent/TimeUnit;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRACTION:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIGH_TIME_ELEMENTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final LOW_TIME_ELEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX:Lnet/time4j/Moment;

.field private static final MAX_LIMIT:J

.field private static final MIN:Lnet/time4j/Moment;

.field private static final MIN_LIMIT:J

.field private static final MIO:I = 0xf4240

.field private static final MRD:I = 0x3b9aca00

.field private static final NEXT_LS:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITIVE_LEAP_MASK:I = 0x40000000

.field private static final POSIX_GPS_DELTA:J = 0x12d53d80L

.field public static final POSIX_TIME:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSIX_UTC_DELTA:J = 0x3c26700L

.field public static final PRECISION:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_LS_CHECK:Lnet/time4j/Moment;

.field private static final UNIT_LENGTHS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIX_EPOCH:Lnet/time4j/Moment;

.field private static final UTC_GPS_DELTA:J = 0xf12d689L

.field private static final UTC_TAI_DELTA:J = 0x1a54c580L

.field private static final serialVersionUID:J = -0x2c4f67bd83444cc2L


# instance fields
.field private final transient fraction:I

.field private final transient posixTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    .line 444
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 406
    invoke-static {v0, v1, v1}, Lnet/time4j/base/GregorianMath;->toMJD(III)J

    move-result-wide v0

    const v3, 0x3b9ac9ff

    const/16 v4, 0xc

    const/16 v5, 0x1f

    .line 407
    invoke-static {v3, v4, v5}, Lnet/time4j/base/GregorianMath;->toMJD(III)J

    move-result-wide v4

    .line 409
    sget-object v6, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    sget-object v7, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 410
    invoke-virtual {v6, v0, v1, v7}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    const-wide/32 v6, 0x15180

    mul-long/2addr v0, v6

    sput-wide v0, Lnet/time4j/Moment;->MIN_LIMIT:J

    .line 414
    sget-object v8, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    sget-object v9, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 415
    invoke-virtual {v8, v4, v5, v9}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x1517f

    add-long/2addr v4, v6

    sput-wide v4, Lnet/time4j/Moment;->MAX_LIMIT:J

    .line 421
    new-instance v6, Lnet/time4j/Moment;

    sget-object v7, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    const/4 v8, 0x0

    invoke-direct {v6, v0, v1, v8, v7}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    sput-object v6, Lnet/time4j/Moment;->MIN:Lnet/time4j/Moment;

    .line 422
    new-instance v0, Lnet/time4j/Moment;

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v4, v5, v3, v1}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    sput-object v0, Lnet/time4j/Moment;->MAX:Lnet/time4j/Moment;

    .line 424
    new-instance v1, Lnet/time4j/Moment;

    sget-object v3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    const-wide/32 v4, 0x3c3b880

    invoke-direct {v1, v4, v5, v8, v3}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    sput-object v1, Lnet/time4j/Moment;->START_LS_CHECK:Lnet/time4j/Moment;

    .line 431
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 432
    sget-object v3, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v3, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v3, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v3, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_DAY:Lnet/time4j/AdjustableElement;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v3, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v3, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v3, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v3, Lnet/time4j/PlainTime;->MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lnet/time4j/Moment;->HIGH_TIME_ELEMENTS:Ljava/util/Set;

    .line 442
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 444
    sget-object v3, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v3, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v2, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v2, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v2, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    const v3, 0xf4240

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v2, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v2, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    const v3, 0x3b9aca00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v2, Lnet/time4j/PlainTime;->NANO_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lnet/time4j/Moment;->LOW_TIME_ELEMENTS:Ljava/util/Map;

    .line 454
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 456
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x40f5180000000000L    # 86400.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x40ac200000000000L    # 3600.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lnet/time4j/Moment;->UNIT_LENGTHS:Ljava/util/Map;

    .line 469
    const-class v1, Ljava/util/concurrent/TimeUnit;

    const-class v2, Lnet/time4j/Moment;

    new-instance v3, Lnet/time4j/Moment$Merger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lnet/time4j/Moment$Merger;-><init>(Lnet/time4j/Moment$1;)V

    .line 470
    invoke-static {v1, v2, v3, v6, v0}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 473
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    array-length v2, v1

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v10, v1, v3

    .line 474
    new-instance v11, Lnet/time4j/Moment$TimeUnitRule;

    invoke-direct {v11, v10}, Lnet/time4j/Moment$TimeUnitRule;-><init>(Ljava/util/concurrent/TimeUnit;)V

    sget-object v5, Lnet/time4j/Moment;->UNIT_LENGTHS:Ljava/util/Map;

    .line 477
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 478
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    move-object v9, v0

    .line 474
    invoke-virtual/range {v9 .. v14}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    :cond_0
    sget-object v1, Lnet/time4j/Moment$LongElement;->POSIX_TIME:Lnet/time4j/Moment$LongElement;

    sget-object v2, Lnet/time4j/Moment$LongElement;->POSIX_TIME:Lnet/time4j/Moment$LongElement;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    .line 485
    sget-object v1, Lnet/time4j/Moment$IntElement;->FRACTION:Lnet/time4j/Moment$IntElement;

    sget-object v2, Lnet/time4j/Moment$IntElement;->FRACTION:Lnet/time4j/Moment$IntElement;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    .line 489
    sget-object v1, Lnet/time4j/PrecisionElement;->TIME_PRECISION:Lnet/time4j/engine/ChronoElement;

    new-instance v2, Lnet/time4j/Moment$PrecisionRule;

    invoke-direct {v2, v4}, Lnet/time4j/Moment$PrecisionRule;-><init>(Lnet/time4j/Moment$1;)V

    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    .line 493
    new-instance v1, Lnet/time4j/Moment$GlobalTimeLine;

    invoke-direct {v1, v4}, Lnet/time4j/Moment$GlobalTimeLine;-><init>(Lnet/time4j/Moment$1;)V

    invoke-virtual {v0, v1}, Lnet/time4j/engine/TimeAxis$Builder;->withTimeLine(Lnet/time4j/engine/TimeLine;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/Moment;->ENGINE:Lnet/time4j/engine/TimeAxis;

    .line 502
    new-instance v0, Lnet/time4j/Moment;

    const-wide/16 v1, 0x0

    sget-object v3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-direct {v0, v1, v2, v8, v3}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    sput-object v0, Lnet/time4j/Moment;->UNIX_EPOCH:Lnet/time4j/Moment;

    .line 515
    sget-object v0, Lnet/time4j/Moment$LongElement;->POSIX_TIME:Lnet/time4j/Moment$LongElement;

    sput-object v0, Lnet/time4j/Moment;->POSIX_TIME:Lnet/time4j/engine/ChronoElement;

    .line 528
    sget-object v0, Lnet/time4j/Moment$IntElement;->FRACTION:Lnet/time4j/Moment$IntElement;

    sput-object v0, Lnet/time4j/Moment;->FRACTION:Lnet/time4j/engine/ChronoElement;

    .line 540
    sget-object v0, Lnet/time4j/PrecisionElement;->TIME_PRECISION:Lnet/time4j/engine/ChronoElement;

    sput-object v0, Lnet/time4j/Moment;->PRECISION:Lnet/time4j/engine/ChronoElement;

    .line 542
    new-instance v0, Lnet/time4j/Moment$NextLS;

    invoke-direct {v0, v4}, Lnet/time4j/Moment$NextLS;-><init>(Lnet/time4j/Moment$1;)V

    sput-object v0, Lnet/time4j/Moment;->NEXT_LS:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 0

    .line 657
    invoke-direct {p0}, Lnet/time4j/engine/TimePoint;-><init>()V

    .line 660
    invoke-static {p2, p3}, Lnet/time4j/Moment;->checkUnixTime(J)V

    .line 662
    iput-wide p2, p0, Lnet/time4j/Moment;->posixTime:J

    .line 663
    iput p1, p0, Lnet/time4j/Moment;->fraction:I

    return-void
.end method

.method synthetic constructor <init>(IJLnet/time4j/Moment$1;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/Moment;-><init>(IJ)V

    return-void
.end method

.method private constructor <init>(JILnet/time4j/scale/TimeScale;)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 557
    invoke-direct/range {p0 .. p0}, Lnet/time4j/engine/TimePoint;-><init>()V

    .line 559
    sget-object v5, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne v4, v5, :cond_0

    .line 560
    iput-wide v1, v0, Lnet/time4j/Moment;->posixTime:J

    .line 561
    iput v3, v0, Lnet/time4j/Moment;->fraction:I

    goto/16 :goto_5

    .line 563
    :cond_0
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v5

    .line 565
    invoke-virtual {v5}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 568
    sget-object v6, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    if-ne v4, v6, :cond_1

    goto/16 :goto_1

    .line 570
    :cond_1
    sget-object v6, Lnet/time4j/scale/TimeScale;->TAI:Lnet/time4j/scale/TimeScale;

    const-wide v13, 0x41cdcd6500000000L    # 1.0E9

    const v11, 0x3b9aca00

    const v12, 0xaf79e00

    if-ne v4, v6, :cond_5

    cmp-long v4, v1, v9

    if-ltz v4, :cond_4

    const-wide/32 v15, 0x1a54c580

    cmp-long v4, v1, v15

    if-gez v4, :cond_3

    const-wide/32 v9, -0x1a54c560

    .line 575
    invoke-static {v1, v2, v9, v10}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v9

    .line 576
    invoke-static {v3, v12}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result v3

    if-lt v3, v11, :cond_2

    .line 578
    invoke-static {v9, v10, v7, v8}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v9

    .line 579
    invoke-static {v3, v11}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result v3

    :cond_2
    long-to-double v9, v9

    int-to-double v3, v3

    div-double/2addr v3, v13

    add-double/2addr v9, v3

    const-wide v3, 0x4045178d4fdf3b64L    # 42.184

    sub-double v3, v9, v3

    double-to-long v3, v3

    const v6, 0x15180

    .line 583
    invoke-static {v3, v4, v6}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v3

    sget-object v6, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {v3, v4, v6}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v3

    .line 584
    invoke-static {v3}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v3

    sub-double/2addr v9, v3

    .line 585
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    .line 586
    invoke-static {v9, v10, v3, v4}, Lnet/time4j/Moment;->toNanos(DJ)I

    move-result v6

    goto/16 :goto_2

    :cond_3
    const-wide/32 v9, 0x1a54c58a

    .line 588
    invoke-static {v1, v2, v9, v10}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v9

    move v6, v3

    move-wide v3, v9

    goto/16 :goto_2

    .line 572
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAI not supported before 1958-01-01: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 590
    :cond_5
    sget-object v6, Lnet/time4j/scale/TimeScale;->GPS:Lnet/time4j/scale/TimeScale;

    if-ne v4, v6, :cond_7

    const-wide/32 v9, 0xf12d689

    .line 591
    invoke-static {v1, v2, v9, v10}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v11

    cmp-long v4, v11, v9

    if-ltz v4, :cond_6

    move v6, v3

    move-wide v3, v11

    goto/16 :goto_2

    .line 593
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPS not supported before 1980-01-06: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 596
    :cond_7
    sget-object v6, Lnet/time4j/scale/TimeScale;->TT:Lnet/time4j/scale/TimeScale;

    if-ne v4, v6, :cond_a

    const-wide/16 v9, 0x2a

    cmp-long v4, v1, v9

    if-ltz v4, :cond_9

    if-nez v4, :cond_8

    if-ge v3, v12, :cond_8

    goto :goto_0

    .line 605
    :cond_8
    invoke-static {v1, v2, v9, v10}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v1

    .line 606
    invoke-static {v3, v12}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result v3

    if-gez v3, :cond_b

    .line 608
    invoke-static {v1, v2, v7, v8}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v1

    .line 609
    invoke-static {v3, v11}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result v3

    goto :goto_1

    :cond_9
    :goto_0
    long-to-double v9, v1

    int-to-double v3, v3

    div-double/2addr v3, v13

    add-double/2addr v9, v3

    const-wide v3, 0x4045178d4fdf3b64L    # 42.184

    sub-double v3, v9, v3

    double-to-long v3, v3

    const v6, 0x15180

    .line 600
    invoke-static {v3, v4, v6}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v3

    sget-object v6, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {v3, v4, v6}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v3

    .line 601
    invoke-static {v3}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v3

    sub-double/2addr v9, v3

    .line 602
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    .line 603
    invoke-static {v9, v10, v3, v4}, Lnet/time4j/Moment;->toNanos(DJ)I

    move-result v6

    goto :goto_2

    .line 613
    :cond_a
    sget-object v6, Lnet/time4j/scale/TimeScale;->UT:Lnet/time4j/scale/TimeScale;

    if-ne v4, v6, :cond_10

    const-wide/16 v9, 0x0

    cmp-long v4, v1, v9

    if-gez v4, :cond_c

    :cond_b
    :goto_1
    move v6, v3

    move-wide v3, v1

    goto :goto_2

    :cond_c
    const v4, 0x15180

    .line 618
    invoke-static {v1, v2, v4}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v9

    sget-object v4, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {v9, v10, v4}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v4

    long-to-double v9, v1

    int-to-double v11, v3

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    .line 620
    invoke-static {v4}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v3

    add-double/2addr v9, v3

    const-wide v3, 0x4045178d4fdf3b64L    # 42.184

    sub-double/2addr v9, v3

    .line 621
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    .line 622
    invoke-static {v9, v10, v3, v4}, Lnet/time4j/Moment;->toNanos(DJ)I

    move-result v6

    .line 629
    :goto_2
    invoke-virtual {v5, v3, v4}, Lnet/time4j/scale/LeapSeconds;->strip(J)J

    move-result-wide v9

    .line 630
    invoke-virtual {v5, v9, v10}, Lnet/time4j/scale/LeapSeconds;->enhance(J)J

    move-result-wide v11

    sub-long/2addr v3, v11

    .line 631
    iput-wide v9, v0, Lnet/time4j/Moment;->posixTime:J

    const-wide/16 v11, 0x0

    cmp-long v5, v3, v11

    if-eqz v5, :cond_f

    .line 633
    sget-wide v11, Lnet/time4j/Moment;->MAX_LIMIT:J

    cmp-long v5, v9, v11

    if-nez v5, :cond_d

    goto :goto_3

    :cond_d
    cmp-long v3, v3, v7

    if-nez v3, :cond_e

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, v6

    .line 636
    iput v1, v0, Lnet/time4j/Moment;->fraction:I

    goto :goto_4

    .line 638
    :cond_e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot handle leap shift of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 634
    :cond_f
    :goto_3
    iput v6, v0, Lnet/time4j/Moment;->fraction:I

    :goto_4
    move v3, v6

    .line 647
    :goto_5
    iget-wide v1, v0, Lnet/time4j/Moment;->posixTime:J

    invoke-static {v1, v2}, Lnet/time4j/Moment;->checkUnixTime(J)V

    .line 648
    invoke-static {v3}, Lnet/time4j/Moment;->checkFraction(I)V

    return-void

    .line 625
    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not yet implemented: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/scale/TimeScale;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Leap seconds are not supported by configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$1000(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 0

    .line 383
    invoke-static {p0}, Lnet/time4j/Moment;->moveEventuallyToLS(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lnet/time4j/Moment;)Lnet/time4j/PlainTime;
    .locals 0

    .line 383
    invoke-direct {p0}, Lnet/time4j/Moment;->getTimeUTC()Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200()J
    .locals 2

    .line 383
    sget-wide v0, Lnet/time4j/Moment;->MIN_LIMIT:J

    return-wide v0
.end method

.method static synthetic access$1300()J
    .locals 2

    .line 383
    sget-wide v0, Lnet/time4j/Moment;->MAX_LIMIT:J

    return-wide v0
.end method

.method static synthetic access$1400(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lnet/time4j/Moment;->transformForParse(Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lnet/time4j/Moment;)Lnet/time4j/PlainDate;
    .locals 0

    .line 383
    invoke-direct {p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lnet/time4j/Moment;)Z
    .locals 0

    .line 383
    invoke-direct {p0}, Lnet/time4j/Moment;->isPositiveLS()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lnet/time4j/Moment;->transformForPrint(Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lnet/time4j/Moment;)J
    .locals 2

    .line 383
    iget-wide v0, p0, Lnet/time4j/Moment;->posixTime:J

    return-wide v0
.end method

.method static synthetic access$400()Lnet/time4j/Moment;
    .locals 1

    .line 383
    sget-object v0, Lnet/time4j/Moment;->START_LS_CHECK:Lnet/time4j/Moment;

    return-object v0
.end method

.method static synthetic access$500(Lnet/time4j/Moment;)I
    .locals 0

    .line 383
    invoke-static {p0}, Lnet/time4j/Moment;->getMaxSecondOfMinute(Lnet/time4j/Moment;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .line 383
    sget-object v0, Lnet/time4j/Moment;->LOW_TIME_ELEMENTS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lnet/time4j/Moment;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/PlainTimestamp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lnet/time4j/Moment;)Z
    .locals 0

    .line 383
    invoke-direct {p0}, Lnet/time4j/Moment;->isNegativeLS()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900()Ljava/util/Set;
    .locals 1

    .line 383
    sget-object v0, Lnet/time4j/Moment;->HIGH_TIME_ELEMENTS:Ljava/util/Set;

    return-object v0
.end method

.method public static axis(Lnet/time4j/engine/Converter;)Lnet/time4j/engine/Chronology;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/Converter<",
            "TS;",
            "Lnet/time4j/Moment;",
            ">;)",
            "Lnet/time4j/engine/Chronology<",
            "TS;>;"
        }
    .end annotation

    .line 1804
    new-instance v0, Lnet/time4j/engine/BridgeChronology;

    sget-object v1, Lnet/time4j/Moment;->ENGINE:Lnet/time4j/engine/TimeAxis;

    invoke-direct {v0, p0, v1}, Lnet/time4j/engine/BridgeChronology;-><init>(Lnet/time4j/engine/Converter;Lnet/time4j/engine/Chronology;)V

    return-object v0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Ljava/util/concurrent/TimeUnit;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 1780
    sget-object v0, Lnet/time4j/Moment;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static check1972(Lnet/time4j/Moment;)V
    .locals 4

    .line 1855
    iget-wide v0, p0, Lnet/time4j/Moment;->posixTime:J

    const-wide/32 v2, 0x3c26700

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    .line 1856
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot calculate SI-duration before 1972-01-01."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkFraction(I)V
    .locals 3

    const v0, 0x3b9aca00

    if-ge p0, v0, :cond_0

    if-ltz p0, :cond_0

    return-void

    .line 2008
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nanosecond out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkNegativeLS(JLnet/time4j/PlainTimestamp;)V
    .locals 3

    .line 1834
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v0

    .line 1837
    invoke-virtual {v0}, Lnet/time4j/scale/LeapSeconds;->supportsNegativeLS()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1838
    invoke-virtual {v0, p0, p1}, Lnet/time4j/scale/LeapSeconds;->enhance(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/time4j/scale/LeapSeconds;->strip(J)J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    goto :goto_0

    .line 1840
    :cond_0
    new-instance p0, Lnet/time4j/engine/ChronoException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal local timestamp due to negative leap second: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static checkUnixTime(J)V
    .locals 3

    .line 1998
    sget-wide v0, Lnet/time4j/Moment;->MAX_LIMIT:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    sget-wide v0, Lnet/time4j/Moment;->MIN_LIMIT:J

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    .line 1999
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNIX time (UT) out of supported range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static format(IILjava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_0

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p0, v2, :cond_1

    const/16 p1, 0xa

    if-lt v2, p1, :cond_1

    const/16 p1, 0x30

    .line 2111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2112
    div-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 2115
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;
    .locals 3

    .line 800
    instance-of v0, p0, Lnet/time4j/Moment;

    if-eqz v0, :cond_0

    .line 801
    const-class v0, Lnet/time4j/Moment;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;

    return-object p0

    .line 802
    :cond_0
    instance-of v0, p0, Lnet/time4j/scale/UniversalTime;

    if-eqz v0, :cond_1

    .line 804
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    const-class v0, Lnet/time4j/scale/UniversalTime;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/scale/UniversalTime;

    .line 807
    sget-object v0, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 808
    invoke-interface {p0, v0}, Lnet/time4j/scale/UniversalTime;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v0

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 809
    invoke-interface {p0, v2}, Lnet/time4j/scale/UniversalTime;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result p0

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    .line 807
    invoke-static {v0, v1, p0, v2}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0

    .line 813
    :cond_1
    invoke-interface {p0}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    .line 814
    invoke-interface {p0}, Lnet/time4j/base/UnixTime;->getNanosecond()I

    move-result p0

    sget-object v2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 812
    invoke-static {v0, v1, p0, v2}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method private getDateUTC()Lnet/time4j/PlainDate;
    .locals 3

    .line 1927
    iget-wide v0, p0, Lnet/time4j/Moment;->posixTime:J

    const v2, 0x15180

    .line 1928
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    sget-object v2, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 1927
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v0

    return-object v0
.end method

.method private getElapsedTimeUTC()J
    .locals 4

    .line 1915
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1916
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v0

    iget-wide v1, p0, Lnet/time4j/Moment;->posixTime:J

    invoke-virtual {v0, v1, v2}, Lnet/time4j/scale/LeapSeconds;->enhance(J)J

    move-result-wide v0

    .line 1917
    invoke-direct {p0}, Lnet/time4j/Moment;->isPositiveLS()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    return-wide v0

    .line 1919
    :cond_1
    iget-wide v0, p0, Lnet/time4j/Moment;->posixTime:J

    const-wide/32 v2, 0x3c26700

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getMaxSecondOfMinute(Lnet/time4j/Moment;)I
    .locals 4

    .line 2153
    invoke-static {p0}, Lnet/time4j/Moment;->getTimeOfDay(Lnet/time4j/Moment;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    .line 2156
    div-int/lit8 v1, v0, 0x3c

    const/16 v2, 0x3b

    const/16 v3, 0x17

    if-ne v1, v3, :cond_0

    rem-int/lit8 v0, v0, 0x3c

    if-ne v0, v2, :cond_0

    .line 2157
    invoke-direct {p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object p0

    .line 2158
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/time4j/scale/LeapSeconds;->getShift(Lnet/time4j/base/GregorianDate;)I

    move-result p0

    add-int/2addr v2, p0

    :cond_0
    return v2
.end method

.method private getModernUT()D
    .locals 9

    .line 1949
    invoke-direct {p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object v0

    .line 1950
    invoke-direct {p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4045178d4fdf3b64L    # 42.184

    add-double/2addr v1, v3

    .line 1952
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 1953
    invoke-static {v0}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 1954
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    long-to-double v7, v3

    sub-double v7, v1, v7

    mul-double/2addr v7, v5

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1956
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    long-to-double v0, v3

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method private static getTimeOfDay(Lnet/time4j/Moment;)I
    .locals 2

    .line 2122
    iget-wide v0, p0, Lnet/time4j/Moment;->posixTime:J

    const p0, 0x15180

    invoke-static {v0, v1, p0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p0

    return p0
.end method

.method private getTimeUTC()Lnet/time4j/PlainTime;
    .locals 4

    .line 1936
    invoke-static {p0}, Lnet/time4j/Moment;->getTimeOfDay(Lnet/time4j/Moment;)I

    move-result v0

    .line 1937
    div-int/lit8 v1, v0, 0x3c

    .line 1938
    div-int/lit8 v2, v1, 0x3c

    .line 1939
    rem-int/lit8 v1, v1, 0x3c

    .line 1940
    rem-int/lit8 v0, v0, 0x3c

    .line 1941
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v3

    .line 1943
    invoke-static {v2, v1, v0, v3}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object v0

    return-object v0
.end method

.method private in(Lnet/time4j/tz/Timezone;)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 2147
    invoke-virtual {p1, p0}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/PlainTimestamp;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method private isNegativeLS()Z
    .locals 7

    .line 1985
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v0

    .line 1987
    invoke-virtual {v0}, Lnet/time4j/scale/LeapSeconds;->supportsNegativeLS()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1988
    iget-wide v3, p0, Lnet/time4j/Moment;->posixTime:J

    .line 1989
    invoke-virtual {v0, v3, v4}, Lnet/time4j/scale/LeapSeconds;->enhance(J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lnet/time4j/scale/LeapSeconds;->strip(J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isPositiveLS()Z
    .locals 1

    .line 1979
    iget v0, p0, Lnet/time4j/Moment;->fraction:I

    ushr-int/lit8 v0, v0, 0x1e

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static moveEventuallyToLS(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 3

    .line 2129
    invoke-direct {p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object v0

    .line 2130
    invoke-direct {p0}, Lnet/time4j/Moment;->getTimeUTC()Lnet/time4j/PlainTime;

    move-result-object v1

    .line 2133
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/time4j/scale/LeapSeconds;->getShift(Lnet/time4j/base/GregorianDate;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2134
    invoke-virtual {v1}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_0

    .line 2135
    invoke-virtual {v1}, Lnet/time4j/PlainTime;->getMinute()I

    move-result v0

    const/16 v2, 0x3b

    if-ne v0, v2, :cond_0

    .line 2136
    invoke-virtual {v1}, Lnet/time4j/PlainTime;->getSecond()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-wide/16 v0, 0x1

    .line 2138
    sget-object v2, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {p0, v0, v1, v2}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static nextLeapSecond()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 1017
    sget-object v0, Lnet/time4j/Moment;->NEXT_LS:Lnet/time4j/engine/ChronoOperator;

    return-object v0
.end method

.method public static nowInSystemTime()Lnet/time4j/Moment;
    .locals 1

    .line 782
    sget-object v0, Lnet/time4j/SystemClock;->INSTANCE:Lnet/time4j/SystemClock;

    invoke-virtual {v0}, Lnet/time4j/SystemClock;->currentTime()Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method

.method public static of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 750
    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    if-ne p3, v0, :cond_0

    .line 755
    sget-object p0, Lnet/time4j/Moment;->UNIX_EPOCH:Lnet/time4j/Moment;

    return-object p0

    .line 758
    :cond_0
    new-instance v0, Lnet/time4j/Moment;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object v0
.end method

.method public static of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;
    .locals 1

    const/4 v0, 0x0

    .line 698
    invoke-static {p0, p1, v0, p2}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lnet/time4j/format/TemporalFormatter;)Lnet/time4j/Moment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/Moment;",
            ">;)",
            "Lnet/time4j/Moment;"
        }
    .end annotation

    .line 1580
    :try_start_0
    invoke-interface {p1, p0}, Lnet/time4j/format/TemporalFormatter;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/Moment;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1582
    new-instance p1, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static readTimestamp(Ljava/io/DataInput;ZZ)Lnet/time4j/Moment;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2265
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 2266
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    if-nez p1, :cond_1

    if-nez p0, :cond_2

    .line 2273
    sget-object p0, Lnet/time4j/Moment;->UNIX_EPOCH:Lnet/time4j/Moment;

    return-object p0

    .line 2270
    :cond_1
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "UTC epoch is no leap second."

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2277
    :cond_2
    sget-wide v2, Lnet/time4j/Moment;->MIN_LIMIT:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_4

    if-nez p0, :cond_4

    if-nez p1, :cond_3

    .line 2284
    sget-object p0, Lnet/time4j/Moment;->MIN:Lnet/time4j/Moment;

    return-object p0

    .line 2282
    :cond_3
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Minimum is no leap second."

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2285
    :cond_4
    sget-wide v2, Lnet/time4j/Moment;->MAX_LIMIT:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_6

    const p2, 0x3b9ac9ff

    if-ne p0, p2, :cond_6

    if-nez p1, :cond_5

    .line 2292
    sget-object p0, Lnet/time4j/Moment;->MAX:Lnet/time4j/Moment;

    return-object p0

    .line 2290
    :cond_5
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Maximum is no leap second."

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2294
    :cond_6
    invoke-static {p0}, Lnet/time4j/Moment;->checkFraction(I)V

    if-eqz p1, :cond_b

    .line 2298
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object p1

    .line 2300
    invoke-virtual {p1}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 2301
    invoke-virtual {p1, v0, v1}, Lnet/time4j/scale/LeapSeconds;->enhance(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lnet/time4j/scale/LeapSeconds;->isPositiveLS(J)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 2305
    :cond_7
    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->toPackedDate(J)J

    move-result-wide p0

    .line 2306
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->readMonth(J)I

    move-result p2

    .line 2307
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->readDayOfMonth(J)I

    move-result v0

    .line 2308
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not registered as leap second event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->readYear(J)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    const-string p1, ""

    const/16 v3, 0xa

    if-ge p2, v3, :cond_8

    move-object v4, p0

    goto :goto_1

    :cond_8
    move-object v4, p1

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v0, v3, :cond_9

    goto :goto_2

    :cond_9
    move-object p0, p1

    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " [Please check leap second configurations "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "either of emitter vm or this target vm]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_3
    const/high16 p1, 0x40000000    # 2.0f

    or-int/2addr p0, p1

    .line 2322
    :cond_b
    new-instance p1, Lnet/time4j/Moment;

    invoke-direct {p1, p0, v0, v1}, Lnet/time4j/Moment;-><init>(IJ)V

    return-object p1
.end method

.method private static toNanos(DJ)I
    .locals 6

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double v2, p0, v0

    const-wide/32 v4, 0x3b9aca00

    .line 1970
    :try_start_0
    invoke-static {p2, p3, v4, v5}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p0, p0

    sub-double/2addr v2, p0

    double-to-int p0, v2

    return p0

    :catch_0
    long-to-double p2, p2

    sub-double/2addr p0, p2

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private toStringUTC(Z)Ljava/lang/String;
    .locals 7

    .line 1865
    invoke-direct {p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object v0

    .line 1868
    invoke-static {p0}, Lnet/time4j/Moment;->getTimeOfDay(Lnet/time4j/Moment;)I

    move-result v1

    .line 1869
    div-int/lit8 v2, v1, 0x3c

    .line 1870
    div-int/lit8 v3, v2, 0x3c

    .line 1871
    rem-int/lit8 v2, v2, 0x3c

    .line 1872
    rem-int/lit8 v1, v1, 0x3c

    .line 1875
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v4

    invoke-direct {p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lnet/time4j/scale/LeapSeconds;->getShift(J)I

    move-result v4

    add-int/2addr v1, v4

    .line 1878
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v4

    .line 1880
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1883
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x54

    .line 1886
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 1889
    invoke-static {v3, v0, v5}, Lnet/time4j/Moment;->format(IILjava/lang/StringBuilder;)V

    if-nez p1, :cond_0

    or-int v3, v2, v1

    or-int/2addr v3, v4

    if-eqz v3, :cond_2

    :cond_0
    const/16 v3, 0x3a

    .line 1892
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1893
    invoke-static {v2, v0, v5}, Lnet/time4j/Moment;->format(IILjava/lang/StringBuilder;)V

    if-nez p1, :cond_1

    or-int p1, v1, v4

    if-eqz p1, :cond_2

    .line 1896
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1897
    invoke-static {v1, v0, v5}, Lnet/time4j/Moment;->format(IILjava/lang/StringBuilder;)V

    if-lez v4, :cond_2

    const/16 p1, 0x2c

    .line 1900
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    .line 1901
    invoke-static {v4, p1, v5}, Lnet/time4j/Moment;->format(IILjava/lang/StringBuilder;)V

    :cond_2
    const/16 p1, 0x5a

    .line 1907
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1909
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private transformForParse(Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;
    .locals 5

    .line 2058
    sget-object v0, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2060
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2064
    sget-object v0, Lnet/time4j/Moment$1;->$SwitchMap$net$time4j$scale$TimeScale:[I

    invoke-virtual {p1}, Lnet/time4j/scale/TimeScale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2093
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/scale/TimeScale;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2077
    :cond_2
    :goto_0
    new-instance v0, Lnet/time4j/Moment;

    iget-wide v1, p0, Lnet/time4j/Moment;->posixTime:J

    const-wide/32 v3, 0x3c26700

    .line 2078
    invoke-static {v1, v2, v3, v4}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v1

    .line 2081
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object v0

    .line 2085
    :cond_3
    new-instance v0, Lnet/time4j/Moment;

    iget-wide v1, p0, Lnet/time4j/Moment;->posixTime:J

    const-wide/32 v3, 0x12d53d80

    .line 2086
    invoke-static {v1, v2, v3, v4}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v1

    .line 2089
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object v0

    .line 2068
    :cond_4
    new-instance v0, Lnet/time4j/Moment;

    iget-wide v1, p0, Lnet/time4j/Moment;->posixTime:J

    const-wide/32 v3, -0x16925e80

    .line 2069
    invoke-static {v1, v2, v3, v4}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v1

    .line 2072
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    return-object v0

    :cond_5
    return-object p0

    .line 2061
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leap seconds do not exist on continuous time scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private transformForPrint(Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;
    .locals 6

    .line 2016
    sget-object v0, Lnet/time4j/Moment$1;->$SwitchMap$net$time4j$scale$TimeScale:[I

    invoke-virtual {p1}, Lnet/time4j/scale/TimeScale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2051
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/scale/TimeScale;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2037
    :pswitch_0
    new-instance v0, Lnet/time4j/Moment;

    .line 2038
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result v1

    .line 2040
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v2

    const-wide/32 v4, 0x3c26700

    .line 2039
    invoke-static {v2, v3, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/Moment;-><init>(IJ)V

    return-object v0

    .line 2044
    :pswitch_1
    new-instance p1, Lnet/time4j/Moment;

    .line 2045
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v0

    sget-object v1, Lnet/time4j/scale/TimeScale;->GPS:Lnet/time4j/scale/TimeScale;

    .line 2047
    invoke-virtual {p0, v1}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v1

    const-wide/32 v3, 0x12d53d80

    .line 2046
    invoke-static {v1, v2, v3, v4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lnet/time4j/Moment;-><init>(IJ)V

    return-object p1

    .line 2029
    :pswitch_2
    new-instance v0, Lnet/time4j/Moment;

    .line 2030
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result v1

    .line 2032
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v2

    const-wide/32 v4, -0x16925e80

    .line 2031
    invoke-static {v2, v3, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/Moment;-><init>(IJ)V

    return-object v0

    :pswitch_3
    return-object p0

    .line 2018
    :pswitch_4
    invoke-virtual {p0}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2019
    new-instance p1, Lnet/time4j/Moment;

    .line 2020
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v0

    iget-wide v1, p0, Lnet/time4j/Moment;->posixTime:J

    invoke-direct {p1, v0, v1, v2}, Lnet/time4j/Moment;-><init>(IJ)V

    return-object p1

    :cond_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 2204
    new-instance v0, Lnet/time4j/SPX;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lnet/time4j/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 382
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->compareTo(Lnet/time4j/Moment;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/Moment;)I
    .locals 4

    .line 1590
    invoke-direct {p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v0

    .line 1591
    invoke-direct {p1}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    .line 1598
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    sub-int/2addr v0, p1

    if-lez v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Lnet/time4j/engine/TimePoint;)I
    .locals 0

    .line 382
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->compareTo(Lnet/time4j/Moment;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1609
    :cond_0
    instance-of v1, p1, Lnet/time4j/Moment;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1610
    check-cast p1, Lnet/time4j/Moment;

    .line 1612
    iget-wide v3, p0, Lnet/time4j/Moment;->posixTime:J

    iget-wide v5, p1, Lnet/time4j/Moment;->posixTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    return v2

    .line 1616
    :cond_1
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1617
    iget v1, p0, Lnet/time4j/Moment;->fraction:I

    iget p1, p1, Lnet/time4j/Moment;->fraction:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 1619
    :cond_3
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    if-ne v1, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0

    :cond_5
    return v2
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lnet/time4j/Moment;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Ljava/util/concurrent/TimeUnit;",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 1811
    sget-object v0, Lnet/time4j/Moment;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/Moment;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lnet/time4j/Moment;->getContext()Lnet/time4j/Moment;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedTime(Lnet/time4j/scale/TimeScale;)J
    .locals 17

    move-object/from16 v0, p0

    .line 830
    sget-object v1, Lnet/time4j/Moment$1;->$SwitchMap$net$time4j$scale$TimeScale:[I

    invoke-virtual/range {p1 .. p1}, Lnet/time4j/scale/TimeScale;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0xaf79e00

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x1

    const-wide/32 v7, 0x3c26700

    const-wide v9, 0x41cdcd6500000000L    # 1.0E9

    packed-switch v1, :pswitch_data_0

    .line 899
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not yet implemented: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 892
    :pswitch_0
    iget-wide v1, v0, Lnet/time4j/Moment;->posixTime:J

    cmp-long v3, v1, v7

    if-gez v3, :cond_0

    sub-long/2addr v1, v7

    return-wide v1

    .line 895
    :cond_0
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getModernUT()D

    move-result-wide v1

    .line 896
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-long v1, v1

    return-wide v1

    .line 874
    :pswitch_1
    iget-wide v11, v0, Lnet/time4j/Moment;->posixTime:J

    cmp-long v1, v11, v7

    if-gez v1, :cond_2

    .line 875
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object v1

    .line 876
    invoke-static {v1}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v1

    .line 877
    iget-wide v11, v0, Lnet/time4j/Moment;->posixTime:J

    sub-long/2addr v11, v7

    long-to-double v7, v11

    add-double/2addr v1, v7

    .line 878
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 879
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-long v7, v7

    long-to-double v11, v7

    sub-double/2addr v1, v11

    mul-double/2addr v1, v9

    sub-double/2addr v9, v1

    .line 880
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-gez v1, :cond_1

    add-long/2addr v7, v5

    :cond_1
    return-wide v7

    .line 885
    :cond_2
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v3

    const-wide/16 v7, 0x2a

    add-long/2addr v3, v7

    .line 886
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    add-int/2addr v1, v2

    const v2, 0x3b9aca00

    if-lt v1, v2, :cond_3

    add-long/2addr v3, v5

    :cond_3
    return-wide v3

    .line 865
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v1

    .line 866
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lnet/time4j/scale/LeapSeconds;->strip(J)J

    move-result-wide v3

    const-wide/32 v5, 0x12d53d80

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    .line 870
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0x9

    add-long/2addr v1, v3

    :goto_0
    const-wide/32 v3, 0xf12d689

    sub-long/2addr v1, v3

    return-wide v1

    .line 867
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS not supported before 1980-01-06: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-gez v1, :cond_7

    .line 839
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object v1

    .line 840
    invoke-static {v1}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v15

    .line 841
    iget-wide v13, v0, Lnet/time4j/Moment;->posixTime:J

    sub-long/2addr v13, v7

    long-to-double v7, v13

    add-double/2addr v15, v7

    .line 842
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    int-to-double v7, v1

    div-double/2addr v7, v9

    add-double/2addr v7, v15

    .line 843
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-long v13, v13

    long-to-double v11, v13

    sub-double v11, v7, v11

    mul-double/2addr v11, v9

    sub-double/2addr v9, v11

    .line 844
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-gez v1, :cond_6

    add-long/2addr v13, v5

    const/4 v1, 0x0

    goto :goto_1

    .line 848
    :cond_6
    invoke-static {v7, v8, v13, v14}, Lnet/time4j/Moment;->toNanos(DJ)I

    move-result v1

    :goto_1
    const-wide/16 v3, 0x20

    sub-long/2addr v13, v3

    const-wide/32 v3, 0x1a54c580

    add-long/2addr v13, v3

    sub-int/2addr v1, v2

    if-gez v1, :cond_8

    sub-long/2addr v13, v5

    goto :goto_2

    :cond_7
    const-wide/32 v3, 0x1a54c580

    .line 856
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v1

    add-long/2addr v1, v3

    const-wide/16 v3, 0xa

    add-long v13, v1, v3

    :cond_8
    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-ltz v1, :cond_9

    return-wide v13

    .line 859
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAI not supported before 1958-01-01: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v1

    return-wide v1

    .line 832
    :pswitch_5
    iget-wide v1, v0, Lnet/time4j/Moment;->posixTime:J

    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNanosecond()I
    .locals 2

    .line 908
    iget v0, p0, Lnet/time4j/Moment;->fraction:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public getNanosecond(Lnet/time4j/scale/TimeScale;)I
    .locals 17

    move-object/from16 v0, p0

    .line 917
    sget-object v1, Lnet/time4j/Moment$1;->$SwitchMap$net$time4j$scale$TimeScale:[I

    invoke-virtual/range {p1 .. p1}, Lnet/time4j/scale/TimeScale;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v3, 0xaf79e00

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const v6, 0x3b9aca00

    const-wide/32 v7, 0x3c26700

    const-wide v9, 0x41cdcd6500000000L    # 1.0E9

    packed-switch v1, :pswitch_data_0

    .line 987
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not yet implemented: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :pswitch_0
    iget-wide v1, v0, Lnet/time4j/Moment;->posixTime:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_0

    .line 980
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    return v1

    .line 982
    :cond_0
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getModernUT()D

    move-result-wide v1

    .line 983
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    .line 984
    invoke-static {v1, v2, v3, v4}, Lnet/time4j/Moment;->toNanos(DJ)I

    move-result v1

    return v1

    .line 960
    :pswitch_1
    iget-wide v11, v0, Lnet/time4j/Moment;->posixTime:J

    cmp-long v1, v11, v7

    if-gez v1, :cond_2

    .line 961
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object v1

    .line 962
    invoke-static {v1}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v11

    .line 963
    iget-wide v13, v0, Lnet/time4j/Moment;->posixTime:J

    sub-long/2addr v13, v7

    long-to-double v6, v13

    add-double/2addr v11, v6

    .line 964
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v6, v9

    add-double/2addr v11, v6

    .line 965
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    long-to-double v13, v6

    sub-double v13, v11, v13

    mul-double/2addr v13, v9

    sub-double/2addr v9, v13

    .line 966
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 969
    :cond_1
    invoke-static {v11, v12, v6, v7}, Lnet/time4j/Moment;->toNanos(DJ)I

    move-result v2

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    add-int v2, v1, v3

    if-lt v2, v6, :cond_3

    sub-int/2addr v2, v6

    :cond_3
    :goto_0
    return v2

    .line 952
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v1

    .line 953
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lnet/time4j/scale/LeapSeconds;->strip(J)J

    move-result-wide v1

    const-wide/32 v3, 0x12d53d80

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 957
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    return v1

    .line 954
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS not supported before 1980-01-06: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 923
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    const-wide/32 v11, 0x1a54c580

    if-gez v1, :cond_6

    .line 924
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getDateUTC()Lnet/time4j/PlainDate;

    move-result-object v1

    .line 925
    invoke-static {v1}, Lnet/time4j/scale/TimeScale;->deltaT(Lnet/time4j/base/GregorianDate;)D

    move-result-wide v15

    .line 926
    iget-wide v13, v0, Lnet/time4j/Moment;->posixTime:J

    sub-long/2addr v13, v7

    long-to-double v7, v13

    add-double/2addr v15, v7

    .line 927
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    int-to-double v7, v1

    div-double/2addr v7, v9

    add-double/2addr v7, v15

    .line 928
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-long v13, v13

    long-to-double v2, v13

    sub-double v2, v7, v2

    mul-double/2addr v2, v9

    sub-double/2addr v9, v2

    .line 929
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    const-wide/16 v3, 0x1

    if-gez v2, :cond_5

    add-long/2addr v13, v3

    const/4 v2, 0x0

    goto :goto_1

    .line 933
    :cond_5
    invoke-static {v7, v8, v13, v14}, Lnet/time4j/Moment;->toNanos(DJ)I

    move-result v2

    :goto_1
    const-wide/16 v7, 0x20

    sub-long/2addr v13, v7

    add-long/2addr v13, v11

    const v1, 0xaf79e00

    sub-int/2addr v2, v1

    if-gez v2, :cond_7

    sub-long/2addr v13, v3

    add-int/2addr v2, v6

    goto :goto_2

    .line 942
    :cond_6
    invoke-direct/range {p0 .. p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v1

    add-long v13, v1, v11

    .line 943
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v2

    :cond_7
    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v1, v13, v3

    if-ltz v1, :cond_8

    return v2

    .line 946
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TAI not supported before 1958-01-01: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPosixTime()J
    .locals 2

    .line 823
    iget-wide v0, p0, Lnet/time4j/Moment;->posixTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1630
    iget-wide v0, p0, Lnet/time4j/Moment;->posixTime:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x13

    .line 1631
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public inLocalView()Lnet/time4j/ZonalDateTime;
    .locals 1

    .line 1272
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/time4j/ZonalDateTime;->of(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)Lnet/time4j/ZonalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public inZonalView(Ljava/lang/String;)Lnet/time4j/ZonalDateTime;
    .locals 0

    .line 1338
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/ZonalDateTime;->of(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)Lnet/time4j/ZonalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public inZonalView(Lnet/time4j/tz/TZID;)Lnet/time4j/ZonalDateTime;
    .locals 0

    .line 1305
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/ZonalDateTime;->of(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)Lnet/time4j/ZonalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isAfter(Ljava/lang/Object;)Z
    .locals 0

    .line 382
    check-cast p1, Lnet/time4j/scale/UniversalTime;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->isAfter(Lnet/time4j/scale/UniversalTime;)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lnet/time4j/scale/UniversalTime;)Z
    .locals 0

    .line 1067
    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    .line 1068
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->compareTo(Lnet/time4j/Moment;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isBefore(Ljava/lang/Object;)Z
    .locals 0

    .line 382
    check-cast p1, Lnet/time4j/scale/UniversalTime;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->isBefore(Lnet/time4j/scale/UniversalTime;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lnet/time4j/scale/UniversalTime;)Z
    .locals 0

    .line 1075
    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    .line 1076
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->compareTo(Lnet/time4j/Moment;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLeapSecond()Z
    .locals 1

    .line 996
    invoke-direct {p0}, Lnet/time4j/Moment;->isPositiveLS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isSimultaneous(Ljava/lang/Object;)Z
    .locals 0

    .line 382
    check-cast p1, Lnet/time4j/scale/UniversalTime;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->isSimultaneous(Lnet/time4j/scale/UniversalTime;)Z

    move-result p1

    return p1
.end method

.method public isSimultaneous(Lnet/time4j/scale/UniversalTime;)Z
    .locals 0

    .line 1083
    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    .line 1084
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->compareTo(Lnet/time4j/Moment;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minus(JLnet/time4j/SI;)Lnet/time4j/Moment;
    .locals 0

    .line 1479
    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lnet/time4j/MachineTime;)Lnet/time4j/Moment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/MachineTime<",
            "Lnet/time4j/SI;",
            ">;)",
            "Lnet/time4j/Moment;"
        }
    .end annotation

    .line 1503
    invoke-virtual {p1}, Lnet/time4j/MachineTime;->getSeconds()J

    move-result-wide v0

    sget-object v2, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {p0, v0, v1, v2}, Lnet/time4j/Moment;->minus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/MachineTime;->getFraction()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    invoke-virtual {v0, v1, v2, p1}, Lnet/time4j/Moment;->minus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLnet/time4j/SI;)Lnet/time4j/Moment;
    .locals 4

    .line 1367
    invoke-static {p0}, Lnet/time4j/Moment;->check1972(Lnet/time4j/Moment;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    .line 1376
    :cond_0
    :try_start_0
    sget-object v1, Lnet/time4j/Moment$1;->$SwitchMap$net$time4j$SI:[I

    invoke-virtual {p3}, Lnet/time4j/SI;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 1393
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p3

    int-to-long v1, p3

    invoke-static {v1, v2, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    const p3, 0x3b9aca00

    .line 1394
    invoke-static {p1, p2, p3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v1

    .line 1395
    invoke-static {p1, p2, p3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide p1

    .line 1397
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1398
    new-instance p3, Lnet/time4j/Moment;

    .line 1399
    invoke-direct {p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-direct {p3, p1, p2, v1, v2}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    goto :goto_0

    .line 1404
    :cond_1
    iget-wide v2, p0, Lnet/time4j/Moment;->posixTime:J

    .line 1405
    invoke-static {v2, v3, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    sget-object p3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 1404
    invoke-static {p1, p2, v1, p3}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p3

    goto :goto_0

    .line 1412
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1378
    :cond_3
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1379
    new-instance p3, Lnet/time4j/Moment;

    .line 1380
    invoke-direct {p0}, Lnet/time4j/Moment;->getElapsedTimeUTC()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 1381
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-direct {p3, p1, p2, v1, v2}, Lnet/time4j/Moment;-><init>(JILnet/time4j/scale/TimeScale;)V

    goto :goto_0

    .line 1384
    :cond_4
    iget-wide v1, p0, Lnet/time4j/Moment;->posixTime:J

    .line 1385
    invoke-static {v1, v2, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 1386
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p3

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 1384
    invoke-static {p1, p2, p3, v1}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-gez v0, :cond_5

    .line 1423
    invoke-static {p3}, Lnet/time4j/Moment;->check1972(Lnet/time4j/Moment;)V

    :cond_5
    return-object p3

    :catch_0
    move-exception p1

    .line 1415
    new-instance p2, Ljava/lang/ArithmeticException;

    const-string p3, "Result beyond boundaries of time axis."

    invoke-direct {p2, p3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p2, p1}, Ljava/lang/ArithmeticException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1419
    throw p2
.end method

.method public plus(Lnet/time4j/MachineTime;)Lnet/time4j/Moment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/MachineTime<",
            "Lnet/time4j/SI;",
            ">;)",
            "Lnet/time4j/Moment;"
        }
    .end annotation

    .line 1450
    invoke-virtual {p1}, Lnet/time4j/MachineTime;->getSeconds()J

    move-result-wide v0

    sget-object v2, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {p0, v0, v1, v2}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/MachineTime;->getFraction()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    invoke-virtual {v0, v1, v2, p1}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/Moment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1550
    invoke-interface {p1, p0}, Lnet/time4j/format/TemporalFormatter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toGeneralTimestamp(Lnet/time4j/engine/CalendarFamily;Ljava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/time4j/engine/CalendarVariant<",
            "TC;>;>(",
            "Lnet/time4j/engine/CalendarFamily<",
            "TC;>;",
            "Ljava/lang/String;",
            "Lnet/time4j/tz/TZID;",
            "Lnet/time4j/engine/StartOfDay;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 1239
    invoke-virtual {p0, p3}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object v1

    .line 1241
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v2

    invoke-virtual {p4, v2, p3}, Lnet/time4j/engine/StartOfDay;->getDeviation(Lnet/time4j/engine/CalendarDate;Lnet/time4j/tz/TZID;)I

    move-result p3

    int-to-long p3, p3

    .line 1242
    sget-object v2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, p3, p4, v2}, Lnet/time4j/PlainTimestamp;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p3

    check-cast p3, Lnet/time4j/PlainTimestamp;

    .line 1243
    invoke-virtual {p3}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p3

    invoke-virtual {p1}, Lnet/time4j/engine/CalendarFamily;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lnet/time4j/PlainDate;->transform(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    .line 1244
    invoke-static {p1, v1}, Lnet/time4j/GeneralTimestamp;->of(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/time4j/engine/Calendrical<",
            "*TC;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TC;>;",
            "Lnet/time4j/tz/TZID;",
            "Lnet/time4j/engine/StartOfDay;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 1197
    invoke-virtual {p0, p2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object v1

    .line 1199
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Lnet/time4j/engine/StartOfDay;->getDeviation(Lnet/time4j/engine/CalendarDate;Lnet/time4j/tz/TZID;)I

    move-result p2

    int-to-long p2, p2

    .line 1200
    sget-object v2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, p2, p3, v2}, Lnet/time4j/PlainTimestamp;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    check-cast p2, Lnet/time4j/PlainTimestamp;

    .line 1201
    invoke-virtual {p2}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p2

    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/time4j/PlainDate;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    .line 1202
    invoke-static {p1, v1}, Lnet/time4j/GeneralTimestamp;->of(Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public toLocalTimestamp()Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 1111
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/time4j/Moment;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1658
    invoke-direct {p0, v0}, Lnet/time4j/Moment;->toStringUTC(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lnet/time4j/scale/TimeScale;)Ljava/lang/String;
    .locals 3

    .line 1738
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1739
    invoke-virtual {p1}, Lnet/time4j/scale/TimeScale;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 1740
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1742
    sget-object v1, Lnet/time4j/Moment$1;->$SwitchMap$net$time4j$scale$TimeScale:[I

    invoke-virtual {p1}, Lnet/time4j/scale/TimeScale;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x5a

    packed-switch v1, :pswitch_data_0

    .line 1759
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/scale/TimeScale;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1754
    :pswitch_0
    invoke-direct {p0, p1}, Lnet/time4j/Moment;->transformForPrint(Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    .line 1755
    sget-object v1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-static {p1, v1}, Lnet/time4j/PlainTimestamp;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1756
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 1748
    invoke-direct {p0, p1}, Lnet/time4j/Moment;->toStringUTC(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1744
    :pswitch_2
    sget-object p1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-static {p0, p1}, Lnet/time4j/PlainTimestamp;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1762
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toZonalTimestamp(Ljava/lang/String;)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 1165
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/Moment;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 1137
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/Moment;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/time4j/scale/TimeScale;)Ljava/math/BigDecimal;
    .locals 3

    .line 1057
    new-instance v0, Ljava/math/BigDecimal;

    .line 1058
    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1059
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 1060
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public until(Lnet/time4j/Moment;Lnet/time4j/SI;)J
    .locals 0

    .line 1530
    invoke-virtual {p2, p0, p1}, Lnet/time4j/SI;->between(Lnet/time4j/Moment;Lnet/time4j/Moment;)J

    move-result-wide p1

    return-wide p1
.end method

.method writeTimestamp(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2232
    invoke-direct {p0}, Lnet/time4j/Moment;->isPositiveLS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 2236
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v1

    if-lez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 2242
    :cond_1
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2243
    iget-wide v2, p0, Lnet/time4j/Moment;->posixTime:J

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    if-lez v1, :cond_2

    .line 2246
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_2
    return-void
.end method
