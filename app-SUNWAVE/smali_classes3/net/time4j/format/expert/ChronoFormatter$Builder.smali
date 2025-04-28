.class public final Lnet/time4j/format/expert/ChronoFormatter$Builder;
.super Ljava/lang/Object;
.source "ChronoFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/ChronoFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CUSTOM_DAY_PERIOD:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/DayPeriod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chronology:Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Chronology<",
            "TT;>;"
        }
    .end annotation
.end field

.field private dayPeriod:Lnet/time4j/DayPeriod;

.field private deepestParser:Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation
.end field

.field private defaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private depthOfParser:I

.field private leftPadWidth:I

.field private final locale:Ljava/util/Locale;

.field private final override:Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private reservedIndex:I

.field private sectionID:I

.field private stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/time4j/format/expert/AttributeSet;",
            ">;"
        }
    .end annotation
.end field

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/format/expert/FormatStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3730
    const-class v0, Lnet/time4j/DayPeriod;

    const-string v1, "CUSTOM_DAY_PERIOD"

    .line 3731
    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->CUSTOM_DAY_PERIOD:Lnet/time4j/engine/AttributeKey;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3755
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/engine/Chronology;)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/engine/Chronology;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/Chronology<",
            "*>;)V"
        }
    .end annotation

    .line 3764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing chronology."

    .line 3767
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing locale."

    .line 3769
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3772
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    .line 3773
    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->override:Lnet/time4j/engine/Chronology;

    .line 3774
    iput-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    .line 3775
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    .line 3776
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    const/4 p2, 0x0

    .line 3777
    iput p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->sectionID:I

    const/4 p3, -0x1

    .line 3778
    iput p3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    .line 3779
    iput p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->leftPadWidth:I

    const/4 p3, 0x0

    .line 3780
    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->pattern:Ljava/lang/String;

    .line 3781
    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->dayPeriod:Lnet/time4j/DayPeriod;

    .line 3782
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->defaultMap:Ljava/util/Map;

    .line 3784
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->deepestParser:Lnet/time4j/engine/Chronology;

    .line 3785
    iput p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->depthOfParser:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/engine/Chronology;Lnet/time4j/format/expert/ChronoFormatter$1;)V
    .locals 0

    .line 3726
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/engine/Chronology;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V
    .locals 0

    .line 3726
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/format/expert/FormatProcessor;)V
    .locals 0

    .line 3726
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-void
.end method

.method static synthetic access$400(Lnet/time4j/format/expert/ChronoFormatter$Builder;)Lnet/time4j/engine/Chronology;
    .locals 0

    .line 3726
    iget-object p0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    return-object p0
.end method

