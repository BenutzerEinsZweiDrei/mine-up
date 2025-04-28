.class Lnet/time4j/Moment$PrecisionRule;
.super Ljava/lang/Object;
.source "Moment.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrecisionRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/Moment;",
        "Ljava/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/Moment$1;)V
    .locals 0

    .line 3240
    invoke-direct {p0}, Lnet/time4j/Moment$PrecisionRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 3240
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$PrecisionRule;->getChildAtCeiling(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Moment;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 3240
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$PrecisionRule;->getChildAtFloor(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/Moment;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Moment;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3240
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$PrecisionRule;->getMaximum(Lnet/time4j/Moment;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/Moment;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 3342
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3240
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$PrecisionRule;->getMinimum(Lnet/time4j/Moment;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/Moment;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 3335
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3240
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$PrecisionRule;->getValue(Lnet/time4j/Moment;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/Moment;)Ljava/util/concurrent/TimeUnit;
    .locals 2

    .line 3248
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0xf4240

    .line 3251
    rem-int p1, v0, p1

    if-nez p1, :cond_0

    .line 3252
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p1

    .line 3253
    :cond_0
    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_1

    .line 3254
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p1

    .line 3256
    :cond_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p1

    .line 3260
    :cond_2
    invoke-static {p1}, Lnet/time4j/Moment;->access$1900(Lnet/time4j/Moment;)J

    move-result-wide v0

    const p1, 0x15180

    .line 3262
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    if-nez p1, :cond_3

    .line 3263
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object p1

    :cond_3
    const/16 p1, 0xe10

    .line 3264
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    if-nez p1, :cond_4

    .line 3265
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object p1

    :cond_4
    const/16 p1, 0x3c

    .line 3266
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    if-nez p1, :cond_5

    .line 3267
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object p1

    .line 3269
    :cond_5
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 3240
    check-cast p1, Lnet/time4j/Moment;

    check-cast p2, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$PrecisionRule;->isValid(Lnet/time4j/Moment;Ljava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/Moment;Ljava/util/concurrent/TimeUnit;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 3240
    check-cast p1, Lnet/time4j/Moment;

    check-cast p2, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Moment$PrecisionRule;->withValue(Lnet/time4j/Moment;Ljava/util/concurrent/TimeUnit;Z)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/Moment;Ljava/util/concurrent/TimeUnit;Z)Lnet/time4j/Moment;
    .locals 2

    if-eqz p2, :cond_1

    .line 3287
    sget-object p3, Lnet/time4j/Moment$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    .line 3311
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return-object p1

    .line 3305
    :pswitch_1
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    mul-int/lit16 p2, p2, 0x3e8

    .line 3306
    invoke-static {p1}, Lnet/time4j/Moment;->access$1900(Lnet/time4j/Moment;)J

    move-result-wide v0

    sget-object p3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p2

    goto :goto_0

    .line 3301
    :pswitch_2
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p2

    const p3, 0xf4240

    div-int/2addr p2, p3

    mul-int/2addr p2, p3

    .line 3302
    invoke-static {p1}, Lnet/time4j/Moment;->access$1900(Lnet/time4j/Moment;)J

    move-result-wide v0

    sget-object p3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p2

    goto :goto_0

    .line 3298
    :pswitch_3
    invoke-static {p1}, Lnet/time4j/Moment;->access$1900(Lnet/time4j/Moment;)J

    move-result-wide p2

    const/4 v0, 0x0

    sget-object v1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {p2, p3, v0, v1}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p2

    .line 3314
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    .line 3315
    sget-object p1, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {p2, v0, v1, p1}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2

    .line 3295
    :pswitch_4
    invoke-static {p1}, Lnet/time4j/Moment;->access$1900(Lnet/time4j/Moment;)J

    move-result-wide p1

    const/16 p3, 0x3c

    invoke-static {p1, p2, p3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide p1

    const-wide/16 v0, 0x3c

    mul-long/2addr p1, v0

    .line 3296
    sget-object p3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {p1, p2, p3}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 3292
    :pswitch_5
    invoke-static {p1}, Lnet/time4j/Moment;->access$1900(Lnet/time4j/Moment;)J

    move-result-wide p1

    const/16 p3, 0xe10

    invoke-static {p1, p2, p3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide p1

    const-wide/16 v0, 0xe10

    mul-long/2addr p1, v0

    .line 3293
    sget-object p3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {p1, p2, p3}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 3289
    :pswitch_6
    invoke-static {p1}, Lnet/time4j/Moment;->access$1900(Lnet/time4j/Moment;)J

    move-result-wide p1

    const p3, 0x15180

    invoke-static {p1, p2, p3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide p1

    const-wide/32 v0, 0x15180

    mul-long/2addr p1, v0

    .line 3290
    sget-object p3, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {p1, p2, p3}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 3282
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing precision."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
