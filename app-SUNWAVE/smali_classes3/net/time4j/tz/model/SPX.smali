.class final Lnet/time4j/tz/model/SPX;
.super Ljava/lang/Object;
.source "SPX.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final ARRAY_TRANSITION_MODEL_TYPE:I = 0x7e

.field static final COMPOSITE_TRANSITION_MODEL_TYPE:I = 0x7f

.field private static final DAYS_IN_18_BITS:J = 0x5459e7100L

.field static final DAY_OF_WEEK_IN_MONTH_PATTERN_TYPE:I = 0x79

.field static final FIXED_DAY_PATTERN_TYPE:I = 0x78

.field static final LAST_WEEKDAY_PATTERN_TYPE:I = 0x7a

.field private static final NO_COMPRESSION:I = 0x0

.field private static final POSIX_TIME_1825:J = -0x110bc5000L

.field private static final QUARTERS_IN_24_BITS:J = 0x3807bfc7bL

.field static final RULE_BASED_TRANSITION_MODEL_TYPE:I = 0x7d

.field private static final serialVersionUID:J = 0x5a945e837a50d1cdL


# instance fields
.field private transient obj:Ljava/lang/Object;

.field private transient type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    .line 111
    iput p2, p0, Lnet/time4j/tz/model/SPX;->type:I

    return-void
.end method