.method static synthetic access$500(Lnet/time4j/engine/Chronology;)Z
    .locals 0

    .line 3726
    invoke-static {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->hasUnixChronology(Lnet/time4j/engine/Chronology;)Z

    move-result p0

    return p0
.end method

.method private addLiteralChars(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 7022
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 7023
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    const/4 v0, 0x0

    .line 7024
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    return-void
.end method

.method private addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;ZII",
            "Lnet/time4j/format/expert/SignPolicy;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 6741
    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;Z)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method private addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;Z)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;ZII",
            "Lnet/time4j/format/expert/SignPolicy;",
            "Z)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6754
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 6755
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkAfterDecimalDigits(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatStep;

    move-result-object v0

    .line 6757
    new-instance v8, Lnet/time4j/format/expert/NumberProcessor;

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lnet/time4j/format/expert/NumberProcessor;-><init>(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;Z)V

    if-eqz p2, :cond_1

    .line 6768
    iget p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 6769
    invoke-direct {p0, v8}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    goto :goto_1

    .line 6772
    :cond_0
    iget-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/format/expert/FormatStep;

    .line 6773
    invoke-direct {p0, v8}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    .line 6774
    iget-object p4, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p5

    add-int/lit8 p5, p5, -0x1

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/time4j/format/expert/FormatStep;

    .line 6776
    invoke-virtual {p2}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result p5

    invoke-virtual {p4}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result p4

    if-ne p5, p4, :cond_4

    .line 6777
    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    .line 6778
    iget-object p4, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-virtual {p2, p3}, Lnet/time4j/format/expert/FormatStep;->reserve(I)Lnet/time4j/format/expert/FormatStep;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 6781
    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->isNumerical()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 6782
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Numerical element with variable width can\'t be inserted after another numerical element. Consider \"addFixedXXX()\" instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6787
    :cond_3
    :goto_0
    invoke-direct {p0, v8}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    .line 6788
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    :cond_4
    :goto_1
    return-object p0
.end method

.method private addOrdinalProcessor(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6800
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 6801
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkAfterDecimalDigits(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatStep;

    move-result-object v0

    .line 6802
    new-instance v1, Lnet/time4j/format/expert/OrdinalProcessor;

    invoke-direct {v1, p1, p2}, Lnet/time4j/format/expert/OrdinalProcessor;-><init>(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)V

    if-eqz v0, :cond_1

    .line 6804
    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->isNumerical()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6805
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Ordinal element with variable width can\'t be inserted after another numerical element."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6809
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method private addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 6818
    iput v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    .line 6823
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6824
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/AttributeSet;

    .line 6825
    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getLevel()I

    move-result v2

    .line 6826
    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getSection()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v2, v1

    move v3, v2

    .line 6829
    :goto_0
    new-instance v4, Lnet/time4j/format/expert/FormatStep;

    invoke-direct {v4, p1, v2, v3, v0}, Lnet/time4j/format/expert/FormatStep;-><init>(Lnet/time4j/format/expert/FormatProcessor;IILnet/time4j/format/expert/AttributeSet;)V

    .line 6831
    iget p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->leftPadWidth:I

    if-lez p1, :cond_1

    .line 6832
    invoke-virtual {v4, p1, v1}, Lnet/time4j/format/expert/FormatStep;->pad(II)Lnet/time4j/format/expert/FormatStep;

    move-result-object v4

    .line 6833
    iput v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->leftPadWidth:I

    .line 6836
    :cond_1
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkAfterDecimalDigits(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatStep;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/format/expert/FormatStep;"
        }
    .end annotation

    .line 6999
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    .line 7000
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    .line 7002
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/FormatStep;

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 7009
    :cond_1
    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->isDecimal()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 7010
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7011
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be inserted after an element"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with decimal digits."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static checkAttribute(Lnet/time4j/engine/AttributeKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "*>;)V"
        }
    .end annotation

    .line 6906
    invoke-interface {p0}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    return-void

    .line 6907
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal attribute not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6908
    invoke-interface {p0}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkElement(Lnet/time4j/engine/ChronoElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    .line 6954
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->override:Lnet/time4j/engine/Chronology;

    invoke-static {v0, v1, p1}, Lnet/time4j/format/expert/ChronoFormatter;->access$1000(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/Chronology;

    move-result-object p1

    .line 6955
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->override:Lnet/time4j/engine/Chronology;

    invoke-static {p1, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->access$1100(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;)I

    move-result v0

    .line 6957
    iget v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->depthOfParser:I

    if-lt v0, v1, :cond_0

    .line 6958
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->deepestParser:Lnet/time4j/engine/Chronology;

    .line 6959
    iput v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->depthOfParser:I

    :cond_0
    return-void
.end method

.method private checkMomentChrono()V
    .locals 2

    .line 6915
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->hasUnixChronology(Lnet/time4j/engine/Chronology;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6916
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Timezone names in specific non-location format can only be reliably combined with instant-like types, for example \"Moment\"."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureDecimalDigitsOnlyOnce()V
    .locals 3

    .line 6966
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6967
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/FormatStep;

    .line 6968
    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 6970
    :cond_0
    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->isDecimal()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6971
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot define more than one element with decimal digits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private ensureOnlyOneFractional(ZZ)V
    .locals 0

    .line 6983
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->ensureDecimalDigitsOnlyOnce()V

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 6985
    iget p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 6990
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add fractional element with variable width after another numerical element with variable width."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private findDayPeriodElement(ZLnet/time4j/DayPeriod;)Lnet/time4j/format/TextElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnet/time4j/DayPeriod;",
            ")",
            "Lnet/time4j/format/TextElement<",
            "*>;"
        }
    .end annotation

    .line 6845
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/format/Attributes$Builder;-><init>(Lnet/time4j/engine/Chronology;)V

    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 6851
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6852
    new-instance v1, Lnet/time4j/format/expert/AttributeSet;

    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;)V

    goto :goto_0

    .line 6854
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnet/time4j/format/expert/AttributeSet;

    .line 6857
    :goto_0
    sget-object v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->CUSTOM_DAY_PERIOD:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v1, v0, p2}, Lnet/time4j/format/expert/AttributeSet;->withInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v0

    .line 6860
    :cond_1
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/engine/TimeAxis;->getExtensions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoExtension;

    .line 6861
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    invoke-interface {v1, v2, v0}, Lnet/time4j/engine/ChronoExtension;->getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoElement;

    if-eqz p1, :cond_4

    .line 6862
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->getSymbol()C

    move-result v3

    const/16 v4, 0x62

    if-ne v3, v4, :cond_4

    invoke-direct {p0, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->isDayPeriodSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6863
    invoke-static {v2}, Lnet/time4j/format/expert/ChronoFormatter;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextElement;

    return-object p1

    :cond_4
    if-nez p1, :cond_3

    .line 6864
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->getSymbol()C

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->isDayPeriodSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6865
    invoke-static {v2}, Lnet/time4j/format/expert/ChronoFormatter;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextElement;

    return-object p1

    .line 6870
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day periods are not supported: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getLevel(Lnet/time4j/format/expert/AttributeSet;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6900
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/format/expert/AttributeSet;->getLevel()I

    move-result p0

    return p0
.end method

.method private static hasUnixChronology(Lnet/time4j/engine/Chronology;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)Z"
        }
    .end annotation

    .line 6928
    :cond_0
    const-class v0, Lnet/time4j/base/UnixTime;

    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 6931
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method private isDayPeriodSupported(Lnet/time4j/engine/ChronoElement;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 6876
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_DAY_PERIOD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6880
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->override:Lnet/time4j/engine/Chronology;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, p1}, Lnet/time4j/engine/Chronology;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6881
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    .line 6882
    :cond_1
    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6883
    invoke-virtual {v0, p1}, Lnet/time4j/engine/Chronology;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private static isSymbol(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetPadding()V
    .locals 1

    const/4 v0, 0x0

    .line 6939
    iput v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->leftPadWidth:I

    return-void
.end method


# virtual methods
.method public addCustomized(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoFormatter;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TV;>;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5398
    invoke-virtual {p0, p1, p2, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addCustomized(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoPrinter;Lnet/time4j/format/expert/ChronoParser;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addCustomized(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoPrinter;Lnet/time4j/format/expert/ChronoParser;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Lnet/time4j/format/expert/ChronoPrinter<",
            "TV;>;",
            "Lnet/time4j/format/expert/ChronoParser<",
            "TV;>;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5443
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 5444
    new-instance v0, Lnet/time4j/format/expert/CustomizedProcessor;

    invoke-direct {v0, p1, p2, p3}, Lnet/time4j/format/expert/CustomizedProcessor;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoPrinter;Lnet/time4j/format/expert/ChronoParser;)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addDayPeriod(Ljava/util/Map;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/time4j/PlainTime;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5351
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->dayPeriod:Lnet/time4j/DayPeriod;

    if-nez v0, :cond_0

    .line 5355
    invoke-static {p1}, Lnet/time4j/DayPeriod;->of(Ljava/util/Map;)Lnet/time4j/DayPeriod;

    move-result-object p1

    const/4 v0, 0x0

    .line 5356
    invoke-direct {p0, v0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->findDayPeriodElement(ZLnet/time4j/DayPeriod;)Lnet/time4j/format/TextElement;

    move-result-object v0

    .line 5357
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->dayPeriod:Lnet/time4j/DayPeriod;

    .line 5358
    invoke-static {v0}, Lnet/time4j/format/expert/TextProcessor;->createProtected(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/TextProcessor;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0

    .line 5352
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add custom day period more than once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addDayPeriodApproximate()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5322
    invoke-direct {p0, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->findDayPeriodElement(ZLnet/time4j/DayPeriod;)Lnet/time4j/format/TextElement;

    move-result-object v0

    .line 5323
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addDayPeriodFixed()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5299
    invoke-direct {p0, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->findDayPeriodElement(ZLnet/time4j/DayPeriod;)Lnet/time4j/format/TextElement;

    move-result-object v0

    .line 5300
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addEnglishOrdinal(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4655
    invoke-direct {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addOrdinalProcessor(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFixedDecimal(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0xb

    const/16 v1, 0x9

    .line 4472
    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedDecimal(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFixedDecimal(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/math/BigDecimal;",
            ">;II)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4592
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 4593
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->ensureDecimalDigitsOnlyOnce()V

    .line 4595
    new-instance v0, Lnet/time4j/format/expert/DecimalProcessor;

    invoke-direct {v0, p1, p2, p3}, Lnet/time4j/format/expert/DecimalProcessor;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    .line 4598
    iget p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 4600
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/FormatStep;

    .line 4601
    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    .line 4602
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/FormatStep;

    .line 4604
    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v2

    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 4605
    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    .line 4606
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    sub-int/2addr p2, p3

    invoke-virtual {v1, p2}, Lnet/time4j/format/expert/FormatStep;->reserve(I)Lnet/time4j/format/expert/FormatStep;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4609
    :cond_0
    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4108
    sget-object v5, Lnet/time4j/format/expert/SignPolicy;->SHOW_NEVER:Lnet/time4j/format/expert/SignPolicy;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFixedNumerical(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;I)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4254
    sget-object v5, Lnet/time4j/format/expert/SignPolicy;->SHOW_NEVER:Lnet/time4j/format/expert/SignPolicy;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFraction(Lnet/time4j/engine/ChronoElement;IIZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;IIZ)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4416
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    const/4 v0, 0x1

    if-nez p4, :cond_0

    if-ne p2, p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4418
    :goto_0
    invoke-direct {p0, v1, p4}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->ensureOnlyOneFractional(ZZ)V

    .line 4420
    new-instance v2, Lnet/time4j/format/expert/FractionProcessor;

    invoke-direct {v2, p1, p2, p3, p4}, Lnet/time4j/format/expert/FractionProcessor;-><init>(Lnet/time4j/engine/ChronoElement;IIZ)V

    .line 4428
    iget p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    if-eqz v1, :cond_1

    .line 4433
    iget-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/expert/FormatStep;

    .line 4434
    invoke-direct {p0, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    .line 4435
    iget-object p4, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/time4j/format/expert/FormatStep;

    .line 4437
    invoke-virtual {p3}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v0

    invoke-virtual {p4}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result p4

    if-ne v0, p4, :cond_2

    .line 4438
    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    .line 4439
    iget-object p4, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-virtual {p3, p2}, Lnet/time4j/format/expert/FormatStep;->reserve(I)Lnet/time4j/format/expert/FormatStep;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4442
    :cond_1
    invoke-direct {p0, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public addIgnorableWhitespace()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4933
    sget-object v0, Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;->SINGLETON:Lnet/time4j/format/expert/IgnorableWhitespaceProcessor;

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addInteger(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 3857
    sget-object v5, Lnet/time4j/format/expert/SignPolicy;->SHOW_NEVER:Lnet/time4j/format/expert/SignPolicy;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addInteger(Lnet/time4j/engine/ChronoElement;IILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;II",
            "Lnet/time4j/format/expert/SignPolicy;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 3990
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4785
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addLiteral(CC)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4820
    new-instance v0, Lnet/time4j/format/expert/LiteralProcessor;

    invoke-direct {v0, p1, p2}, Lnet/time4j/format/expert/LiteralProcessor;-><init>(CC)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addLiteral(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4849
    new-instance v0, Lnet/time4j/format/expert/LiteralProcessor;

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/LiteralProcessor;-><init>(Ljava/lang/String;)V

    .line 4850
    invoke-virtual {v0}, Lnet/time4j/format/expert/LiteralProcessor;->getPrefixedDigitArea()I

    move-result p1

    if-lez p1, :cond_2

    .line 4853
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    .line 4854
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    .line 4856
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/FormatStep;

    :goto_0
    if-eqz v1, :cond_2

    .line 4859
    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->isDecimal()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4860
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Numerical literal can\'t be inserted after an element with decimal digits."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 4865
    iget v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 4869
    :cond_3
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/expert/FormatStep;

    .line 4870
    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    .line 4872
    invoke-virtual {v2}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v0

    iget-object v3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/expert/FormatStep;

    invoke-virtual {v3}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 4873
    iput v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    .line 4874
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-virtual {v2, p1}, Lnet/time4j/format/expert/FormatStep;->reserve(I)Lnet/time4j/format/expert/FormatStep;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4866
    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    :cond_5
    :goto_3
    return-object p0
.end method

.method public addLiteral(Lnet/time4j/engine/AttributeKey;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4908
    new-instance v0, Lnet/time4j/format/expert/LiteralProcessor;

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/LiteralProcessor;-><init>(Lnet/time4j/engine/AttributeKey;)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addLongLocalizedOffset()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6077
    new-instance v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/LocalizedGMTProcessor;-><init>(Z)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addLongNumber(Lnet/time4j/engine/ChronoElement;IILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Long;",
            ">;II",
            "Lnet/time4j/format/expert/SignPolicy;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 4047
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addLongTimezoneName()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5663
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkMomentChrono()V

    .line 5664
    new-instance v0, Lnet/time4j/format/expert/TimezoneNameProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/TimezoneNameProcessor;-><init>(Z)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addLongTimezoneName(Ljava/util/Set;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5735
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkMomentChrono()V

    .line 5736
    new-instance v0, Lnet/time4j/format/expert/TimezoneNameProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lnet/time4j/format/expert/TimezoneNameProcessor;-><init>(ZLjava/util/Set;)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addNumerical(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;II)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4192
    sget-object v5, Lnet/time4j/format/expert/SignPolicy;->SHOW_NEVER:Lnet/time4j/format/expert/SignPolicy;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addOrdinal(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing ordinal indicators."

    .line 4758
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4761
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addOrdinalProcessor(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/PatternType;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing pattern type."

    .line 5071
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5074
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 5075
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 5076
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    .line 5077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5079
    iget-object v4, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5080
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v2}, Lnet/time4j/format/expert/AttributeSet;->getLocale()Ljava/util/Locale;

    move-result-object v2

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_e

    .line 5084
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 5086
    invoke-static {v6}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->isSymbol(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5087
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteralChars(Ljava/lang/StringBuilder;)V

    add-int/lit8 v7, v5, 0x1

    :goto_1
    if-ge v7, v1, :cond_1

    .line 5090
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    sub-int v5, v7, v5

    .line 5095
    invoke-virtual {p2, p0, v2, v6, v5}, Lnet/time4j/format/expert/PatternType;->registerSymbol(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/util/Locale;CI)Ljava/util/Map;

    move-result-object v5

    .line 5097
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 5098
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v5

    goto :goto_2

    .line 5101
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5103
    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v6

    :cond_3
    :goto_2
    add-int/lit8 v5, v7, -0x1

    goto/16 :goto_5

    :cond_4
    const-string v7, "\'"

    const/16 v8, 0x27

    if-ne v6, v8, :cond_9

    .line 5110
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteralChars(Ljava/lang/StringBuilder;)V

    add-int/lit8 v5, v5, 0x1

    move v6, v5

    :goto_3
    if-ge v6, v1, :cond_6

    .line 5114
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_5

    add-int/lit8 v9, v6, 0x1

    if-ge v9, v1, :cond_6

    .line 5117
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_6

    move v6, v9

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    if-ge v6, v1, :cond_8

    if-ne v5, v6, :cond_7

    .line 5134
    invoke-virtual {p0, v8}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_4

    .line 5136
    :cond_7
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\'\'"

    .line 5137
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    :goto_4
    move v5, v6

    goto :goto_5

    .line 5128
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String literal in pattern not closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/16 v8, 0x5b

    if-ne v6, v8, :cond_a

    .line 5140
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteralChars(Ljava/lang/StringBuilder;)V

    .line 5141
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startOptionalSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_5

    :cond_a
    const/16 v8, 0x5d

    if-ne v6, v8, :cond_b

    .line 5143
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteralChars(Ljava/lang/StringBuilder;)V

    .line 5144
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    goto :goto_5

    :cond_b
    const/16 v8, 0x7c

    if-ne v6, v8, :cond_c

    .line 5147
    :try_start_0
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteralChars(Ljava/lang/StringBuilder;)V

    .line 5148
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->or()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 5150
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_c
    const/16 v8, 0x23

    if-eq v6, v8, :cond_d

    const/16 v8, 0x7b

    if-eq v6, v8, :cond_d

    const/16 v8, 0x7d

    if-eq v6, v8, :cond_d

    .line 5156
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 5153
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pattern contains reserved character: \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5160
    :cond_e
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteralChars(Ljava/lang/StringBuilder;)V

    .line 5162
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    .line 5163
    iget-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_6
    if-ge v4, p2, :cond_10

    .line 5166
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/FormatStep;

    .line 5167
    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->getProcessor()Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v2

    invoke-interface {v2}, Lnet/time4j/format/expert/FormatProcessor;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v2

    .line 5169
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5170
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoElement;

    .line 5171
    iget-object v3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-virtual {v1, v2}, Lnet/time4j/format/expert/FormatStep;->updateElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatStep;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 5177
    :cond_10
    iget-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->pattern:Ljava/lang/String;

    if-nez p2, :cond_11

    goto :goto_7

    :cond_11
    const-string p1, ""

    :goto_7
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public addShortLocalizedOffset()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6019
    new-instance v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/LocalizedGMTProcessor;-><init>(Z)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addShortTimezoneName()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5612
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkMomentChrono()V

    .line 5613
    new-instance v0, Lnet/time4j/format/expert/TimezoneNameProcessor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/TimezoneNameProcessor;-><init>(Z)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addShortTimezoneName(Ljava/util/Set;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5699
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkMomentChrono()V

    .line 5700
    new-instance v0, Lnet/time4j/format/expert/TimezoneNameProcessor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lnet/time4j/format/expert/TimezoneNameProcessor;-><init>(ZLjava/util/Set;)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5228
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 5230
    instance-of v0, p1, Lnet/time4j/format/TextElement;

    if-eqz v0, :cond_0

    .line 5231
    const-class v0, Lnet/time4j/format/TextElement;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextElement;

    .line 5232
    invoke-static {p1}, Lnet/time4j/format/expert/TextProcessor;->create(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/TextProcessor;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    goto :goto_1

    .line 5235
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5236
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5237
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5239
    :cond_1
    new-instance v1, Lnet/time4j/format/expert/LookupProcessor;

    invoke-direct {v1, p1, v0}, Lnet/time4j/format/expert/LookupProcessor;-><init>(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    :goto_1
    return-object p0
.end method

.method public addText(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Ljava/util/Map<",
            "TV;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5275
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 5276
    new-instance v0, Lnet/time4j/format/expert/LookupProcessor;

    invoke-direct {v0, p1, p2}, Lnet/time4j/format/expert/LookupProcessor;-><init>(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addText(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/TextElement<",
            "*>;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5202
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 5203
    invoke-static {p1}, Lnet/time4j/format/expert/TextProcessor;->create(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/TextProcessor;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addTimezoneID()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5558
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->hasUnixChronology(Lnet/time4j/engine/Chronology;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5559
    sget-object v0, Lnet/time4j/format/expert/TimezoneIDProcessor;->INSTANCE:Lnet/time4j/format/expert/TimezoneIDProcessor;

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0

    .line 5562
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only unix timestamps can have a timezone id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTimezoneName(Lnet/time4j/tz/NameStyle;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/NameStyle;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5769
    new-instance v0, Lnet/time4j/format/expert/TimezoneGenericProcessor;

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/TimezoneGenericProcessor;-><init>(Lnet/time4j/tz/NameStyle;)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addTimezoneName(Lnet/time4j/tz/NameStyle;Ljava/util/Set;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/NameStyle;",
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5803
    new-instance v0, Lnet/time4j/format/expert/TimezoneGenericProcessor;

    invoke-direct {v0, p1, p2}, Lnet/time4j/format/expert/TimezoneGenericProcessor;-><init>(Lnet/time4j/tz/NameStyle;Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addTimezoneOffset()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5831
    sget-object v0, Lnet/time4j/format/DisplayMode;->MEDIUM:Lnet/time4j/format/DisplayMode;

    const-string v1, "Z"

    .line 5832
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 5831
    invoke-virtual {p0, v0, v2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5957
    new-instance v0, Lnet/time4j/format/expert/TimezoneOffsetProcessor;

    invoke-direct {v0, p1, p2, p3}, Lnet/time4j/format/expert/TimezoneOffsetProcessor;-><init>(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public addTwoDigitYear(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5499
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 5500
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkAfterDecimalDigits(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatStep;

    .line 5501
    new-instance v0, Lnet/time4j/format/expert/TwoDigitYearProcessor;

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/TwoDigitYearProcessor;-><init>(Lnet/time4j/engine/ChronoElement;)V

    .line 5503
    iget p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 5504
    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    .line 5505
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    goto :goto_0

    .line 5508
    :cond_0
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/FormatStep;

    .line 5509
    sget-object v2, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    invoke-virtual {p0, v2, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 5510
    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    .line 5511
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 5512
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/FormatStep;

    .line 5514
    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v2

    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 5515
    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    .line 5516
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lnet/time4j/format/expert/FormatStep;->reserve(I)Lnet/time4j/format/expert/FormatStep;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p0
.end method

.method addYear(Lnet/time4j/engine/ChronoElement;IZ)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6717
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/FormatStep;

    :goto_0
    if-eqz v0, :cond_2

    .line 6721
    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6722
    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->isNumerical()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x4

    .line 6729
    sget-object v6, Lnet/time4j/format/expert/SignPolicy;->SHOW_NEVER:Lnet/time4j/format/expert/SignPolicy;

    move-object v1, p0

    move-object v2, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;Z)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 v2, 0x0

    const/16 v4, 0xa

    .line 6725
    sget-object v5, Lnet/time4j/format/expert/SignPolicy;->SHOW_WHEN_NEGATIVE:Lnet/time4j/format/expert/SignPolicy;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addNumber(Lnet/time4j/engine/ChronoElement;ZIILnet/time4j/format/expert/SignPolicy;Z)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lnet/time4j/format/expert/ChronoFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 6627
    invoke-static {}, Lnet/time4j/format/Attributes;->empty()Lnet/time4j/format/Attributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v0

    return-object v0
.end method

.method public build(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/Attributes;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing format attributes."

    .line 6650
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6655
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v10, 0x0

    move v2, v1

    move-object v3, v10

    :goto_0
    if-ge v2, v0, :cond_5

    .line 6656
    iget-object v4, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/expert/FormatStep;

    .line 6657
    invoke-virtual {v4}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6658
    invoke-virtual {v4}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v5

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-le v6, v2, :cond_2

    .line 6661
    iget-object v8, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/format/expert/FormatStep;

    invoke-virtual {v8}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v8

    if-ne v8, v5, :cond_1

    if-nez v3, :cond_0

    .line 6663
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6665
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6}, Lnet/time4j/format/expert/FormatStep;->markLastOrBlock(I)Lnet/time4j/format/expert/FormatStep;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    .line 6671
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing format processor after or-operator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 6677
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6678
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 6682
    :cond_6
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter;

    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    iget-object v3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->override:Lnet/time4j/engine/Chronology;

    iget-object v4, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    iget-object v6, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->defaultMap:Ljava/util/Map;

    iget-object v8, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->deepestParser:Lnet/time4j/engine/Chronology;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Ljava/util/Locale;Ljava/util/List;Ljava/util/Map;Lnet/time4j/format/Attributes;Lnet/time4j/engine/Chronology;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 6693
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->pattern:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    .line 6695
    :cond_7
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->dayPeriod:Lnet/time4j/DayPeriod;

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 6696
    :cond_8
    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->access$700(Lnet/time4j/format/expert/ChronoFormatter;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v2

    .line 6697
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 6698
    sget-object v3, Lnet/time4j/format/Attributes;->FORMAT_PATTERN:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v2, v3, v1}, Lnet/time4j/format/expert/AttributeSet;->withInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v2

    .line 6700
    :cond_9
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->dayPeriod:Lnet/time4j/DayPeriod;

    if-eqz v1, :cond_a

    .line 6701
    sget-object v3, Lnet/time4j/format/expert/ChronoFormatter$Builder;->CUSTOM_DAY_PERIOD:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v2, v3, v1}, Lnet/time4j/format/expert/AttributeSet;->withInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v2

    .line 6703
    :cond_a
    new-instance v1, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {v1, v0, v2, v10}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    move-object v0, v1

    :cond_b
    return-object v0
.end method

.method public endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6475
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 6476
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->resetPadding()V

    return-object p0
.end method

.method public getChronology()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    .line 3805
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->override:Lnet/time4j/engine/Chronology;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->chronology:Lnet/time4j/engine/Chronology;

    :cond_0
    return-object v0
.end method

.method public or()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6555
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6556
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getSection()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6559
    :goto_0
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 6560
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6561
    iget-object v3, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/expert/FormatStep;

    .line 6562
    invoke-virtual {v3}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move v1, v2

    move v4, v1

    :goto_1
    if-ne v0, v4, :cond_2

    .line 6566
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-virtual {v3}, Lnet/time4j/format/expert/FormatStep;->startNewOrBlock()Lnet/time4j/format/expert/FormatStep;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6567
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->resetPadding()V

    .line 6568
    iput v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->reservedIndex:I

    return-object p0

    .line 6570
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start or-block without any previous step in current section."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padNext(I)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-lez p1, :cond_0

    .line 6117
    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->leftPadWidth:I

    :cond_0
    return-object p0

    .line 6115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative pad width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public padPrevious(I)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 6150
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    .line 6151
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 6154
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6155
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/FormatStep;

    .line 6158
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 6159
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v2}, Lnet/time4j/format/expert/AttributeSet;->getSection()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 6162
    :goto_0
    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6163
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->steps:Ljava/util/List;

    invoke-virtual {v1, v3, p1}, Lnet/time4j/format/expert/FormatStep;->pad(II)Lnet/time4j/format/expert/FormatStep;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0

    .line 6149
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative pad width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefault(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing default value."

    .line 6604
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6607
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkElement(Lnet/time4j/engine/ChronoElement;)V

    .line 6608
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->defaultMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public skipUnknown(I)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 4969
    new-instance v0, Lnet/time4j/format/expert/SkipProcessor;

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/SkipProcessor;-><init>(I)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public skipUnknown(Lnet/time4j/engine/ChronoCondition;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoCondition<",
            "Ljava/lang/Character;",
            ">;I)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 5018
    new-instance v0, Lnet/time4j/format/expert/SkipProcessor;

    invoke-direct {v0, p1, p2}, Lnet/time4j/format/expert/SkipProcessor;-><init>(Lnet/time4j/engine/ChronoCondition;I)V

    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addProcessor(Lnet/time4j/format/expert/FormatProcessor;)V

    return-object p0
.end method

.method public startOptionalSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6186
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startOptionalSection(Lnet/time4j/engine/ChronoCondition;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public startOptionalSection(Lnet/time4j/engine/ChronoCondition;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/ChronoDisplay;",
            ">;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6207
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->resetPadding()V

    .line 6208
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6212
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6213
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnet/time4j/format/expert/AttributeSet;

    .line 6214
    invoke-virtual {v2}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    .line 6215
    invoke-virtual {v2}, Lnet/time4j/format/expert/AttributeSet;->getCondition()Lnet/time4j/engine/ChronoCondition;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6218
    :goto_0
    invoke-static {v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->getLevel(Lnet/time4j/format/expert/AttributeSet;)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    .line 6219
    iget v2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->sectionID:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->sectionID:I

    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    move-object v8, p1

    goto :goto_1

    .line 6227
    :cond_1
    new-instance v2, Lnet/time4j/format/expert/ChronoFormatter$Builder$1;

    invoke-direct {v2, p0, v1, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder$1;-><init>(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/engine/ChronoCondition;Lnet/time4j/engine/ChronoCondition;)V

    move-object v8, v2

    goto :goto_1

    :cond_2
    move-object v8, v1

    .line 6239
    :goto_1
    new-instance p1, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v4

    iget-object v5, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;IILnet/time4j/engine/ChronoCondition;)V

    .line 6240
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public startSection(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;C)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6376
    invoke-static {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkAttribute(Lnet/time4j/engine/AttributeKey;)V

    .line 6377
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->resetPadding()V

    .line 6382
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6383
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6384
    new-instance v1, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    iget-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v1, p1, p2}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;)V

    goto :goto_0

    .line 6386
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/AttributeSet;

    .line 6387
    new-instance v1, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v1}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6388
    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    .line 6389
    invoke-virtual {v1, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;

    .line 6390
    invoke-virtual {v1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/format/expert/AttributeSet;->withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v1

    .line 6393
    :goto_0
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public startSection(Lnet/time4j/engine/AttributeKey;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6325
    invoke-static {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkAttribute(Lnet/time4j/engine/AttributeKey;)V

    .line 6326
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->resetPadding()V

    .line 6331
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6332
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6333
    new-instance v1, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;I)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    iget-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v1, p1, p2}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;)V

    goto :goto_0

    .line 6335
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/AttributeSet;

    .line 6336
    new-instance v1, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v1}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6337
    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    .line 6338
    invoke-virtual {v1, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;I)Lnet/time4j/format/Attributes$Builder;

    .line 6339
    invoke-virtual {v1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/format/expert/AttributeSet;->withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v1

    .line 6342
    :goto_0
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Enum<",
            "TA;>;>(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;TA;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6429
    invoke-static {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkAttribute(Lnet/time4j/engine/AttributeKey;)V

    .line 6430
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->resetPadding()V

    .line 6435
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6436
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6437
    new-instance v1, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    iget-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v1, p1, p2}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;)V

    goto :goto_0

    .line 6439
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/AttributeSet;

    .line 6440
    new-instance v1, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v1}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6441
    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    .line 6442
    invoke-virtual {v1, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    .line 6443
    invoke-virtual {v1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/format/expert/AttributeSet;->withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v1

    .line 6446
    :goto_0
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public startSection(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 6274
    invoke-static {p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->checkAttribute(Lnet/time4j/engine/AttributeKey;)V

    .line 6275
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->resetPadding()V

    .line 6280
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6281
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6282
    new-instance v1, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    iget-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v1, p1, p2}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;)V

    goto :goto_0

    .line 6284
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/AttributeSet;

    .line 6285
    new-instance v1, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v1}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 6286
    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    .line 6287
    invoke-virtual {v1, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    .line 6288
    invoke-virtual {v1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/format/expert/AttributeSet;->withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v1

    .line 6291
    :goto_0
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;->stack:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method
