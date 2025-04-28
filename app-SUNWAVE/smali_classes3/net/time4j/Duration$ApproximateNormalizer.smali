.class Lnet/time4j/Duration$ApproximateNormalizer;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Lnet/time4j/engine/Normalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApproximateNormalizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/Normalizer<",
        "Lnet/time4j/IsoUnit;",
        ">;"
    }
.end annotation


# instance fields
.field private final daysToWeeks:Z

.field private final steps:I

.field private final unit:Lnet/time4j/ClockUnit;


# direct methods
.method constructor <init>(ILnet/time4j/ClockUnit;)V
    .locals 2

    .line 4699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 4704
    sget-object v0, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {p2, v0}, Lnet/time4j/ClockUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 4708
    iput-boolean v0, p0, Lnet/time4j/Duration$ApproximateNormalizer;->daysToWeeks:Z

    .line 4709
    iput p1, p0, Lnet/time4j/Duration$ApproximateNormalizer;->steps:I

    .line 4710
    iput-object p2, p0, Lnet/time4j/Duration$ApproximateNormalizer;->unit:Lnet/time4j/ClockUnit;

    return-void

    .line 4705
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported unit."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4702
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step width is not positive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 4687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4689
    iput-boolean p1, p0, Lnet/time4j/Duration$ApproximateNormalizer;->daysToWeeks:Z

    const/4 p1, 0x1

    .line 4690
    iput p1, p0, Lnet/time4j/Duration$ApproximateNormalizer;->steps:I

    const/4 p1, 0x0

    .line 4691
    iput-object p1, p0, Lnet/time4j/Duration$ApproximateNormalizer;->unit:Lnet/time4j/ClockUnit;

    return-void
.end method

.method private static maxUnit(D)Lnet/time4j/IsoUnit;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Enum;

    .line 4823
    sget-object v1, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/IsoUnit;

    .line 4824
    invoke-interface {v1}, Lnet/time4j/IsoUnit;->getLength()D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_0

    return-object v1

    .line 4829
    :cond_1
    sget-object p0, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    return-object p0
.end method

