.class final Lnet/time4j/format/expert/FractionProcessor;
.super Ljava/lang/Object;
.source "FractionProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MRD_MINUS_1:I = 0x3b9ac9ff


# instance fields
.field private final decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fixedWidth:Z

.field private final lenientMode:Lnet/time4j/format/Leniency;

.field private final maxDigits:I

.field private final minDigits:I

.field private final zeroDigit:C


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;IIZ)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 79
    iput p2, p0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    .line 80
    iput p3, p0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    if-nez p4, :cond_0

    if-ne p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    iput-boolean v0, p0, Lnet/time4j/format/expert/FractionProcessor;->fixedWidth:Z

    if-eqz p4, :cond_1

    .line 83
    new-instance p4, Lnet/time4j/format/expert/LiteralProcessor;

    sget-object v0, Lnet/time4j/format/Attributes;->DECIMAL_SEPARATOR:Lnet/time4j/engine/AttributeKey;

    invoke-direct {p4, v0}, Lnet/time4j/format/expert/LiteralProcessor;-><init>(Lnet/time4j/engine/AttributeKey;)V

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    iput-object p4, p0, Lnet/time4j/format/expert/FractionProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    const-string p4, "Missing element."

    .line 89
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_5

    if-gt p2, p3, :cond_4

    const/16 p1, 0x9

    if-gt p2, p1, :cond_3

    if-gt p3, p1, :cond_2

    const/16 p1, 0x30

    .line 106
    iput-char p1, p0, Lnet/time4j/format/expert/FractionProcessor;->zeroDigit:C

    .line 107
    sget-object p1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object p1, p0, Lnet/time4j/format/expert/FractionProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    return-void

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Max digits out of range: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Min digits out of range: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Max smaller than min: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Negative min digits: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lnet/time4j/format/expert/FormatProcessor;Lnet/time4j/engine/ChronoElement;IIZCLnet/time4j/format/Leniency;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/lang/Void;",
            ">;",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;IIZC",
            "Lnet/time4j/format/Leniency;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lnet/time4j/format/expert/FractionProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    .line 123
    iput-object p2, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 124
    iput p3, p0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    .line 125
    iput p4, p0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    .line 126
    iput-boolean p5, p0, Lnet/time4j/format/expert/FractionProcessor;->fixedWidth:Z

    .line 129
    iput-char p6, p0, Lnet/time4j/format/expert/FractionProcessor;->zeroDigit:C

    .line 130
    iput-object p7, p0, Lnet/time4j/format/expert/FractionProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    return-void
.end method

