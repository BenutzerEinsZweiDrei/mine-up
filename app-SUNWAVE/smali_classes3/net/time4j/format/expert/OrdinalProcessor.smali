.class final Lnet/time4j/format/expert/OrdinalProcessor;
.super Ljava/lang/Object;
.source "OrdinalProcessor.java"

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
.field private static final ENGLISH_ORDINALS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final indicators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lenientMode:Lnet/time4j/format/Leniency;

.field private final locale:Ljava/util/Locale;

.field private final protectedLength:I

.field private final reserved:I

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lnet/time4j/format/PluralCategory;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 55
    sget-object v1, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    const-string v2, "st"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lnet/time4j/format/PluralCategory;->TWO:Lnet/time4j/format/PluralCategory;

    const-string v2, "nd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lnet/time4j/format/PluralCategory;->FEW:Lnet/time4j/format/PluralCategory;

    const-string v2, "rd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    const-string v2, "th"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/OrdinalProcessor;->ENGLISH_ORDINALS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)V
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
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing element."

    .line 90
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->indicators:Ljava/util/Map;

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/util/EnumMap;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    .line 99
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->indicators:Ljava/util/Map;

    .line 101
    sget-object v0, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->reserved:I

    .line 108
    iput p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->protectedLength:I

    const/16 p1, 0x30

    .line 109
    iput-char p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->zeroDigit:C

    .line 110
    sget-object p1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 111
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iput-object p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->locale:Ljava/util/Locale;

    return-void

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing plural category OTHER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;IICLnet/time4j/format/Leniency;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;IIC",
            "Lnet/time4j/format/Leniency;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 127
    iput-object p2, p0, Lnet/time4j/format/expert/OrdinalProcessor;->indicators:Ljava/util/Map;

    .line 130
    iput p3, p0, Lnet/time4j/format/expert/OrdinalProcessor;->reserved:I

    .line 131
    iput p4, p0, Lnet/time4j/format/expert/OrdinalProcessor;->protectedLength:I

    .line 132
    iput-char p5, p0, Lnet/time4j/format/expert/OrdinalProcessor;->zeroDigit:C

    .line 133
    iput-object p6, p0, Lnet/time4j/format/expert/OrdinalProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 134
    iput-object p7, p0, Lnet/time4j/format/expert/OrdinalProcessor;->locale:Ljava/util/Locale;

    return-void
.end method

.method private getIndicator(Lnet/time4j/engine/AttributeQuery;ZI)Ljava/lang/String;
    .locals 1

    .line 362
    invoke-direct {p0}, Lnet/time4j/format/expert/OrdinalProcessor;->isEnglish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 365
    iget-object p1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    sget-object p2, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p1, p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    .line 368
    :goto_0
    sget-object p2, Lnet/time4j/format/NumberType;->ORDINALS:Lnet/time4j/format/NumberType;

    .line 369
    invoke-static {p1, p2}, Lnet/time4j/format/PluralRules;->of(Ljava/util/Locale;Lnet/time4j/format/NumberType;)Lnet/time4j/format/PluralRules;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/PluralRules;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object p1

    .line 371
    invoke-direct {p0}, Lnet/time4j/format/expert/OrdinalProcessor;->getIndicators()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 372
    sget-object p1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    .line 375
    :cond_2
    invoke-direct {p0}, Lnet/time4j/format/expert/OrdinalProcessor;->getIndicators()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getIndicators()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Lnet/time4j/format/expert/OrdinalProcessor;->isEnglish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    sget-object v0, Lnet/time4j/format/expert/OrdinalProcessor;->ENGLISH_ORDINALS:Ljava/util/Map;

    return-object v0

    .line 391
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/OrdinalProcessor;->indicators:Ljava/util/Map;

    return-object v0
.end method