.method private static safeCast(D)I
    .locals 3

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    double-to-int p0, p0

    return p0

    .line 4814
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+",
            "Lnet/time4j/IsoUnit;",
            ">;)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 4722
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_1

    .line 4723
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/engine/TimeSpan$Item;

    .line 4724
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/IsoUnit;

    invoke-interface {v9}, Lnet/time4j/IsoUnit;->getLength()D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 4725
    invoke-virtual {v6}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 4731
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p1

    return-object p1

    .line 4735
    :cond_2
    iget-object v0, p0, Lnet/time4j/Duration$ApproximateNormalizer;->unit:Lnet/time4j/ClockUnit;

    if-nez v0, :cond_3

    invoke-static {v3, v4}, Lnet/time4j/Duration$ApproximateNormalizer;->maxUnit(D)Lnet/time4j/IsoUnit;

    move-result-object v0

    .line 4736
    :cond_3
    invoke-interface {v0}, Lnet/time4j/IsoUnit;->getLength()D

    move-result-wide v0

    iget v5, p0, Lnet/time4j/Duration$ApproximateNormalizer;->steps:I

    int-to-double v5, v5

    mul-double/2addr v0, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v5, v0, v5

    add-double/2addr v3, v5

    double-to-long v3, v3

    .line 4738
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 4739
    invoke-static {v3, v4, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v3

    int-to-long v0, v0

    mul-long/2addr v3, v0

    long-to-double v0, v3

    .line 4744
    sget-object v3, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v3}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v3

    div-double v3, v0, v3

    invoke-static {v3, v4}, Lnet/time4j/Duration$ApproximateNormalizer;->safeCast(D)I

    move-result v3

    int-to-double v4, v3

    .line 4745
    sget-object v6, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v6}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    double-to-long v0, v0

    long-to-double v0, v0

    .line 4746
    sget-object v4, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v4}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v4

    div-double v4, v0, v4

    invoke-static {v4, v5}, Lnet/time4j/Duration$ApproximateNormalizer;->safeCast(D)I

    move-result v4

    int-to-double v5, v4

    .line 4747
    sget-object v7, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v7}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double/2addr v0, v5

    double-to-long v0, v0

    long-to-double v0, v0

    .line 4748
    sget-object v5, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v5}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v5

    div-double v5, v0, v5

    invoke-static {v5, v6}, Lnet/time4j/Duration$ApproximateNormalizer;->safeCast(D)I

    move-result v5

    int-to-double v6, v5

    .line 4749
    sget-object v8, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v8}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v0, v6

    double-to-long v0, v0

    long-to-double v0, v0

    .line 4750
    sget-object v6, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v6}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v6

    div-double v6, v0, v6

    invoke-static {v6, v7}, Lnet/time4j/Duration$ApproximateNormalizer;->safeCast(D)I

    move-result v6

    int-to-double v7, v6

    .line 4751
    sget-object v9, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v9}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v0, v7

    double-to-long v0, v0

    long-to-double v0, v0

    .line 4752
    sget-object v7, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-virtual {v7}, Lnet/time4j/ClockUnit;->getLength()D

    move-result-wide v7

    div-double v7, v0, v7

    invoke-static {v7, v8}, Lnet/time4j/Duration$ApproximateNormalizer;->safeCast(D)I

    move-result v7

    .line 4754
    sget-object v8, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    iget-object v9, p0, Lnet/time4j/Duration$ApproximateNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {v8, v9}, Lnet/time4j/ClockUnit;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4755
    iget v0, p0, Lnet/time4j/Duration$ApproximateNormalizer;->steps:I

    div-int/2addr v7, v0

    mul-int/2addr v7, v0

    move v0, v2

    move v8, v0

    goto :goto_1

    :cond_4
    int-to-double v8, v7

    .line 4758
    sget-object v10, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-virtual {v10}, Lnet/time4j/ClockUnit;->getLength()D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v0, v8

    double-to-long v0, v0

    long-to-double v0, v0

    .line 4759
    sget-object v8, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-virtual {v8}, Lnet/time4j/ClockUnit;->getLength()D

    move-result-wide v8

    div-double v8, v0, v8

    invoke-static {v8, v9}, Lnet/time4j/Duration$ApproximateNormalizer;->safeCast(D)I

    move-result v8

    .line 4760
    sget-object v9, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    iget-object v10, p0, Lnet/time4j/Duration$ApproximateNormalizer;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {v9, v10}, Lnet/time4j/ClockUnit;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4761
    iget v0, p0, Lnet/time4j/Duration$ApproximateNormalizer;->steps:I

    div-int/2addr v8, v0

    mul-int/2addr v8, v0

    move v0, v2

    goto :goto_1

    :cond_5
    int-to-double v9, v8

    .line 4764
    sget-object v11, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-virtual {v11}, Lnet/time4j/ClockUnit;->getLength()D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v0, v9

    double-to-long v0, v0

    long-to-double v0, v0

    .line 4765
    sget-object v9, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {v9}, Lnet/time4j/ClockUnit;->getLength()D

    move-result-wide v9

    div-double/2addr v0, v9

    invoke-static {v0, v1}, Lnet/time4j/Duration$ApproximateNormalizer;->safeCast(D)I

    move-result v0

    .line 4766
    iget v1, p0, Lnet/time4j/Duration$ApproximateNormalizer;->steps:I

    div-int/2addr v0, v1

    mul-int/2addr v0, v1

    :goto_1
    const/4 v1, 0x7

    mul-int/2addr v5, v1

    add-int/2addr v6, v5

    .line 4775
    iget-object v5, p0, Lnet/time4j/Duration$ApproximateNormalizer;->unit:Lnet/time4j/ClockUnit;

    if-nez v5, :cond_d

    if-lez v3, :cond_6

    move v0, v2

    move v4, v0

    move v6, v4

    :goto_2
    move v7, v6

    move v8, v7

    goto :goto_4

    :cond_6
    if-lez v4, :cond_7

    move v0, v2

    move v6, v0

    goto :goto_2

    :cond_7
    if-lez v6, :cond_9

    if-lt v6, v1, :cond_8

    .line 4781
    iget-boolean v0, p0, Lnet/time4j/Duration$ApproximateNormalizer;->daysToWeeks:Z

    if-eqz v0, :cond_8

    int-to-double v0, v6

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    add-double/2addr v0, v5

    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    div-double/2addr v0, v5

    double-to-int v0, v0

    move v6, v2

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    move v7, v2

    move v8, v7

    move v2, v0

    move v0, v8

    goto :goto_4

    :cond_9
    if-lez v7, :cond_a

    move v0, v2

    move v8, v0

    goto :goto_4

    :cond_a
    if-lez v8, :cond_b

    move v0, v2

    :cond_b
    :goto_4
    if-lez v2, :cond_d

    .line 4792
    sget-object v0, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    .line 4793
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_c

    neg-int p1, v2

    int-to-long v1, p1

    goto :goto_5

    :cond_c
    int-to-long v1, v2

    :goto_5
    invoke-static {v1, v2, v0}, Lnet/time4j/Duration;->of(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1

    .line 4799
    :cond_d
    invoke-static {}, Lnet/time4j/Duration;->ofPositive()Lnet/time4j/Duration$Builder;

    move-result-object v1

    .line 4800
    invoke-virtual {v1, v3}, Lnet/time4j/Duration$Builder;->years(I)Lnet/time4j/Duration$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/time4j/Duration$Builder;->months(I)Lnet/time4j/Duration$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lnet/time4j/Duration$Builder;->days(I)Lnet/time4j/Duration$Builder;

    move-result-object v1

    .line 4801
    invoke-virtual {v1, v7}, Lnet/time4j/Duration$Builder;->hours(I)Lnet/time4j/Duration$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lnet/time4j/Duration$Builder;->minutes(I)Lnet/time4j/Duration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/time4j/Duration$Builder;->seconds(I)Lnet/time4j/Duration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/Duration$Builder;->build()Lnet/time4j/Duration;

    move-result-object v0

    .line 4803
    invoke-interface {p1}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 4804
    invoke-virtual {v0}, Lnet/time4j/Duration;->inverse()Lnet/time4j/Duration;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public bridge synthetic normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimeSpan;
    .locals 0

    .line 4675
    invoke-virtual {p0, p1}, Lnet/time4j/Duration$ApproximateNormalizer;->normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method
