.class Lnet/time4j/PlainTime$Merger;
.super Ljava/lang/Object;
.source "PlainTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainTime$1;)V
    .locals 0

    .line 3187
    invoke-direct {p0}, Lnet/time4j/PlainTime$Merger;-><init>()V

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

    .line 3495
    sget-object v0, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p0, v0, p1}, Lnet/time4j/engine/ChronoEntity;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3496
    sget-object v0, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p0, v0, p1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_0
    return-void
.end method

.method private static readHour(Lnet/time4j/engine/ChronoEntity;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)I"
        }
    .end annotation

    .line 3367
    sget-object v0, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 3373
    :cond_0
    sget-object v0, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_DAY:Lnet/time4j/AdjustableElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v3, 0x18

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    return v4

    :cond_2
    if-eq v0, v1, :cond_3

    return v0

    .line 3383
    :cond_3
    sget-object v0, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3384
    sget-object v0, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Meridiem;

    .line 3385
    sget-object v3, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;

    invoke-virtual {p0, v3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v3

    if-eq v3, v1, :cond_8

    if-nez v3, :cond_5

    .line 3389
    sget-object p0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    if-ne v0, p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, -0x2

    :goto_0
    return v2

    :cond_5
    const/16 p0, 0xc

    if-ne v3, p0, :cond_6

    goto :goto_1

    :cond_6
    move v4, v3

    .line 3393
    :goto_1
    sget-object p0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    if-ne v0, p0, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0xc

    :goto_2
    return v4

    .line 3396
    :cond_8
    sget-object v2, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p0

    if-eq p0, v1, :cond_a

    .line 3399
    sget-object v1, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    if-ne v0, v1, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 p0, p0, 0xc

    :goto_3
    return p0

    :cond_a
    return v1
.end method

.method private static readSpecialCases(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/PlainTime;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Lnet/time4j/PlainTime;"
        }
    .end annotation

    .line 3409
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3410
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const-wide v4, 0x4e94914f0000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 3417
    :cond_0
    invoke-static {v2, v3}, Lnet/time4j/PlainTime;->access$1500(J)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0

    .line 3412
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NANO_OF_DAY out of range: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/time4j/PlainTime$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    return-object v1

    .line 3418
    :cond_2
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3420
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3421
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit16 v2, v0, 0x3e8

    .line 3423
    :cond_3
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    .line 3424
    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3423
    invoke-static {v0, v1, v2}, Lnet/time4j/PlainTime;->access$1400(JI)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0

    .line 3427
    :cond_4
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    const v3, 0xf4240

    if-eqz v0, :cond_d

    .line 3429
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3430
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_6

    const v2, 0x3b9aca00

    if-lt v0, v2, :cond_5

    goto :goto_1

    .line 3437
    :cond_5
    rem-int v2, v0, v3

    goto :goto_3

    .line 3432
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NANO_OF_SECOND out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/time4j/PlainTime$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    return-object v1

    .line 3438
    :cond_7
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3439
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_9

    if-lt v0, v3, :cond_8

    goto :goto_2

    .line 3446
    :cond_8
    rem-int/lit16 v2, v0, 0x3e8

    goto :goto_3

    .line 3441
    :cond_9
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MICRO_OF_SECOND out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/time4j/PlainTime$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    return-object v1

    .line 3448
    :cond_a
    :goto_3
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_c

    const v3, 0x5265c00

    if-le v0, v3, :cond_b

    goto :goto_4

    .line 3455
    :cond_b
    invoke-static {v0, v2}, Lnet/time4j/PlainTime;->access$1100(II)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0

    .line 3450
    :cond_c
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MILLI_OF_DAY out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/time4j/PlainTime$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    return-object v1

    .line 3456
    :cond_d
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3458
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3459
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    .line 3460
    :cond_e
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3461
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_5

    .line 3462
    :cond_f
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3463
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    goto :goto_5

    :cond_10
    move v0, v2

    .line 3465
    :goto_5
    invoke-static {v2, v2, v2, v0}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object v0

    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    sget-object v2, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    .line 3467
    invoke-virtual {p0, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    .line 3465
    invoke-virtual {v0, v1, p0}, Lnet/time4j/PlainTime;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainTime;

    return-object p0

    .line 3468
    :cond_11
    sget-object v0, Lnet/time4j/PlainTime;->MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3470
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3471
    sget-object v0, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    .line 3472
    :cond_12
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3473
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_6

    .line 3474
    :cond_13
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3475
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    goto :goto_6

    :cond_14
    move v0, v2

    .line 3478
    :goto_6
    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3479
    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7

    :cond_15
    move v1, v2

    .line 3481
    :goto_7
    invoke-static {v2, v2, v1, v0}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object v0

    sget-object v1, Lnet/time4j/PlainTime;->MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;

    sget-object v2, Lnet/time4j/PlainTime;->MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;

    .line 3483
    invoke-virtual {p0, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    .line 3481
    invoke-virtual {v0, v1, p0}, Lnet/time4j/PlainTime;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainTime;

    return-object p0

    :cond_16
    return-object v1
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 3187
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/PlainTime$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/PlainTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/PlainTime;"
        }
    .end annotation

    .line 3211
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3212
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/tz/TZID;

    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    goto :goto_0

    .line 3213
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/format/Leniency;

    invoke-virtual {p2}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3214
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object p2

    .line 3219
    :goto_0
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    .line 3220
    invoke-virtual {p2, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/PlainTime;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/PlainTime;"
        }
    .end annotation

    .line 3233
    instance-of v0, p1, Lnet/time4j/base/UnixTime;

    if-eqz v0, :cond_0

    .line 3234
    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/time4j/engine/TimeAxis;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 3235
    :cond_0
    sget-object p2, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3236
    sget-object p2, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1

    .line 3240
    :cond_1
    sget-object p2, Lnet/time4j/PlainTime;->DECIMAL_HOUR:Lnet/time4j/ZonalElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3241
    sget-object p2, Lnet/time4j/PlainTime;->DECIMAL_HOUR:Lnet/time4j/ZonalElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    invoke-static {p1}, Lnet/time4j/PlainTime;->of(Ljava/math/BigDecimal;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 3244
    :cond_2
    sget-object p2, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    const/16 p4, 0x18

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_8

    .line 3247
    invoke-static {p1}, Lnet/time4j/PlainTime$Merger;->readHour(Lnet/time4j/engine/ChronoEntity;)I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 3249
    invoke-static {p1}, Lnet/time4j/PlainTime$Merger;->readSpecialCases(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v3, -0x1

    if-eq p2, v3, :cond_5

    const/4 v4, -0x2

    if-ne p2, v4, :cond_4

    goto :goto_0

    :cond_4
    if-ne p2, p4, :cond_8

    if-nez p3, :cond_8

    const-string p2, "Time 24:00 not allowed, use lax mode or element HOUR_FROM_0_TO_24 instead."

    .line 3260
    invoke-static {p1, p2}, Lnet/time4j/PlainTime$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    return-object v0

    :cond_5
    :goto_0
    if-eqz p3, :cond_7

    if-ne p2, v3, :cond_6

    move p2, v1

    goto :goto_1

    :cond_6
    const/16 p2, 0xc

    goto :goto_1

    :cond_7
    const-string p2, "Clock hour cannot be zero."

    .line 3254
    invoke-static {p1, p2}, Lnet/time4j/PlainTime$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    return-object v0

    .line 3269
    :cond_8
    :goto_1
    sget-object v3, Lnet/time4j/PlainTime;->DECIMAL_MINUTE:Lnet/time4j/ZonalElement;

    invoke-virtual {p1, v3}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3270
    invoke-static {}, Lnet/time4j/PlainTime;->access$2300()Lnet/time4j/engine/ElementRule;

    move-result-object p3

    .line 3271
    invoke-static {p2}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object p2

    sget-object p4, Lnet/time4j/PlainTime;->DECIMAL_MINUTE:Lnet/time4j/ZonalElement;

    .line 3272
    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    .line 3270
    invoke-interface {p3, p2, p1, v1}, Lnet/time4j/engine/ElementRule;->withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1

    .line 3277
    :cond_9
    sget-object v3, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v3

    if-ne v3, v2, :cond_a

    move v3, v1

    .line 3284
    :cond_a
    sget-object v4, Lnet/time4j/PlainTime;->DECIMAL_SECOND:Lnet/time4j/ZonalElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3285
    invoke-static {}, Lnet/time4j/PlainTime;->access$2400()Lnet/time4j/engine/ElementRule;

    move-result-object p3

    .line 3286
    invoke-static {p2, v3}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p2

    sget-object p4, Lnet/time4j/PlainTime;->DECIMAL_SECOND:Lnet/time4j/ZonalElement;

    .line 3287
    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    .line 3285
    invoke-interface {p3, p2, p1, v1}, Lnet/time4j/engine/ElementRule;->withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1

    .line 3292
    :cond_b
    sget-object v4, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    if-ne v4, v2, :cond_c

    move v4, v1

    .line 3299
    :cond_c
    sget-object v5, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v5

    if-ne v5, v2, :cond_f

    .line 3302
    sget-object v5, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v5

    if-ne v5, v2, :cond_e

    .line 3304
    sget-object v5, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v5

    if-ne v5, v2, :cond_d

    move v5, v1

    goto :goto_2

    :cond_d
    const v2, 0xf4240

    .line 3308
    invoke-static {v5, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(II)I

    move-result v5

    goto :goto_2

    :cond_e
    const/16 v2, 0x3e8

    .line 3311
    invoke-static {v5, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(II)I

    move-result v5

    :cond_f
    :goto_2
    if-eqz p3, :cond_12

    int-to-long p2, p2

    const-wide/16 v0, 0xe10

    .line 3322
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    int-to-long v0, v3

    const-wide/16 v2, 0x3c

    .line 3323
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 3321
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    int-to-long v0, v4

    .line 3320
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    const-wide/32 v0, 0x3b9aca00

    .line 3319
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    int-to-long v0, v5

    .line 3318
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    const-wide v0, 0x4e94914f0000L

    .line 3330
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/PlainTime;->access$1600(JJ)J

    move-result-wide v2

    .line 3331
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/PlainTime;->access$2500(JJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_10

    .line 3332
    sget-object v4, Lnet/time4j/LongElement;->DAY_OVERFLOW:Lnet/time4j/engine/ChronoElement;

    .line 3334
    invoke-virtual {p1, v4, p2, p3}, Lnet/time4j/engine/ChronoEntity;->isValid(Lnet/time4j/engine/ChronoElement;J)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3336
    sget-object v4, Lnet/time4j/LongElement;->DAY_OVERFLOW:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v4, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    :cond_10
    cmp-long p1, v2, v0

    if-nez p1, :cond_11

    if-lez p4, :cond_11

    .line 3339
    sget-object p1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    return-object p1

    .line 3341
    :cond_11
    invoke-static {v2, v3}, Lnet/time4j/PlainTime;->access$1500(J)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    :cond_12
    if-ltz p2, :cond_13

    if-ltz v3, :cond_13

    if-ltz v4, :cond_13

    if-ltz v5, :cond_13

    if-ne p2, p4, :cond_13

    or-int p3, v3, v4

    or-int/2addr p3, v5

    if-eqz p3, :cond_14

    :cond_13
    if-ge p2, p4, :cond_15

    const/16 p3, 0x3b

    if-gt v3, p3, :cond_15

    if-gt v4, p3, :cond_15

    const p3, 0x3b9aca00

    if-gt v5, p3, :cond_15

    .line 3356
    :cond_14
    invoke-static {p2, v3, v4, v5, v1}, Lnet/time4j/PlainTime;->access$2600(IIIIZ)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    :cond_15
    const-string p2, "Time component out of range."

    .line 3358
    invoke-static {p1, p2}, Lnet/time4j/PlainTime$Merger;->flagValidationError(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 3528
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getDefaultPivotYear()I

    move-result v0

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 3521
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 3198
    invoke-interface {p1}, Lnet/time4j/engine/DisplayStyle;->getStyleValue()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/format/DisplayMode;->ofStyle(I)Lnet/time4j/format/DisplayMode;

    move-result-object p1

    .line 3199
    invoke-static {p1, p2}, Lnet/time4j/format/CalendarText;->patternForTime(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 3187
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$Merger;->preformat(Lnet/time4j/PlainTime;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/PlainTime;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
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
