.class Lnet/time4j/sql/JDBCAdapter$SqlDateRule;
.super Lnet/time4j/sql/JDBCAdapter;
.source "JDBCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/sql/JDBCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SqlDateRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/sql/JDBCAdapter<",
        "Ljava/sql/Date;",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, v0}, Lnet/time4j/sql/JDBCAdapter;-><init>(Lnet/time4j/sql/JDBCAdapter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/sql/JDBCAdapter$1;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lnet/time4j/sql/JDBCAdapter$SqlDateRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic from(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 273
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/sql/JDBCAdapter$SqlDateRule;->from(Lnet/time4j/PlainDate;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public from(Lnet/time4j/PlainDate;)Ljava/sql/Date;
    .locals 4

    .line 301
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    const/16 v1, 0x76c

    if-lt v0, v1, :cond_1

    const/16 v1, 0x270f

    if-gt v0, v1, :cond_1

    .line 308
    sget-object v0, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 310
    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    .line 309
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 313
    invoke-static {}, Lnet/time4j/sql/JDBCAdapter;->access$500()Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 319
    :cond_0
    new-instance p1, Ljava/sql/Date;

    invoke-direct {p1, v0, v1}, Ljava/sql/Date;-><init>(J)V

    return-object p1

    .line 304
    :cond_1
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "SQL-Date is only defined in year range of 1900-9999."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/sql/Date;",
            ">;"
        }
    .end annotation

    .line 326
    const-class v0, Ljava/sql/Date;

    return-object v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 273
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1}, Lnet/time4j/sql/JDBCAdapter$SqlDateRule;->translate(Ljava/sql/Date;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public translate(Ljava/sql/Date;)Lnet/time4j/PlainDate;
    .locals 5

    .line 281
    invoke-virtual {p1}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    .line 283
    invoke-static {}, Lnet/time4j/sql/JDBCAdapter;->access$500()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x3e8

    .line 286
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v2

    sget-object v4, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 285
    invoke-static {v2, v3, v4}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object v2

    .line 288
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v2

    mul-int/2addr v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 292
    :cond_0
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/TimeAxis;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    const v2, 0x5265c00

    .line 293
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x2da

    sub-long/2addr v0, v2

    .line 292
    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method
