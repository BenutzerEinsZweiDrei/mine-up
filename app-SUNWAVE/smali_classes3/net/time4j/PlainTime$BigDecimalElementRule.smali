.class Lnet/time4j/PlainTime$BigDecimalElementRule;
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
    name = "BigDecimalElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainTime;",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private final max:Ljava/math/BigDecimal;


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;Ljava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/math/BigDecimal;",
            ">;",
            "Ljava/math/BigDecimal;",
            ")V"
        }
    .end annotation

    .line 2969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2971
    iput-object p1, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 2972
    iput-object p2, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->max:Ljava/math/BigDecimal;

    return-void
.end method

.method private static div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2

    .line 3170
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method private static toNano(Ljava/math/BigDecimal;)I
    .locals 2

    const/16 v0, 0x9

    .line 3178
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3181
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    const v0, 0x3b9ac9ff

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2955
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->getChildAtCeiling(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

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

    .line 2955
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->getChildAtFloor(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

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

    .line 2955
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->getMaximum(Lnet/time4j/PlainTime;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/PlainTime;)Ljava/math/BigDecimal;
    .locals 1

    .line 3138
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 3139
    iget-object p1, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/PlainTime;->DECIMAL_MINUTE:Lnet/time4j/ZonalElement;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/PlainTime;->DECIMAL_SECOND:Lnet/time4j/ZonalElement;

    if-ne p1, v0, :cond_1

    .line 3143
    :cond_0
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1

    .line 3147
    :cond_1
    iget-object p1, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->max:Ljava/math/BigDecimal;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2955
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->getMinimum(Lnet/time4j/PlainTime;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainTime;)Ljava/math/BigDecimal;
    .locals 0

    .line 3131
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2955
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->getValue(Lnet/time4j/PlainTime;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainTime;)Ljava/math/BigDecimal;
    .locals 3

    .line 2983
    iget-object v0, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_HOUR:Lnet/time4j/ZonalElement;

    if-ne v0, v1, :cond_2

    .line 2984
    sget-object v0, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2985
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1

    .line 2986
    :cond_0
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 2987
    invoke-static {}, Lnet/time4j/PlainTime;->access$1700()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 2991
    :cond_1
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2992
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {}, Lnet/time4j/PlainTime;->access$2000()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/time4j/PlainTime$BigDecimalElementRule;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2993
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {}, Lnet/time4j/PlainTime;->access$1900()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/time4j/PlainTime$BigDecimalElementRule;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2996
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 2997
    invoke-static {}, Lnet/time4j/PlainTime;->access$1900()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {}, Lnet/time4j/PlainTime;->access$1800()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2995
    invoke-static {p1, v1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 2994
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto/16 :goto_0

    .line 2998
    :cond_2
    iget-object v0, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_MINUTE:Lnet/time4j/ZonalElement;

    if-ne v0, v1, :cond_4

    .line 2999
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1200(Lnet/time4j/PlainTime;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3000
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1

    .line 3004
    :cond_3
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3005
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {}, Lnet/time4j/PlainTime;->access$2000()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/time4j/PlainTime$BigDecimalElementRule;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3008
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3009
    invoke-static {}, Lnet/time4j/PlainTime;->access$2000()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {}, Lnet/time4j/PlainTime;->access$1800()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3007
    invoke-static {p1, v1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3006
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 3010
    :cond_4
    iget-object v0, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_SECOND:Lnet/time4j/ZonalElement;

    if-ne v0, v1, :cond_6

    .line 3011
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1300(Lnet/time4j/PlainTime;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3012
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p1

    .line 3016
    :cond_5
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3017
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {}, Lnet/time4j/PlainTime;->access$1800()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {p1, v1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    :goto_0
    const/16 v0, 0xf

    .line 3022
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 3019
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2955
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$BigDecimalElementRule;->isValid(Lnet/time4j/PlainTime;Ljava/math/BigDecimal;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainTime;Ljava/math/BigDecimal;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 3112
    :cond_0
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    .line 3113
    iget-object p1, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_MINUTE:Lnet/time4j/ZonalElement;

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_SECOND:Lnet/time4j/ZonalElement;

    if-ne p1, v1, :cond_3

    .line 3117
    :cond_1
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 3121
    :cond_3
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 3122
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->max:Ljava/math/BigDecimal;

    .line 3123
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2955
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTime$BigDecimalElementRule;->withValue(Lnet/time4j/PlainTime;Ljava/math/BigDecimal;Z)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainTime;Ljava/math/BigDecimal;Z)Lnet/time4j/PlainTime;
    .locals 12

    if-eqz p2, :cond_8

    .line 3040
    iget-object v0, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_HOUR:Lnet/time4j/ZonalElement;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3041
    sget-object p1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p2, v2, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3042
    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {}, Lnet/time4j/PlainTime;->access$2000()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3043
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3045
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {}, Lnet/time4j/PlainTime;->access$2000()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3046
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3047
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v3

    .line 3048
    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    .line 3049
    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .line 3050
    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/PlainTime$BigDecimalElementRule;->toNano(Ljava/math/BigDecimal;)I

    move-result v0

    goto/16 :goto_2

    .line 3051
    :cond_0
    iget-object v0, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_MINUTE:Lnet/time4j/ZonalElement;

    const/16 v3, 0x3c

    if-ne v0, v1, :cond_2

    .line 3052
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p2, v2, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3054
    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {}, Lnet/time4j/PlainTime;->access$2000()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3055
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3056
    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v4

    .line 3057
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->toNano(Ljava/math/BigDecimal;)I

    move-result v1

    .line 3058
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v5

    .line 3059
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    int-to-long v7, p1

    if-eqz p3, :cond_1

    .line 3061
    invoke-static {v5, v6, v3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 3062
    invoke-static {v5, v6, v3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    goto :goto_0

    .line 3064
    :cond_1
    invoke-static {v5, v6}, Lnet/time4j/PlainTime;->access$2100(J)V

    long-to-int p1, v5

    :goto_0
    move v0, v1

    move v1, v4

    move-wide v3, v7

    goto :goto_2

    .line 3067
    :cond_2
    iget-object v0, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_SECOND:Lnet/time4j/ZonalElement;

    if-ne v0, v1, :cond_7

    .line 3068
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p2, v2, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3069
    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/PlainTime$BigDecimalElementRule;->toNano(Ljava/math/BigDecimal;)I

    move-result v1

    .line 3070
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    .line 3071
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v0

    int-to-long v6, v0

    .line 3072
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p1

    if-eqz p3, :cond_3

    .line 3074
    invoke-static {v4, v5, v3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    int-to-long v8, p1

    .line 3075
    invoke-static {v4, v5, v3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    add-long/2addr v8, v4

    .line 3076
    invoke-static {v8, v9, v3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    add-long/2addr v6, v4

    .line 3077
    invoke-static {v8, v9, v3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    goto :goto_1

    .line 3079
    :cond_3
    invoke-static {v4, v5}, Lnet/time4j/PlainTime;->access$2200(J)V

    long-to-int v0, v4

    :goto_1
    move-wide v3, v6

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_2
    const-wide/16 v5, 0x0

    if-eqz p3, :cond_4

    const/16 p2, 0x18

    .line 3087
    invoke-static {v3, v4, p2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    cmp-long p3, v3, v5

    if-lez p3, :cond_5

    or-int p3, p2, p1

    or-int/2addr p3, v1

    or-int/2addr p3, v0

    if-nez p3, :cond_5

    .line 3089
    sget-object p1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    return-object p1

    :cond_4
    cmp-long p3, v3, v5

    if-ltz p3, :cond_6

    const-wide/16 v5, 0x18

    cmp-long p3, v3, v5

    if-gtz p3, :cond_6

    long-to-int p2, v3

    .line 3098
    :cond_5
    invoke-static {p2, p1, v1, v0}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 3092
    :cond_6
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

    .line 3083
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/PlainTime$BigDecimalElementRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3034
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
