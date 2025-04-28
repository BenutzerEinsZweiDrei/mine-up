.class public abstract Lnet/time4j/engine/CalendarVariant;
.super Lnet/time4j/engine/ChronoEntity;
.source "CalendarVariant.java"

# interfaces
.implements Lnet/time4j/engine/CalendarDate;
.implements Lnet/time4j/engine/VariantSource;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/engine/CalendarVariant<",
        "TD;>;>",
        "Lnet/time4j/engine/ChronoEntity<",
        "TD;>;",
        "Lnet/time4j/engine/CalendarDate;",
        "Lnet/time4j/engine/VariantSource;",
        "Ljava/lang/Comparable<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lnet/time4j/engine/ChronoEntity;-><init>()V

    return-void
.end method

.method private transform(Lnet/time4j/engine/CalendarSystem;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 558
    invoke-interface {p1}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 559
    invoke-interface {p1}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 563
    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 561
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot transform <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "> to: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 114
    check-cast p1, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarVariant;->compareTo(Lnet/time4j/engine/CalendarVariant;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/engine/CalendarVariant;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)I"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 351
    invoke-virtual {p1}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 358
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/engine/CalendarVariant;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected getCalendarSystem()Lnet/time4j/engine/CalendarSystem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarSystem<",
            "TD;>;"
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getChronology()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/engine/CalendarFamily;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getChronology()Lnet/time4j/engine/CalendarFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarFamily<",
            "TD;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getChronology()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    return-object v0
.end method

.method public getDaysSinceEpochUTC()J
    .locals 2

    .line 485
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;TV;>;"
        }
    .end annotation

    .line 541
    instance-of v0, p1, Lnet/time4j/engine/EpochDays;

    if-eqz v0, :cond_0

    .line 542
    const-class v0, Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/EpochDays;

    .line 543
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/EpochDays;->derive(Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    return-object p1

    .line 545
    :cond_0
    invoke-super {p0, p1}, Lnet/time4j/engine/ChronoEntity;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    return-object p1
.end method

.method public abstract hashCode()I
.end method

.method public bridge synthetic isAfter(Ljava/lang/Object;)Z
    .locals 0

    .line 114
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarVariant;->isAfter(Lnet/time4j/engine/CalendarDate;)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lnet/time4j/engine/CalendarDate;)Z
    .locals 4

    .line 366
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 367
    invoke-interface {p1}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isBefore(Ljava/lang/Object;)Z
    .locals 0

    .line 114
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarVariant;->isBefore(Lnet/time4j/engine/CalendarDate;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lnet/time4j/engine/CalendarDate;)Z
    .locals 4

    .line 375
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 376
    invoke-interface {p1}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isSimultaneous(Ljava/lang/Object;)Z
    .locals 0

    .line 114
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarVariant;->isSimultaneous(Lnet/time4j/engine/CalendarDate;)Z

    move-result p1

    return p1
.end method

.method public isSimultaneous(Lnet/time4j/engine/CalendarDate;)Z
    .locals 4

    .line 384
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 385
    invoke-interface {p1}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/CalendarDays;",
            ")TD;"
        }
    .end annotation

    .line 438
    invoke-virtual {p1}, Lnet/time4j/engine/CalendarDays;->getAmount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarVariant;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/CalendarDays;",
            ")TD;"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getDaysSinceEpochUTC()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/time4j/engine/CalendarDays;->getAmount()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/CalendarVariant;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 413
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v2, p1}, Ljava/lang/ArithmeticException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 415
    throw v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public transform(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/CalendarVariant<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {p1}, Lnet/time4j/engine/Chronology;->lookup(Ljava/lang/Class;)Lnet/time4j/engine/Chronology;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p1, p2}, Lnet/time4j/engine/Chronology;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/time4j/engine/CalendarVariant;->transform(Lnet/time4j/engine/CalendarSystem;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/CalendarVariant;

    return-object p1

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find any chronology for given target type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transform(Ljava/lang/Class;Lnet/time4j/engine/VariantSource;)Lnet/time4j/engine/CalendarVariant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/CalendarVariant<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/VariantSource;",
            ")TT;"
        }
    .end annotation

    .line 315
    invoke-interface {p2}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/CalendarVariant;->transform(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/Calendrical<",
            "*TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {p1}, Lnet/time4j/engine/Chronology;->lookup(Ljava/lang/Class;)Lnet/time4j/engine/Chronology;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/time4j/engine/CalendarVariant;->transform(Lnet/time4j/engine/CalendarSystem;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/Calendrical;

    return-object p1

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find any chronology for given target type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withVariant(Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/CalendarVariant;

    return-object p1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarVariant;->getChronology()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/CalendarFamily;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/time4j/engine/CalendarVariant;->transform(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    return-object p1
.end method

.method public withVariant(Lnet/time4j/engine/VariantSource;)Lnet/time4j/engine/CalendarVariant;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/VariantSource;",
            ")TD;"
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarVariant;->withVariant(Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    return-object p1
.end method
