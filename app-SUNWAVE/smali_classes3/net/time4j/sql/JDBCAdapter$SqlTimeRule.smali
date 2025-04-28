.class Lnet/time4j/sql/JDBCAdapter$SqlTimeRule;
.super Lnet/time4j/sql/JDBCAdapter;
.source "JDBCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/sql/JDBCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SqlTimeRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/sql/JDBCAdapter<",
        "Ljava/sql/Time;",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 332
    invoke-direct {p0, v0}, Lnet/time4j/sql/JDBCAdapter;-><init>(Lnet/time4j/sql/JDBCAdapter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/sql/JDBCAdapter$1;)V
    .locals 0

    .line 332
    invoke-direct {p0}, Lnet/time4j/sql/JDBCAdapter$SqlTimeRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic from(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/sql/JDBCAdapter$SqlTimeRule;->from(Lnet/time4j/PlainTime;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public from(Lnet/time4j/PlainTime;)Ljava/sql/Time;
    .locals 4

    .line 361
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTime;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    int-to-long v0, v0

    .line 363
    invoke-static {}, Lnet/time4j/sql/JDBCAdapter;->access$500()Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v2

    invoke-static {}, Lnet/time4j/sql/JDBCAdapter;->access$600()Lnet/time4j/PlainDate;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 369
    :cond_0
    new-instance p1, Ljava/sql/Time;

    invoke-direct {p1, v0, v1}, Ljava/sql/Time;-><init>(J)V

    return-object p1
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/sql/Time;",
            ">;"
        }
    .end annotation

    .line 376
    const-class v0, Ljava/sql/Time;

    return-object v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, Ljava/sql/Time;

    invoke-virtual {p0, p1}, Lnet/time4j/sql/JDBCAdapter$SqlTimeRule;->translate(Ljava/sql/Time;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public translate(Ljava/sql/Time;)Lnet/time4j/PlainTime;
    .locals 5

    .line 340
    invoke-virtual {p1}, Ljava/sql/Time;->getTime()J

    move-result-wide v0

    .line 342
    invoke-static {}, Lnet/time4j/sql/JDBCAdapter;->access$500()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x3e8

    .line 345
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v2

    sget-object v4, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 344
    invoke-static {v2, v3, v4}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object v2

    .line 347
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    .line 348
    invoke-virtual {v2}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v2

    mul-int/2addr v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 351
    :cond_0
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object p1

    sget-object v2, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    const v3, 0x5265c00

    .line 353
    invoke-static {v0, v1, v3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    .line 351
    invoke-virtual {p1, v2, v0}, Lnet/time4j/PlainTime;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1
.end method
