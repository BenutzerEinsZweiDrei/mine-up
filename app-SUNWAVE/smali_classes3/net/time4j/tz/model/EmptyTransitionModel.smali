.class final Lnet/time4j/tz/model/EmptyTransitionModel;
.super Ljava/lang/Object;
.source "EmptyTransitionModel.java"

# interfaces
.implements Lnet/time4j/tz/TransitionHistory;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1313f71e899de93dL


# instance fields
.field private final offset:Lnet/time4j/tz/ZonalOffset;


# direct methods
.method constructor <init>(Lnet/time4j/tz/ZonalOffset;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lnet/time4j/tz/model/EmptyTransitionModel;->offset:Lnet/time4j/tz/ZonalOffset;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "*** Fixed offset:"

    .line 144
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    sget-object v1, Lnet/time4j/tz/model/TransitionModel;->NEW_LINE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, ">>> "

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 145
    invoke-virtual {p0}, Lnet/time4j/tz/model/EmptyTransitionModel;->getInitialOffset()Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->canonical()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    sget-object v0, Lnet/time4j/tz/model/TransitionModel;->NEW_LINE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 154
    :cond_0
    instance-of v0, p1, Lnet/time4j/tz/model/EmptyTransitionModel;

    if-eqz v0, :cond_1

    .line 155
    check-cast p1, Lnet/time4j/tz/model/EmptyTransitionModel;

    .line 156
    iget-object v0, p0, Lnet/time4j/tz/model/EmptyTransitionModel;->offset:Lnet/time4j/tz/ZonalOffset;

    iget-object p1, p1, Lnet/time4j/tz/model/EmptyTransitionModel;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/ZonalOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInitialOffset()Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 72
    iget-object v0, p0, Lnet/time4j/tz/model/EmptyTransitionModel;->offset:Lnet/time4j/tz/ZonalOffset;

    return-object v0
.end method

.method public getNextTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions(Lnet/time4j/base/UnixTime;Lnet/time4j/base/UnixTime;)Ljava/util/List;
    .locals 0
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

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Ljava/util/List;
    .locals 0
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

    .line 106
    iget-object p1, p0, Lnet/time4j/tz/model/EmptyTransitionModel;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasNegativeDST()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 166
    iget-object v0, p0, Lnet/time4j/tz/model/EmptyTransitionModel;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmptyTransitionModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/tz/model/EmptyTransitionModel;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->canonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
