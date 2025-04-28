.class public abstract Lnet/time4j/engine/AbstractMetric;
.super Ljava/lang/Object;
.source "AbstractMetric.java"

# interfaces
.implements Lnet/time4j/engine/TimeMetric;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/engine/AbstractMetric$ReversalMetric;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lnet/time4j/engine/ChronoUnit;",
        "P:",
        "Lnet/time4j/engine/AbstractDuration<",
        "TU;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeMetric<",
        "TU;TP;>;",
        "Ljava/util/Comparator<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final LENGTH_OF_FORTNIGHT:D = 1209600.0

.field private static final MIO:I = 0xf4240


# instance fields
.field private final normalizing:Z

.field private final sortedUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TU;>;Z)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    if-ge v0, v1, :cond_2

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoUnit;

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 173
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate unit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/engine/AbstractMetric;->sortedUnits:Ljava/util/List;

    .line 180
    iput-boolean p2, p0, Lnet/time4j/engine/AbstractMetric;->normalizing:Z

    return-void

    .line 164
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing units."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(ZLjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "+TU;>;)V"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p1}, Lnet/time4j/engine/AbstractMetric;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method protected varargs constructor <init>(Z[Lnet/time4j/engine/ChronoUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TU;)V"
        }
    .end annotation

    .line 120
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lnet/time4j/engine/AbstractMetric;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/engine/AbstractMetric;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/time4j/engine/AbstractMetric;->sortedUnits:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lnet/time4j/engine/AbstractMetric;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;I)Lnet/time4j/engine/AbstractDuration;
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/engine/AbstractMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;I)Lnet/time4j/engine/AbstractDuration;

    move-result-object p0

    return-object p0
.end method

