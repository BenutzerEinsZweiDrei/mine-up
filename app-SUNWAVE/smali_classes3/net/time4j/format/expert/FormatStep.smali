.class final Lnet/time4j/format/expert/FormatStep;
.super Ljava/lang/Object;
.source "FormatStep.java"


# instance fields
.field private final fullAttrs:Lnet/time4j/engine/AttributeQuery;

.field private final lastOrBlockIndex:I

.field private final level:I

.field private final orMarker:Z

.field private final padLeft:I

.field private final padRight:I

.field private final processor:Lnet/time4j/format/expert/FormatProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/FormatProcessor<",
            "*>;"
        }
    .end annotation
.end field

.field private final reserved:I

.field private final section:I

.field private final sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;


# direct methods
.method constructor <init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "*>;II",
            "Lnet/time4j/format/expert/AttributeSet;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 74
    invoke-direct/range {v0 .. v10}, Lnet/time4j/format/expert/FormatStep;-><init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;Lnet/time4j/engine/AttributeQuery;IIIZI)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;Lnet/time4j/engine/AttributeQuery;IIIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "*>;II",
            "Lnet/time4j/format/expert/AttributeSet;",
            "Lnet/time4j/engine/AttributeQuery;",
            "IIIZI)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing format processor."

    .line 93
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_4

    if-ltz p3, :cond_3

    if-ltz p6, :cond_2

    const-string v0, "Invalid pad-width: "

    if-ltz p7, :cond_1

    if-ltz p8, :cond_0

    .line 106
    iput-object p1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    .line 107
    iput p2, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    .line 108
    iput p3, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    .line 109
    iput-object p4, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    .line 110
    iput-object p5, p0, Lnet/time4j/format/expert/FormatStep;->fullAttrs:Lnet/time4j/engine/AttributeQuery;

    .line 111
    iput p6, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    .line 112
    iput p7, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    .line 113
    iput p8, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    .line 114
    iput-boolean p9, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    .line 115
    iput p10, p0, Lnet/time4j/format/expert/FormatStep;->lastOrBlockIndex:I

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reserved chars must not be negative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid section: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid level: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doParse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 7
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

    .line 743
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    .line 746
    :try_start_0
    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/time4j/format/expert/FormatProcessor;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 754
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getPadChar(Lnet/time4j/engine/AttributeQuery;)C
    .locals 2

    .line 767
    sget-object v0, Lnet/time4j/format/Attributes;->PAD_CHAR:Lnet/time4j/engine/AttributeKey;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method private getQuery(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/AttributeQuery;
    .locals 2

    .line 698
    iget-object v0, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    if-nez v0, :cond_0

    return-object p1

    .line 702
    :cond_0
    new-instance v1, Lnet/time4j/format/expert/MergedAttributes;

    invoke-direct {v1, v0, p1}, Lnet/time4j/format/expert/MergedAttributes;-><init>(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/AttributeQuery;)V

    return-object v1
.end method

.method private static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private isPrinting(Lnet/time4j/engine/ChronoDisplay;)Z
    .locals 2

    .line 785
    iget-object v0, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 789
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getCondition()Lnet/time4j/engine/ChronoCondition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 790
    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoCondition;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private isStrict(Lnet/time4j/engine/AttributeQuery;)Z
    .locals 2

    .line 761
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/Leniency;

    invoke-virtual {p1}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result p1

    return p1
.end method

.method private padExceeded()Ljava/lang/String;
    .locals 2

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pad width exceeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    invoke-interface {v1}, Lnet/time4j/format/expert/FormatProcessor;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private padMismatched()Ljava/lang/String;
    .locals 2

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pad width mismatched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    invoke-interface {v1}, Lnet/time4j/format/expert/FormatProcessor;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static update(Lnet/time4j/format/expert/FormatProcessor;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "TV;>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "TV;>;"
        }
    .end annotation

    .line 712
    invoke-interface {p0}, Lnet/time4j/format/expert/FormatProcessor;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 715
    :cond_0
    invoke-interface {p0}, Lnet/time4j/format/expert/FormatProcessor;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    instance-of v0, p1, Lnet/time4j/format/internal/DualFormatElement;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 718
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change element value type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 722
    :cond_2
    :goto_0
    invoke-interface {p0, p1}, Lnet/time4j/format/expert/FormatProcessor;->withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 628
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/FormatStep;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 629
    check-cast p1, Lnet/time4j/format/expert/FormatStep;

    .line 631
    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    iget-object v3, p1, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    .line 632
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    iget v3, p1, Lnet/time4j/format/expert/FormatStep;->level:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    iget v3, p1, Lnet/time4j/format/expert/FormatStep;->section:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    iget-object v3, p1, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    .line 635
    invoke-static {v1, v3}, Lnet/time4j/format/expert/FormatStep;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->fullAttrs:Lnet/time4j/engine/AttributeQuery;

    iget-object v3, p1, Lnet/time4j/format/expert/FormatStep;->fullAttrs:Lnet/time4j/engine/AttributeQuery;

    .line 636
    invoke-static {v1, v3}, Lnet/time4j/format/expert/FormatStep;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    iget v3, p1, Lnet/time4j/format/expert/FormatStep;->reserved:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    iget v3, p1, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    iget v3, p1, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    iget-boolean v3, p1, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->lastOrBlockIndex:I

    iget p1, p1, Lnet/time4j/format/expert/FormatStep;->lastOrBlockIndex:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getLevel()I
    .locals 1

    .line 372
    iget v0, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    return v0
.end method

.method getProcessor()Lnet/time4j/format/expert/FormatProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "*>;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    return-object v0
.end method

.method getSection()I
    .locals 1

    .line 383
    iget v0, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 655
    iget-object v0, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    .line 656
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method isDecimal()Z
    .locals 2

    .line 394
    iget-object v0, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    instance-of v1, v0, Lnet/time4j/format/expert/FractionProcessor;

    if-nez v1, :cond_1

    instance-of v0, v0, Lnet/time4j/format/expert/DecimalProcessor;

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

.method isNewOrBlockStarted()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    return v0
.end method

.method isNumerical()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    invoke-interface {v0}, Lnet/time4j/format/expert/FormatProcessor;->isNumerical()Z

    move-result v0

    return v0
.end method

.method markLastOrBlock(I)Lnet/time4j/format/expert/FormatStep;
    .locals 12

    .line 576
    iget-boolean v0, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Lnet/time4j/format/expert/FormatStep;

    iget-object v2, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    iget v3, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    iget v4, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    iget-object v5, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    iget-object v6, p0, Lnet/time4j/format/expert/FormatStep;->fullAttrs:Lnet/time4j/engine/AttributeQuery;

    iget v7, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    iget v8, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    iget v9, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    const/4 v10, 0x1

    move-object v1, v0

    move v11, p1

    invoke-direct/range {v1 .. v11}, Lnet/time4j/format/expert/FormatStep;-><init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;Lnet/time4j/engine/AttributeQuery;IIIZI)V

    return-object v0

    .line 577
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This step is not starting an or-block."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method pad(II)Lnet/time4j/format/expert/FormatStep;
    .locals 12

    .line 523
    new-instance v11, Lnet/time4j/format/expert/FormatStep;

    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    iget v2, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    iget v3, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    iget-object v4, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    iget v6, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    iget v0, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    add-int v7, v0, p1

    iget p1, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    add-int v8, p1, p2

    iget-boolean v9, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    iget v10, p0, Lnet/time4j/format/expert/FormatStep;->lastOrBlockIndex:I

    const/4 v5, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lnet/time4j/format/expert/FormatStep;-><init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;Lnet/time4j/engine/AttributeQuery;IIIZI)V

    return-object v11
