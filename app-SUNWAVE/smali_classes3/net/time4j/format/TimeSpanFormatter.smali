.class public abstract Lnet/time4j/format/TimeSpanFormatter;
.super Ljava/lang/Object;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;,
        Lnet/time4j/format/TimeSpanFormatter$SignItem;,
        Lnet/time4j/format/TimeSpanFormatter$LiteralItem;,
        Lnet/time4j/format/TimeSpanFormatter$OrItem;,
        Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;,
        Lnet/time4j/format/TimeSpanFormatter$PluralItem;,
        Lnet/time4j/format/TimeSpanFormatter$FractionItem;,
        Lnet/time4j/format/TimeSpanFormatter$NumberItem;,
        Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "S::",
        "Lnet/time4j/engine/TimeSpan<",
        "TU;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SIGN_KEY:Ljava/lang/Object;


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final pattern:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/time4j/format/TimeSpanFormatter;->SIGN_KEY:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing unit type."

    .line 86
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v0, :cond_12

    .line 95
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 99
    :cond_0
    invoke-static {v6}, Lnet/time4j/format/TimeSpanFormatter;->isSymbol(C)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    :goto_1
    if-ge v7, v0, :cond_1

    .line 101
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    sub-int v3, v7, v3

    .line 104
    invoke-direct {p0, v6, v3, v4, v1}, Lnet/time4j/format/TimeSpanFormatter;->addSymbol(CIILjava/util/List;)V

    add-int/lit8 v3, v7, -0x1

    move v4, v2

    goto/16 :goto_5

    :cond_2
    if-gtz v4, :cond_11

    const/16 v7, 0x27

    if-ne v6, v7, :cond_7

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    :goto_2
    if-ge v6, v0, :cond_4

    .line 112
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_3

    add-int/lit8 v8, v6, 0x1

    if-ge v8, v0, :cond_4

    .line 113
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_4

    move v6, v8

    :cond_3
    add-int/2addr v6, v5

    goto :goto_2

    :cond_4
    if-ge v6, v0, :cond_6

    if-ne v3, v6, :cond_5

    .line 126
    invoke-direct {p0, v7, v1}, Lnet/time4j/format/TimeSpanFormatter;->addLiteral(CLjava/util/List;)V

    goto :goto_3

    .line 128
    :cond_5
    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v7, "\'\'"

    const-string v8, "\'"

    .line 129
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lnet/time4j/format/TimeSpanFormatter;->addLiteral(Ljava/lang/String;Ljava/util/List;)V

    :goto_3
    move v3, v6

    goto/16 :goto_5

    .line 122
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String literal in pattern not closed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 v7, 0x5b

    if-ne v6, v7, :cond_8

    .line 132
    invoke-static {v1}, Lnet/time4j/format/TimeSpanFormatter;->startOptionalSection(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_8
    const/16 v7, 0x5d

    if-ne v6, v7, :cond_9

    .line 134
    invoke-static {v1}, Lnet/time4j/format/TimeSpanFormatter;->endOptionalSection(Ljava/util/List;)V

    goto/16 :goto_5

    :cond_9
    const/16 v7, 0x2c

    const/16 v8, 0x2e

    const/4 v9, 0x0

    if-ne v6, v8, :cond_a

    .line 136
    invoke-static {v1}, Lnet/time4j/format/TimeSpanFormatter;->lastOn(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    new-instance v10, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;

    invoke-direct {v10, v8, v7, v9}, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;-><init>(CCLnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    if-ne v6, v7, :cond_b

    .line 138
    invoke-static {v1}, Lnet/time4j/format/TimeSpanFormatter;->lastOn(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    new-instance v10, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;

    invoke-direct {v10, v7, v8, v9}, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;-><init>(CCLnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_c

    .line 140
    invoke-static {v1}, Lnet/time4j/format/TimeSpanFormatter;->lastOn(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lnet/time4j/format/TimeSpanFormatter$SignItem;

    invoke-direct {v7, v2, v9}, Lnet/time4j/format/TimeSpanFormatter$SignItem;-><init>(ZLnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const/16 v7, 0x2b

    if-ne v6, v7, :cond_d

    .line 142
    invoke-static {v1}, Lnet/time4j/format/TimeSpanFormatter;->lastOn(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lnet/time4j/format/TimeSpanFormatter$SignItem;

    invoke-direct {v7, v5, v9}, Lnet/time4j/format/TimeSpanFormatter$SignItem;-><init>(ZLnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const/16 v7, 0x7b

    if-ne v6, v7, :cond_f

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    :goto_4
    if-ge v6, v0, :cond_e

    .line 145
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_e

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 148
    :cond_e
    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lnet/time4j/format/TimeSpanFormatter;->addPluralItem(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_f
    const/16 v7, 0x7c

    if-ne v6, v7, :cond_10

    .line 150
    invoke-static {v1}, Lnet/time4j/format/TimeSpanFormatter;->lastOn(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lnet/time4j/format/TimeSpanFormatter$OrItem;->getInstance()Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 152
    :cond_10
    invoke-direct {p0, v6, v1}, Lnet/time4j/format/TimeSpanFormatter;->addLiteral(CLjava/util/List;)V

    :goto_5
    add-int/2addr v3, v5

    goto/16 :goto_0

    .line 108
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Char # must be followed by unit symbol."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v5, :cond_18

    .line 159
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 163
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 167
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-eq v1, v3, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-eq v1, v3, :cond_15

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    .line 172
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    invoke-virtual {v3}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->getMinWidth()I

    move-result v3

    add-int/lit8 v1, v1, -0x2

    :goto_6
    if-ltz v1, :cond_14

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 176
    sget-object v5, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-ne v4, v5, :cond_13

    move v3, v2

    goto :goto_7

    .line 179
    :cond_13
    invoke-virtual {v4, v3}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v4}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->getMinWidth()I

    move-result v4

    add-int/2addr v3, v4

    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 184
    :cond_14
    iput-object p1, p0, Lnet/time4j/format/TimeSpanFormatter;->type:Ljava/lang/Class;

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/TimeSpanFormatter;->items:Ljava/util/List;

    .line 186
    iput-object p2, p0, Lnet/time4j/format/TimeSpanFormatter;->pattern:Ljava/lang/String;

    return-void

    .line 168
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pattern must not start or end with an or-operator."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing format pattern."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty or invalid pattern."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Open square bracket without closing one."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .line 51
    sget-object v0, Lnet/time4j/format/TimeSpanFormatter;->SIGN_KEY:Ljava/lang/Object;

    return-object v0
.end method

.method private addLiteral(CLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;>;)V"
        }
    .end annotation

    .line 461
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/time4j/format/TimeSpanFormatter;->addLiteral(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private addLiteral(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;>;)V"
        }
    .end annotation

    .line 470
    invoke-static {p2}, Lnet/time4j/format/TimeSpanFormatter;->lastOn(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;-><init>(Ljava/lang/String;Lnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPluralItem(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;>;)V"
        }
    .end annotation

    const-string v0, ":"

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 481
    array-length v1, v0

    const-string v2, "Plural information has wrong format: "

    const/16 v3, 0x9

    if-gt v1, v3, :cond_8

    array-length v1, v0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_8

    const/4 v1, 0x0

    .line 488
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 489
    aget-object v3, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lnet/time4j/format/TimeSpanFormatter;->getUnit(C)Ljava/lang/Object;

    move-result-object v6

    const/4 v3, 0x2

    .line 495
    aget-object v5, v0, v3

    const-string v7, "-|_"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 496
    aget-object v7, v5, v1

    .line 499
    array-length v8, v5

    const/4 v9, 0x3

    if-le v8, v4, :cond_2

    .line 500
    aget-object v8, v5, v4

    .line 501
    array-length v10, v5

    if-le v10, v3, :cond_1

    .line 502
    aget-object v10, v5, v3

    .line 503
    array-length v5, v5

    if-gt v5, v9, :cond_0

    .line 507
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v7, v8, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plural information has wrong locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 510
    :cond_1
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_2
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 516
    :goto_0
    new-instance v10, Ljava/util/EnumMap;

    const-class v7, Lnet/time4j/format/PluralCategory;

    invoke-direct {v10, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 517
    sget-object v7, Lnet/time4j/format/NumberType;->CARDINALS:Lnet/time4j/format/NumberType;

    invoke-static {v5, v7}, Lnet/time4j/format/PluralRules;->of(Ljava/util/Locale;Lnet/time4j/format/NumberType;)Lnet/time4j/format/PluralRules;

    move-result-object v8

    .line 519
    :goto_1
    array-length v5, v0

    if-ge v9, v5, :cond_4

    .line 520
    aget-object v5, v0, v9

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 521
    array-length v7, v5

    if-ne v7, v3, :cond_3

    .line 522
    aget-object v7, v5, v1

    .line 523
    invoke-static {v7}, Lnet/time4j/format/PluralCategory;->valueOf(Ljava/lang/String;)Lnet/time4j/format/PluralCategory;

    move-result-object v7

    aget-object v5, v5, v4

    .line 522
    invoke-interface {v10, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 526
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 531
    :cond_4
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 534
    sget-object v1, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 539
    invoke-static {p2}, Lnet/time4j/format/TimeSpanFormatter;->lastOn(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lnet/time4j/format/TimeSpanFormatter$PluralItem;

    aget-object v7, v0, v4

    const/4 v0, 0x0

    move-object v5, p2

    move-object v9, v10

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lnet/time4j/format/TimeSpanFormatter$PluralItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Lnet/time4j/format/PluralRules;Ljava/util/Map;Lnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 535
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing plural category OTHER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 532
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing plural forms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 491
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plural information has wrong symbol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 482
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private addSymbol(CIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CII",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;>;)V"
        }
    .end annotation

    .line 441
    invoke-virtual {p0, p1}, Lnet/time4j/format/TimeSpanFormatter;->getUnit(C)Ljava/lang/Object;

    move-result-object v4

    .line 442
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    if-gtz p3, :cond_0

    .line 448
    new-instance p3, Lnet/time4j/format/TimeSpanFormatter$FractionItem;

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lnet/time4j/format/TimeSpanFormatter;->getUnit(C)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, p1, v1}, Lnet/time4j/format/TimeSpanFormatter$FractionItem;-><init>(IILjava/lang/Object;Lnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Combination of # and f-symbol not allowed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_1
    new-instance p1, Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    const/4 v1, 0x0

    add-int v3, p2, p3

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;-><init>(IIILjava/lang/Object;Lnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static endOptionalSection(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;>;)V"
        }
    .end annotation

    .line 551
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt v0, v1, :cond_0

    .line 558
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sub-int/2addr v0, v1

    .line 559
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;-><init>(Ljava/util/List;Lnet/time4j/format/TimeSpanFormatter$1;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 554
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Closing square bracket without open one."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

.method private static lastOn(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;>;)",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;"
        }
    .end annotation

    .line 565
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static startOptionalSection(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;>;)V"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected abstract convert(Ljava/util/Map;Z)Lnet/time4j/engine/TimeSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TU;",
            "Ljava/lang/Long;",
            ">;Z)TS;"
        }
    .end annotation
.end method

.method public format(Lnet/time4j/engine/TimeSpan;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/TimeSpanFormatter;->print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 247
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter;->type:Ljava/lang/Class;

    return-object v0
.end method

.method protected abstract getUnit(C)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TU;"
        }
    .end annotation
.end method

.method public parse(Ljava/lang/CharSequence;)Lnet/time4j/engine/TimeSpan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/TimeSpanFormatter;->parse(Ljava/lang/CharSequence;I)Lnet/time4j/engine/TimeSpan;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;I)Lnet/time4j/engine/TimeSpan;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 336
    iget-object v1, p0, Lnet/time4j/format/TimeSpanFormatter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_5

    .line 337
    iget-object v5, p0, Lnet/time4j/format/TimeSpanFormatter;->items:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 339
    sget-object v6, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-ne v5, v6, :cond_0

    goto :goto_3

    .line 343
    :cond_0
    invoke-virtual {v5, v0, p1, p2}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I

    move-result v5

    if-gez v5, :cond_4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/4 v6, -0x1

    if-ge v3, v1, :cond_2

    .line 348
    iget-object v7, p0, Lnet/time4j/format/TimeSpanFormatter;->items:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    if-eq v3, v6, :cond_3

    .line 356
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_2

    .line 354
    :cond_3
    new-instance p2, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    not-int v0, v5

    invoke-direct {p2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    :cond_4
    move p2, v5

    :goto_2
    add-int/2addr v3, v4

    goto :goto_0

    .line 364
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p2, v1, :cond_9

    .line 375
    sget-object p1, Lnet/time4j/format/TimeSpanFormatter;->SIGN_KEY:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_6

    .line 376
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gez p1, :cond_6

    move v2, v4

    .line 377
    :cond_6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 379
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 380
    iget-object v4, p0, Lnet/time4j/format/TimeSpanFormatter;->type:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 381
    iget-object v4, p0, Lnet/time4j/format/TimeSpanFormatter;->type:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 383
    :cond_7
    new-instance p1, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration type mismatched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 388
    :cond_8
    invoke-virtual {p0, p1, v2}, Lnet/time4j/format/TimeSpanFormatter;->convert(Ljava/util/Map;Z)Lnet/time4j/engine/TimeSpan;

    move-result-object p1

    return-object p1

    .line 367
    :cond_9
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparsed trailing characters found: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" in \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 280
    sget-object v2, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    invoke-virtual {v1, p1, p2}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
