.class public abstract Lnet/time4j/engine/AbstractDuration;
.super Ljava/lang/Object;
.source "AbstractDuration.java"

# interfaces
.implements Lnet/time4j/engine/TimeSpan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lnet/time4j/engine/ChronoUnit;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeSpan<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final MIO:I = 0xf4240


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private add(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimeSpan;Z)Lnet/time4j/engine/TimePoint;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;",
            "Lnet/time4j/engine/TimeSpan<",
            "TU;>;Z)TT;"
        }
    .end annotation

    .line 458
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/engine/TimePoint;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    .line 459
    invoke-interface/range {p2 .. p2}, Lnet/time4j/engine/TimeSpan;->getTotalLength()Ljava/util/List;

    move-result-object v1

    .line 460
    invoke-interface/range {p2 .. p2}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result v2

    if-eqz p3, :cond_0

    .line 463
    invoke-interface/range {p2 .. p2}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    .line 467
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v9, v2

    move-object/from16 v2, p1

    :goto_0
    if-ltz v9, :cond_7

    .line 469
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/time4j/engine/TimeSpan$Item;

    .line 470
    invoke-virtual {v10}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/time4j/engine/ChronoUnit;

    .line 471
    invoke-virtual {v10}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v12

    add-int/lit8 v9, v9, -0x1

    :goto_1
    if-ltz v9, :cond_1

    .line 474
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/time4j/engine/TimeSpan$Item;

    .line 475
    invoke-virtual {v10}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/time4j/engine/ChronoUnit;

    .line 476
    invoke-virtual {v10}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v3

    .line 477
    invoke-static {v0, v14, v11}, Lnet/time4j/engine/AbstractDuration;->getFactor(Lnet/time4j/engine/TimeAxis;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v5

    long-to-double v7, v5

    .line 480
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_1

    const-wide/32 v7, 0x7fffffff

    cmp-long v10, v3, v7

    if-gez v10, :cond_1

    const-wide/16 v7, 0x1

    cmp-long v10, v5, v7

    if-lez v10, :cond_1

    const-wide/32 v7, 0xf4240

    cmp-long v10, v5, v7

    if-gez v10, :cond_1

    .line 484
    invoke-virtual {v0, v14, v11}, Lnet/time4j/engine/TimeAxis;->isConvertible(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 489
    invoke-static {v3, v4, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v3

    .line 487
    invoke-static {v12, v13, v3, v4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v12

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 497
    :cond_1
    invoke-static {v12, v13}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v11}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 501
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    move-object/from16 v2, p1

    :goto_2
    if-ge v4, v3, :cond_7

    .line 503
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/engine/TimeSpan$Item;

    .line 504
    invoke-virtual {v5}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/engine/ChronoUnit;

    .line 505
    invoke-virtual {v5}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v7

    add-int/lit8 v4, v4, 0x1

    :goto_3
    if-ge v4, v3, :cond_3

    .line 508
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/engine/TimeSpan$Item;

    .line 509
    invoke-virtual {v5}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/engine/ChronoUnit;

    .line 510
    invoke-static {v0, v6, v9}, Lnet/time4j/engine/AbstractDuration;->getFactor(Lnet/time4j/engine/TimeAxis;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v10

    long-to-double v12, v10

    .line 513
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_3

    const-wide/32 v12, 0x7fffffff

    cmp-long v14, v7, v12

    if-gez v14, :cond_4

    const-wide/16 v14, 0x1

    cmp-long v16, v10, v14

    if-lez v16, :cond_5

    const-wide/32 v16, 0xf4240

    cmp-long v18, v10, v16

    if-gez v18, :cond_6

    .line 517
    invoke-virtual {v0, v6, v9}, Lnet/time4j/engine/TimeAxis;->isConvertible(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 521
    invoke-virtual {v5}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v5

    .line 522
    invoke-static {v7, v8, v10, v11}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v7

    .line 520
    invoke-static {v5, v6, v7, v8}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    add-int/lit8 v4, v4, 0x1

    move-object v6, v9

    goto :goto_3

    :cond_3
    const-wide/32 v12, 0x7fffffff

    :cond_4
    const-wide/16 v14, 0x1

    :cond_5
    const-wide/32 v16, 0xf4240

    .line 531
    :cond_6
    invoke-virtual {v2, v7, v8, v6}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v2

    goto :goto_2

    :cond_7
    return-object v2
.end method

.method private static getFactor(Lnet/time4j/engine/TimeAxis;Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/TimeAxis<",
            "TU;*>;TU;TU;)J"
        }
    .end annotation

    .line 545
    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis;->getLength(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, p2}, Lnet/time4j/engine/TimeAxis;->getLength(Ljava/lang/Object;)D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final addTo(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, p1, p0, v0}, Lnet/time4j/engine/AbstractDuration;->add(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimeSpan;Z)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 299
    check-cast p1, Lnet/time4j/engine/ChronoUnit;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/AbstractDuration;->contains(Lnet/time4j/engine/ChronoUnit;)Z

    move-result p1

    return p1
.end method

.method public contains(Lnet/time4j/engine/ChronoUnit;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)Z"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/TimeSpan$Item;

    .line 312
    invoke-virtual {v1}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v1}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public bridge synthetic getPartialAmount(Ljava/lang/Object;)J
    .locals 2

    .line 299
    check-cast p1, Lnet/time4j/engine/ChronoUnit;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/AbstractDuration;->getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)J"
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/TimeSpan$Item;

    .line 325
    invoke-virtual {v1}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v1}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract inverse()Lnet/time4j/engine/AbstractDuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/AbstractDuration<",
            "TU;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 8

    .line 358
    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->getTotalLength()Ljava/util/List;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 361
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isPositive()Z
    .locals 1

    .line 351
    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final subtractFrom(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 447
    invoke-direct {p0, p1, p0, v0}, Lnet/time4j/engine/AbstractDuration;->add(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimeSpan;Z)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 387
    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PT0S"

    return-object v0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2d

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x50

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->getTotalLength()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 404
    invoke-virtual {p0}, Lnet/time4j/engine/AbstractDuration;->getTotalLength()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/TimeSpan$Item;

    if-lez v1, :cond_2

    const/16 v4, 0x2c

    .line 407
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    :cond_2
    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x7b

    .line 411
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    .line 413
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