.method private static readArrayTransitionModel(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    new-instance v0, Lnet/time4j/tz/model/ArrayTransitionModel;

    .line 686
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readTransitions(Ljava/io/ObjectInput;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lnet/time4j/tz/model/ArrayTransitionModel;-><init>(Ljava/util/List;ZZ)V

    return-object v0
.end method

.method private static readCompositeTransitionModel(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 706
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readTransitions(Ljava/io/ObjectInput;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 709
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v2}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v2

    invoke-static {v2}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    .line 711
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readRules(Ljava/io/ObjectInput;)Ljava/util/List;

    move-result-object p0

    .line 708
    invoke-static {v2, v0, p0, v1, v1}, Lnet/time4j/tz/model/TransitionModel;->of(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;Ljava/util/List;ZZ)Lnet/time4j/tz/TransitionHistory;

    move-result-object p0

    return-object p0
.end method

.method private static readDayOfWeekInMonthPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, v0, 0x4

    .line 519
    invoke-static {v1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v3

    and-int/lit8 v0, v0, 0xf

    .line 521
    sget-object v1, Lnet/time4j/tz/model/OffsetIndicator;->VALUES:[Lnet/time4j/tz/model/OffsetIndicator;

    rem-int/lit8 v2, v0, 0x3

    aget-object v7, v1, v2

    .line 522
    invoke-static {v0}, Lnet/time4j/tz/model/SPX;->readSavings(I)I

    move-result v0

    .line 523
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v4, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    .line 525
    invoke-static {v1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v5

    .line 526
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, v1, 0x7

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    const/16 v2, 0x3f

    and-int/2addr v1, v2

    const/4 v6, -0x1

    if-ne v0, v6, :cond_1

    .line 531
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v0

    :cond_1
    move v8, v0

    if-ne v1, v2, :cond_2

    .line 535
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    move v6, p0

    goto :goto_1

    :cond_2
    mul-int/lit16 v1, v1, 0x708

    move v6, v1

    .line 540
    :goto_1
    new-instance p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;-><init>(Lnet/time4j/Month;ILnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;IZ)V

    return-object p0
.end method

.method private static readFixedDayPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 459
    sget-object v2, Lnet/time4j/tz/model/OffsetIndicator;->VALUES:[Lnet/time4j/tz/model/OffsetIndicator;

    rem-int/lit8 v3, v0, 0x3

    aget-object v8, v2, v3

    .line 460
    invoke-static {v0}, Lnet/time4j/tz/model/SPX;->readSavings(I)I

    move-result v0

    .line 461
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v6, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    .line 463
    invoke-static {v2}, Lnet/time4j/tz/model/SPX;->toTimeOfDayR(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 466
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v0

    :cond_0
    move v9, v0

    if-ne v2, v3, :cond_1

    .line 470
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    move v7, p0

    goto :goto_0

    :cond_1
    move v7, v2

    .line 473
    :goto_0
    new-instance p0, Lnet/time4j/tz/model/FixedDayPattern;

    .line 474
    invoke-static {v1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lnet/time4j/tz/model/FixedDayPattern;-><init>(Lnet/time4j/Month;IILnet/time4j/tz/model/OffsetIndicator;I)V

    return-object p0
.end method

.method private static readLastDayOfWeekPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, v0, 0x4

    .line 585
    invoke-static {v1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v3

    and-int/lit8 v0, v0, 0xf

    .line 587
    sget-object v1, Lnet/time4j/tz/model/OffsetIndicator;->VALUES:[Lnet/time4j/tz/model/OffsetIndicator;

    rem-int/lit8 v2, v0, 0x3

    aget-object v6, v1, v2

    .line 588
    invoke-static {v0}, Lnet/time4j/tz/model/SPX;->readSavings(I)I

    move-result v0

    .line 589
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, v1, 0x5

    .line 590
    invoke-static {v2}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v4

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 594
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v0

    :cond_0
    move v7, v0

    if-ne v1, v2, :cond_1

    .line 598
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    move v5, p0

    goto :goto_0

    :cond_1
    mul-int/lit16 v1, v1, 0xe10

    move v5, v1

    .line 603
    :goto_0
    new-instance p0, Lnet/time4j/tz/model/LastWeekdayPattern;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lnet/time4j/tz/model/LastWeekdayPattern;-><init>(Lnet/time4j/Month;Lnet/time4j/Weekday;ILnet/time4j/tz/model/OffsetIndicator;I)V

    return-object p0
.end method

.method private static readOffset(Ljava/io/DataInput;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 400
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    return p0

    :cond_0
    mul-int/lit16 v0, v0, 0x384

    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private static readRuleBasedTransitionModel(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 647
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 650
    invoke-interface {p0}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    goto :goto_0

    .line 652
    :cond_0
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    and-int/2addr v2, v1

    .line 653
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    and-int/2addr v1, v3

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x384

    mul-long/2addr v0, v2

    const-wide v2, -0x110bc5000L

    add-long/2addr v0, v2

    :goto_0
    move-wide v3, v0

    .line 658
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v5

    .line 659
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v6

    .line 660
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v7

    .line 661
    new-instance v0, Lnet/time4j/tz/ZonalTransition;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lnet/time4j/tz/ZonalTransition;-><init>(JIII)V

    .line 663
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readRules(Ljava/io/ObjectInput;)Ljava/util/List;

    move-result-object p0

    .line 665
    new-instance v1, Lnet/time4j/tz/model/RuleBasedTransitionModel;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lnet/time4j/tz/model/RuleBasedTransitionModel;-><init>(Lnet/time4j/tz/ZonalTransition;Ljava/util/List;Z)V

    return-object v1
.end method

.method private static readRules(Ljava/io/ObjectInput;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 338
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 344
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 348
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 362
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/tz/model/DaylightSavingRule;

    goto :goto_1

    .line 359
    :pswitch_0
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readLastDayOfWeekPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;

    move-result-object v4

    goto :goto_1

    .line 356
    :pswitch_1
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readDayOfWeekInMonthPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;

    move-result-object v4

    goto :goto_1

    .line 353
    :pswitch_2
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->readFixedDayPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;

    move-result-object v4

    :goto_1
    if-eqz v2, :cond_2

    .line 365
    sget-object v5, Lnet/time4j/tz/model/RuleComparator;->INSTANCE:Lnet/time4j/tz/model/RuleComparator;

    .line 367
    invoke-virtual {v5, v2, v4}, Lnet/time4j/tz/model/RuleComparator;->compare(Lnet/time4j/tz/model/DaylightSavingRule;Lnet/time4j/tz/model/DaylightSavingRule;)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_2

    .line 369
    :cond_1
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string v0, "Order of daylight saving rules is not ascending."

    invoke-direct {p0, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_2
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    :cond_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readSavings(I)I
    .locals 2

    const/4 v0, 0x3

    .line 409
    div-int/2addr p0, v0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x1c20

    return p0

    :cond_1
    const/16 p0, 0xe10

    return p0

    :cond_2
    const/16 p0, 0x708

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static readTransitions(Ljava/io/ObjectInput;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-interface/range {p0 .. p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    invoke-static/range {p0 .. p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v2

    const-wide/high16 v3, -0x8000000000000000L

    move v9, v2

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v0, :cond_9

    .line 251
    invoke-interface/range {p0 .. p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    ushr-int/lit8 v10, v6, 0x5

    const/4 v11, 0x3

    and-int/2addr v10, v11

    ushr-int/lit8 v13, v6, 0x2

    and-int/lit8 v13, v13, 0x7

    .line 255
    invoke-static {v13}, Lnet/time4j/tz/model/SPX;->toTimeOfDayT(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    .line 260
    invoke-interface/range {p0 .. p0}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v13

    goto :goto_2

    :cond_2
    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x10

    .line 263
    invoke-interface/range {p0 .. p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v6, v14

    .line 264
    invoke-interface/range {p0 .. p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v6, v14

    int-to-long v14, v6

    const-wide/32 v16, 0x15180

    mul-long v14, v14, v16

    const-wide v16, -0x110bc5000L

    add-long v14, v14, v16

    int-to-long v5, v13

    add-long/2addr v14, v5

    const-wide/16 v5, 0x1c20

    sub-long/2addr v14, v5

    int-to-long v5, v2

    sub-long/2addr v14, v5

    move-wide v13, v14

    :goto_2
    cmp-long v3, v13, v3

    if-lez v3, :cond_8

    if-eq v10, v7, :cond_5

    const/4 v3, 0x2

    if-eq v10, v3, :cond_4

    if-eq v10, v11, :cond_3

    .line 289
    invoke-static/range {p0 .. p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v3

    goto :goto_3

    :cond_3
    const/16 v3, 0x1c20

    goto :goto_3

    :cond_4
    const/16 v3, 0xe10

    :goto_3
    move v11, v3

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    if-eqz v8, :cond_6

    .line 293
    invoke-static/range {p0 .. p0}, Lnet/time4j/tz/model/SPX;->readOffset(Ljava/io/DataInput;)I

    move-result v2

    :cond_6
    const v3, 0x7fffffff

    if-ne v11, v3, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    move v3, v11

    :goto_5
    add-int/2addr v3, v2

    .line 297
    new-instance v4, Lnet/time4j/tz/ZonalTransition;

    move-object v6, v4

    move-wide v7, v13

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lnet/time4j/tz/ZonalTransition;-><init>(JIII)V

    .line 300
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move v9, v3

    move-wide v3, v13

    goto :goto_0

    .line 270
    :cond_8
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Wrong order of transitions."

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-object v1
.end method

.method private static toTimeIndexR(I)I
    .locals 1

    if-eqz p0, :cond_6

    const/16 v0, 0xe10

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1c20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2a30

    if-eq p0, v0, :cond_3

    const v0, 0x13560

    if-eq p0, v0, :cond_2

    const v0, 0x14370

    if-eq p0, v0, :cond_1

    const v0, 0x15180

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private static toTimeIndexT(I)I
    .locals 1

    if-eqz p0, :cond_6

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_5

    const/16 v0, 0xe10

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1c20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2a30

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3840

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4650

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private static toTimeOfDay(Lnet/time4j/tz/model/GregorianTimezoneRule;)I
    .locals 5

    .line 426
    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getTimeOfDay()Lnet/time4j/PlainTime;

    move-result-object v0

    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainTime;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getDayOverflow()J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static toTimeOfDayR(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const p0, 0x15180

    return p0

    :pswitch_1
    const p0, 0x14370

    return p0

    :pswitch_2
    const p0, 0x13560

    return p0

    :pswitch_3
    const/16 p0, 0x2a30

    return p0

    :pswitch_4
    const/16 p0, 0x1c20

    return p0

    :pswitch_5
    const/16 p0, 0xe10

    return p0

    :pswitch_6
    const/4 p0, 0x0

    return p0

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

.method private static toTimeOfDayT(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x4650

    return p0

    :pswitch_1
    const/16 p0, 0x3840

    return p0

    :pswitch_2
    const/16 p0, 0x2a30

    return p0

    :pswitch_3
    const/16 p0, 0x1c20

    return p0

    :pswitch_4
    const/16 p0, 0xe10

    return p0

    :pswitch_5
    const/16 p0, 0x3c

    return p0

    :pswitch_6
    const/4 p0, 0x0

    return p0

    nop

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

.method private static writeArrayTransitionModel(Ljava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    check-cast p0, Lnet/time4j/tz/model/ArrayTransitionModel;

    .line 678
    invoke-virtual {p0, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->writeTransitions(Ljava/io/ObjectOutput;)V

    return-void
.end method

.method private static writeCompositeTransitionModel(Ljava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    check-cast p0, Lnet/time4j/tz/model/CompositeTransitionModel;

    .line 698
    invoke-virtual {p0, p1}, Lnet/time4j/tz/model/CompositeTransitionModel;->writeTransitions(Ljava/io/ObjectOutput;)V

    .line 699
    invoke-virtual {p0}, Lnet/time4j/tz/model/CompositeTransitionModel;->getRules()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/time4j/tz/model/SPX;->writeRules(Ljava/util/List;Ljava/io/ObjectOutput;)V

    return-void
.end method

.method private static writeDayOfWeekInMonthPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    check-cast p0, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;

    .line 488
    invoke-static {p0, p1}, Lnet/time4j/tz/model/SPX;->writeMonthIndicatorOffset(Lnet/time4j/tz/model/GregorianTimezoneRule;Ljava/io/DataOutput;)Z

    move-result v0

    .line 489
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getDayOfMonth()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    .line 490
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getDayOfWeek()B

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 491
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 492
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->isAfter()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    move v1, v2

    .line 493
    :goto_0
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->toTimeOfDay(Lnet/time4j/tz/model/GregorianTimezoneRule;)I

    move-result v3

    .line 496
    rem-int/lit16 v4, v3, 0x708

    if-nez v4, :cond_1

    .line 497
    div-int/lit16 v2, v3, 0x708

    or-int/2addr v1, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    or-int/lit8 v1, v1, 0x3f

    :goto_1
    and-int/lit16 v1, v1, 0xff

    .line 503
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    if-nez v0, :cond_2

    .line 506
    invoke-virtual {p0}, Lnet/time4j/tz/model/DayOfWeekInMonthPattern;->getSavings()I

    move-result p0

    invoke-static {p1, p0}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    :cond_2
    if-nez v2, :cond_3

    .line 510
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_3
    return-void
.end method

.method private static writeFixedDayPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    check-cast p0, Lnet/time4j/tz/model/FixedDayPattern;

    .line 436
    invoke-static {p0, p1}, Lnet/time4j/tz/model/SPX;->writeMonthIndicatorOffset(Lnet/time4j/tz/model/GregorianTimezoneRule;Ljava/io/DataOutput;)Z

    move-result v0

    .line 437
    invoke-virtual {p0}, Lnet/time4j/tz/model/FixedDayPattern;->getDayOfMonth()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    .line 438
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->toTimeOfDay(Lnet/time4j/tz/model/GregorianTimezoneRule;)I

    move-result v2

    .line 439
    invoke-static {v2}, Lnet/time4j/tz/model/SPX;->toTimeIndexR(I)I

    move-result v3

    or-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 441
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lnet/time4j/tz/model/FixedDayPattern;->getSavings()I

    move-result p0

    invoke-static {p1, p0}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    :cond_0
    if-nez v3, :cond_1

    .line 448
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_1
    return-void
.end method

.method private static writeLastDayOfWeekPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    check-cast p0, Lnet/time4j/tz/model/LastWeekdayPattern;

    .line 557
    invoke-static {p0, p1}, Lnet/time4j/tz/model/SPX;->writeMonthIndicatorOffset(Lnet/time4j/tz/model/GregorianTimezoneRule;Ljava/io/DataOutput;)Z

    move-result v0

    .line 558
    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getDayOfWeek()B

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    .line 559
    invoke-static {p0}, Lnet/time4j/tz/model/SPX;->toTimeOfDay(Lnet/time4j/tz/model/GregorianTimezoneRule;)I

    move-result v2

    .line 562
    rem-int/lit16 v3, v2, 0xe10

    if-nez v3, :cond_0

    .line 563
    div-int/lit16 v3, v2, 0xe10

    or-int/2addr v1, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    or-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x0

    :goto_0
    and-int/lit16 v1, v1, 0xff

    .line 569
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lnet/time4j/tz/model/LastWeekdayPattern;->getSavings()I

    move-result p0

    invoke-static {p1, p0}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    :cond_1
    if-nez v3, :cond_2

    .line 576
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_2
    return-void
.end method

.method private static writeMonthIndicatorOffset(Lnet/time4j/tz/model/GregorianTimezoneRule;Ljava/io/DataOutput;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getMonthValue()B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    .line 839
    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getIndicator()Lnet/time4j/tz/model/OffsetIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/tz/model/OffsetIndicator;->ordinal()I

    move-result v1

    .line 840
    invoke-virtual {p0}, Lnet/time4j/tz/model/GregorianTimezoneRule;->getSavings()I

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    const/16 v3, 0x708

    if-eq p0, v3, :cond_2

    const/16 v3, 0xe10

    if-eq p0, v3, :cond_1

    const/16 v3, 0x1c20

    if-eq p0, v3, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0xc

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x9

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x3

    :cond_3
    :goto_0
    or-int p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    .line 861
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    return v2
.end method

.method private static writeOffset(Ljava/io/DataOutput;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    rem-int/lit16 v0, p1, 0x384

    if-nez v0, :cond_0

    .line 387
    div-int/lit16 p1, p1, 0x384

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    .line 389
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 390
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    return-void
.end method

.method private static writeRuleBasedTransitionModel(Ljava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    check-cast p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;

    .line 618
    invoke-virtual {p0}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getInitialTransition()Lnet/time4j/tz/ZonalTransition;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v1

    const-wide v3, -0x110bc5000L

    cmp-long v5, v1, v3

    const/16 v6, 0xff

    if-ltz v5, :cond_0

    const-wide v7, 0x26fbfac7bL

    cmp-long v5, v1, v7

    if-gez v5, :cond_0

    const-wide/16 v7, 0x384

    .line 621
    rem-long v9, v1, v7

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_0

    sub-long/2addr v1, v3

    .line 626
    div-long/2addr v1, v7

    long-to-int v1, v1

    ushr-int/lit8 v2, v1, 0x10

    and-int/2addr v2, v6

    .line 627
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    ushr-int/lit8 v2, v1, 0x8

    and-int/2addr v2, v6

    .line 628
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    and-int/2addr v1, v6

    .line 629
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    goto :goto_0

    .line 631
    :cond_0
    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 632
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 635
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v1

    invoke-static {p1, v1}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    .line 636
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v1

    invoke-static {p1, v1}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    .line 637
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v0

    .line 638
    invoke-static {p1, v0}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    .line 639
    invoke-virtual {p0}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getRules()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/time4j/tz/model/SPX;->writeRules(Ljava/util/List;Ljava/io/ObjectOutput;)V

    return-void
.end method

.method private static writeRules(Ljava/util/List;Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;",
            "Ljava/io/ObjectOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 315
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/model/DaylightSavingRule;

    .line 316
    invoke-virtual {v0}, Lnet/time4j/tz/model/DaylightSavingRule;->getType()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 318
    invoke-virtual {v0}, Lnet/time4j/tz/model/DaylightSavingRule;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 329
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :pswitch_0
    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeLastDayOfWeekPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 323
    :pswitch_1
    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeDayOfWeekInMonthPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 320
    :pswitch_2
    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeFixedDayPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeTransition(Lnet/time4j/tz/ZonalTransition;ILjava/io/DataOutput;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const/16 v4, 0x80

    int-to-byte v4, v4

    goto :goto_1

    :cond_1
    move v4, v2

    .line 731
    :goto_1
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_4

    const/16 v1, 0xe10

    if-eq v5, v1, :cond_3

    const/16 v1, 0x1c20

    if-eq v5, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    :cond_4
    :goto_2
    shl-int/lit8 v7, v1, 0x5

    or-int/2addr v4, v7

    int-to-byte v4, v4

    .line 751
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v7

    int-to-long v9, p1

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1c20

    add-long/2addr v7, v9

    const-wide v9, -0x110bc5000L

    cmp-long p1, v7, v9

    if-ltz p1, :cond_5

    const-wide v11, 0x434e22100L

    cmp-long p1, v7, v11

    if-gez p1, :cond_5

    const p1, 0x15180

    .line 758
    invoke-static {v7, v8, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/model/SPX;->toTimeIndexT(I)I

    move-result v2

    :cond_5
    shl-int/lit8 p1, v2, 0x2

    or-int/2addr p1, v4

    int-to-byte p1, p1

    if-nez v2, :cond_6

    .line 764
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 765
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide p0

    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_3

    :cond_6
    sub-long/2addr v7, v9

    const-wide/32 v9, 0x15180

    .line 767
    div-long/2addr v7, v9

    long-to-int p0, v7

    ushr-int/lit8 v2, p0, 0x10

    and-int/2addr v2, v6

    int-to-byte v2, v2

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 770
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p1, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 771
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    and-int/lit16 p0, p0, 0xff

    .line 772
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_3
    if-nez v1, :cond_7

    .line 776
    invoke-static {p2, v5}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    :cond_7
    if-eqz v3, :cond_8

    .line 780
    invoke-static {p2, v0}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    :cond_8
    return v0
.end method

.method static writeTransitions([Lnet/time4j/tz/ZonalTransition;ILjava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 223
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeInt(I)V

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 226
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v1

    .line 227
    invoke-static {p2, v1}, Lnet/time4j/tz/model/SPX;->writeOffset(Ljava/io/DataOutput;I)V

    :goto_0
    if-ge v0, p1, :cond_0

    .line 230
    aget-object v2, p0, v0

    invoke-static {v2, v1, p2}, Lnet/time4j/tz/model/SPX;->writeTransition(Lnet/time4j/tz/ZonalTransition;ILjava/io/DataOutput;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 188
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    :pswitch_0
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type."

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :pswitch_1
    invoke-static {p1}, Lnet/time4j/tz/model/SPX;->readCompositeTransitionModel(Ljava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-static {p1}, Lnet/time4j/tz/model/SPX;->readArrayTransitionModel(Ljava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 201
    :pswitch_3
    invoke-static {p1}, Lnet/time4j/tz/model/SPX;->readRuleBasedTransitionModel(Ljava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 198
    :pswitch_4
    invoke-static {p1}, Lnet/time4j/tz/model/SPX;->readLastDayOfWeekPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 195
    :pswitch_5
    invoke-static {p1}, Lnet/time4j/tz/model/SPX;->readDayOfWeekInMonthPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 192
    :pswitch_6
    invoke-static {p1}, Lnet/time4j/tz/model/SPX;->readFixedDayPattern(Ljava/io/DataInput;)Lnet/time4j/tz/model/DaylightSavingRule;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget v0, p0, Lnet/time4j/tz/model/SPX;->type:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 145
    iget v0, p0, Lnet/time4j/tz/model/SPX;->type:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :pswitch_0
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type."

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :pswitch_1
    iget-object v0, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeCompositeTransitionModel(Ljava/lang/Object;Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeArrayTransitionModel(Ljava/lang/Object;Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 156
    :pswitch_3
    iget-object v0, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeRuleBasedTransitionModel(Ljava/lang/Object;Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 153
    :pswitch_4
    iget-object v0, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeLastDayOfWeekPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 150
    :pswitch_5
    iget-object v0, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeDayOfWeekInMonthPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    .line 147
    :pswitch_6
    iget-object v0, p0, Lnet/time4j/tz/model/SPX;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lnet/time4j/tz/model/SPX;->writeFixedDayPattern(Ljava/lang/Object;Ljava/io/DataOutput;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
