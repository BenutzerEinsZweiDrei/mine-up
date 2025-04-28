.class public abstract Lnet/time4j/engine/TimePoint;
.super Lnet/time4j/engine/ChronoEntity;
.source "TimePoint.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T:",
        "Lnet/time4j/engine/TimePoint<",
        "TU;TT;>;>",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lnet/time4j/engine/ChronoEntity;-><init>()V

    return-void
.end method

.method private getRule(Ljava/lang/Object;)Lnet/time4j/engine/UnitRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;"
        }
    .end annotation

    .line 687
    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->getRule(Ljava/lang/Object;)Lnet/time4j/engine/UnitRule;

    move-result-object p1

    return-object p1
.end method

.method public static max(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:",
            "Lnet/time4j/engine/TimePoint<",
            "TU;TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .line 595
    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static min(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:",
            "Lnet/time4j/engine/TimePoint<",
            "TU;TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .line 568
    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result v0

    if-lez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 207
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result p1

    return p1
.end method

.method public abstract compareTo(Lnet/time4j/engine/TimePoint;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getChronology()Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "TU;TT;>;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTU;)TT;"
        }
    .end annotation

    .line 436
    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimePoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+TU;>;)TT;"
        }
    .end annotation

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/TimePoint;

    invoke-interface {p1, v0}, Lnet/time4j/engine/TimeSpan;->subtractFrom(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 317
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Result beyond boundaries of time axis."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/ArithmeticException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 321
    throw v0
.end method

.method public plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTU;)TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/TimePoint;

    return-object p1

    .line 392
    :cond_0
    :try_start_0
    invoke-direct {p0, p3}, Lnet/time4j/engine/TimePoint;->getRule(Ljava/lang/Object;)Lnet/time4j/engine/UnitRule;

    move-result-object p3

    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p3, v0, p1, p2}, Lnet/time4j/engine/UnitRule;->addTo(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/TimePoint;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 394
    new-instance p2, Ljava/lang/ArithmeticException;

    const-string p3, "Result beyond boundaries of time axis."

    invoke-direct {p2, p3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2, p1}, Ljava/lang/ArithmeticException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 398
    throw p2
.end method

.method public plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimePoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+TU;>;)TT;"
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/TimePoint;

    invoke-interface {p1, v0}, Lnet/time4j/engine/TimeSpan;->addTo(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 273
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Result beyond boundaries of time axis."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/ArithmeticException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 277
    throw v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)J"
        }
    .end annotation

    .line 541
    invoke-direct {p0, p2}, Lnet/time4j/engine/TimePoint;->getRule(Ljava/lang/Object;)Lnet/time4j/engine/UnitRule;

    move-result-object p2

    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lnet/time4j/engine/UnitRule;->between(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimeMetric;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lnet/time4j/engine/TimeMetric<",
            "+TU;TP;>;)TP;"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lnet/time4j/engine/TimePoint;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/TimePoint;

    invoke-interface {p2, v0, p1}, Lnet/time4j/engine/TimeMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
