.class final Lnet/time4j/format/expert/TwoDigitYearProcessor;
.super Ljava/lang/Object;
.source "TwoDigitYearProcessor.java"

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
.field static final synthetic $assertionsDisabled:Z


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

.field private final lenientMode:Lnet/time4j/format/Leniency;

.field private final pivotYear:I

.field private final protectedLength:I

.field private final reserved:I

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lnet/time4j/engine/ChronoElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YEAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->reserved:I

    const/16 v0, 0x30

    .line 72
    iput-char v0, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->zeroDigit:C

    .line 73
    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object v0, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 74
    iput p1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->protectedLength:I

    const/16 p1, 0x64

    .line 75
    iput p1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->pivotYear:I

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year element required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lnet/time4j/engine/ChronoElement;ICLnet/time4j/format/Leniency;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;IC",
            "Lnet/time4j/format/Leniency;",
            "II)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 90
    iput p2, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->reserved:I

    .line 91
    iput-char p3, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->zeroDigit:C

    .line 92
    iput-object p4, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 93
    iput p5, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->protectedLength:I

    .line 94
    iput p6, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->pivotYear:I

    return-void
.end method

.method private getPivotYear(ZLnet/time4j/engine/AttributeQuery;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 357
    iget p1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->pivotYear:I

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/format/Attributes;->PIVOT_YEAR:Lnet/time4j/engine/AttributeKey;

    iget v0, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->pivotYear:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    const/16 p2, 0x64

    if-lt p1, p2, :cond_1

    return p1

    .line 360
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pivot year must not be smaller than 100: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static toYear(II)I
    .locals 1

    .line 342
    rem-int/lit8 v0, p1, 0x64

    if-lt p0, v0, :cond_0

    .line 343
    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 345
    :cond_0
    div-int/lit8 p1, p1, 0x64

    :goto_0
    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 264
    :cond_0
    instance-of v0, p1, Lnet/time4j/format/expert/TwoDigitYearProcessor;

    if-eqz v0, :cond_1

    .line 265
    check-cast p1, Lnet/time4j/format/expert/TwoDigitYearProcessor;

    .line 266
    iget-object v0, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    iget-object p1, p1, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
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

    .line 295
    iget-object v0, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 276
    iget-object v0, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
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

    .line 176
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 177
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    .line 178
    iget v3, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->protectedLength:I

    goto :goto_0

    :cond_0
    sget-object v3, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    sub-int/2addr v0, v3

    :cond_1
    if-lt v1, v0, :cond_2

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing digits for: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 187
    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p2, v1, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->setWarning()V

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 192
    iget-object v4, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    goto :goto_1

    :cond_3
    sget-object v4, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p3, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/Leniency;

    .line 193
    :goto_1
    invoke-virtual {v4}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v4

    const/16 v5, 0x9

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-eqz p5, :cond_5

    .line 195
    iget-char v6, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->zeroDigit:C

    goto :goto_3

    :cond_5
    sget-object v6, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v7, 0x30

    .line 198
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    .line 200
    :goto_3
    iget v7, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->reserved:I

    if-lez v7, :cond_7

    if-gtz v3, :cond_7

    move v3, v1

    move v7, v2

    :goto_4
    if-ge v3, v0, :cond_6

    .line 205
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v6

    if-ltz v8, :cond_6

    if-gt v8, v5, :cond_6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 214
    :cond_6
    iget v3, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->reserved:I

    sub-int/2addr v7, v3

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_7
    add-int/lit8 v3, v1, 0x2

    add-int/2addr v4, v1

    .line 218
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v4, 0x1

    move v7, v1

    move v8, v2

    :goto_5
    if-ge v7, v0, :cond_9

    .line 224
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v6

    if-ltz v9, :cond_8

    if-gt v9, v5, :cond_8

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    move v4, v2

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_9

    const-string p1, "Digit expected."

    .line 231
    invoke-virtual {p2, v1, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_9
    if-ge v7, v3, :cond_a

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not enough digits found for: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    .line 241
    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p2, v1, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_a
    if-ne v7, v3, :cond_b

    .line 249
    invoke-direct {p0, p5, p3}, Lnet/time4j/format/expert/TwoDigitYearProcessor;->getPivotYear(ZLnet/time4j/engine/AttributeQuery;)I

    move-result p1

    invoke-static {v8, p1}, Lnet/time4j/format/expert/TwoDigitYearProcessor;->toYear(II)I

    move-result v8

    .line 254
    :cond_b
    iget-object p1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p4, p1, v8}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;I)V

    .line 255
    invoke-virtual {p2, v7}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 4
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

    .line 109
    iget-object v0, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    if-gez v0, :cond_1

    const/high16 p2, -0x80000000

    if-ne v0, p2, :cond_0

    .line 113
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Format context has no year: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Negative year cannot be printed as two-digit-year: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    invoke-direct {p0, p5, p3}, Lnet/time4j/format/expert/TwoDigitYearProcessor;->getPivotYear(ZLnet/time4j/engine/AttributeQuery;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    .line 122
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x30

    if-eqz p5, :cond_3

    .line 124
    iget-char p3, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->zeroDigit:C

    goto :goto_1

    :cond_3
    sget-object p5, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 127
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p3, p5, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p3

    :goto_1
    const/4 p5, 0x0

    if-eq p3, v1, :cond_5

    add-int/lit8 v1, p3, -0x30

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    move v2, p5

    .line 133
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 134
    aget-char v3, p1, v2

    add-int/2addr v3, v1

    int-to-char v3, v3

    aput-char v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 137
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v1

    .line 143
    :cond_5
    instance-of v1, p2, Ljava/lang/CharSequence;

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    .line 144
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    const/16 v3, 0xa

    if-ge v0, v3, :cond_7

    .line 148
    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p5, 0x1

    .line 152
    :cond_7
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p5, p1

    if-eq v1, v2, :cond_8

    if-lez p5, :cond_8

    if-eqz p4, :cond_8

    .line 160
    new-instance p1, Lnet/time4j/format/expert/ElementPosition;

    iget-object p2, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    add-int p3, v1, p5

    invoke-direct {p1, p2, v1, p3}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    return p5
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

    .line 324
    new-instance v7, Lnet/time4j/format/expert/TwoDigitYearProcessor;

    iget-object v1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    const/16 v2, 0x30

    .line 327
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 328
    invoke-interface {p2, v0, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnet/time4j/format/Leniency;

    sget-object v0, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    const/4 v2, 0x0

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v0, Lnet/time4j/format/Attributes;->PIVOT_YEAR:Lnet/time4j/engine/AttributeKey;

    .line 330
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter;->getChronology()Lnet/time4j/engine/Chronology;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getDefaultPivotYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, v7

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/TwoDigitYearProcessor;-><init>(Lnet/time4j/engine/ChronoElement;ICLnet/time4j/format/Leniency;II)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[element="

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v1, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 1
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

    .line 302
    iget-object v0, p0, Lnet/time4j/format/expert/TwoDigitYearProcessor;->element:Lnet/time4j/engine/ChronoElement;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 306
    :cond_0
    new-instance v0, Lnet/time4j/format/expert/TwoDigitYearProcessor;

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/TwoDigitYearProcessor;-><init>(Lnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method
