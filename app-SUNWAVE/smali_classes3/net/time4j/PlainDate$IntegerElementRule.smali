.class Lnet/time4j/PlainDate$IntegerElementRule;
.super Ljava/lang/Object;
.source "PlainDate.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;

.field private final ref:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILnet/time4j/engine/ChronoElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    .line 2714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2716
    iput-object p2, p0, Lnet/time4j/PlainDate$IntegerElementRule;->ref:Lnet/time4j/engine/ChronoElement;

    .line 2717
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/PlainDate$IntegerElementRule;->name:Ljava/lang/String;

    .line 2718
    iput p1, p0, Lnet/time4j/PlainDate$IntegerElementRule;->index:I

    return-void
.end method

.method constructor <init>(Lnet/time4j/engine/ChronoElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2706
    move-object v0, p1

    check-cast v0, Lnet/time4j/IntegerDateElement;

    invoke-virtual {v0}, Lnet/time4j/IntegerDateElement;->getIndex()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;-><init>(ILnet/time4j/engine/ChronoElement;)V

    return-void
.end method

.method private getChild()Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2900
    iget v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->index:I

    packed-switch v0, :pswitch_data_0

    .line 2911
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lnet/time4j/PlainDate$IntegerElementRule;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 2904
    :pswitch_1
    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    return-object v0

    .line 2902
    :pswitch_2
    sget-object v0, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getMaximumOfQuarterDay(Lnet/time4j/PlainDate;)I
    .locals 3

    .line 2918
    invoke-static {p0}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    const/16 v2, 0x5b

    if-ne v0, v1, :cond_1

    .line 2921
    invoke-static {p0}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result p0

    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x5a

    :goto_0
    return v2

    :cond_1
    const/4 p0, 0x2

    if-ne v0, p0, :cond_2

    return v2

    :cond_2
    const/16 p0, 0x5c

    return p0
.end method

.method private getMaximumOfWIM(Lnet/time4j/PlainDate;)I
    .locals 4

    .line 2932
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result v1

    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v0

    .line 2933
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$1000(Lnet/time4j/PlainDate;)B

    move-result p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v3, v2, 0x7

    add-int/2addr v3, p1

    if-gt v3, v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x7

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 2940
    div-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getChildAtCeiling(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2894
    invoke-direct {p0}, Lnet/time4j/PlainDate$IntegerElementRule;->getChild()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getChildAtFloor(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2887
    invoke-direct {p0}, Lnet/time4j/PlainDate$IntegerElementRule;->getChild()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getInt(Lnet/time4j/PlainDate;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/PlainDate;)I
    .locals 1

    .line 2734
    iget v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->index:I

    packed-switch v0, :pswitch_data_0

    .line 2748
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2746
    :pswitch_0
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$1000(Lnet/time4j/PlainDate;)B

    move-result p1

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 2744
    :pswitch_1
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$1100(Lnet/time4j/PlainDate;)I

    move-result p1

    return p1

    .line 2742
    :pswitch_2
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result p1

    return p1

    .line 2740
    :pswitch_3
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$1000(Lnet/time4j/PlainDate;)B

    move-result p1

    return p1

    .line 2738
    :pswitch_4
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result p1

    return p1

    .line 2736
    :pswitch_5
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaximum(Lnet/time4j/PlainDate;)Ljava/lang/Integer;
    .locals 1

    .line 2865
    iget v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->index:I

    packed-switch v0, :pswitch_data_0

    .line 2879
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2877
    :pswitch_0
    invoke-direct {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getMaximumOfWIM(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2875
    :pswitch_1
    invoke-static {p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getMaximumOfQuarterDay(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2873
    :pswitch_2
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/time4j/PlainDate;->access$1900()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/time4j/PlainDate;->access$2000()Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1

    .line 2871
    :pswitch_3
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result p1

    invoke-static {v0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2869
    :pswitch_4
    invoke-static {}, Lnet/time4j/PlainDate;->access$1800()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2867
    :pswitch_5
    sget-object p1, Lnet/time4j/PlainDate;->MAX_YEAR:Ljava/lang/Integer;

    return-object p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getMaximum(Lnet/time4j/PlainDate;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainDate;)Ljava/lang/Integer;
    .locals 1

    .line 2847
    iget p1, p0, Lnet/time4j/PlainDate$IntegerElementRule;->index:I

    packed-switch p1, :pswitch_data_0

    .line 2857
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2855
    :pswitch_0
    invoke-static {}, Lnet/time4j/PlainDate;->access$1700()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2849
    :pswitch_1
    sget-object p1, Lnet/time4j/PlainDate;->MIN_YEAR:Ljava/lang/Integer;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getMinimum(Lnet/time4j/PlainDate;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainDate;)Ljava/lang/Integer;
    .locals 0

    .line 2727
    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getInt(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getValue(Lnet/time4j/PlainDate;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainDate$IntegerElementRule;->isValid(Lnet/time4j/PlainDate;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainDate$IntegerElementRule;->isValid(Lnet/time4j/PlainDate;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainDate;I)Z
    .locals 3

    .line 2825
    iget v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->index:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2839
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/PlainDate$IntegerElementRule;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-lt p2, v2, :cond_0

    .line 2837
    invoke-direct {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getMaximumOfWIM(Lnet/time4j/PlainDate;)I

    move-result p1

    if-gt p2, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :pswitch_1
    if-lt p2, v2, :cond_1

    .line 2835
    invoke-static {p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getMaximumOfQuarterDay(Lnet/time4j/PlainDate;)I

    move-result p1

    if-gt p2, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :pswitch_2
    if-lt p2, v2, :cond_3

    .line 2833
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x16e

    goto :goto_0

    :cond_2
    const/16 p1, 0x16d

    :goto_0
    if-gt p2, p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :pswitch_3
    if-lt p2, v2, :cond_4

    .line 2831
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$800(Lnet/time4j/PlainDate;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/PlainDate;->access$900(Lnet/time4j/PlainDate;)B

    move-result p1

    invoke-static {v0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p1

    if-gt p2, p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    :pswitch_4
    if-lt p2, v2, :cond_5

    const/16 p1, 0xc

    if-gt p2, p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :pswitch_5
    const p1, -0x3b9ac9ff

    if-lt p2, p1, :cond_6

    const p1, 0x3b9ac9ff

    if-gt p2, p1, :cond_6

    move v1, v2

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isValid(Lnet/time4j/PlainDate;Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 2815
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainDate$IntegerElementRule;->isValid(Lnet/time4j/PlainDate;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainDate$IntegerElementRule;->withValue(Lnet/time4j/PlainDate;IZ)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2694
    check-cast p1, Lnet/time4j/PlainDate;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainDate$IntegerElementRule;->withValue(Lnet/time4j/PlainDate;Ljava/lang/Integer;Z)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainDate;IZ)Lnet/time4j/PlainDate;
    .locals 3

    if-eqz p3, :cond_0

    .line 2776
    invoke-static {}, Lnet/time4j/PlainDate;->access$1200()Lnet/time4j/engine/TimeAxis;

    move-result-object p3

    iget-object v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->ref:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p3, v0}, Lnet/time4j/engine/TimeAxis;->getBaseUnit(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/IsoDateUnit;

    .line 2777
    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getInt(Lnet/time4j/PlainDate;)I

    move-result v0

    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long v0, p2

    .line 2778
    invoke-virtual {p1, v0, v1, p3}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 2781
    :cond_0
    iget v0, p0, Lnet/time4j/PlainDate$IntegerElementRule;->index:I

    const-string v1, "Out of range: "

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2804
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/PlainDate$IntegerElementRule;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-nez p3, :cond_2

    if-lt p2, v2, :cond_1

    .line 2797
    invoke-direct {p0, p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getMaximumOfWIM(Lnet/time4j/PlainDate;)I

    move-result p3

    if-gt p2, p3, :cond_1

    goto :goto_0

    .line 2801
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2798
    :cond_2
    :goto_0
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$1000(Lnet/time4j/PlainDate;)B

    move-result p3

    sub-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x7

    add-int/2addr p3, v2

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 2799
    sget-object v0, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    :pswitch_1
    if-lt p2, v2, :cond_3

    .line 2791
    invoke-static {p1}, Lnet/time4j/PlainDate$IntegerElementRule;->getMaximumOfQuarterDay(Lnet/time4j/PlainDate;)I

    move-result p3

    if-gt p2, p3, :cond_3

    .line 2792
    invoke-static {p1}, Lnet/time4j/PlainDate;->access$1100(Lnet/time4j/PlainDate;)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sget-object v0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1

    .line 2794
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2789
    :pswitch_2
    invoke-static {p1, p2}, Lnet/time4j/PlainDate;->access$1600(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 2787
    :pswitch_3
    invoke-static {p1, p2}, Lnet/time4j/PlainDate;->access$1500(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 2785
    :pswitch_4
    invoke-static {p1, p2}, Lnet/time4j/PlainDate;->access$1400(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 2783
    :pswitch_5
    invoke-static {p1, p2}, Lnet/time4j/PlainDate;->access$1300(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public withValue(Lnet/time4j/PlainDate;Ljava/lang/Integer;Z)Lnet/time4j/PlainDate;
    .locals 0

    if-eqz p2, :cond_0

    .line 2764
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainDate$IntegerElementRule;->withValue(Lnet/time4j/PlainDate;IZ)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1

    .line 2761
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