.method private getRealValue(Ljava/math/BigDecimal;II)I
    .locals 2

    int-to-long v0, p2

    .line 467
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    int-to-long v0, p3

    .line 470
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p3

    .line 471
    invoke-virtual {p3, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 472
    invoke-virtual {p3, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p3

    .line 475
    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object p3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p1, v0, p3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 477
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p1

    return p1
.end method

.method private hasDecimalSeparator()Z
    .locals 1

    .line 491
    iget-object v0, p0, Lnet/time4j/format/expert/FractionProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static toDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .locals 2

    .line 485
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 336
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/FractionProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 337
    check-cast p1, Lnet/time4j/format/expert/FractionProcessor;

    .line 338
    iget-object v1, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    iget-object v3, p1, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 339
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    iget v3, p1, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    iget v3, p1, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    if-ne v1, v3, :cond_1

    .line 342
    invoke-direct {p0}, Lnet/time4j/format/expert/FractionProcessor;->hasDecimalSeparator()Z

    move-result v1

    invoke-direct {p1}, Lnet/time4j/format/expert/FractionProcessor;->hasDecimalSeparator()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getElement()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 353
    iget-object v0, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    iget v2, p0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    if-eqz p5, :cond_0

    .line 244
    iget-object v1, v0, Lnet/time4j/format/expert/FractionProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {v8, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/Leniency;

    :goto_0
    move-object v10, v1

    .line 248
    invoke-virtual {v10}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v1

    const/16 v11, 0x9

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lnet/time4j/format/expert/FractionProcessor;->fixedWidth:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v14, v11

    const/4 v13, 0x0

    goto :goto_2

    .line 249
    :cond_2
    :goto_1
    iget v1, v0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    .line 250
    iget v2, v0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    move v13, v1

    move v14, v2

    .line 253
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 255
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    if-lt v1, v15, :cond_4

    if-lez v13, :cond_3

    .line 258
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected fraction digits not found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 260
    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v7, v1, v2}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :cond_3
    return-void

    .line 265
    :cond_4
    invoke-direct/range {p0 .. p0}, Lnet/time4j/format/expert/FractionProcessor;->hasDecimalSeparator()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 266
    iget-object v1, v0, Lnet/time4j/format/expert/FractionProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/time4j/format/expert/FormatProcessor;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v13, :cond_5

    .line 275
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->clearError()V

    :cond_5
    return-void

    .line 281
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    add-int v2, v1, v13

    add-int/2addr v14, v1

    .line 283
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v4, " digits."

    const-string v5, "Expected at least "

    if-le v2, v15, :cond_7

    .line 285
    invoke-virtual {v10}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 287
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v7, v1, v2}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_7
    if-eqz p5, :cond_8

    .line 292
    iget-char v6, v0, Lnet/time4j/format/expert/FractionProcessor;->zeroDigit:C

    goto :goto_3

    :cond_8
    sget-object v6, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v14, 0x30

    .line 295
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-interface {v8, v6, v14}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    :goto_3
    const-wide/16 v14, 0x0

    :goto_4
    if-ge v1, v3, :cond_a

    move-object/from16 v8, p1

    .line 300
    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    sub-int v12, v16, v6

    if-ltz v12, :cond_9

    if-gt v12, v11, :cond_9

    const-wide/16 v17, 0xa

    mul-long v14, v14, v17

    int-to-long v11, v12

    add-long/2addr v14, v11

    add-int/lit8 v1, v1, 0x1

    const/16 v11, 0x9

    goto :goto_4

    :cond_9
    if-ge v1, v2, :cond_a

    .line 305
    invoke-virtual {v10}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 307
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v7, v1, v2}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 315
    :cond_a
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v14, v15}, Ljava/math/BigDecimal;-><init>(J)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 318
    iget-object v3, v0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NANO_OF_SECOND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x3b9ac9ff

    const/4 v4, 0x0

    .line 319
    invoke-direct {v0, v2, v4, v3}, Lnet/time4j/format/expert/FractionProcessor;->getRealValue(Ljava/math/BigDecimal;II)I

    move-result v2

    .line 320
    iget-object v3, v0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {v9, v3, v2}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;I)V

    goto :goto_5

    .line 323
    :cond_b
    sget-object v3, Lnet/time4j/format/expert/FractionalElement;->FRACTION:Lnet/time4j/format/expert/FractionalElement;

    invoke-virtual {v9, v3, v2}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 324
    iget-object v2, v0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 327
    :goto_5
    invoke-virtual {v7, v1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 16
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

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    .line 145
    iget-object v1, v0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v2, v1}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lnet/time4j/format/expert/FractionProcessor;->toDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 146
    iget-object v3, v0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v2, v3}, Lnet/time4j/engine/ChronoDisplay;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3}, Lnet/time4j/format/expert/FractionProcessor;->toDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 147
    iget-object v4, v0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v2, v4}, Lnet/time4j/engine/ChronoDisplay;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4}, Lnet/time4j/format/expert/FractionProcessor;->toDecimal(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 149
    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-lez v5, :cond_0

    move-object v1, v4

    .line 154
    :cond_0
    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 155
    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    sget-object v4, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    const/16 v4, 0x9

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 154
    invoke-virtual {v1, v3, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 159
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 160
    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-nez v3, :cond_1

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {v1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    :goto_0
    move-object v9, v1

    const/16 v10, 0x30

    if-eqz p5, :cond_2

    .line 165
    iget-char v1, v0, Lnet/time4j/format/expert/FractionProcessor;->zeroDigit:C

    move-object/from16 v4, p3

    goto :goto_1

    :cond_2
    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 168
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-interface {v4, v1, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    :goto_1
    move v11, v1

    .line 173
    instance-of v1, v7, Ljava/lang/CharSequence;

    const/4 v12, -0x1

    if-eqz v1, :cond_3

    .line 174
    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v13, v1

    goto :goto_2

    :cond_3
    move v13, v12

    .line 177
    :goto_2
    invoke-virtual {v9}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v1, :cond_6

    .line 179
    iget v1, v0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    if-lez v1, :cond_8

    .line 180
    invoke-direct/range {p0 .. p0}, Lnet/time4j/format/expert/FractionProcessor;->hasDecimalSeparator()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    iget-object v1, v0, Lnet/time4j/format/expert/FractionProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/time4j/format/expert/FormatProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    move v1, v15

    goto :goto_3

    :cond_4
    move v1, v14

    .line 190
    :goto_3
    iget v2, v0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    if-ge v14, v2, :cond_5

    .line 191
    invoke-interface {v7, v11}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    add-int v14, v1, v2

    goto :goto_5

    .line 197
    :cond_6
    invoke-direct/range {p0 .. p0}, Lnet/time4j/format/expert/FractionProcessor;->hasDecimalSeparator()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 198
    iget-object v1, v0, Lnet/time4j/format/expert/FractionProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/time4j/format/expert/FormatProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    move v14, v15

    .line 209
    :cond_7
    invoke-virtual {v9}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    iget v2, v0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    .line 208
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 211
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v9, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    sub-int/2addr v11, v10

    const/4 v2, 0x2

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_8

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v4, v11

    int-to-char v4, v4

    .line 217
    invoke-interface {v7, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-eq v13, v12, :cond_9

    if-le v14, v15, :cond_9

    if-eqz v8, :cond_9

    .line 227
    new-instance v1, Lnet/time4j/format/expert/ElementPosition;

    iget-object v2, v0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    add-int/lit8 v3, v13, 0x1

    add-int/2addr v13, v14

    invoke-direct {v1, v2, v3, v13}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return v14
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance p1, Lnet/time4j/format/expert/FractionProcessor;

    iget-object v1, p0, Lnet/time4j/format/expert/FractionProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    iget-object v2, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    iget v3, p0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    iget v4, p0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    iget-boolean v5, p0, Lnet/time4j/format/expert/FractionProcessor;->fixedWidth:Z

    sget-object p3, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v0, 0x30

    .line 421
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result v6

    sget-object p3, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 422
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lnet/time4j/format/Leniency;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lnet/time4j/format/expert/FractionProcessor;-><init>(Lnet/time4j/format/expert/FormatProcessor;Lnet/time4j/engine/ChronoElement;IIZCLnet/time4j/format/Leniency;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[element="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", min-digits="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v1, p0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max-digits="

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget v1, p0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    .line 445
    sget-object v0, Lnet/time4j/format/expert/FractionalElement;->FRACTION:Lnet/time4j/format/expert/FractionalElement;

    invoke-virtual {p2, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 449
    :cond_0
    sget-object v0, Lnet/time4j/format/expert/FractionalElement;->FRACTION:Lnet/time4j/format/expert/FractionalElement;

    invoke-virtual {p2, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    .line 450
    iget-object v1, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 451
    iget-object v2, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 452
    invoke-direct {p0, v0, v1, v2}, Lnet/time4j/format/expert/FractionProcessor;->getRealValue(Ljava/math/BigDecimal;II)I

    move-result v0

    .line 454
    sget-object v1, Lnet/time4j/format/expert/FractionalElement;->FRACTION:Lnet/time4j/format/expert/FractionalElement;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    .line 455
    iget-object v1, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p2, v1, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    .line 457
    iget-object p2, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lnet/time4j/format/expert/FractionProcessor;->element:Lnet/time4j/engine/ChronoElement;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 392
    :cond_0
    new-instance v0, Lnet/time4j/format/expert/FractionProcessor;

    iget v1, p0, Lnet/time4j/format/expert/FractionProcessor;->minDigits:I

    iget v2, p0, Lnet/time4j/format/expert/FractionProcessor;->maxDigits:I

    .line 396
    invoke-direct {p0}, Lnet/time4j/format/expert/FractionProcessor;->hasDecimalSeparator()Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lnet/time4j/format/expert/FractionProcessor;-><init>(Lnet/time4j/engine/ChronoElement;IIZ)V

    return-object v0
.end method
