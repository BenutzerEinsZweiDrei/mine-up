.class final Lnet/time4j/tz/model/CompositeTransitionModel;
.super Lnet/time4j/tz/model/TransitionModel;
.source "CompositeTransitionModel.java"


# static fields
.field private static final serialVersionUID:J = 0x1847fbd644e429a9L


# instance fields
.field private final transient arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

.field private transient hash:I

.field private final transient last:Lnet/time4j/tz/ZonalTransition;

.field private final transient ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

.field private final transient size:I


# direct methods
.method constructor <init>(ILjava/util/List;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/model/DaylightSavingRule;",
            ">;ZZ)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lnet/time4j/tz/model/TransitionModel;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->hash:I

    .line 73
    iput p1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->size:I

    .line 74
    new-instance p1, Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-direct {p1, p2, p4, p5}, Lnet/time4j/tz/model/ArrayTransitionModel;-><init>(Ljava/util/List;ZZ)V

    iput-object p1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    .line 76
    invoke-virtual {p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->getLastTransition()Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->last:Lnet/time4j/tz/ZonalTransition;

    .line 77
    new-instance p2, Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-direct {p2, p1, p3, p4}, Lnet/time4j/tz/model/RuleBasedTransitionModel;-><init>(Lnet/time4j/tz/ZonalTransition;Ljava/util/List;Z)V

    iput-object p2, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 261
    new-instance v0, Lnet/time4j/tz/model/SPX;

    const/16 v1, 0x7f

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/model/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    iget v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->size:I

    invoke-virtual {v0, v1, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->dump(ILjava/lang/Appendable;)V

    .line 168
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->dump(Ljava/lang/Appendable;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lnet/time4j/tz/model/CompositeTransitionModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 185
    check-cast p1, Lnet/time4j/tz/model/CompositeTransitionModel;

    .line 186
    iget-object v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    iget-object v3, p1, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    iget v4, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->size:I

    iget v5, p1, Lnet/time4j/tz/model/CompositeTransitionModel;->size:I

    .line 187
    invoke-virtual {v1, v3, v4, v5}, Lnet/time4j/tz/model/ArrayTransitionModel;->equals(Lnet/time4j/tz/model/ArrayTransitionModel;II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    .line 188
    invoke-virtual {v1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getRules()Ljava/util/List;

    move-result-object v1

    iget-object p1, p1, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {p1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getRules()Ljava/util/List;

    move-result-object p1

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

.method public getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 2

    .line 109
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    iget-object v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v0, p1, p2, v1}, Lnet/time4j/tz/model/ArrayTransitionModel;->getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/model/RuleBasedTransitionModel;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    return-object p1
.end method

.method public getInitialOffset()Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 87
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-virtual {v0}, Lnet/time4j/tz/model/ArrayTransitionModel;->getInitialOffset()Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    return-object v0
.end method

.method public getNextTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 1

    .line 120
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->getNextTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getNextTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object v0

    :cond_0
    return-object v0
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

    .line 244
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v0}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getRules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 4

    .line 94
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    iget-object v2, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->last:Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {v2}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    if-nez p1, :cond_1

    .line 98
    iget-object p1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->last:Lnet/time4j/tz/ZonalTransition;

    :cond_1
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

    .line 147
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-virtual {v0}, Lnet/time4j/tz/model/ArrayTransitionModel;->getStdTransitions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions(Lnet/time4j/base/UnixTime;Lnet/time4j/base/UnixTime;)Ljava/util/List;
    .locals 2
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

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-virtual {v1, p1, p2}, Lnet/time4j/tz/model/ArrayTransitionModel;->getTransitions(Lnet/time4j/base/UnixTime;Lnet/time4j/base/UnixTime;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v1, p1, p2}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getTransitions(Lnet/time4j/base/UnixTime;Lnet/time4j/base/UnixTime;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

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

    .line 136
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    iget-object v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v0, p1, p2, v1}, Lnet/time4j/tz/model/ArrayTransitionModel;->getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/model/RuleBasedTransitionModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasNegativeDST()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v0}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->hasNegativeDST()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    invoke-virtual {v0}, Lnet/time4j/tz/model/ArrayTransitionModel;->hasNegativeDST()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 198
    iget v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->hash:I

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    iget v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->size:I

    invoke-virtual {v0, v1}, Lnet/time4j/tz/model/ArrayTransitionModel;->hashCode(I)I

    move-result v0

    .line 202
    iget-object v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    .line 203
    iput v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->hash:I

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[transition-count="

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hash="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Lnet/time4j/tz/model/CompositeTransitionModel;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",last-rules="

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->ruleModel:Lnet/time4j/tz/model/RuleBasedTransitionModel;

    invoke-virtual {v1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getRules()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeTransitions(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->arrayModel:Lnet/time4j/tz/model/ArrayTransitionModel;

    iget v1, p0, Lnet/time4j/tz/model/CompositeTransitionModel;->size:I

    invoke-virtual {v0, v1, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->writeTransitions(ILjava/io/ObjectOutput;)V

    return-void
.end method
