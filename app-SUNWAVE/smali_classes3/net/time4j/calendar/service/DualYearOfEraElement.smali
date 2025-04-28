.class public abstract Lnet/time4j/calendar/service/DualYearOfEraElement;
.super Lnet/time4j/calendar/service/StdIntegerDateElement;
.source "DualYearOfEraElement.java"

# interfaces
.implements Lnet/time4j/format/internal/DualFormatElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Lnet/time4j/calendar/service/StdIntegerDateElement<",
        "TT;>;",
        "Lnet/time4j/format/internal/DualFormatElement;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;IIC)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;IIC)V"
        }
    .end annotation

    const-string v1, "YEAR_OF_ERA"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 63
    invoke-direct/range {v0 .. v7}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    return-void
.end method


# virtual methods
.method protected abstract getNumberSystem(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/NumberSystem;
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;
    .locals 9

    .line 130
    invoke-virtual {p0, p3}, Lnet/time4j/calendar/service/DualYearOfEraElement;->getNumberSystem(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/NumberSystem;

    move-result-object v0

    .line 131
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 133
    sget-object v2, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 134
    invoke-interface {p3, v2}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 135
    invoke-interface {p3, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x30

    .line 138
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p3, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    goto :goto_1

    :cond_2
    sget-object v4, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p3, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/Leniency;

    :goto_1
    const-wide/16 v4, 0x0

    .line 141
    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 p3, v1, 0x9

    .line 142
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    move v0, v1

    move v3, v0

    :goto_2
    if-ge v0, p3, :cond_6

    .line 143
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v2

    if-ltz v6, :cond_6

    const/16 v7, 0x9

    if-gt v6, v7, :cond_6

    const-wide/16 v7, 0xa

    mul-long/2addr v4, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 154
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v6, v1

    :goto_3
    if-ge v6, v2, :cond_4

    .line 155
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Lnet/time4j/format/NumberSystem;->contains(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    if-lez v3, :cond_5

    add-int/2addr v3, v1

    .line 163
    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lnet/time4j/format/NumberSystem;->toInteger(Ljava/lang/String;Lnet/time4j/format/Leniency;)I

    move-result p1

    int-to-long v4, p1

    goto :goto_4

    :cond_5
    move v3, v1

    :cond_6
    :goto_4
    if-eq v3, v1, :cond_8

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-lez p1, :cond_7

    goto :goto_5

    .line 172
    :cond_7
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    long-to-int p1, v4

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 169
    :cond_8
    :goto_5
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/service/DualYearOfEraElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/service/DualYearOfEraElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p3}, Lnet/time4j/calendar/service/DualYearOfEraElement;->getNumberSystem(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/NumberSystem;

    move-result-object v4

    .line 77
    sget-object v0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/TextWidth;

    .line 79
    sget-object v1, Lnet/time4j/calendar/service/DualYearOfEraElement$1;->$SwitchMap$net$time4j$format$TextWidth:[I

    invoke-virtual {v0}, Lnet/time4j/format/TextWidth;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v3

    .line 92
    :goto_0
    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 93
    invoke-interface {p3, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 94
    invoke-interface {p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    :goto_1
    move v5, v0

    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v4}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_4
    const/16 v0, 0x30

    goto :goto_1

    :goto_2
    const/16 v7, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 96
    invoke-virtual/range {v0 .. v7}, Lnet/time4j/calendar/service/DualYearOfEraElement;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/NumberSystem;CII)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/NumberSystem;CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 111
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    .line 112
    invoke-virtual {p4, p1}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p4}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x0

    sub-int/2addr p6, p3

    :goto_0
    if-ge p4, p6, :cond_0

    .line 116
    invoke-interface {p2, p5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
