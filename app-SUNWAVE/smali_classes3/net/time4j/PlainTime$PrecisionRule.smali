.class Lnet/time4j/PlainTime$PrecisionRule;
.super Ljava/lang/Object;
.source "PlainTime.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrecisionRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainTime;",
        "Lnet/time4j/ClockUnit;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainTime$1;)V
    .locals 0

    .line 2255
    invoke-direct {p0}, Lnet/time4j/PlainTime$PrecisionRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2255
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$PrecisionRule;->getChildAtCeiling(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
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

    .line 2255
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$PrecisionRule;->getChildAtFloor(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
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

    .line 2255
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$PrecisionRule;->getMaximum(Lnet/time4j/PlainTime;)Lnet/time4j/ClockUnit;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/PlainTime;)Lnet/time4j/ClockUnit;
    .locals 0

    .line 2346
    sget-object p1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2255
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$PrecisionRule;->getMinimum(Lnet/time4j/PlainTime;)Lnet/time4j/ClockUnit;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainTime;)Lnet/time4j/ClockUnit;
    .locals 0

    .line 2339
    sget-object p1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2255
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$PrecisionRule;->getValue(Lnet/time4j/PlainTime;)Lnet/time4j/ClockUnit;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainTime;)Lnet/time4j/ClockUnit;
    .locals 2

    .line 2263
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2264
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result v0

    const v1, 0xf4240

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2265
    sget-object p1, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    return-object p1

    .line 2266
    :cond_0
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    rem-int/lit16 p1, p1, 0x3e8

    if-nez p1, :cond_1

    .line 2267
    sget-object p1, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    return-object p1

    .line 2269
    :cond_1
    sget-object p1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    return-object p1

    .line 2271
    :cond_2
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v0

    if-eqz v0, :cond_3

    .line 2272
    sget-object p1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    return-object p1

    .line 2273
    :cond_3
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p1

    if-eqz p1, :cond_4

    .line 2274
    sget-object p1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    return-object p1

    .line 2276
    :cond_4
    sget-object p1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2255
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Lnet/time4j/ClockUnit;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$PrecisionRule;->isValid(Lnet/time4j/PlainTime;Lnet/time4j/ClockUnit;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainTime;Lnet/time4j/ClockUnit;)Z
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

    .line 2255
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Lnet/time4j/ClockUnit;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTime$PrecisionRule;->withValue(Lnet/time4j/PlainTime;Lnet/time4j/ClockUnit;Z)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainTime;Lnet/time4j/ClockUnit;Z)Lnet/time4j/PlainTime;
    .locals 2

    if-eqz p2, :cond_1

    .line 2292
    invoke-virtual {p2}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result p3

    .line 2294
    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$PrecisionRule;->getValue(Lnet/time4j/PlainTime;)Lnet/time4j/ClockUnit;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v0

    if-lt p3, v0, :cond_0

    return-object p1

    .line 2298
    :cond_0
    sget-object p3, Lnet/time4j/PlainTime$1;->$SwitchMap$net$time4j$ClockUnit:[I

    invoke-virtual {p2}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    .line 2321
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return-object p1

    .line 2314
    :pswitch_1
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p2

    .line 2315
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p3

    .line 2316
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v0

    .line 2317
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    mul-int/lit16 p1, p1, 0x3e8

    .line 2313
    invoke-static {p2, p3, v0, p1}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2308
    :pswitch_2
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p2

    .line 2309
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p3

    .line 2310
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v0

    .line 2311
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    const v1, 0xf4240

    div-int/2addr p1, v1

    mul-int/2addr p1, v1

    .line 2307
    invoke-static {p2, p3, v0, p1}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2305
    :pswitch_3
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p2

    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p3

    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result p1

    .line 2304
    invoke-static {p2, p3, p1}, Lnet/time4j/PlainTime;->of(III)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2302
    :pswitch_4
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p2

    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p1

    invoke-static {p2, p1}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2300
    :pswitch_5
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    invoke-static {p1}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2289
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing precision value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

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