.method private isEnglish()Z
    .locals 1

    .line 381
    iget-object v0, p0, Lnet/time4j/format/expert/OrdinalProcessor;->indicators:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 318
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/OrdinalProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 319
    check-cast p1, Lnet/time4j/format/expert/OrdinalProcessor;

    .line 320
    iget-object v1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    iget-object v3, p1, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 321
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-direct {p0}, Lnet/time4j/format/expert/OrdinalProcessor;->getIndicators()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1}, Lnet/time4j/format/expert/OrdinalProcessor;->getIndicators()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

    .line 398
    iget-object v0, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 333
    iget-object v0, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    .line 335
    invoke-direct {p0}, Lnet/time4j/format/expert/OrdinalProcessor;->getIndicators()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 20
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

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 217
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 218
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v6

    if-eqz v4, :cond_0

    .line 221
    iget-object v7, v0, Lnet/time4j/format/expert/OrdinalProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    goto :goto_0

    :cond_0
    sget-object v7, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v8, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {v3, v7, v8}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/format/Leniency;

    :goto_0
    const/4 v8, 0x0

    if-eqz v4, :cond_1

    .line 222
    iget v9, v0, Lnet/time4j/format/expert/OrdinalProcessor;->protectedLength:I

    goto :goto_1

    :cond_1
    sget-object v9, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_1
    if-lez v9, :cond_2

    sub-int/2addr v5, v9

    :cond_2
    if-lt v6, v5, :cond_3

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing digits for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->setWarning()V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    .line 234
    iget-char v10, v0, Lnet/time4j/format/expert/OrdinalProcessor;->zeroDigit:C

    goto :goto_2

    :cond_4
    sget-object v10, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v11, 0x30

    .line 237
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    .line 239
    :goto_2
    iget v11, v0, Lnet/time4j/format/expert/OrdinalProcessor;->reserved:I

    const/16 v12, 0x9

    if-lez v11, :cond_6

    if-gtz v9, :cond_6

    move v9, v6

    move v11, v8

    :goto_3
    if-ge v9, v5, :cond_5

    .line 244
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    sub-int/2addr v13, v10

    if-ltz v13, :cond_5

    if-gt v13, v12, :cond_5

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 253
    :cond_5
    iget v9, v0, Lnet/time4j/format/expert/OrdinalProcessor;->reserved:I

    sub-int/2addr v11, v9

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_4

    :cond_6
    move v9, v12

    :goto_4
    add-int/lit8 v11, v6, 0x1

    add-int/2addr v9, v6

    .line 257
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    move v8, v6

    :goto_5
    if-ge v8, v9, :cond_8

    .line 262
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    move/from16 v17, v9

    sub-int v9, v16, v10

    if-ltz v9, :cond_7

    if-gt v9, v12, :cond_7

    const-wide/16 v18, 0xa

    mul-long v13, v13, v18

    move/from16 v16, v10

    int-to-long v9, v9

    add-long/2addr v13, v9

    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v16

    move/from16 v9, v17

    const/4 v15, 0x0

    goto :goto_5

    :cond_7
    if-eqz v15, :cond_8

    const-string v1, "Digit expected."

    .line 269
    invoke-virtual {v2, v6, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_8
    if-ge v8, v11, :cond_9

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough digits found for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 279
    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v2, v6, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_9
    long-to-int v6, v13

    .line 284
    invoke-direct {v0, v3, v4, v6}, Lnet/time4j/format/expert/OrdinalProcessor;->getIndicator(Lnet/time4j/engine/AttributeQuery;ZI)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v8

    if-lt v4, v5, :cond_a

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing or wrong ordinal indicator for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 291
    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {v2, v8, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 295
    :cond_a
    invoke-interface {v1, v8, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v8, v4

    goto :goto_6

    .line 299
    :cond_b
    invoke-virtual {v7}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v4

    if-nez v4, :cond_c

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong ordinal indicator for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 303
    invoke-interface {v5}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (expected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", found="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v2, v8, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 308
    :cond_c
    :goto_6
    iget-object v1, v0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    move-object/from16 v3, p4

    invoke-virtual {v3, v1, v6}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;I)V

    .line 309
    invoke-virtual {v2, v8}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 6
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

    .line 149
    iget-object v0, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_1

    const/high16 p2, -0x80000000

    if-ne v0, p2, :cond_0

    return v1

    .line 155
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot format negative ordinal numbers: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 160
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x30

    if-eqz p5, :cond_2

    .line 162
    iget-char v3, p0, Lnet/time4j/format/expert/OrdinalProcessor;->zeroDigit:C

    goto :goto_0

    :cond_2
    sget-object v3, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 165
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-eq v3, v2, :cond_4

    sub-int/2addr v3, v2

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    move v2, v4

    .line 171
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 172
    aget-char v5, p1, v2

    add-int/2addr v5, v3

    int-to-char v5, v5

    aput-char v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 175
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v2

    .line 181
    :cond_4
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 182
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v1

    .line 185
    :goto_2
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v4, p1

    .line 188
    invoke-direct {p0, p3, p5, v0}, Lnet/time4j/format/expert/OrdinalProcessor;->getIndicator(Lnet/time4j/engine/AttributeQuery;ZI)Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v4, p1

    if-eq v2, v1, :cond_6

    if-lez v4, :cond_6

    if-eqz p4, :cond_6

    .line 197
    new-instance p1, Lnet/time4j/format/expert/ElementPosition;

    iget-object p2, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    add-int p3, v2, v4

    invoke-direct {p1, p2, v2, p3}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return v4
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

    .line 428
    new-instance p1, Lnet/time4j/format/expert/OrdinalProcessor;

    iget-object v1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    iget-object v2, p0, Lnet/time4j/format/expert/OrdinalProcessor;->indicators:Ljava/util/Map;

    sget-object v0, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    const/4 v3, 0x0

    .line 432
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v3, 0x30

    .line 433
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v5

    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 434
    invoke-interface {p2, v0, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lnet/time4j/format/Leniency;

    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 435
    invoke-interface {p2, v0, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/util/Locale;

    move-object v0, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lnet/time4j/format/expert/OrdinalProcessor;-><init>(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;IICLnet/time4j/format/Leniency;Ljava/util/Locale;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[element="

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", indicators="

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-direct {p0}, Lnet/time4j/format/expert/OrdinalProcessor;->getIndicators()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 2
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

    .line 405
    iget-object v0, p0, Lnet/time4j/format/expert/OrdinalProcessor;->element:Lnet/time4j/engine/ChronoElement;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 409
    :cond_0
    new-instance v0, Lnet/time4j/format/expert/OrdinalProcessor;

    iget-object v1, p0, Lnet/time4j/format/expert/OrdinalProcessor;->indicators:Ljava/util/Map;

    invoke-direct {v0, p1, v1}, Lnet/time4j/format/expert/OrdinalProcessor;-><init>(Lnet/time4j/engine/ChronoElement;Ljava/util/Map;)V

    return-object v0
.end method
