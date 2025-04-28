.class final Lnet/time4j/format/expert/TextProcessor;
.super Ljava/lang/Object;
.source "TextProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final gte:Lnet/time4j/format/internal/GregorianTextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/internal/GregorianTextElement<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final language:Ljava/util/Locale;

.field private final lenientMode:Lnet/time4j/format/Leniency;

.field private final oc:Lnet/time4j/format/OutputContext;

.field private final protectedLength:I

.field private final protectedMode:Z

.field private final tw:Lnet/time4j/format/TextWidth;


# direct methods
.method private constructor <init>(Lnet/time4j/format/TextElement;ZLjava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/TextElement<",
            "TV;>;Z",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/TextWidth;",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/Leniency;",
            "I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing element."

    .line 77
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    .line 81
    iput-boolean p2, p0, Lnet/time4j/format/expert/TextProcessor;->protectedMode:Z

    .line 84
    instance-of p2, p1, Lnet/time4j/format/internal/GregorianTextElement;

    if-eqz p2, :cond_0

    check-cast p1, Lnet/time4j/format/internal/GregorianTextElement;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lnet/time4j/format/expert/TextProcessor;->gte:Lnet/time4j/format/internal/GregorianTextElement;

    .line 85
    iput-object p3, p0, Lnet/time4j/format/expert/TextProcessor;->language:Ljava/util/Locale;

    .line 86
    iput-object p4, p0, Lnet/time4j/format/expert/TextProcessor;->tw:Lnet/time4j/format/TextWidth;

    .line 87
    iput-object p5, p0, Lnet/time4j/format/expert/TextProcessor;->oc:Lnet/time4j/format/OutputContext;

    .line 88
    iput-object p6, p0, Lnet/time4j/format/expert/TextProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 89
    iput p7, p0, Lnet/time4j/format/expert/TextProcessor;->protectedLength:I

    return-void
.end method

.method static create(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/TextProcessor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/format/TextElement<",
            "TV;>;)",
            "Lnet/time4j/format/expert/TextProcessor<",
            "TV;>;"
        }
    .end annotation

    .line 103
    new-instance v8, Lnet/time4j/format/expert/TextProcessor;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget-object v4, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v5, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    sget-object v6, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lnet/time4j/format/expert/TextProcessor;-><init>(Lnet/time4j/format/TextElement;ZLjava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;I)V

    return-object v8
.end method

.method static createProtected(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/TextProcessor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/format/TextElement<",
            "TV;>;)",
            "Lnet/time4j/format/expert/TextProcessor<",
            "TV;>;"
        }
    .end annotation

    .line 116
    new-instance v8, Lnet/time4j/format/expert/TextProcessor;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget-object v4, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v5, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    sget-object v6, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    const/4 v2, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lnet/time4j/format/expert/TextProcessor;-><init>(Lnet/time4j/format/TextElement;ZLjava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;I)V

    return-object v8
.end method

.method private print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lnet/time4j/format/expert/TextProcessor;->gte:Lnet/time4j/format/internal/GregorianTextElement;

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 303
    iget-object v3, p0, Lnet/time4j/format/expert/TextProcessor;->language:Ljava/util/Locale;

    iget-object v4, p0, Lnet/time4j/format/expert/TextProcessor;->tw:Lnet/time4j/format/TextWidth;

    iget-object v5, p0, Lnet/time4j/format/expert/TextProcessor;->oc:Lnet/time4j/format/OutputContext;

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lnet/time4j/format/internal/GregorianTextElement;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)V

    return v6

    .line 305
    :cond_0
    iget-object p4, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-interface {p1, p4}, Lnet/time4j/engine/ChronoDisplay;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 306
    iget-object p4, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-interface {p4, p1, p2, p3}, Lnet/time4j/format/TextElement;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V

    return v6

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 202
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/TextProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 203
    check-cast p1, Lnet/time4j/format/expert/TextProcessor;

    .line 204
    iget-object v1, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    iget-object v3, p1, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnet/time4j/format/expert/TextProcessor;->protectedMode:Z

    iget-boolean p1, p1, Lnet/time4j/format/expert/TextProcessor;->protectedMode:Z

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
            "TV;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 216
    iget-object v0, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 8
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

    .line 156
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz p5, :cond_0

    .line 158
    iget v2, p0, Lnet/time4j/format/expert/TextProcessor;->protectedLength:I

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    if-lez v2, :cond_1

    sub-int/2addr v1, v2

    :cond_1
    if-lt v0, v1, :cond_2

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing chars for: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-interface {p3}, Lnet/time4j/format/TextElement;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->setWarning()V

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 172
    iget-object v1, p0, Lnet/time4j/format/expert/TextProcessor;->gte:Lnet/time4j/format/internal/GregorianTextElement;

    if-eqz v1, :cond_3

    iget-object p5, p0, Lnet/time4j/format/expert/TextProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    if-eqz p5, :cond_3

    .line 173
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPP()Ljava/text/ParsePosition;

    move-result-object v3

    iget-object v4, p0, Lnet/time4j/format/expert/TextProcessor;->language:Ljava/util/Locale;

    iget-object v5, p0, Lnet/time4j/format/expert/TextProcessor;->tw:Lnet/time4j/format/TextWidth;

    iget-object v6, p0, Lnet/time4j/format/expert/TextProcessor;->oc:Lnet/time4j/format/OutputContext;

    iget-object v7, p0, Lnet/time4j/format/expert/TextProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lnet/time4j/format/internal/GregorianTextElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 174
    :cond_3
    iget-object p5, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    instance-of v1, p5, Lnet/time4j/format/internal/DualFormatElement;

    if-eqz v1, :cond_4

    .line 175
    check-cast p5, Lnet/time4j/format/internal/DualFormatElement;

    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPP()Ljava/text/ParsePosition;

    move-result-object v1

    invoke-interface {p5, p1, v1, p3, p4}, Lnet/time4j/format/internal/DualFormatElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPP()Ljava/text/ParsePosition;

    move-result-object v1

    invoke-interface {p5, p1, v1, p3}, Lnet/time4j/format/TextElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object p1

    .line 180
    :goto_1
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 181
    iget-object p1, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-interface {p1}, Lnet/time4j/format/TextElement;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 183
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "No suitable enum found: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    goto :goto_2

    .line 185
    :cond_5
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unparseable element: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-interface {p4}, Lnet/time4j/format/TextElement;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    const-string p1, "No interpretable value."

    .line 188
    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_7
    iget-object p2, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    sget-object p3, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    if-ne p2, p3, :cond_8

    .line 190
    sget-object p2, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    const-class p3, Lnet/time4j/Month;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Month;

    invoke-virtual {p1}, Lnet/time4j/Month;->getValue()I

    move-result p1

    invoke-virtual {p4, p2, p1}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;I)V

    goto :goto_2

    .line 192
    :cond_8
    iget-object p2, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-virtual {p4, p2, p1}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 2
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

    .line 130
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 131
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    .line 132
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 133
    invoke-direct {p0, p1, p2, p3, p5}, Lnet/time4j/format/expert/TextProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_0

    .line 135
    new-instance p1, Lnet/time4j/format/expert/ElementPosition;

    iget-object p2, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-direct {p1, p2, v1, p3}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v1

    return p1

    .line 139
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lnet/time4j/format/expert/TextProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7fffffff

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public quickPath(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/AttributeQuery;I)Lnet/time4j/format/expert/FormatProcessor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "I)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "TV;>;"
        }
    .end annotation

    .line 270
    sget-object p1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, p1, p3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/Leniency;

    .line 271
    sget-object p3, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 272
    sget-object v0, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 273
    sget-object v1, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 275
    sget-object v2, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    if-nez p3, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    move-object v10, v3

    goto :goto_1

    .line 277
    :cond_1
    sget-object v2, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    if-ne p1, v2, :cond_2

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, p1

    .line 283
    :goto_1
    new-instance p1, Lnet/time4j/format/expert/TextProcessor;

    iget-object v5, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    iget-boolean v6, p0, Lnet/time4j/format/expert/TextProcessor;->protectedMode:Z

    sget-object p3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 286
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Ljava/util/Locale;

    sget-object p3, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    .line 287
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v8, p3

    check-cast v8, Lnet/time4j/format/TextWidth;

    sget-object p3, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    .line 288
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v9, p3

    check-cast v9, Lnet/time4j/format/OutputContext;

    sget-object p3, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    const/4 v0, 0x0

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lnet/time4j/format/expert/TextProcessor;-><init>(Lnet/time4j/format/TextElement;ZLjava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;I)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[element="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    invoke-interface {v1}, Lnet/time4j/format/TextElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",protected-mode="

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-boolean v1, p0, Lnet/time4j/format/expert/TextProcessor;->protectedMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
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
            "TV;>;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "TV;>;"
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Lnet/time4j/format/expert/TextProcessor;->protectedMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/time4j/format/expert/TextProcessor;->element:Lnet/time4j/format/TextElement;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    instance-of v0, p1, Lnet/time4j/format/TextElement;

    if-eqz v0, :cond_1

    .line 247
    check-cast p1, Lnet/time4j/format/TextElement;

    invoke-static {p1}, Lnet/time4j/format/expert/TextProcessor;->create(Lnet/time4j/format/TextElement;)Lnet/time4j/format/expert/TextProcessor;

    move-result-object p1

    return-object p1

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text element required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object p0
.end method