.method private between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;I)Lnet/time4j/engine/AbstractDuration;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;TT;I)TP;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 225
    invoke-virtual {v2, v1}, Lnet/time4j/engine/TimePoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/engine/AbstractMetric;->createEmptyTimeSpan()Lnet/time4j/engine/AbstractDuration;

    move-result-object v1

    return-object v1

    .line 234
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    move-object v3, v1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    move v6, v4

    move-object v2, v1

    .line 241
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/engine/TimePoint;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    .line 244
    iget-object v8, v0, Lnet/time4j/engine/AbstractMetric;->sortedUnits:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v4, v8, :cond_8

    .line 249
    iget-object v9, v0, Lnet/time4j/engine/AbstractMetric;->sortedUnits:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/engine/ChronoUnit;

    .line 252
    invoke-direct {v0, v1, v9}, Lnet/time4j/engine/AbstractMetric;->getLength(Lnet/time4j/engine/TimeAxis;Lnet/time4j/engine/ChronoUnit;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    add-int/lit8 v10, v8, -0x1

    if-ge v4, v10, :cond_3

    :cond_2
    move/from16 v15, p3

    :goto_2
    const/4 v5, 0x1

    goto :goto_6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v10, 0x1

    move-wide v12, v10

    :goto_3
    if-ge v4, v8, :cond_4

    .line 262
    iget-object v14, v0, Lnet/time4j/engine/AbstractMetric;->sortedUnits:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/time4j/engine/ChronoUnit;

    .line 263
    invoke-direct {v0, v1, v9, v14}, Lnet/time4j/engine/AbstractMetric;->getFactor(Lnet/time4j/engine/TimeAxis;Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v15

    mul-long/2addr v12, v15

    const-wide/32 v15, 0xf4240

    cmp-long v15, v12, v15

    if-gez v15, :cond_4

    .line 266
    invoke-virtual {v1, v9, v14}, Lnet/time4j/engine/TimeAxis;->isConvertible(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v14

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 277
    invoke-virtual {v2, v3, v9}, Lnet/time4j/engine/TimePoint;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_7

    :goto_4
    cmp-long v16, v12, v14

    if-lez v16, :cond_2

    .line 288
    invoke-virtual {v2, v12, v13, v9}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v14

    move/from16 v15, p3

    if-gt v4, v15, :cond_6

    add-int/lit8 v5, v8, -0x1

    if-eq v4, v5, :cond_6

    .line 292
    invoke-virtual {v14, v12, v13, v9}, Lnet/time4j/engine/TimePoint;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/time4j/engine/TimePoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    sub-long/2addr v12, v10

    const-wide/16 v14, 0x0

    goto :goto_4

    .line 295
    :cond_6
    :goto_5
    invoke-static {v12, v13, v9}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/time4j/engine/AbstractMetric;->resolve(Lnet/time4j/engine/TimeSpan$Item;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v14

    goto :goto_2

    :goto_6
    add-int/2addr v4, v5

    goto :goto_1

    .line 280
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Implementation error: Cannot compute timespan due to illegal negative timespan amounts."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_8
    iget-boolean v2, v0, Lnet/time4j/engine/AbstractMetric;->normalizing:Z

    if-eqz v2, :cond_9

    .line 306
    iget-object v2, v0, Lnet/time4j/engine/AbstractMetric;->sortedUnits:Ljava/util/List;

    invoke-direct {v0, v1, v2, v7}, Lnet/time4j/engine/AbstractMetric;->normalize(Lnet/time4j/engine/TimeAxis;Ljava/util/List;Ljava/util/List;)V

    .line 309
    :cond_9
    invoke-virtual {v0, v7, v6}, Lnet/time4j/engine/AbstractMetric;->createTimeSpan(Ljava/util/List;Z)Lnet/time4j/engine/AbstractDuration;

    move-result-object v1

    return-object v1
.end method

.method private getFactor(Lnet/time4j/engine/TimeAxis;Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(",
            "Lnet/time4j/engine/TimeAxis<",
            "-TU;TT;>;TU;TU;)J"
        }
    .end annotation

    .line 488
    invoke-direct {p0, p1, p2}, Lnet/time4j/engine/AbstractMetric;->getLength(Lnet/time4j/engine/TimeAxis;Lnet/time4j/engine/ChronoUnit;)D

    move-result-wide v0

    .line 489
    invoke-direct {p0, p1, p3}, Lnet/time4j/engine/AbstractMetric;->getLength(Lnet/time4j/engine/TimeAxis;Lnet/time4j/engine/ChronoUnit;)D

    move-result-wide p1

    div-double/2addr v0, p1

    .line 490
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method private static getItem(Ljava/util/List;Ljava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;TU;)",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;"
        }
    .end annotation

    .line 429
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 430
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/TimeSpan$Item;

    .line 431
    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLength(Lnet/time4j/engine/TimeAxis;Lnet/time4j/engine/ChronoUnit;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(",
            "Lnet/time4j/engine/TimeAxis<",
            "-TU;TT;>;TU;)D"
        }
    .end annotation

    .line 500
    invoke-virtual {p1, p2}, Lnet/time4j/engine/TimeAxis;->getLength(Ljava/lang/Object;)D

    move-result-wide p1

    return-wide p1
.end method

.method private normalize(Lnet/time4j/engine/TimeAxis;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(",
            "Lnet/time4j/engine/TimeAxis<",
            "-TU;TT;>;",
            "Ljava/util/List<",
            "TU;>;",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 381
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/engine/TimeAxis;->unitComparator()Ljava/util/Comparator;

    move-result-object v3

    .line 383
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    if-lez v4, :cond_2

    .line 385
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/engine/ChronoUnit;

    add-int/lit8 v6, v4, -0x1

    .line 386
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/engine/ChronoUnit;

    move-object/from16 v7, p0

    .line 387
    invoke-direct {v7, v0, v6, v5}, Lnet/time4j/engine/AbstractMetric;->getFactor(Lnet/time4j/engine/TimeAxis;Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    cmp-long v10, v8, v10

    if-gez v10, :cond_3

    .line 390
    invoke-virtual {v0, v6, v5}, Lnet/time4j/engine/TimeAxis;->isConvertible(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 393
    invoke-static {v2, v5}, Lnet/time4j/engine/AbstractMetric;->getItem(Ljava/util/List;Ljava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 395
    invoke-virtual {v10}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v10

    .line 396
    div-long v12, v10, v8

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_3

    .line 398
    rem-long/2addr v10, v8

    cmp-long v8, v10, v14

    if-nez v8, :cond_0

    .line 400
    invoke-static {v2, v5}, Lnet/time4j/engine/AbstractMetric;->removeItem(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_1

    .line 402
    :cond_0
    invoke-static {v2, v3, v10, v11, v5}, Lnet/time4j/engine/AbstractMetric;->putItem(Ljava/util/List;Ljava/util/Comparator;JLjava/lang/Object;)V

    .line 405
    :goto_1
    invoke-static {v2, v6}, Lnet/time4j/engine/AbstractMetric;->getItem(Ljava/util/List;Ljava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v5

    if-nez v5, :cond_1

    .line 407
    invoke-static {v2, v3, v12, v13, v6}, Lnet/time4j/engine/AbstractMetric;->putItem(Ljava/util/List;Ljava/util/Comparator;JLjava/lang/Object;)V

    goto :goto_2

    .line 412
    :cond_1
    invoke-virtual {v5}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v8

    invoke-static {v8, v9, v12, v13}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v8

    .line 409
    invoke-static {v2, v3, v8, v9, v6}, Lnet/time4j/engine/AbstractMetric;->putItem(Ljava/util/List;Ljava/util/Comparator;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    move-object/from16 v7, p0

    return-void
.end method

.method private static putItem(Ljava/util/List;Ljava/util/Comparator;JLjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;",
            "Ljava/util/Comparator<",
            "-TU;>;JTU;)V"
        }
    .end annotation

    .line 447
    invoke-static {p2, p3, p4}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p2

    .line 450
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 451
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v2

    .line 453
    invoke-virtual {v2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-ne v1, v0, :cond_1

    .line 458
    invoke-interface {p1, v2, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_2
    invoke-interface {p0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static removeItem(Ljava/util/List;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;TU;)V"
        }
    .end annotation

    .line 473
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 474
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/AbstractMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/AbstractDuration;

    move-result-object p1

    return-object p1
.end method

.method public between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/AbstractDuration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;TT;)TP;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 214
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/engine/AbstractMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;I)Lnet/time4j/engine/AbstractDuration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 75
    check-cast p1, Lnet/time4j/engine/ChronoUnit;

    check-cast p2, Lnet/time4j/engine/ChronoUnit;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/AbstractMetric;->compare(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoUnit;Lnet/time4j/engine/ChronoUnit;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TU;)I"
        }
    .end annotation

    .line 204
    invoke-interface {p2}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide v0

    invoke-interface {p1}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method protected abstract createEmptyTimeSpan()Lnet/time4j/engine/AbstractDuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method protected abstract createTimeSpan(Ljava/util/List;Z)Lnet/time4j/engine/AbstractDuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;Z)TP;"
        }
    .end annotation
.end method

.method protected resolve(Lnet/time4j/engine/TimeSpan$Item;)Lnet/time4j/engine/TimeSpan$Item;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;)",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;"
        }
    .end annotation

    return-object p1
.end method

.method public reversible()Lnet/time4j/engine/TimeMetric;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeMetric<",
            "TU;TP;>;"
        }
    .end annotation

    .line 316
    new-instance v0, Lnet/time4j/engine/AbstractMetric$ReversalMetric;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/engine/AbstractMetric$ReversalMetric;-><init>(Lnet/time4j/engine/AbstractMetric;Lnet/time4j/engine/AbstractMetric$1;)V

    return-object v0
.end method
