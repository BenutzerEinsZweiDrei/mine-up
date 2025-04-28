.class final Lnet/time4j/Moment$Operator;
.super Ljava/lang/Object;
.source "Moment.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end field

.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation
.end field

.field private final type:I

.field private final tz:Lnet/time4j/tz/Timezone;


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoElement;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;I)V"
        }
    .end annotation

    .line 2357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2359
    iput-object p1, p0, Lnet/time4j/Moment$Operator;->delegate:Lnet/time4j/engine/ChronoOperator;

    .line 2360
    iput-object p2, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    .line 2361
    iput p3, p0, Lnet/time4j/Moment$Operator;->type:I

    const/4 p1, 0x0

    .line 2362
    iput-object p1, p0, Lnet/time4j/Moment$Operator;->tz:Lnet/time4j/tz/Timezone;

    return-void
.end method

.method constructor <init>(Lnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoElement;ILnet/time4j/tz/Timezone;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;I",
            "Lnet/time4j/tz/Timezone;",
            ")V"
        }
    .end annotation

    .line 2381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2383
    iput-object p1, p0, Lnet/time4j/Moment$Operator;->delegate:Lnet/time4j/engine/ChronoOperator;

    .line 2384
    iput-object p2, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    .line 2385
    iput p3, p0, Lnet/time4j/Moment$Operator;->type:I

    .line 2386
    iput-object p4, p0, Lnet/time4j/Moment$Operator;->tz:Lnet/time4j/tz/Timezone;

    return-void
.end method

