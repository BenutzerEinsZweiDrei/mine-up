.class Lnet/time4j/Moment$TimeUnitRule;
.super Ljava/lang/Object;
.source "Moment.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 2574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2576
    iput-object p1, p0, Lnet/time4j/Moment$TimeUnitRule;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 2564
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Moment$TimeUnitRule;->addTo(Lnet/time4j/Moment;J)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/Moment;J)Lnet/time4j/Moment;
    .locals 4

    .line 2588
    iget-object v0, p0, Lnet/time4j/Moment$TimeUnitRule;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const-wide/16 v1, 0x1

    if-ltz v0, :cond_0

    .line 2589
    iget-object v0, p0, Lnet/time4j/Moment$TimeUnitRule;->unit:Ljava/util/concurrent/TimeUnit;

    .line 2590
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 2592
    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    .line 2593
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 2591
    invoke-static {p2, p3, p1, v0}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 2597
    :cond_0
    iget-object v0, p0, Lnet/time4j/Moment$TimeUnitRule;->unit:Ljava/util/concurrent/TimeUnit;

    .line 2598
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 2599
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    const v0, 0x3b9aca00

    .line 2600
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v1

    .line 2601
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide p2

    .line 2604
    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    sget-object p3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 2603
    invoke-static {p1, p2, v1, p3}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 2564
    check-cast p1, Lnet/time4j/Moment;

    check-cast p2, Lnet/time4j/Moment;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$TimeUnitRule;->between(Lnet/time4j/Moment;Lnet/time4j/Moment;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/Moment;Lnet/time4j/Moment;)J
    .locals 5

    .line 2620
    iget-object v0, p0, Lnet/time4j/Moment$TimeUnitRule;->unit:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2621
    invoke-virtual {p2}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-gez v2, :cond_0

    .line 2623
    invoke-virtual {p2}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    if-le p2, p1, :cond_2

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    if-lez v2, :cond_2

    .line 2627
    invoke-virtual {p2}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    if-ge p2, p1, :cond_2

    sub-long/2addr v0, v3

    goto :goto_0

    .line 2636
    :cond_1
    invoke-virtual {p2}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    .line 2637
    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v2

    .line 2635
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    .line 2634
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 2641
    invoke-virtual {p2}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-long p1, p2

    .line 2633
    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 2645
    :cond_2
    :goto_0
    sget-object p1, Lnet/time4j/Moment$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    iget-object p2, p0, Lnet/time4j/Moment$TimeUnitRule;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 2666
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/Moment$TimeUnitRule;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide/16 p1, 0x3e8

    .line 2661
    div-long/2addr v0, p1

    goto :goto_1

    :pswitch_1
    const-wide/32 p1, 0xf4240

    .line 2658
    div-long/2addr v0, p1

    goto :goto_1

    :pswitch_2
    const-wide/16 p1, 0x3c

    .line 2653
    div-long/2addr v0, p1

    goto :goto_1

    :pswitch_3
    const-wide/16 p1, 0xe10

    .line 2650
    div-long/2addr v0, p1

    goto :goto_1

    :pswitch_4
    const-wide/32 p1, 0x15180

    .line 2647
    div-long/2addr v0, p1

    :goto_1
    :pswitch_5
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
