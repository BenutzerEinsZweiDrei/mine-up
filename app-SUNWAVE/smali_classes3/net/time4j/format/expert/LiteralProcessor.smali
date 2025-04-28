.class final Lnet/time4j/format/expert/LiteralProcessor;
.super Ljava/lang/Object;
.source "LiteralProcessor.java"

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
.field private final alt:C

.field private final attribute:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final caseInsensitive:Z

.field private final interpunctuationMode:Z

.field private final multi:Ljava/lang/String;

.field private final rtl:Z

.field private final single:C


# direct methods
.method constructor <init>(CC)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-char p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    .line 101
    iput-char p2, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    .line 103
    iput-object v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 108
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->caseInsensitive:Z

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->interpunctuationMode:Z

    .line 115
    iput-boolean p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->rtl:Z

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Literal must not be a decimal digit."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Literal must not start with non-printable char."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(CCLjava/lang/String;Lnet/time4j/engine/AttributeKey;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC",
            "Ljava/lang/String;",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-char p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    .line 155
    iput-char p2, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    .line 156
    iput-object p3, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    .line 158
    iput-boolean p5, p0, Lnet/time4j/format/expert/LiteralProcessor;->caseInsensitive:Z

    .line 159
    iput-boolean p6, p0, Lnet/time4j/format/expert/LiteralProcessor;->interpunctuationMode:Z

    .line 160
    iput-boolean p7, p0, Lnet/time4j/format/expert/LiteralProcessor;->rtl:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    .line 71
    iput-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    const/4 v2, 0x0

    .line 72
    iput-object v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    .line 73
    iput-object p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    const/4 v2, 0x1

    .line 80
    iput-boolean v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->caseInsensitive:Z

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_0

    invoke-static {v1}, Lnet/time4j/format/expert/LiteralProcessor;->isInterpunctuation(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->interpunctuationMode:Z

    .line 82
    iput-boolean v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->rtl:Z

    return-void

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Literal must not start with non-printable char."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing literal."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lnet/time4j/engine/AttributeKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing format attribute."

    .line 129
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 132
    iput-char v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    .line 133
    iput-char v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    .line 134
    iput-object p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->caseInsensitive:Z

    .line 138
    iput-boolean v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->interpunctuationMode:Z

    .line 139
    iput-boolean v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->rtl:Z

    return-void
.end method

.method private static charEqualsIgnoreCase(CC)Z
    .locals 2

    if-eq p0, p1, :cond_1

    .line 492
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_1

    .line 493
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isBidi(C)Z
    .locals 1

    const/16 v0, 0x200e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isInterpunctuation(C)Z
    .locals 1

    .line 506
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/time4j/format/expert/LiteralProcessor;->isBidi(C)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private logError(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)V
    .locals 4

    .line 515
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot parse: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "\" (expected: ["

    .line 518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], found: ["

    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, "])"

    .line 522
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void
.end method

.method private parseChar(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Z)V
    .locals 9

    .line 223
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    .line 226
    iget-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    .line 228
    iget-object v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 229
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p3, v2, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 232
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v0, v2, :cond_8

    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 235
    :cond_1
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 236
    iget-char v5, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    .line 238
    iget-object v6, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    if-eqz v6, :cond_4

    sget-object v6, Lnet/time4j/format/Attributes;->DECIMAL_SEPARATOR:Lnet/time4j/engine/AttributeKey;

    .line 240
    invoke-interface {v6}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    invoke-interface {v7}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget-object v7, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 241
    invoke-interface {p3, v7, v8}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v5, 0x2e

    const/16 v6, 0x2c

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    if-ne v1, v5, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v1

    :cond_4
    :goto_0
    if-eq v2, v1, :cond_5

    if-eq v2, v5, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v3

    :goto_1
    if-eqz v6, :cond_7

    if-eqz p4, :cond_6

    .line 253
    iget-boolean p3, p0, Lnet/time4j/format/expert/LiteralProcessor;->caseInsensitive:Z

    goto :goto_2

    :cond_6
    sget-object p4, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 256
    invoke-interface {p3, p4, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    :goto_2
    if-eqz p3, :cond_7

    .line 257
    invoke-static {v2, v1}, Lnet/time4j/format/expert/LiteralProcessor;->charEqualsIgnoreCase(CC)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-static {v2, v5}, Lnet/time4j/format/expert/LiteralProcessor;->charEqualsIgnoreCase(CC)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v6

    goto :goto_4

    :cond_8
    :goto_3
    move v2, v3

    move v3, v4

    :cond_9
    :goto_4
    if-eqz v3, :cond_b

    .line 264
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Cannot parse: \""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, "\" (expected: ["

    .line 266
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "], found: ["

    .line 268
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_a

    .line 270
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const-string p1, "])"

    .line 272
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    goto :goto_5

    :cond_b
    add-int/2addr v0, v4

    .line 275
    invoke-virtual {p2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    :goto_5
    return-void
.end method

.method private parseMulti(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Z)V
    .locals 3

    .line 287
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    if-eqz p4, :cond_0

    .line 289
    iget-boolean v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->caseInsensitive:Z

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 292
    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    if-eqz p4, :cond_1

    .line 293
    iget-boolean p3, p0, Lnet/time4j/format/expert/LiteralProcessor;->rtl:Z

    goto :goto_1

    :cond_1
    sget-object p4, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 296
    invoke-interface {p3, p4, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    invoke-static {p3}, Lnet/time4j/format/CalendarText;->isRTL(Ljava/util/Locale;)Z

    move-result p3

    .line 297
    :goto_1
    iget-object p4, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    invoke-static {p1, v0, p4, v1, p3}, Lnet/time4j/format/expert/LiteralProcessor;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZZ)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_2

    .line 300
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/expert/LiteralProcessor;->logError(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)V

    goto :goto_2

    :cond_2
    add-int/2addr v0, p3

    .line 302
    invoke-virtual {p2, v0}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    :goto_2
    return-void
.end method

.method static subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZZ)I
    .locals 9

    .line 441
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 442
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_7

    .line 446
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 448
    invoke-static {v5}, Lnet/time4j/format/expert/LiteralProcessor;->isBidi(C)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p4, :cond_1

    move v6, v2

    :goto_1
    add-int v7, v4, p1

    if-ge v7, v0, :cond_3

    .line 453
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lnet/time4j/format/expert/LiteralProcessor;->isBidi(C)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int v6, v4, p1

    if-ge v6, v0, :cond_2

    .line 457
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v2

    :cond_3
    :goto_2
    add-int v7, v4, p1

    const/4 v8, -0x1

    if-lt v7, v0, :cond_4

    return v8

    :cond_4
    add-int/lit8 v4, v4, 0x1

    if-eqz p3, :cond_5

    .line 467
    invoke-static {v6, v5}, Lnet/time4j/format/expert/LiteralProcessor;->charEqualsIgnoreCase(CC)Z

    move-result v5

    if-nez v5, :cond_6

    return v8

    :cond_5
    if-eq v6, v5, :cond_6

    return v8

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    if-eqz p4, :cond_8

    :goto_4
    add-int p2, v4, p1

    if-ge p2, v0, :cond_8

    .line 476
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lnet/time4j/format/expert/LiteralProcessor;->isBidi(C)Z

    move-result p2

    if-eqz p2, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    return v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 312
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/LiteralProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 313
    check-cast p1, Lnet/time4j/format/expert/LiteralProcessor;

    .line 314
    iget-object v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    if-eqz v1, :cond_1

    .line 315
    iget-object p1, p1, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 316
    :cond_1
    iget-object v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 317
    iget-object v1, p1, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    iget-char v3, p1, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    if-ne v1, v3, :cond_2

    iget-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    iget-char p1, p1, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 323
    :cond_3
    iget-object v3, p1, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->interpunctuationMode:Z

    iget-boolean p1, p1, Lnet/time4j/format/expert/LiteralProcessor;->interpunctuationMode:Z

    if-ne v1, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0

    :cond_5
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

.method getPrefixedDigitArea()I
    .locals 4

    .line 417
    iget-object v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 423
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 334
    iget-object v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 337
    :cond_0
    invoke-interface {v0}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_1
    :goto_0
    iget-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNumerical()Z
    .locals 3

    .line 385
    iget-object v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 389
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/format/expert/LiteralProcessor;->getPrefixedDigitArea()I

    move-result v0

    iget-object v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 1
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

    if-eqz p5, :cond_2

    .line 198
    iget-boolean p4, p0, Lnet/time4j/format/expert/LiteralProcessor;->interpunctuationMode:Z

    if-eqz p4, :cond_2

    .line 199
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result p4

    .line 200
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-ge p4, p5, :cond_0

    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    iget-char v0, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    if-ne p5, v0, :cond_0

    add-int/lit8 p4, p4, 0x1

    .line 201
    invoke-virtual {p2, p4}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    goto :goto_0

    .line 202
    :cond_0
    iget-char p4, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    const/16 p5, 0x2e

    if-ne p4, p5, :cond_1

    sget-object p4, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 204
    invoke-interface {p3, p4, p5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_4

    .line 206
    :cond_1
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/expert/LiteralProcessor;->logError(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object p4, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    if-nez p4, :cond_3

    .line 209
    invoke-direct {p0, p1, p2, p3, p5}, Lnet/time4j/format/expert/LiteralProcessor;->parseChar(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Z)V

    goto :goto_0

    .line 211
    :cond_3
    invoke-direct {p0, p1, p2, p3, p5}, Lnet/time4j/format/expert/LiteralProcessor;->parseMulti(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Z)V

    :cond_4
    :goto_0
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

    .line 175
    iget-object p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    const/4 p5, 0x0

    .line 176
    invoke-interface {p3, p1, p5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 177
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return p4

    .line 179
    :cond_0
    iget-object p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 180
    iget-char p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return p4

    .line 183
    :cond_1
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 184
    iget-object p1, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public quickPath(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/AttributeQuery;I)Lnet/time4j/format/expert/FormatProcessor;
    .locals 8
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

    .line 400
    sget-object p1, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p2, p1, p3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    invoke-static {p1}, Lnet/time4j/format/CalendarText;->isRTL(Ljava/util/Locale;)Z

    move-result v7

    .line 402
    new-instance p1, Lnet/time4j/format/expert/LiteralProcessor;

    iget-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    iget-char v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    iget-object v3, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    iget-object v4, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 407
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-boolean p2, p0, Lnet/time4j/format/expert/LiteralProcessor;->interpunctuationMode:Z

    if-eqz p2, :cond_0

    if-nez v7, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v6, p2

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lnet/time4j/format/expert/LiteralProcessor;-><init>(CCLjava/lang/String;Lnet/time4j/engine/AttributeKey;ZZZ)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[literal="

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    if-eqz v1, :cond_0

    const/16 v1, 0x7b

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    iget-object v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->attribute:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 353
    :cond_0
    iget-object v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->multi:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 354
    iget-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    iget-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    iget-char v2, p0, Lnet/time4j/format/expert/LiteralProcessor;->single:C

    if-eq v1, v2, :cond_2

    const-string v1, ", alternative="

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-char v1, p0, Lnet/time4j/format/expert/LiteralProcessor;->alt:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const/16 v1, 0x5d

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
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
