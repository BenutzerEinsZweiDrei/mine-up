.class Lnet/time4j/PlainDate$Merger;
.super Ljava/lang/Object;
.source "PlainDate.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_PIVOT_YEAR:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2227
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 2229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0x5265c00

    invoke-static {v1, v2, v3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v1

    sget-object v3, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 2228
    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    .line 2231
    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->toPackedDate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->readYear(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    sput v0, Lnet/time4j/PlainDate$Merger;->DEFAULT_PIVOT_YEAR:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainDate$1;)V
    .locals 0

    .line 2219
    invoke-direct {p0}, Lnet/time4j/PlainDate$Merger;-><init>()V

    return-void
.end method

.method private static flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2553
    sget-object v0, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p0, v0, p1}, Lnet/time4j/engine/ChronoEntity;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2554
    sget-object v0, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p0, v0, p1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_0
    return-void
.end method

.method private static validateDayOfMonth(Lnet/time4j/engine/ChronoEntity;III)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;III)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    const/16 v1, 0x1c

    if-le p3, v1, :cond_0

    .line 2486
    invoke-static {p1, p2}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1

    if-le p3, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 2487
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DAY_OF_MONTH out of range: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/PlainDate$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static validateDayOfQuarter(Lnet/time4j/engine/ChronoEntity;ZLnet/time4j/Quarter;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;Z",
            "Lnet/time4j/Quarter;",
            "I)Z"
        }
    .end annotation

    .line 2523
    sget-object v0, Lnet/time4j/PlainDate$1;->$SwitchMap$net$time4j$Quarter:[I

    invoke-virtual {p2}, Lnet/time4j/Quarter;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/16 v0, 0x5b

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    move v0, p1

    :cond_2
    :goto_0
    if-lt p3, v1, :cond_4

    if-le p3, v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    .line 2538
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DAY_OF_QUARTER out of range: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/PlainDate$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static validateDayOfYear(Lnet/time4j/engine/ChronoEntity;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;II)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/16 v1, 0x16d

    if-le p2, v1, :cond_1

    .line 2503
    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x16e

    :cond_0
    if-le p2, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 2504
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DAY_OF_YEAR out of range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/PlainDate$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static validateMonth(Lnet/time4j/engine/ChronoEntity;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 2469
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MONTH_OF_YEAR out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/PlainDate$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static validateYear(Lnet/time4j/engine/ChronoEntity;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;I)Z"
        }
    .end annotation

    const v0, -0x3b9ac9ff

    if-lt p1, v0, :cond_1

    const v0, 0x3b9ac9ff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 2453
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YEAR out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/PlainDate$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2219
    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainDate$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 2219
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/PlainDate$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/PlainDate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/PlainDate;"
        }
    .end annotation

    .line 2255
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/tz/TZID;

    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    goto :goto_0

    .line 2257
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/format/Leniency;

    invoke-virtual {p2}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2258
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object p2

    .line 2263
    :goto_0
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    .line 2264
    invoke-virtual {p2, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/time4j/PlainDate;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/PlainDate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/PlainDate;"
        }
    .end annotation

    .line 2276
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2277
    sget-object p2, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 2280
    :cond_0
    sget-object v0, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_e

    .line 2283
    sget-object v4, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 2285
    sget-object v5, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2286
    sget-object v4, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/Month;

    invoke-virtual {v4}, Lnet/time4j/Month;->getValue()I

    move-result v4

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v3, :cond_4

    .line 2290
    sget-object v6, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v6}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v6

    if-eq v6, v3, :cond_4

    if-eqz p3, :cond_2

    .line 2294
    invoke-static {v0, v5, v5}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    .line 2295
    sget-object p2, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/time4j/ProportionalElement;->setLenient(Ljava/lang/Number;)Lnet/time4j/ElementOperator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 2296
    sget-object p2, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/time4j/ProportionalElement;->setLenient(Ljava/lang/Number;)Lnet/time4j/ElementOperator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 2298
    :cond_2
    invoke-static {p1, v0}, Lnet/time4j/PlainDate$Merger;->validateYear(Lnet/time4j/engine/ChronoEntity;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2299
    invoke-static {p1, v4}, Lnet/time4j/PlainDate$Merger;->validateMonth(Lnet/time4j/engine/ChronoEntity;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2300
    invoke-static {p1, v0, v4, v6}, Lnet/time4j/PlainDate$Merger;->validateDayOfMonth(Lnet/time4j/engine/ChronoEntity;III)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2302
    invoke-static {v0, v4, v6, v1}, Lnet/time4j/PlainDate;->access$300(IIIZ)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2

    .line 2309
    :cond_4
    sget-object v4, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    if-eq v4, v3, :cond_7

    if-eqz p3, :cond_5

    .line 2313
    invoke-static {v0, v5}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object p1

    .line 2314
    sget-object p2, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/time4j/ProportionalElement;->setLenient(Ljava/lang/Number;)Lnet/time4j/ElementOperator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 2316
    :cond_5
    invoke-static {p1, v0}, Lnet/time4j/PlainDate$Merger;->validateYear(Lnet/time4j/engine/ChronoEntity;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2317
    invoke-static {p1, v0, v4}, Lnet/time4j/PlainDate$Merger;->validateDayOfYear(Lnet/time4j/engine/ChronoEntity;II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2319
    invoke-static {v0, v4}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2

    .line 2325
    :cond_7
    sget-object v4, Lnet/time4j/PlainDate;->DAY_OF_QUARTER:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    if-eq v4, v3, :cond_e

    .line 2327
    sget-object v6, Lnet/time4j/PlainDate;->QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;

    .line 2329
    invoke-virtual {p1, v6}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2331
    sget-object p2, Lnet/time4j/PlainDate;->QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Quarter;

    .line 2332
    invoke-static {v0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p4

    if-eqz p4, :cond_8

    const/16 v1, 0x5b

    goto :goto_0

    :cond_8
    const/16 v1, 0x5a

    :goto_0
    add-int/2addr v1, v4

    .line 2335
    sget-object v3, Lnet/time4j/Quarter;->Q1:Lnet/time4j/Quarter;

    if-ne p2, v3, :cond_9

    move v1, v4

    goto :goto_1

    .line 2337
    :cond_9
    sget-object v3, Lnet/time4j/Quarter;->Q3:Lnet/time4j/Quarter;

    if-ne p2, v3, :cond_a

    add-int/lit8 v1, v1, 0x5b

    goto :goto_1

    .line 2339
    :cond_a
    sget-object v3, Lnet/time4j/Quarter;->Q4:Lnet/time4j/Quarter;

    if-ne p2, v3, :cond_b

    add-int/lit16 v1, v1, 0xb7

    :cond_b
    :goto_1
    if-eqz p3, :cond_c

    .line 2344
    invoke-static {v0, v5}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object p1

    .line 2345
    sget-object p2, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Lnet/time4j/ProportionalElement;->setLenient(Ljava/lang/Number;)Lnet/time4j/ElementOperator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 2347
    :cond_c
    invoke-static {p1, v0}, Lnet/time4j/PlainDate$Merger;->validateYear(Lnet/time4j/engine/ChronoEntity;I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 2348
    invoke-static {p1, p4, p2, v4}, Lnet/time4j/PlainDate$Merger;->validateDayOfQuarter(Lnet/time4j/engine/ChronoEntity;ZLnet/time4j/Quarter;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2350
    invoke-static {v0, v1}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v2

    .line 2357
    :cond_e
    sget-object v0, Lnet/time4j/PlainDate;->YEAR_OF_WEEKDATE:Lnet/time4j/AdjustableElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    if-eq v0, v3, :cond_14

    .line 2359
    sget-object v3, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    .line 2361
    invoke-virtual {v3}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2363
    sget-object p2, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {p2}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2366
    sget-object p3, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 2367
    sget-object p3, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/Weekday;

    goto :goto_2

    .line 2368
    :cond_f
    sget-object p3, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {p3}, Lnet/time4j/Weekmodel;->localDayOfWeek()Lnet/time4j/NavigableElement;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 2369
    sget-object p3, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {p3}, Lnet/time4j/Weekmodel;->localDayOfWeek()Lnet/time4j/NavigableElement;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/Weekday;

    :goto_2
    const p4, -0x3b9ac9ff

    if-lt v0, p4, :cond_12

    const p4, 0x3b9ac9ff

    if-le v0, p4, :cond_10

    goto :goto_3

    .line 2386
    :cond_10
    invoke-static {v0, p2, p3, v1}, Lnet/time4j/PlainDate;->access$500(IILnet/time4j/Weekday;Z)Lnet/time4j/PlainDate;

    move-result-object p3

    if-nez p3, :cond_11

    .line 2395
    invoke-static {p2}, Lnet/time4j/PlainDate;->access$600(I)Ljava/lang/String;

    move-result-object p2

    .line 2393
    invoke-static {p1, p2}, Lnet/time4j/PlainDate$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    :cond_11
    return-object p3

    .line 2381
    :cond_12
    :goto_3
    invoke-static {v0}, Lnet/time4j/PlainDate;->access$400(I)Ljava/lang/String;

    move-result-object p2

    .line 2379
    invoke-static {p1, p2}, Lnet/time4j/PlainDate$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    :cond_13
    return-object v2

    .line 2401
    :cond_14
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2402
    sget-object p2, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2403
    sget-object p2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    .line 2405
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    sget-object p1, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 2404
    invoke-virtual {p2, p3, p4, p1}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide p1

    .line 2407
    invoke-static {}, Lnet/time4j/PlainDate;->access$700()Lnet/time4j/engine/CalendarSystem;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 2408
    :cond_15
    instance-of v0, p1, Lnet/time4j/base/UnixTime;

    if-eqz v0, :cond_16

    .line 2409
    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/time4j/engine/TimeAxis;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    :cond_16
    return-object v2
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 2443
    sget v0, Lnet/time4j/PlainDate$Merger;->DEFAULT_PIVOT_YEAR:I

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 2436
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 2242
    invoke-interface {p1}, Lnet/time4j/engine/DisplayStyle;->getStyleValue()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/format/DisplayMode;->ofStyle(I)Lnet/time4j/format/DisplayMode;

    move-result-object p1

    .line 2243
    invoke-static {p1, p2}, Lnet/time4j/format/CalendarText;->patternForDate(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 2219
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainDate$Merger;->preformat(Lnet/time4j/PlainDate;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/PlainDate;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    return-object p1
.end method

.method public preparser()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
