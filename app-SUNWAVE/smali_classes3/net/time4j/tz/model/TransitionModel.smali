.class public abstract Lnet/time4j/tz/model/TransitionModel;
.super Ljava/lang/Object;
.source "TransitionModel.java"

# interfaces
.implements Lnet/time4j/tz/TransitionHistory;
.implements Ljava/io/Serializable;


# static fields
.field static final NEW_LINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 59
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/model/TransitionModel;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dump(Lnet/time4j/tz/ZonalTransition;Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v0

    sget-object v2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {v0, v1, v2}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object v0

    const-string v1, ">>> Transition at: "

    .line 289
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Lnet/time4j/Moment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, " from "

    .line 290
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v1

    invoke-static {v1}, Lnet/time4j/tz/model/TransitionModel;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, " to "

    .line 291
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v1

    invoke-static {v1}, Lnet/time4j/tz/model/TransitionModel;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string v0, ", DST="

    .line 292
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 293
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result p0

    invoke-static {p0}, Lnet/time4j/tz/model/TransitionModel;->format(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 294
    sget-object p0, Lnet/time4j/tz/model/TransitionModel;->NEW_LINE:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method private static format(I)Ljava/lang/String;
    .locals 0

    .line 307
    invoke-static {p0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/tz/ZonalOffset;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getFutureMoment(I)J
    .locals 6

    int-to-double v0, p0

    const-wide v2, 0x417e185580000000L    # 3.1556952E7

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static of(Ljava/util/List;)Lnet/time4j/tz/TransitionHistory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;)",
            "Lnet/time4j/tz/TransitionHistory;"
        }
    .end annotation

    .line 91
    new-instance v0, Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-direct {v0, p0}, Lnet/time4j/tz/model/ArrayTransitionModel;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static of(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;)Lnet/time4j/tz/TransitionHistory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;)",
            "Lnet/time4j/tz/TransitionHistory;"
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance p1, Lnet/time4j/tz/model/EmptyTransitionModel;

    invoke-direct {p1, p0}, Lnet/time4j/tz/model/EmptyTransitionModel;-><init>(Lnet/time4j/tz/ZonalOffset;)V

    return-object p1

    .line 123
    :cond_0
    new-instance v0, Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-direct {v0, p0, p1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;-><init>(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;)V

    return-object v0
.end method

.method public static of(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;Ljava/util/List;)Lnet/time4j/tz/TransitionHistory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;)",
            "Lnet/time4j/tz/TransitionHistory;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 158
    invoke-static {p0, p1, p2, v0, v0}, Lnet/time4j/tz/model/TransitionModel;->of(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;Ljava/util/List;ZZ)Lnet/time4j/tz/TransitionHistory;

    move-result-object p0

    return-object p0
.end method

.method static of(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;Ljava/util/List;ZZ)Lnet/time4j/tz/TransitionHistory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;ZZ)",
            "Lnet/time4j/tz/TransitionHistory;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 194
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 197
    sget-object p2, Lnet/time4j/tz/model/RuleComparator;->INSTANCE:Lnet/time4j/tz/model/RuleComparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object p1, p2

    .line 203
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 p2, 0x0

    if-nez v1, :cond_2

    .line 206
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 207
    new-instance p1, Lnet/time4j/tz/model/EmptyTransitionModel;

    invoke-direct {p1, p0}, Lnet/time4j/tz/model/EmptyTransitionModel;-><init>(Lnet/time4j/tz/ZonalOffset;)V

    return-object p1

    .line 209
    :cond_1
    new-instance p3, Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-direct {p3, p0, p1, p2}, Lnet/time4j/tz/model/RuleBasedTransitionModel;-><init>(Lnet/time4j/tz/ZonalOffset;Ljava/util/List;Z)V

    return-object p3

    .line 217
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {p3}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result p3

    invoke-static {p3}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p3

    if-eqz p4, :cond_4

    .line 219
    invoke-virtual {p0, p3}, Lnet/time4j/tz/ZonalOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 220
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Initial offset "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not equal "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "to previous offset of first transition: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 226
    new-instance p0, Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-direct {p0, v2, p2, p4}, Lnet/time4j/tz/model/ArrayTransitionModel;-><init>(Ljava/util/List;ZZ)V

    return-object p0

    :cond_5
    add-int/lit8 p0, v1, -0x1

    .line 229
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lnet/time4j/tz/ZonalTransition;

    .line 230
    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide p2

    const-wide/16 v4, 0x1

    add-long v5, p2, v4

    const/4 p0, 0x1

    .line 231
    invoke-static {p0}, Lnet/time4j/tz/model/TransitionModel;->getFutureMoment(I)J

    move-result-wide v7

    cmp-long p0, v5, v7

    if-gez p0, :cond_6

    move-object v4, p1

    .line 235
    invoke-static/range {v3 .. v8}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(Lnet/time4j/tz/ZonalTransition;Ljava/util/List;JJ)Ljava/util/List;

    move-result-object p0

    .line 234
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    :cond_6
    new-instance p0, Lnet/time4j/tz/model/CompositeTransitionModel;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/time4j/tz/model/CompositeTransitionModel;-><init>(ILjava/util/List;Ljava/util/List;ZZ)V

    return-object p0
.end method

.method static toList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-static {p0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static toList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-static {p0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p0

    .line 254
    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static toLocalSecs(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)J
    .locals 4

    .line 269
    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v0

    .line 270
    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v1

    .line 271
    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result p0

    .line 268
    invoke-static {v0, v1, p0}, Lnet/time4j/base/GregorianMath;->toMJD(III)J

    move-result-wide v0

    .line 272
    sget-object p0, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    sget-object v2, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 274
    invoke-virtual {p0, v0, v1, v2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    .line 273
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 276
    invoke-interface {p1}, Lnet/time4j/base/WallTime;->getHour()I

    move-result p0

    mul-int/lit16 p0, p0, 0xe10

    int-to-long v2, p0

    add-long/2addr v0, v2

    .line 277
    invoke-interface {p1}, Lnet/time4j/base/WallTime;->getMinute()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    int-to-long v2, p0

    add-long/2addr v0, v2

    .line 278
    invoke-interface {p1}, Lnet/time4j/base/WallTime;->getSecond()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public hasNegativeDST()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
