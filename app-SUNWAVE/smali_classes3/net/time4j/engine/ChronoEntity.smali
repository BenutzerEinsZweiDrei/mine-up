.class public abstract Lnet/time4j/engine/ChronoEntity;
.super Ljava/lang/Object;
.source "ChronoEntity.java"

# interfaces
.implements Lnet/time4j/engine/ChronoDisplay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoDisplay;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/Chronology;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    return p1
.end method

.method public get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lnet/time4j/engine/ChronoEntity;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/time4j/engine/ElementRule;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoFunction<",
            "-TT;TR;>;)TR;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getChronology()Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v1

    .line 597
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoEntity;

    return-object v0

    .line 600
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getRegisteredElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoElement;

    .line 601
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 602
    invoke-virtual {p0, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoEntity;

    return-object v0

    .line 607
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Implementation error: Cannot find entity context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Lnet/time4j/engine/ChronoElement;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/Chronology;->getIntegerRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/IntElementRule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/time4j/engine/IntElementRule;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Lnet/time4j/engine/ChronoException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lnet/time4j/engine/ChronoEntity;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/time4j/engine/ElementRule;->getMaximum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lnet/time4j/engine/ChronoEntity;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/time4j/engine/ElementRule;->getMinimum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRegisteredElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getRegisteredElements()Ljava/util/Set;

    move-result-object v0

    return-object v0
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
            "TT;TV;>;"
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/Chronology;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    return-object p1
.end method

.method public getTimezone()Lnet/time4j/tz/TZID;
    .locals 3

    .line 529
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timezone not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasTimezone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid(Lnet/time4j/engine/ChronoElement;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/Chronology;->getIntegerRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/IntElementRule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lnet/time4j/engine/IntElementRule;->isValid(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    .line 276
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/ChronoEntity;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoElement;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .line 311
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/ChronoEntity;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)Z"
        }
    .end annotation

    const-string v0, "Missing chronological element."

    .line 229
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0, p1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Lnet/time4j/engine/ChronoEntity;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lnet/time4j/engine/ElementRule;->isValid(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matches(Lnet/time4j/engine/ChronoCondition;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoCondition<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoCondition;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;I)TT;"
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/Chronology;->getIntegerRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/IntElementRule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isLenient()Z

    move-result p1

    invoke-interface {v0, v1, p2, p1}, Lnet/time4j/engine/IntElementRule;->withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    return-object p1

    .line 399
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Long;",
            ">;J)TT;"
        }
    .end annotation

    .line 433
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)TT;"
        }
    .end annotation

    .line 355
    invoke-virtual {p0, p1}, Lnet/time4j/engine/ChronoEntity;->getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    .line 358
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isLenient()Z

    move-result p1

    .line 355
    invoke-interface {v0, v1, p2, p1}, Lnet/time4j/engine/ElementRule;->withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    return-object p1
.end method

.method public with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    return-object p1
.end method
