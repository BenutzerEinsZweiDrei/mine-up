.class final Lnet/time4j/format/expert/SkipProcessor;
.super Ljava/lang/Object;
.source "SkipProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final condition:Lnet/time4j/engine/ChronoCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoCondition<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final count:I


# direct methods
.method constructor <init>(I)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    .line 55
    iput p1, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lnet/time4j/engine/ChronoCondition;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoCondition<",
            "Ljava/lang/Character;",
            ">;I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing condition for unparseable chars."

    .line 66
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 71
    iput-object p1, p0, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    .line 72
    iput p2, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must be positive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 130
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/SkipProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 131
    check-cast p1, Lnet/time4j/format/expert/SkipProcessor;

    .line 133
    iget v1, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    iget v3, p1, Lnet/time4j/format/expert/SkipProcessor;->count:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    iget-object p1, p1, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getElement()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 146
    iget-object v0, p0, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    if-nez v0, :cond_0

    iget v0, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    not-int v1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/format/expert/ParsedEntity<",
            "*>;Z)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result p3

    .line 101
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 104
    iget-object p5, p0, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 105
    iget p1, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    sub-int p1, p4, p1

    goto :goto_1

    :cond_0
    move p5, p3

    move v1, v0

    .line 108
    :goto_0
    iget v2, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    if-ge v1, v2, :cond_1

    add-int v2, v1, p3

    if-ge v2, p4, :cond_1

    .line 109
    iget-object v3, p0, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v3, v2}, Lnet/time4j/engine/ChronoCondition;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, p5

    .line 117
    :goto_1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-le p1, p3, :cond_2

    .line 120
    invoke-virtual {p2, p1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    :cond_2
    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/Appendable;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Ljava/util/Set<",
            "Lnet/time4j/format/expert/ElementPosition;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public quickPath(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/AttributeQuery;I)Lnet/time4j/format/expert/FormatProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "I)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    if-nez v1, :cond_0

    const-string v1, "[keepRemainingChars="

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "[condition="

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lnet/time4j/format/expert/SkipProcessor;->condition:Lnet/time4j/engine/ChronoCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxIterations="

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lnet/time4j/format/expert/SkipProcessor;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x5d

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Void;",
            ">;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
