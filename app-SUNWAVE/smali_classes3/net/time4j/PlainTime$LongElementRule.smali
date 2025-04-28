.class Lnet/time4j/PlainTime$LongElementRule;
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
    name = "LongElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainTime;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final max:J

.field private final min:J


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 2823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2825
    iput-object p1, p0, Lnet/time4j/PlainTime$LongElementRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 2826
    iput-wide p2, p0, Lnet/time4j/PlainTime$LongElementRule;->min:J

    .line 2827
    iput-wide p4, p0, Lnet/time4j/PlainTime$LongElementRule;->max:J

    return-void
.end method

.method private withValueInLenientMode(Lnet/time4j/PlainTime;J)Lnet/time4j/PlainTime;
    .locals 5

    .line 2936
    iget-object v0, p0, Lnet/time4j/PlainTime$LongElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_1

    const-wide v0, 0x141dd76000L

    .line 2937
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/PlainTime;->access$1600(JJ)J

    move-result-wide v0

    .line 2938
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    rem-int/lit16 p1, p1, 0x3e8

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    cmp-long p2, p2, v2

    if-lez p2, :cond_0

    .line 2939
    sget-object p1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    goto :goto_0

    .line 2942
    :cond_0
    invoke-static {v0, v1, p1}, Lnet/time4j/PlainTime;->access$1400(JI)Lnet/time4j/PlainTime;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-wide v0, 0x4e94914f0000L

    .line 2944
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/PlainTime;->access$1600(JJ)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    cmp-long p1, p2, v2

    if-lez p1, :cond_2

    .line 2945
    sget-object p1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    goto :goto_1

    .line 2948
    :cond_2
    invoke-static {v0, v1}, Lnet/time4j/PlainTime;->access$1500(J)Lnet/time4j/PlainTime;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2807
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$LongElementRule;->getChildAtCeiling(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

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

    .line 2807
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$LongElementRule;->getChildAtFloor(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

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

.method public getMaximum(Lnet/time4j/PlainTime;)Ljava/lang/Long;
    .locals 4

    .line 2906
    iget-object v0, p0, Lnet/time4j/PlainTime$LongElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_0

    .line 2908
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    rem-int/lit16 p1, p1, 0x3e8

    if-eqz p1, :cond_0

    .line 2910
    iget-wide v0, p0, Lnet/time4j/PlainTime$LongElementRule;->max:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 2913
    :cond_0
    iget-wide v0, p0, Lnet/time4j/PlainTime$LongElementRule;->max:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2807
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$LongElementRule;->getMaximum(Lnet/time4j/PlainTime;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainTime;)Ljava/lang/Long;
    .locals 2

    .line 2899
    iget-wide v0, p0, Lnet/time4j/PlainTime$LongElementRule;->min:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2807
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$LongElementRule;->getMinimum(Lnet/time4j/PlainTime;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainTime;)Ljava/lang/Long;
    .locals 4

    .line 2838
    iget-object v0, p0, Lnet/time4j/PlainTime$LongElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_0

    .line 2839
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$600(Lnet/time4j/PlainTime;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0

    .line 2841
    :cond_0
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$600(Lnet/time4j/PlainTime;)J

    move-result-wide v0

    .line 2844
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2807
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$LongElementRule;->getValue(Lnet/time4j/PlainTime;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2807
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$LongElementRule;->isValid(Lnet/time4j/PlainTime;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainTime;Ljava/lang/Long;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2882
    :cond_0
    iget-object v1, p0, Lnet/time4j/PlainTime$LongElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 2884
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v4, p0, Lnet/time4j/PlainTime$LongElementRule;->max:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 2886
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    rem-int/lit16 p1, p1, 0x3e8

    if-nez p1, :cond_1

    move v0, v3

    :cond_1
    return v0

    .line 2888
    :cond_2
    iget-wide v1, p0, Lnet/time4j/PlainTime$LongElementRule;->min:J

    .line 2889
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-gtz p1, :cond_3

    .line 2890
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v1, p0, Lnet/time4j/PlainTime$LongElementRule;->max:J

    cmp-long p1, p1, v1

    if-gtz p1, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2807
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTime$LongElementRule;->withValue(Lnet/time4j/PlainTime;Ljava/lang/Long;Z)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainTime;Ljava/lang/Long;Z)Lnet/time4j/PlainTime;
    .locals 2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_0

    .line 2858
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/PlainTime$LongElementRule;->withValueInLenientMode(Lnet/time4j/PlainTime;J)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2859
    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$LongElementRule;->isValid(Lnet/time4j/PlainTime;Ljava/lang/Long;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2864
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 2866
    iget-object v0, p0, Lnet/time4j/PlainTime$LongElementRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne v0, v1, :cond_1

    .line 2867
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    rem-int/lit16 p1, p1, 0x3e8

    invoke-static {p2, p3, p1}, Lnet/time4j/PlainTime;->access$1400(JI)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2869
    :cond_1
    invoke-static {p2, p3}, Lnet/time4j/PlainTime;->access$1500(J)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2860
    :cond_2
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

    .line 2856
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
