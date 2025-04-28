.class Lnet/time4j/sql/JDBCAdapter$SqlTimestampRule;
.super Lnet/time4j/sql/JDBCAdapter;
.source "JDBCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/sql/JDBCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SqlTimestampRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/sql/JDBCAdapter<",
        "Ljava/sql/Timestamp;",
        "Lnet/time4j/PlainTimestamp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, v0}, Lnet/time4j/sql/JDBCAdapter;-><init>(Lnet/time4j/sql/JDBCAdapter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/sql/JDBCAdapter$1;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lnet/time4j/sql/JDBCAdapter$SqlTimestampRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic from(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 382
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/sql/JDBCAdapter$SqlTimestampRule;->from(Lnet/time4j/PlainTimestamp;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public from(Lnet/time4j/PlainTimestamp;)Ljava/sql/Timestamp;
    .locals 6

    .line 419
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v0

    sget-object v1, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    .line 418
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 422
    sget-object v2, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v2}, Lnet/time4j/PlainTimestamp;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v2

    int-to-long v2, v2

    .line 424
    invoke-static {}, Lnet/time4j/sql/JDBCAdapter;->access$500()Z

    move-result v4

    if-nez v4, :cond_0

    .line 426
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v4

    invoke-virtual {v4, p1, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v4

    .line 427
    invoke-virtual {v4}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 430
    :cond_0
    new-instance v4, Ljava/sql/Timestamp;

    .line 432
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 433
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object v4
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/sql/Timestamp;",
            ">;"
        }
    .end annotation

    .line 441
    const-class v0, Ljava/sql/Timestamp;

    return-object v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 382
    check-cast p1, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/sql/JDBCAdapter$SqlTimestampRule;->translate(Ljava/sql/Timestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public translate(Ljava/sql/Timestamp;)Lnet/time4j/PlainTimestamp;
    .locals 6

    .line 390
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    .line 392
    invoke-static {}, Lnet/time4j/sql/JDBCAdapter;->access$500()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x3e8

    .line 395
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v3

    sget-object v5, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 394
    invoke-static {v3, v4, v5}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object v3

    .line 397
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v3

    .line 398
    invoke-virtual {v3}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v3

    mul-int/2addr v3, v2

    int-to-long v2, v3

    add-long/2addr v0, v2

    :cond_0
    const v2, 0x5265c00

    .line 403
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v3

    sget-object v5, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 402
    invoke-static {v3, v4, v5}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v3

    const/4 v4, 0x0

    .line 406
    invoke-static {v4}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object v4

    .line 407
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    .line 406
    invoke-virtual {v4, v0, v1, v2}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainTime;

    .line 409
    invoke-static {v3, v0}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 410
    sget-object v1, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    return-object p1
.end method
