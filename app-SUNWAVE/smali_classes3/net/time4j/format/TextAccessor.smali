.class public final Lnet/time4j/format/TextAccessor;
.super Ljava/lang/Object;
.source "TextAccessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PROTECTED_SPACE:C = '\u00a0'


# instance fields
.field private final textForms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/TextAccessor;->textForms:Ljava/util/List;

    return-void
.end method

.method private compareIgnoreCase(CC)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x5a

    const/16 v3, 0x61

    const/16 v4, 0x41

    if-lt p1, v3, :cond_2

    const/16 v5, 0x7a

    if-gt p1, v5, :cond_2

    if-lt p2, v4, :cond_0

    if-gt p2, v2, :cond_0

    add-int/lit8 p2, p2, 0x61

    sub-int/2addr p2, v4

    int-to-char p2, p2

    :cond_0
    if-ne p1, p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    if-lt p1, v4, :cond_5

    if-gt p1, v2, :cond_5

    add-int/2addr p1, v3

    sub-int/2addr p1, v4

    int-to-char p1, p1

    if-lt p2, v4, :cond_3

    if-gt p2, v2, :cond_3

    add-int/lit8 p2, p2, 0x61

    sub-int/2addr p2, v4

    int-to-char p2, p2

    :cond_3
    if-ne p1, p2, :cond_4

    move v0, v1

    :cond_4
    return v0

    .line 394
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-eq v2, v3, :cond_6

    .line 395
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-ne p1, p2, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    return v0
.end method

.method private parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;ZZZ)Ljava/lang/Enum;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Ljava/lang/Class<",
            "TV;>;ZZZ)TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 293
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    .line 294
    iget-object v4, v0, Lnet/time4j/format/TextAccessor;->textForms:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 295
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 296
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-string v8, ""

    move-object v12, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 302
    :goto_0
    array-length v14, v3

    if-ge v10, v14, :cond_f

    .line 303
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    if-lt v10, v4, :cond_0

    .line 306
    aget-object v12, v3, v10

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_0
    iget-object v12, v0, Lnet/time4j/format/TextAccessor;->textForms:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 311
    :cond_1
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    move v7, v5

    const/4 v9, 0x0

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_9

    if-ge v9, v15, :cond_9

    move/from16 v17, v4

    add-int v4, v5, v9

    if-lt v4, v6, :cond_2

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    const/16 v16, 0x0

    goto :goto_5

    .line 318
    :cond_2
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move-object/from16 v18, v8

    .line 319
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v16, 0x20

    move-object/from16 v19, v11

    if-eqz p6, :cond_4

    const/16 v11, 0xa0

    if-ne v4, v11, :cond_3

    move/from16 v4, v16

    :cond_3
    if-ne v8, v11, :cond_4

    move/from16 v8, v16

    :cond_4
    if-eqz p4, :cond_7

    if-eq v4, v8, :cond_6

    .line 331
    invoke-direct {v0, v4, v8}, Lnet/time4j/format/TextAccessor;->compareIgnoreCase(CC)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    if-ne v4, v8, :cond_5

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    move/from16 v16, v4

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v11, v19

    goto :goto_2

    :cond_9
    move/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    if-eqz p6, :cond_a

    if-eqz v14, :cond_a

    const/4 v4, 0x5

    if-ne v15, v4, :cond_a

    const/4 v4, 0x4

    .line 343
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x2e

    if-ne v4, v8, :cond_a

    add-int/lit8 v4, v5, 0x3

    if-ne v7, v4, :cond_a

    if-ge v4, v6, :cond_a

    .line 345
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_a

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v10, v10, -0x1

    move-object v12, v4

    goto :goto_7

    :cond_a
    if-nez p5, :cond_c

    const/4 v4, 0x1

    if-ne v15, v4, :cond_b

    goto :goto_6

    :cond_b
    if-eqz v16, :cond_e

    .line 363
    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 364
    aget-object v1, v3, v10

    return-object v1

    :cond_c
    :goto_6
    sub-int/2addr v7, v5

    if-ge v13, v7, :cond_d

    .line 357
    aget-object v11, v3, v10

    move v13, v7

    move-object/from16 v12, v18

    goto :goto_8

    :cond_d
    if-ne v13, v7, :cond_e

    move-object/from16 v12, v18

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto :goto_9

    :cond_e
    move-object/from16 v12, v18

    :goto_7
    move-object/from16 v11, v19

    :goto_8
    const/4 v4, 0x1

    :goto_9
    add-int/2addr v10, v4

    move/from16 v4, v17

    move-object/from16 v8, v18

    goto/16 :goto_0

    :cond_f
    move-object/from16 v19, v11

    if-nez v19, :cond_10

    .line 369
    invoke-virtual {v2, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_a

    :cond_10
    add-int/2addr v5, v13

    .line 371
    invoke-virtual {v2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_a
    return-object v19
.end method


# virtual methods
.method public getTextForms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lnet/time4j/format/TextAccessor;->textForms:Ljava/util/List;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 134
    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;ZZZ)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")TV;"
        }
    .end annotation

    .line 223
    sget-object v0, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 225
    invoke-interface {p4, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 227
    sget-object v0, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 229
    invoke-interface {p4, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 231
    sget-object v0, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 233
    invoke-interface {p4, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    .line 234
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 235
    invoke-direct/range {v1 .. v7}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;ZZZ)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/format/Leniency;)Ljava/lang/Enum;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lnet/time4j/format/Leniency;",
            ")TV;"
        }
    .end annotation

    .line 175
    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, v0, :cond_0

    move v7, v1

    :goto_0
    move v8, v7

    move v9, v8

    goto :goto_1

    .line 178
    :cond_0
    sget-object v0, Lnet/time4j/format/Leniency;->LAX:Lnet/time4j/format/Leniency;

    if-ne p4, v0, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v8, v1

    move v7, v2

    move v9, v7

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 182
    invoke-direct/range {v3 .. v9}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;ZZZ)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 94
    iget-object v1, p0, Lnet/time4j/format/TextAccessor;->textForms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    iget-object p1, p0, Lnet/time4j/format/TextAccessor;->textForms:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 267
    iget-object v0, p0, Lnet/time4j/format/TextAccessor;->textForms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x10

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    const/16 v5, 0x2c

    .line 275
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :goto_1
    iget-object v5, p0, Lnet/time4j/format/TextAccessor;->textForms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    .line 279
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