.end method

.method parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 10
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

    if-eqz p5, :cond_0

    .line 288
    iget-object p3, p0, Lnet/time4j/format/expert/FormatStep;->fullAttrs:Lnet/time4j/engine/AttributeQuery;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lnet/time4j/format/expert/FormatStep;->getQuery(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/AttributeQuery;

    move-result-object p3

    :goto_0
    move-object v3, p3

    .line 290
    iget p3, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    if-nez p3, :cond_1

    iget p3, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-nez p3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    .line 295
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/FormatStep;->doParse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V

    return-void

    .line 299
    :cond_1
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/FormatStep;->isStrict(Lnet/time4j/engine/AttributeQuery;)Z

    move-result p3

    .line 300
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/FormatStep;->getPadChar(Lnet/time4j/engine/AttributeQuery;)C

    move-result v6

    .line 301
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v7

    .line 302
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v0, v7

    :goto_1
    if-ge v0, v8, :cond_2

    .line 308
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sub-int v9, v0, v7

    if-eqz p3, :cond_3

    .line 315
    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    if-le v9, v1, :cond_3

    .line 316
    invoke-direct {p0}, Lnet/time4j/format/expert/FormatStep;->padExceeded()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v7, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 321
    :cond_3
    invoke-virtual {p2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    .line 322
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/FormatStep;->doParse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V

    .line 324
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result p4

    if-eqz p4, :cond_4

    return-void

    .line 328
    :cond_4
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result p4

    sub-int p5, p4, v7

    sub-int/2addr p5, v9

    if-eqz p3, :cond_5

    .line 331
    iget v0, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    if-lez v0, :cond_5

    add-int/2addr v9, p5

    if-eq v9, v0, :cond_5

    .line 336
    invoke-direct {p0}, Lnet/time4j/format/expert/FormatStep;->padMismatched()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v7, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ge p4, v8, :cond_7

    if-eqz p3, :cond_6

    add-int v1, p5, v0

    .line 343
    iget v2, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-ge v1, v2, :cond_7

    .line 346
    :cond_6
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_7

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    .line 352
    iget p1, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-lez p1, :cond_8

    add-int/2addr p5, v0

    if-eq p5, p1, :cond_8

    sub-int/2addr p4, v0

    .line 357
    invoke-direct {p0}, Lnet/time4j/format/expert/FormatStep;->padMismatched()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 361
    :cond_8
    invoke-virtual {p2, p4}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void
.end method

.method print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 18
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

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    .line 143
    invoke-direct/range {p0 .. p1}, Lnet/time4j/format/expert/FormatStep;->isPrinting(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p5, :cond_1

    .line 147
    iget-object v1, v0, Lnet/time4j/format/expert/FormatStep;->fullAttrs:Lnet/time4j/engine/AttributeQuery;

    goto :goto_0

    :cond_1
    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/FormatStep;->getQuery(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/AttributeQuery;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 149
    iget v1, v0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    if-nez v1, :cond_2

    iget v1, v0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-nez v1, :cond_2

    .line 153
    iget-object v1, v0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v9

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/time4j/format/expert/FormatProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    .line 167
    instance-of v4, v3, Ljava/lang/StringBuilder;

    const/4 v12, -0x1

    if-eqz v4, :cond_3

    .line 168
    move-object v4, v3

    check-cast v4, Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v13, v6

    goto :goto_1

    .line 171
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v13, v12

    .line 174
    :goto_1
    instance-of v6, v3, Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    if-ne v4, v3, :cond_5

    .line 175
    iget-object v1, v0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    instance-of v6, v1, Lnet/time4j/format/expert/CustomizedProcessor;

    if-nez v6, :cond_4

    instance-of v1, v1, Lnet/time4j/format/expert/StyleProcessor;

    if-eqz v1, :cond_5

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    .line 179
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 180
    :goto_2
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move v14, v1

    move-object v1, v6

    goto :goto_3

    :cond_6
    move v14, v12

    .line 183
    :goto_3
    invoke-direct {v0, v9}, Lnet/time4j/format/expert/FormatStep;->isStrict(Lnet/time4j/engine/AttributeQuery;)Z

    move-result v15

    .line 184
    invoke-direct {v0, v9}, Lnet/time4j/format/expert/FormatStep;->getPadChar(Lnet/time4j/engine/AttributeQuery;)C

    move-result v11

    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    .line 187
    iget-object v6, v0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    move-object/from16 v7, p1

    move-object v8, v4

    move-object v10, v1

    move v2, v11

    move/from16 v11, p5

    invoke-interface/range {v6 .. v11}, Lnet/time4j/format/expert/FormatProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int v6, v6, v16

    .line 198
    iget v7, v0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    if-lez v7, :cond_f

    if-eqz v15, :cond_8

    if-gt v6, v7, :cond_7

    goto :goto_4

    .line 200
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {p0 .. p0}, Lnet/time4j/format/expert/FormatStep;->padExceeded()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_4
    move v7, v6

    const/16 v17, 0x0

    .line 205
    :goto_5
    iget v8, v0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    if-ge v7, v8, :cond_a

    if-ne v13, v12, :cond_9

    .line 207
    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_6

    .line 209
    :cond_9
    invoke-virtual {v4, v13, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :cond_a
    if-ne v13, v12, :cond_b

    .line 216
    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_b
    if-eq v14, v12, :cond_c

    add-int v14, v14, v17

    .line 221
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/expert/ElementPosition;

    .line 222
    new-instance v8, Lnet/time4j/format/expert/ElementPosition;

    .line 224
    invoke-virtual {v4}, Lnet/time4j/format/expert/ElementPosition;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v9

    .line 225
    invoke-virtual {v4}, Lnet/time4j/format/expert/ElementPosition;->getStartIndex()I

    move-result v10

    add-int/2addr v10, v14

    .line 226
    invoke-virtual {v4}, Lnet/time4j/format/expert/ElementPosition;->getEndIndex()I

    move-result v4

    add-int/2addr v4, v14

    invoke-direct {v8, v9, v10, v4}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    .line 222
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 230
    :cond_c
    iget v1, v0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-lez v1, :cond_15

    if-eqz v15, :cond_e

    if-gt v6, v1, :cond_d

    goto :goto_8

    .line 232
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {p0 .. p0}, Lnet/time4j/format/expert/FormatStep;->padExceeded()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_e
    :goto_8
    iget v1, v0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-ge v6, v1, :cond_15

    .line 236
    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    if-eqz v15, :cond_11

    .line 242
    iget v7, v0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-gt v6, v7, :cond_10

    goto :goto_9

    .line 243
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {p0 .. p0}, Lnet/time4j/format/expert/FormatStep;->padExceeded()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_9
    if-ne v13, v12, :cond_12

    .line 247
    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 250
    :cond_12
    :goto_a
    iget v4, v0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    if-ge v6, v4, :cond_13

    .line 251
    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_13
    if-eq v14, v12, :cond_14

    .line 256
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/expert/ElementPosition;

    .line 257
    new-instance v3, Lnet/time4j/format/expert/ElementPosition;

    .line 259
    invoke-virtual {v2}, Lnet/time4j/format/expert/ElementPosition;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v4

    .line 260
    invoke-virtual {v2}, Lnet/time4j/format/expert/ElementPosition;->getStartIndex()I

    move-result v7

    add-int/2addr v7, v14

    .line 261
    invoke-virtual {v2}, Lnet/time4j/format/expert/ElementPosition;->getEndIndex()I

    move-result v2

    add-int/2addr v2, v14

    invoke-direct {v3, v4, v7, v2}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    .line 257
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    move v7, v6

    :cond_15
    return v7
.end method

.method quickPath(Lnet/time4j/format/expert/ChronoFormatter;)Lnet/time4j/format/expert/FormatStep;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "*>;)",
            "Lnet/time4j/format/expert/FormatStep;"
        }
    .end annotation

    .line 432
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter;->getAttributes0()Lnet/time4j/format/expert/AttributeSet;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v1}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 437
    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    .line 438
    invoke-virtual {v2}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/AttributeSet;->withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v0

    :cond_0
    move-object v6, v0

    .line 443
    new-instance v0, Lnet/time4j/format/expert/FormatStep;

    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    iget v2, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    .line 444
    invoke-interface {v1, p1, v6, v2}, Lnet/time4j/format/expert/FormatProcessor;->quickPath(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/AttributeQuery;I)Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v2

    iget v3, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    iget v4, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    iget-object v5, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    iget v7, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    iget v8, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    iget v9, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    iget-boolean v10, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    iget v11, p0, Lnet/time4j/format/expert/FormatStep;->lastOrBlockIndex:I

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lnet/time4j/format/expert/FormatStep;-><init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;Lnet/time4j/engine/AttributeQuery;IIIZI)V

    return-object v0
.end method

.method reserve(I)Lnet/time4j/format/expert/FormatStep;
    .locals 12

    .line 496
    new-instance v11, Lnet/time4j/format/expert/FormatStep;

    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    iget v2, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    iget v3, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    iget-object v4, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    iget v0, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    add-int v6, v0, p1

    iget v7, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    iget v8, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    iget-boolean v9, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    iget v10, p0, Lnet/time4j/format/expert/FormatStep;->lastOrBlockIndex:I

    const/4 v5, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lnet/time4j/format/expert/FormatStep;-><init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;Lnet/time4j/engine/AttributeQuery;IIIZI)V

    return-object v11
.end method

.method skipTrailingOrBlocks()I
    .locals 1

    .line 615
    iget v0, p0, Lnet/time4j/format/expert/FormatStep;->lastOrBlockIndex:I

    return v0
.end method

.method startNewOrBlock()Lnet/time4j/format/expert/FormatStep;
    .locals 12

    .line 547
    iget-boolean v0, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lnet/time4j/format/expert/FormatStep;

    iget-object v2, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    iget v3, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    iget v4, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    iget-object v5, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    const/4 v6, 0x0

    iget v7, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    iget v8, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    iget v9, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    const/4 v10, 0x1

    const/4 v11, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lnet/time4j/format/expert/FormatStep;-><init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;Lnet/time4j/engine/AttributeQuery;IIIZI)V

    return-object v0

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start or-block twice."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[processor="

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", section="

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    if-eqz v1, :cond_0

    const-string v1, ", attributes="

    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget-object v1, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", reserved="

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pad-left="

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pad-right="

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget v1, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 688
    iget-boolean v1, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    if-eqz v1, :cond_1

    const-string v1, ", or-block-started"

    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    .line 691
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatStep;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/format/expert/FormatStep;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    invoke-static {v0, p1}, Lnet/time4j/format/expert/FormatStep;->update(Lnet/time4j/format/expert/FormatProcessor;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v2

    .line 468
    iget-object p1, p0, Lnet/time4j/format/expert/FormatStep;->processor:Lnet/time4j/format/expert/FormatProcessor;

    if-ne p1, v2, :cond_0

    return-object p0

    .line 472
    :cond_0
    new-instance p1, Lnet/time4j/format/expert/FormatStep;

    iget v3, p0, Lnet/time4j/format/expert/FormatStep;->level:I

    iget v4, p0, Lnet/time4j/format/expert/FormatStep;->section:I

    iget-object v5, p0, Lnet/time4j/format/expert/FormatStep;->sectionalAttrs:Lnet/time4j/format/expert/AttributeSet;

    iget-object v6, p0, Lnet/time4j/format/expert/FormatStep;->fullAttrs:Lnet/time4j/engine/AttributeQuery;

    iget v7, p0, Lnet/time4j/format/expert/FormatStep;->reserved:I

    iget v8, p0, Lnet/time4j/format/expert/FormatStep;->padLeft:I

    iget v9, p0, Lnet/time4j/format/expert/FormatStep;->padRight:I

    iget-boolean v10, p0, Lnet/time4j/format/expert/FormatStep;->orMarker:Z

    iget v11, p0, Lnet/time4j/format/expert/FormatStep;->lastOrBlockIndex:I

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lnet/time4j/format/expert/FormatStep;-><init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;Lnet/time4j/engine/AttributeQuery;IIIZI)V

    return-object p1
.end method
