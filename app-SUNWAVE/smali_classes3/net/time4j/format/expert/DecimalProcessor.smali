.class final Lnet/time4j/format/expert/DecimalProcessor;
.super Ljava/lang/Object;
.source "DecimalProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private final lenientMode:Lnet/time4j/format/Leniency;

.field private final precision:I

.field private final protectedLength:I

.field private final scale:I

.field private final zeroDigit:C


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/math/BigDecimal;",
            ">;II)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lnet/time4j/format/expert/LiteralProcessor;

    sget-object v1, Lnet/time4j/format/Attributes;->DECIMAL_SEPARATOR:Lnet/time4j/engine/AttributeKey;

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/LiteralProcessor;-><init>(Lnet/time4j/engine/AttributeKey;)V

    iput-object v0, p0, Lnet/time4j/format/expert/DecimalProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    .line 75
    iput-object p1, p0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 76
    iput p2, p0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    .line 77
    iput p3, p0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    const-string v0, "Missing element."

    .line 80
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x2

    if-lt p2, p1, :cond_2

    if-ge p3, p2, :cond_1

    const/4 p1, 0x1

    if-lt p3, p1, :cond_0

    const/16 p1, 0x30

    .line 93
    iput-char p1, p0, Lnet/time4j/format/expert/DecimalProcessor;->zeroDigit:C

    .line 94
    sget-object p1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object p1, p0, Lnet/time4j/format/expert/DecimalProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lnet/time4j/format/expert/DecimalProcessor;->protectedLength:I

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be bigger than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Precision must be bigger than scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Precision must be >= 2: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lnet/time4j/format/expert/FormatProcessor;Lnet/time4j/engine/ChronoElement;IICLnet/time4j/format/Leniency;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/lang/Void;",
            ">;",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/math/BigDecimal;",
            ">;IIC",
            "Lnet/time4j/format/Leniency;",
            "I)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lnet/time4j/format/expert/DecimalProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    .line 111
    iput-object p2, p0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 112
    iput p3, p0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    .line 113
    iput p4, p0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    .line 114
    iput-char p5, p0, Lnet/time4j/format/expert/DecimalProcessor;->zeroDigit:C

    .line 115
    iput-object p6, p0, Lnet/time4j/format/expert/DecimalProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 116
    iput p7, p0, Lnet/time4j/format/expert/DecimalProcessor;->protectedLength:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 335
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/DecimalProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 336
    check-cast p1, Lnet/time4j/format/expert/DecimalProcessor;

    .line 337
    iget-object v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    iget-object v3, p1, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 338
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    iget v3, p1, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    iget p1, p1, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 351
    iget-object v0, p0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    iget v2, p0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

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
    .locals 22
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

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    .line 231
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 232
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v2

    const/4 v9, 0x0

    if-eqz p5, :cond_0

    .line 235
    iget v3, v0, Lnet/time4j/format/expert/DecimalProcessor;->protectedLength:I

    goto :goto_0

    :cond_0
    sget-object v3, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    sub-int/2addr v1, v3

    :cond_1
    move v10, v1

    if-lt v2, v10, :cond_2

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing digits for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->setWarning()V

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 247
    iget-char v1, v0, Lnet/time4j/format/expert/DecimalProcessor;->zeroDigit:C

    goto :goto_1

    :cond_3
    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v3, 0x30

    .line 250
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    :goto_1
    move v11, v1

    add-int/lit8 v1, v2, 0x12

    .line 252
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v14, 0x1

    move v3, v9

    move v5, v14

    const-wide/16 v12, 0x0

    :goto_2
    add-int v6, v2, v3

    const-wide/16 v17, 0xa

    const/16 v9, 0x9

    if-ge v6, v1, :cond_5

    .line 258
    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    sub-int v15, v19, v11

    if-ltz v15, :cond_4

    if-gt v15, v9, :cond_4

    mul-long v12, v12, v17

    int-to-long v5, v15

    add-long/2addr v12, v5

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    const-string v1, "Digit expected."

    .line 265
    invoke-virtual {v8, v2, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_5
    if-eqz p5, :cond_6

    .line 272
    iget-object v1, v0, Lnet/time4j/format/expert/DecimalProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    goto :goto_3

    :cond_6
    sget-object v1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {v4, v1, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/Leniency;

    :goto_3
    move-object v15, v1

    .line 274
    invoke-virtual {v15}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, v0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    iget v5, v0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    sub-int/2addr v1, v5

    if-eq v3, v1, :cond_7

    const-string v1, "Integer part of decimal element does not match expected width."

    .line 275
    invoke-virtual {v8, v2, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 280
    :cond_7
    invoke-virtual {v8, v6}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    .line 282
    iget-object v1, v0, Lnet/time4j/format/expert/DecimalProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v16, v6

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/time4j/format/expert/FormatProcessor;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    add-int/lit8 v6, v16, 0x1

    add-int/lit8 v1, v6, 0x12

    .line 295
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v20, 0x0

    :goto_4
    add-int v3, v6, v2

    if-ge v3, v1, :cond_9

    .line 300
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v11

    if-ltz v4, :cond_9

    if-gt v4, v9, :cond_9

    mul-long v20, v20, v17

    int-to-long v3, v4

    add-long v20, v20, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    if-nez v2, :cond_a

    const-string v1, "Fraction part expected."

    .line 311
    invoke-virtual {v8, v6, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 313
    :cond_a
    invoke-virtual {v15}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, v0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    if-eq v2, v1, :cond_b

    const-string v1, "Fraction part of decimal element does not match expected width."

    .line 314
    invoke-virtual {v8, v6, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 321
    :cond_b
    invoke-virtual {v8, v3}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    .line 323
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v12, v13}, Ljava/math/BigDecimal;-><init>(J)V

    .line 324
    new-instance v3, Ljava/math/BigDecimal;

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 325
    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v1

    .line 326
    iget-object v2, v0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    move-object/from16 v3, p4

    invoke-virtual {v3, v2, v1}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

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

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    .line 131
    iget-object v2, v0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    move-object/from16 v3, p1

    .line 132
    invoke-interface {v3, v2}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    iget v4, v0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v4, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v9

    .line 139
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move v5, v10

    move v4, v11

    move v12, v4

    move v13, v12

    :goto_0
    if-ge v4, v2, :cond_2

    .line 142
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    if-ltz v5, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_2
    iget v2, v0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    iget v4, v0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    sub-int v4, v2, v4

    sub-int/2addr v4, v12

    if-ltz v4, :cond_d

    .line 160
    new-instance v14, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v11

    :goto_2
    const/16 v15, 0x30

    if-ge v2, v4, :cond_3

    .line 163
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v11

    :goto_3
    if-ge v2, v12, :cond_4

    .line 167
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 170
    :cond_4
    iget-object v2, v0, Lnet/time4j/format/expert/DecimalProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lnet/time4j/format/expert/FormatProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    move v2, v11

    :goto_4
    if-ge v2, v13, :cond_5

    add-int/lit8 v3, v12, 0x1

    add-int/2addr v3, v2

    .line 173
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move v2, v11

    .line 176
    :goto_5
    iget v3, v0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    sub-int/2addr v3, v13

    if-ge v2, v3, :cond_6

    .line 177
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 180
    :cond_6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_7

    .line 182
    iget-char v3, v0, Lnet/time4j/format/expert/DecimalProcessor;->zeroDigit:C

    goto :goto_6

    :cond_7
    sget-object v3, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 185
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-interface {v5, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    :goto_6
    if-eq v3, v15, :cond_a

    sub-int/2addr v3, v15

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 191
    :goto_7
    array-length v4, v2

    if-ge v11, v4, :cond_9

    .line 192
    aget-char v4, v2, v11

    if-lt v4, v15, :cond_8

    const/16 v5, 0x39

    if-gt v4, v5, :cond_8

    add-int/2addr v4, v3

    int-to-char v4, v4

    .line 194
    aput-char v4, v2, v11

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 198
    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    move-object v2, v3

    .line 202
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 204
    instance-of v4, v1, Ljava/lang/CharSequence;

    if-eqz v4, :cond_b

    .line 205
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    goto :goto_8

    :cond_b
    move v4, v10

    .line 208
    :goto_8
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-eq v4, v10, :cond_c

    if-lez v3, :cond_c

    if-eqz v8, :cond_c

    .line 215
    new-instance v1, Lnet/time4j/format/expert/ElementPosition;

    iget-object v2, v0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    add-int v5, v4, v3

    invoke-direct {v1, v2, v4, v5}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    return v3

    .line 155
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Integer part of element value exceeds fixed format width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance p1, Lnet/time4j/format/expert/DecimalProcessor;

    iget-object v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->decimalSeparator:Lnet/time4j/format/expert/FormatProcessor;

    iget-object v2, p0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    iget v3, p0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    iget v4, p0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    sget-object p3, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v0, 0x30

    .line 417
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result v5

    sget-object p3, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 418
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lnet/time4j/format/Leniency;

    sget-object p3, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    const/4 v0, 0x0

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lnet/time4j/format/expert/DecimalProcessor;-><init>(Lnet/time4j/format/expert/FormatProcessor;Lnet/time4j/engine/ChronoElement;IICLnet/time4j/format/Leniency;I)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[element="

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", precision="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lnet/time4j/format/expert/DecimalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 390
    :cond_0
    new-instance v0, Lnet/time4j/format/expert/DecimalProcessor;

    iget v1, p0, Lnet/time4j/format/expert/DecimalProcessor;->precision:I

    iget v2, p0, Lnet/time4j/format/expert/DecimalProcessor;->scale:I

    invoke-direct {v0, p1, v1, v2}, Lnet/time4j/format/expert/DecimalProcessor;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    return-object v0
.end method
