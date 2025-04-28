.class Lnet/time4j/PlainTime$IntegerElementRule;
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
    name = "IntegerElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainTime;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final index:I

.field private final max:I

.field private final min:I


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 2465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2467
    iput-object p1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 2469
    instance-of v0, p1, Lnet/time4j/IntegerTimeElement;

    if-eqz v0, :cond_0

    .line 2470
    check-cast p1, Lnet/time4j/IntegerTimeElement;

    invoke-virtual {p1}, Lnet/time4j/IntegerTimeElement;->getIndex()I

    move-result p1

    iput p1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->index:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2472
    iput p1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->index:I

    .line 2475
    :goto_0
    iput p2, p0, Lnet/time4j/PlainTime$IntegerElementRule;->min:I

    .line 2476
    iput p3, p0, Lnet/time4j/PlainTime$IntegerElementRule;->max:I

    return-void
.end method

.method private getChild(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;
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

    .line 2715
    iget p1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->index:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 2727
    :pswitch_0
    sget-object p1, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    return-object p1

    .line 2724
    :pswitch_1
    sget-object p1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    return-object p1

    .line 2721
    :pswitch_2
    sget-object p1, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAM(Lnet/time4j/PlainTime;)Z
    .locals 2

    .line 2801
    invoke-static {p0}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p0

    const/16 v0, 0x18

    if-ne p0, v0, :cond_0

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

.method private withValueInLenientMode(Lnet/time4j/PlainTime;I)Lnet/time4j/PlainTime;
    .locals 3

    .line 2739
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 2747
    :cond_0
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_1

    .line 2749
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result v0

    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long v0, p2

    sget-object p2, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    .line 2748
    invoke-virtual {p1, v0, v1, p2}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1

    .line 2751
    :cond_1
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_2

    .line 2753
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v0

    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long v0, p2

    sget-object p2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    .line 2752
    invoke-virtual {p1, v0, v1, p2}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1

    .line 2755
    :cond_2
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_3

    .line 2756
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    .line 2758
    invoke-virtual {p1, v0}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2757
    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long v0, p2

    sget-object p2, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    .line 2756
    invoke-virtual {p1, v0, v1, p2}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1

    .line 2760
    :cond_3
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_4

    .line 2761
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    .line 2763
    invoke-virtual {p1, v0}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2762
    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long v0, p2

    sget-object p2, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    .line 2761
    invoke-virtual {p1, v0, v1, p2}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1

    .line 2765
    :cond_4
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_5

    .line 2767
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result v0

    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long v0, p2

    sget-object p2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    .line 2766
    invoke-virtual {p1, v0, v1, p2}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1

    .line 2769
    :cond_5
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_8

    const v0, 0x5265c00

    .line 2770
    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    .line 2771
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    const v1, 0xf4240

    rem-int/2addr p1, v1

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    if-lez p2, :cond_6

    .line 2773
    sget-object p1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    goto :goto_0

    :cond_6
    sget-object p1, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    :goto_0
    return-object p1

    .line 2775
    :cond_7
    invoke-static {v0, p1}, Lnet/time4j/PlainTime;->access$1100(II)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2777
    :cond_8
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    const/16 v0, 0x5a0

    .line 2778
    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    if-nez v0, :cond_a

    .line 2779
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1300(Lnet/time4j/PlainTime;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-lez p2, :cond_9

    .line 2780
    sget-object p1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    goto :goto_1

    :cond_9
    sget-object p1, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    :goto_1
    return-object p1

    .line 2783
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2782
    invoke-virtual {p0, p1, p2, v2}, Lnet/time4j/PlainTime$IntegerElementRule;->withValue(Lnet/time4j/PlainTime;Ljava/lang/Integer;Z)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2785
    :cond_b
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_e

    const v0, 0x15180

    .line 2786
    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    if-nez v0, :cond_d

    .line 2787
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result v1

    if-nez v1, :cond_d

    if-lez p2, :cond_c

    .line 2788
    sget-object p1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    goto :goto_2

    :cond_c
    sget-object p1, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    :goto_2
    return-object p1

    .line 2791
    :cond_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2790
    invoke-virtual {p0, p1, p2, v2}, Lnet/time4j/PlainTime$IntegerElementRule;->withValue(Lnet/time4j/PlainTime;Ljava/lang/Integer;Z)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2794
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2744
    :cond_f
    :goto_3
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 2745
    invoke-virtual {p1, v0}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long v0, p2

    sget-object p2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    .line 2744
    invoke-virtual {p1, v0, v1, p2}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2448
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$IntegerElementRule;->getChildAtCeiling(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

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

    .line 2709
    invoke-direct {p0, p1}, Lnet/time4j/PlainTime$IntegerElementRule;->getChild(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2448
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$IntegerElementRule;->getChildAtFloor(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

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

    .line 2702
    invoke-direct {p0, p1}, Lnet/time4j/PlainTime$IntegerElementRule;->getChild(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/PlainTime;)Ljava/lang/Integer;
    .locals 2

    .line 2678
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 2679
    iget v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->index:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 2685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2691
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTime;->hasReducedRange(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2692
    iget p1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->max:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2695
    :cond_1
    iget p1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->max:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2448
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$IntegerElementRule;->getMaximum(Lnet/time4j/PlainTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainTime;)Ljava/lang/Integer;
    .locals 0

    .line 2671
    iget p1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->min:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2448
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$IntegerElementRule;->getMinimum(Lnet/time4j/PlainTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainTime;)Ljava/lang/Integer;
    .locals 4

    .line 2487
    iget v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->index:I

    const/16 v1, 0x18

    const/16 v2, 0xc

    packed-switch v0, :pswitch_data_0

    .line 2537
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 2538
    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2534
    :pswitch_0
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$600(Lnet/time4j/PlainTime;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v1, v0

    goto/16 :goto_1

    .line 2531
    :pswitch_1
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result v1

    goto :goto_1

    .line 2528
    :pswitch_2
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    div-int/lit16 v1, p1, 0x3e8

    goto :goto_1

    .line 2525
    :pswitch_3
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    const v0, 0xf4240

    div-int v1, p1, v0

    goto :goto_1

    .line 2520
    :pswitch_4
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    .line 2521
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    .line 2522
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result p1

    goto :goto_0

    .line 2516
    :pswitch_5
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v1

    goto :goto_1

    .line 2513
    :pswitch_6
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p1

    :goto_0
    add-int v1, v0, p1

    goto :goto_1

    .line 2510
    :pswitch_7
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result v1

    goto :goto_1

    .line 2507
    :pswitch_8
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v1

    goto :goto_1

    .line 2504
    :pswitch_9
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    rem-int/lit8 v1, p1, 0x18

    goto :goto_1

    .line 2501
    :pswitch_a
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    rem-int/lit8 v1, p1, 0xc

    goto :goto_1

    .line 2495
    :pswitch_b
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, p1

    goto :goto_1

    .line 2489
    :pswitch_c
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    rem-int/lit8 v1, p1, 0xc

    if-nez v1, :cond_1

    move v1, v2

    .line 2541
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2448
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$IntegerElementRule;->getValue(Lnet/time4j/PlainTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2448
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$IntegerElementRule;->isValid(Lnet/time4j/PlainTime;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainTime;Ljava/lang/Integer;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2630
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2632
    iget v1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->min:I

    if-lt p2, v1, :cond_b

    iget v1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->max:I

    if-le p2, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v1, :cond_8

    .line 2637
    iget v1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->index:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_7

    const/4 v3, 0x7

    if-eq v1, v3, :cond_6

    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 2645
    :cond_2
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    const p2, 0xf4240

    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 2643
    :cond_4
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    if-nez p1, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 2641
    :cond_6
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1300(Lnet/time4j/PlainTime;)Z

    move-result p1

    return p1

    .line 2639
    :cond_7
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1200(Lnet/time4j/PlainTime;)Z

    move-result p1

    return p1

    .line 2651
    :cond_8
    :goto_0
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_a

    .line 2652
    iget p1, p0, Lnet/time4j/PlainTime$IntegerElementRule;->index:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    if-nez p2, :cond_9

    move v0, v2

    :cond_9
    return v0

    :cond_a
    :goto_1
    return v2

    :cond_b
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2448
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTime$IntegerElementRule;->withValue(Lnet/time4j/PlainTime;Ljava/lang/Integer;Z)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainTime;Ljava/lang/Integer;Z)Lnet/time4j/PlainTime;
    .locals 6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_0

    .line 2555
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lnet/time4j/PlainTime$IntegerElementRule;->withValueInLenientMode(Lnet/time4j/PlainTime;I)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2556
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$IntegerElementRule;->isValid(Lnet/time4j/PlainTime;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2561
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p3

    .line 2562
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result v0

    .line 2563
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v1

    .line 2564
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result v2

    .line 2565
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2567
    iget v3, p0, Lnet/time4j/PlainTime$IntegerElementRule;->index:I

    const/4 v4, 0x0

    const v5, 0xf4240

    packed-switch v3, :pswitch_data_0

    .line 2612
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/PlainTime$IntegerElementRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 2613
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2610
    :pswitch_0
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    rem-int/2addr p1, v5

    invoke-static {p2, p1}, Lnet/time4j/PlainTime;->access$1100(II)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    :pswitch_1
    move v2, p2

    goto :goto_2

    :pswitch_2
    mul-int/lit16 p2, p2, 0x3e8

    .line 2604
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    rem-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :pswitch_3
    mul-int/2addr p2, v5

    .line 2601
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    rem-int/2addr p1, v5

    :goto_0
    add-int v2, p2, p1

    goto :goto_2

    .line 2595
    :pswitch_4
    div-int/lit16 p3, p2, 0xe10

    .line 2596
    rem-int/lit16 p2, p2, 0xe10

    .line 2597
    div-int/lit8 v0, p2, 0x3c

    .line 2598
    rem-int/lit8 v1, p2, 0x3c

    goto :goto_2

    :pswitch_5
    move v1, p2

    goto :goto_2

    .line 2588
    :pswitch_6
    div-int/lit8 p3, p2, 0x3c

    .line 2589
    rem-int/lit8 v0, p2, 0x3c

    goto :goto_2

    :pswitch_7
    move v0, p2

    goto :goto_2

    :cond_1
    :goto_1
    :pswitch_8
    move p3, p2

    goto :goto_2

    .line 2576
    :pswitch_9
    invoke-static {p1}, Lnet/time4j/PlainTime$IntegerElementRule;->isAM(Lnet/time4j/PlainTime;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0xc

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x18

    if-ne p2, p1, :cond_1

    move p3, v4

    goto :goto_2

    :pswitch_b
    const/16 p3, 0xc

    if-ne p2, p3, :cond_3

    move p2, v4

    .line 2570
    :cond_3
    invoke-static {p1}, Lnet/time4j/PlainTime$IntegerElementRule;->isAM(Lnet/time4j/PlainTime;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 2616
    :goto_2
    invoke-static {p3, v0, v1, v2}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2557
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2553
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
