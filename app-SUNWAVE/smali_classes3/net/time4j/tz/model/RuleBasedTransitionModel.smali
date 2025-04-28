.class final Lnet/time4j/tz/model/RuleBasedTransitionModel;
.super Lnet/time4j/tz/model/TransitionModel;
.source "RuleBasedTransitionModel.java"


# static fields
.field private static final LAST_CACHED_YEAR:I

.field private static final serialVersionUID:J = 0x2217f45e2079f7cfL


# instance fields
.field private final transient gregorian:Z

.field private final transient initial:Lnet/time4j/tz/ZonalTransition;

.field private final transient rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;"
        }
    .end annotation
.end field

.field private final transient stdTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final transient tCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x64

    .line 59
    invoke-static {v0}, Lnet/time4j/tz/model/TransitionModel;->getFutureMoment(I)J

    move-result-wide v0

    .line 60
    sget-object v2, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    sget-object v3, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v2, v0, v1, v3}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    .line 62
    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->toPackedDate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->readYear(J)I

    move-result v0

    sput v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->LAST_CACHED_YEAR:I

    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/tz/model/RuleBasedTransitionModel;-><init>(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;Z)V

    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;Z)V"
        }
    .end annotation

    .line 92
    new-instance v6, Lnet/time4j/tz/ZonalTransition;

    .line 95
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v3

    .line 96
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v4

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/time4j/tz/ZonalTransition;-><init>(JIII)V

    .line 92
    invoke-direct {p0, v6, p2, p3}, Lnet/time4j/tz/model/RuleBasedTransitionModel;-><init>(Lnet/time4j/tz/ZonalTransition;Ljava/util/List;Z)V

    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/ZonalTransition;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalTransition;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;Z)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lnet/time4j/tz/model/TransitionModel;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->tCache:Ljava/util/concurrent/ConcurrentMap;

    .line 112
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 115
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_7

    if-eqz p3, :cond_0

    .line 121
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, p3

    .line 125
    :cond_0
    sget-object p3, Lnet/time4j/tz/model/RuleComparator;->INSTANCE:Lnet/time4j/tz/model/RuleComparator;

    invoke-static {p2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p3, 0x0

    .line 128
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 129
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/tz/model/DaylightSavingRule;

    if-nez p3, :cond_1

    .line 131
    invoke-virtual {v2}, Lnet/time4j/tz/model/DaylightSavingRule;->getCalendarType()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v2}, Lnet/time4j/tz/model/DaylightSavingRule;->getCalendarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 133
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rules with different calendar systems not permitted."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "iso8601"

    .line 139
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->gregorian:Z

    .line 142
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p3, v2, v4

    if-nez p3, :cond_5

    .line 143
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result p3

    if-nez p3, :cond_4

    .line 148
    new-instance p3, Lnet/time4j/tz/ZonalTransition;

    .line 149
    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    invoke-virtual {v0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v3

    .line 150
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result v5

    .line 151
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p3

    invoke-direct/range {v2 .. v7}, Lnet/time4j/tz/ZonalTransition;-><init>(JIII)V

    goto :goto_1

    .line 144
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Initial transition must not have any dst-offset: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 156
    :cond_5
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getNextTransition(JLnet/time4j/tz/ZonalTransition;Ljava/util/List;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p3

    .line 157
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v0

    invoke-virtual {p3}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result p3

    if-ne v0, p3, :cond_6

    move-object v2, p1

    .line 164
    :goto_1
    iput-object v2, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    .line 165
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    .line 168
    invoke-static {v1}, Lnet/time4j/tz/model/TransitionModel;->getFutureMoment(I)J

    move-result-wide v6

    const-wide/16 v4, 0x0

    .line 169
    invoke-static/range {v2 .. v7}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(Lnet/time4j/tz/ZonalTransition;Ljava/util/List;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->stdTransitions:Ljava/util/List;

    return-void

    .line 158
    :cond_6
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistent model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 116
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many daylight saving rules: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing daylight saving rules."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getNextTransition(JLnet/time4j/tz/ZonalTransition;Ljava/util/List;)Lnet/time4j/tz/ZonalTransition;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lnet/time4j/tz/ZonalTransition;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;)",
            "Lnet/time4j/tz/ZonalTransition;"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 496
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v1

    move-wide/from16 v3, p0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 498
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result v3

    .line 501
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-nez v6, :cond_3

    .line 502
    rem-int v8, v7, v4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/tz/model/DaylightSavingRule;

    add-int/lit8 v10, v7, -0x1

    add-int/2addr v10, v4

    .line 503
    rem-int/2addr v10, v4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/time4j/tz/model/DaylightSavingRule;

    .line 504
    invoke-virtual {v10}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v11

    invoke-static {v9, v3, v11}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getShift(Lnet/time4j/tz/model/DaylightSavingRule;II)I

    move-result v11

    if-nez v7, :cond_0

    int-to-long v12, v11

    add-long/2addr v12, v1

    .line 507
    invoke-static {v9, v12, v13}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getYear(Lnet/time4j/tz/model/DaylightSavingRule;J)I

    move-result v5

    goto :goto_1

    :cond_0
    if-nez v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 512
    :cond_1
    :goto_1
    invoke-static {v9, v5, v11}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitionTime(Lnet/time4j/tz/model/DaylightSavingRule;II)J

    move-result-wide v13

    cmp-long v8, v13, v1

    if-lez v8, :cond_2

    .line 515
    new-instance v6, Lnet/time4j/tz/ZonalTransition;

    .line 518
    invoke-virtual {v10}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v8

    add-int v15, v3, v8

    .line 519
    invoke-virtual {v9}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v8

    add-int v16, v3, v8

    .line 520
    invoke-virtual {v9}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v17

    move-object v12, v6

    invoke-direct/range {v12 .. v17}, Lnet/time4j/tz/ZonalTransition;-><init>(JIII)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v6
.end method

.method private static getShift(Lnet/time4j/tz/model/DaylightSavingRule;II)I
    .locals 2

    .line 534
    invoke-virtual {p0}, Lnet/time4j/tz/model/DaylightSavingRule;->getIndicator()Lnet/time4j/tz/model/OffsetIndicator;

    move-result-object p0

    .line 536
    sget-object v0, Lnet/time4j/tz/model/RuleBasedTransitionModel$1;->$SwitchMap$net$time4j$tz$model$OffsetIndicator:[I

    invoke-virtual {p0}, Lnet/time4j/tz/model/OffsetIndicator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    add-int/2addr p1, p2

    return p1

    .line 544
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/tz/model/OffsetIndicator;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static getTransitionTime(Lnet/time4j/tz/model/DaylightSavingRule;II)J
    .locals 0

    .line 555
    invoke-virtual {p0, p1}, Lnet/time4j/tz/model/DaylightSavingRule;->getDate(I)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p0}, Lnet/time4j/tz/model/DaylightSavingRule;->getTimeOfDay()Lnet/time4j/PlainTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p0

    .line 556
    invoke-static {p2}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTimestamp;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/Moment;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide p0

    return-wide p0
.end method

.method private getTransitions(I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 568
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 569
    iget-object v3, v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->tCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 572
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 573
    iget-object v4, v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v4}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result v4

    const/4 v5, 0x0

    .line 575
    iget-object v6, v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 576
    iget-object v7, v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/tz/model/DaylightSavingRule;

    .line 577
    iget-object v8, v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    add-int/lit8 v9, v5, -0x1

    add-int/2addr v9, v6

    rem-int/2addr v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/tz/model/DaylightSavingRule;

    .line 578
    invoke-virtual {v8}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v9

    invoke-static {v7, v4, v9}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getShift(Lnet/time4j/tz/model/DaylightSavingRule;II)I

    move-result v9

    .line 580
    new-instance v15, Lnet/time4j/tz/ZonalTransition;

    .line 582
    invoke-static {v7, v1, v9}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitionTime(Lnet/time4j/tz/model/DaylightSavingRule;II)J

    move-result-wide v11

    .line 583
    invoke-virtual {v8}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v8

    add-int v13, v4, v8

    .line 584
    invoke-virtual {v7}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v8

    add-int v14, v4, v8

    .line 585
    invoke-virtual {v7}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v7

    move-object v10, v15

    move-object v8, v15

    move v15, v7

    invoke-direct/range {v10 .. v15}, Lnet/time4j/tz/ZonalTransition;-><init>(JIII)V

    .line 580
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 588
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 590
    sget v4, Lnet/time4j/tz/model/RuleBasedTransitionModel;->LAST_CACHED_YEAR:I

    if-gt v1, v4, :cond_1

    iget-boolean v1, v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->gregorian:Z

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->tCache:Ljava/util/concurrent/ConcurrentMap;

    .line 595
    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v3, v1

    :cond_1
    return-object v3
.end method

.method private getTransitions(Lnet/time4j/base/GregorianDate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/GregorianDate;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/model/DaylightSavingRule;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/model/DaylightSavingRule;->toCalendarYear(Lnet/time4j/base/GregorianDate;)I

    move-result p1

    invoke-direct {p0, p1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static getTransitions(Lnet/time4j/tz/ZonalTransition;Ljava/util/List;JJ)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalTransition;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    .line 439
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v3

    cmp-long v5, v1, p4

    if-gtz v5, :cond_6

    cmp-long v6, p4, v3

    if-lez v6, :cond_5

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 450
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/high16 v6, -0x80000000

    .line 453
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    .line 455
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result v9

    .line 458
    :goto_0
    rem-int v10, v8, v7

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/time4j/tz/model/DaylightSavingRule;

    add-int/lit8 v12, v8, -0x1

    add-int/2addr v12, v7

    .line 459
    rem-int/2addr v12, v7

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/time4j/tz/model/DaylightSavingRule;

    .line 460
    invoke-virtual {v12}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v13

    invoke-static {v11, v9, v13}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getShift(Lnet/time4j/tz/model/DaylightSavingRule;II)I

    move-result v13

    if-nez v8, :cond_1

    .line 463
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move/from16 v16, v7

    int-to-long v6, v13

    add-long/2addr v14, v6

    invoke-static {v11, v14, v15}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getYear(Lnet/time4j/tz/model/DaylightSavingRule;J)I

    move-result v6

    goto :goto_1

    :cond_1
    move/from16 v16, v7

    if-nez v10, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 468
    :cond_2
    :goto_1
    invoke-static {v11, v6, v13}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitionTime(Lnet/time4j/tz/model/DaylightSavingRule;II)J

    move-result-wide v18

    add-int/lit8 v8, v8, 0x1

    cmp-long v7, v18, p4

    if-ltz v7, :cond_3

    .line 486
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    cmp-long v7, v18, v1

    if-ltz v7, :cond_4

    cmp-long v7, v18, v3

    if-lez v7, :cond_4

    .line 477
    new-instance v7, Lnet/time4j/tz/ZonalTransition;

    .line 480
    invoke-virtual {v12}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v10

    add-int v20, v9, v10

    .line 481
    invoke-virtual {v11}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v10

    add-int v21, v9, v10

    .line 482
    invoke-virtual {v11}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v22

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v22}, Lnet/time4j/tz/ZonalTransition;-><init>(JIII)V

    .line 477
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v7, v16

    goto :goto_0

    .line 447
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 442
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start after end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getYear(Lnet/time4j/tz/model/DaylightSavingRule;J)I
    .locals 2

    .line 611
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    const v1, 0x15180

    .line 613
    invoke-static {p1, p2, v1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide p1

    sget-object v1, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 612
    invoke-virtual {v0, p1, p2, v1}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide p1

    .line 611
    invoke-virtual {p0, p1, p2}, Lnet/time4j/tz/model/DaylightSavingRule;->toCalendarYear(J)I

    move-result p0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 631
    new-instance v0, Lnet/time4j/tz/model/SPX;

    const/16 v1, 0x7d

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/model/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "*** Last rules:"

    .line 328
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lnet/time4j/tz/model/RuleBasedTransitionModel;->NEW_LINE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 330
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/model/DaylightSavingRule;

    const-string v2, ">>> "

    .line 331
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    sget-object v2, Lnet/time4j/tz/model/RuleBasedTransitionModel;->NEW_LINE:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 293
    :cond_0
    instance-of v1, p1, Lnet/time4j/tz/model/RuleBasedTransitionModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 294
    check-cast p1, Lnet/time4j/tz/model/RuleBasedTransitionModel;

    .line 295
    iget-object v1, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    iget-object v3, p1, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    .line 296
    invoke-virtual {v1, v3}, Lnet/time4j/tz/ZonalTransition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    iget-object p1, p1, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    .line 297
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getConflictTransition(Lnet/time4j/base/GregorianDate;J)Lnet/time4j/tz/ZonalTransition;
    .locals 6

    .line 363
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v0

    .line 365
    iget-object v2, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    .line 367
    invoke-virtual {v2}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v2

    iget-object v3, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    .line 368
    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v3

    .line 366
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(Lnet/time4j/base/GregorianDate;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/ZonalTransition;

    .line 375
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v2

    .line 377
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 378
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v4, p2, v4

    if-gez v4, :cond_2

    return-object v1

    .line 380
    :cond_2
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    return-object v0

    .line 383
    :cond_3
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->isOverlap()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v4, p2, v4

    if-gez v4, :cond_4

    return-object v1

    .line 386
    :cond_4
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    return-object v0

    :cond_5
    return-object v1
.end method

.method public getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 2

    .line 231
    invoke-static {p1, p2}, Lnet/time4j/tz/model/TransitionModel;->toLocalSecs(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)J

    move-result-wide v0

    .line 232
    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getConflictTransition(Lnet/time4j/base/GregorianDate;J)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    return-object p1
.end method

.method public getInitialOffset()Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 178
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v0

    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    return-object v0
.end method

.method getInitialTransition()Lnet/time4j/tz/ZonalTransition;
    .locals 1

    .line 343
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    return-object v0
.end method

.method public getNextTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 3

    .line 239
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    iget-object p1, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    iget-object v2, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    invoke-static {v0, v1, p1, v2}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getNextTransition(JLnet/time4j/tz/ZonalTransition;Ljava/util/List;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    return-object p1
.end method

.method getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    return-object v0
.end method

.method public getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 13

    .line 185
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v0

    .line 187
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return-object v3

    .line 192
    :cond_0
    iget-object v2, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v2}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result v2

    .line 193
    iget-object v4, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 194
    iget-object v5, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/tz/model/DaylightSavingRule;

    .line 195
    iget-object v7, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/tz/model/DaylightSavingRule;

    .line 196
    invoke-virtual {v7}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v7

    invoke-static {v5, v2, v7}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getShift(Lnet/time4j/tz/model/DaylightSavingRule;II)I

    move-result v2

    .line 197
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v9

    int-to-long v11, v2

    add-long/2addr v9, v11

    invoke-static {v5, v9, v10}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getYear(Lnet/time4j/tz/model/DaylightSavingRule;J)I

    move-result v2

    .line 198
    invoke-direct {p0, v2}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(I)Ljava/util/List;

    move-result-object v5

    :goto_0
    if-ge v6, v4, :cond_4

    .line 201
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/tz/ZonalTransition;

    .line 202
    invoke-virtual {v7}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v9

    .line 204
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-gez v11, :cond_2

    if-nez v3, :cond_4

    if-nez v6, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 207
    invoke-direct {p0, v2}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalTransition;

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 209
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalTransition;

    .line 211
    :goto_1
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    move-object v3, p1

    goto :goto_2

    :cond_2
    cmp-long v9, v9, v0

    if-lez v9, :cond_3

    move-object v3, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v3
.end method

.method public getStdTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->stdTransitions:Ljava/util/List;

    return-object v0
.end method

.method public getTransitions(Lnet/time4j/base/UnixTime;Lnet/time4j/base/UnixTime;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/UnixTime;",
            "Lnet/time4j/base/UnixTime;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    iget-object v1, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    .line 270
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v2

    .line 271
    invoke-interface {p2}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v4

    .line 267
    invoke-static/range {v0 .. v5}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(Lnet/time4j/tz/ZonalTransition;Ljava/util/List;JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getValidOffsets(Lnet/time4j/base/GregorianDate;J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/GregorianDate;",
            "J)",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v0

    .line 402
    iget-object v2, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v2}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v2

    .line 403
    iget-object v3, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 406
    invoke-static {v2}, Lnet/time4j/tz/model/TransitionModel;->toList(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 409
    :cond_0
    invoke-direct {p0, p1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(Lnet/time4j/base/GregorianDate;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/ZonalTransition;

    .line 410
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v1

    .line 411
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v3

    .line 413
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 414
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v1

    cmp-long v4, p2, v4

    if-gez v4, :cond_1

    .line 415
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/model/TransitionModel;->toList(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    int-to-long v4, v3

    add-long/2addr v1, v4

    cmp-long v0, p2, v1

    if-gez v0, :cond_4

    .line 417
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 419
    :cond_2
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->isOverlap()Z

    move-result v4

    if-eqz v4, :cond_4

    int-to-long v4, v3

    add-long/2addr v4, v1

    cmp-long v4, p2, v4

    if-gez v4, :cond_3

    .line 421
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/model/TransitionModel;->toList(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 422
    :cond_3
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    cmp-long v1, p2, v1

    if-gez v1, :cond_4

    .line 423
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result p1

    invoke-static {v3, p1}, Lnet/time4j/tz/model/TransitionModel;->toList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    move v2, v3

    goto :goto_0

    .line 428
    :cond_5
    invoke-static {v2}, Lnet/time4j/tz/model/TransitionModel;->toList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/GregorianDate;",
            "Lnet/time4j/base/WallTime;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {p1, p2}, Lnet/time4j/tz/model/TransitionModel;->toLocalSecs(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)J

    move-result-wide v0

    .line 250
    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getValidOffsets(Lnet/time4j/base/GregorianDate;J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasNegativeDST()Z
    .locals 2

    .line 278
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/model/DaylightSavingRule;

    .line 279
    invoke-virtual {v1}, Lnet/time4j/tz/model/DaylightSavingRule;->getSavings()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 307
    iget-object v0, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[initial="

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->initial:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",rules="

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v1, p0, Lnet/time4j/tz/model/RuleBasedTransitionModel;->rules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