.method private extractOld(Lnet/time4j/Moment;)J
    .locals 2

    .line 2530
    const-class v0, Ljava/lang/Number;

    .line 2531
    invoke-static {p1}, Lnet/time4j/Moment;->access$1100(Lnet/time4j/Moment;)Lnet/time4j/PlainTime;

    move-result-object p1

    iget-object v1, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    .line 2530
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 2532
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private extractValue()J
    .locals 2

    .line 2538
    const-class v0, Lnet/time4j/ValueOperator;

    iget-object v1, p0, Lnet/time4j/Moment$Operator;->delegate:Lnet/time4j/engine/ChronoOperator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/ValueOperator;

    invoke-virtual {v0}, Lnet/time4j/ValueOperator;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2544
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 2541
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing new element value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isNonIsoOffset(Lnet/time4j/tz/Timezone;Lnet/time4j/Moment;)Z
    .locals 0

    .line 2553
    invoke-virtual {p0, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    .line 2556
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result p1

    if-nez p1, :cond_1

    .line 2557
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalOffset;->getAbsoluteSeconds()I

    move-result p0

    rem-int/lit8 p0, p0, 0x3c

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2332
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$Operator;->apply(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 10

    .line 2395
    iget-object v0, p0, Lnet/time4j/Moment$Operator;->tz:Lnet/time4j/tz/Timezone;

    if-nez v0, :cond_0

    .line 2397
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    .line 2401
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2402
    invoke-static {v0, p1}, Lnet/time4j/Moment$Operator;->isNonIsoOffset(Lnet/time4j/tz/Timezone;Lnet/time4j/Moment;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2404
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leap second can only be adjusted  with timezone-offset in full minutes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2411
    :cond_2
    :goto_0
    invoke-static {}, Lnet/time4j/Moment;->access$400()Lnet/time4j/Moment;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/time4j/Moment;->isAfter(Lnet/time4j/scale/UniversalTime;)Z

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_e

    .line 2412
    iget-object v1, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v6, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne v1, v6, :cond_6

    iget v1, p0, Lnet/time4j/Moment$Operator;->type:I

    if-ne v1, v4, :cond_6

    .line 2415
    invoke-direct {p0}, Lnet/time4j/Moment$Operator;->extractValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    .line 2417
    invoke-virtual {p1}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    .line 2419
    :cond_3
    invoke-static {v0, p1}, Lnet/time4j/Moment$Operator;->isNonIsoOffset(Lnet/time4j/tz/Timezone;Lnet/time4j/Moment;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2424
    invoke-static {p1}, Lnet/time4j/Moment;->access$500(Lnet/time4j/Moment;)I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_4

    .line 2426
    invoke-direct {p0, p1}, Lnet/time4j/Moment$Operator;->extractOld(Lnet/time4j/Moment;)J

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    sget-object v2, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    .line 2425
    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2429
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leap second invalid in context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2420
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leap second can only be set  with timezone-offset in full minutes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2423
    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2433
    :cond_6
    invoke-static {}, Lnet/time4j/Moment;->access$600()Ljava/util/Map;

    move-result-object v1

    iget-object v6, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lnet/time4j/Moment$Operator;->type:I

    const/4 v6, 0x6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_7

    const/4 v8, 0x3

    if-eq v1, v8, :cond_7

    if-ne v1, v6, :cond_e

    .line 2438
    :cond_7
    invoke-static {}, Lnet/time4j/Moment;->access$600()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2441
    iget v1, p0, Lnet/time4j/Moment$Operator;->type:I

    if-ne v1, v7, :cond_8

    const-wide/16 v2, -0x1

    goto :goto_1

    :cond_8
    if-ne v1, v6, :cond_9

    .line 2444
    invoke-direct {p0, p1}, Lnet/time4j/Moment$Operator;->extractOld(Lnet/time4j/Moment;)J

    move-result-wide v1

    .line 2445
    invoke-direct {p0}, Lnet/time4j/Moment$Operator;->extractValue()J

    move-result-wide v3

    .line 2446
    invoke-static {v3, v4, v1, v2}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v2

    :cond_9
    :goto_1
    if-eq v0, v5, :cond_d

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_c

    const v1, 0xf4240

    if-eq v0, v1, :cond_b

    const v1, 0x3b9aca00

    if-ne v0, v1, :cond_a

    .line 2461
    sget-object v0, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    invoke-virtual {p1, v2, v3, v0}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2463
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    const-wide/16 v0, 0x3e8

    .line 2458
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    sget-object v2, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    .line 2457
    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    :cond_c
    const-wide/32 v0, 0xf4240

    .line 2454
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    sget-object v2, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    .line 2453
    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2451
    :cond_d
    sget-object v0, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {p1, v2, v3, v0}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2469
    :cond_e
    invoke-static {p1, v0}, Lnet/time4j/Moment;->access$700(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)Lnet/time4j/PlainTimestamp;

    move-result-object v1

    iget-object v6, p0, Lnet/time4j/Moment$Operator;->delegate:Lnet/time4j/engine/ChronoOperator;

    invoke-virtual {v1, v6}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainTimestamp;

    .line 2470
    invoke-virtual {v1, v0}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object v0

    .line 2473
    iget v6, p0, Lnet/time4j/Moment$Operator;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_f

    return-object v0

    .line 2478
    :cond_f
    invoke-static {v0}, Lnet/time4j/Moment;->access$800(Lnet/time4j/Moment;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2479
    iget-object p1, p0, Lnet/time4j/Moment$Operator;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getStrategy()Lnet/time4j/tz/TransitionStrategy;

    move-result-object p1

    sget-object v2, Lnet/time4j/tz/Timezone;->STRICT_MODE:Lnet/time4j/tz/TransitionStrategy;

    if-eq p1, v2, :cond_10

    return-object v0

    .line 2480
    :cond_10
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal local timestamp due to negative leap second: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2488
    :cond_11
    iget-object v1, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    .line 2489
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v1

    const/4 v6, 0x5

    if-nez v1, :cond_17

    .line 2490
    invoke-static {}, Lnet/time4j/Moment;->access$900()Ljava/util/Set;

    move-result-object v1

    iget-object v7, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2

    .line 2498
    :cond_12
    iget-object v1, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v7, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne v1, v7, :cond_14

    .line 2499
    iget p1, p0, Lnet/time4j/Moment$Operator;->type:I

    if-eq p1, v5, :cond_13

    if-ne p1, v6, :cond_18

    .line 2503
    :cond_13
    invoke-static {v0}, Lnet/time4j/Moment;->access$1000(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2505
    :cond_14
    iget-object v1, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v7, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-eq v1, v7, :cond_15

    iget-object v1, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v7, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-eq v1, v7, :cond_15

    iget-object v1, p0, Lnet/time4j/Moment$Operator;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v7, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-ne v1, v7, :cond_18

    .line 2510
    :cond_15
    iget v1, p0, Lnet/time4j/Moment$Operator;->type:I

    if-eq v1, v4, :cond_16

    if-eqz v1, :cond_16

    if-eq v1, v5, :cond_16

    if-eq v1, v6, :cond_16

    goto :goto_3

    .line 2515
    :cond_16
    invoke-virtual {p1}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2516
    sget-object p1, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {v0, v2, v3, p1}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object v0

    goto :goto_3

    .line 2493
    :cond_17
    :goto_2
    invoke-virtual {p1}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result p1

    if-nez p1, :cond_19

    iget p1, p0, Lnet/time4j/Moment$Operator;->type:I

    if-ne p1, v6, :cond_18

    goto :goto_4

    :cond_18
    :goto_3
    return-object v0

    .line 2496
    :cond_19
    :goto_4
    invoke-static {v0}, Lnet/time4j/Moment;->access$1000(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method
