.class final Lnet/time4j/EnumElement;
.super Lnet/time4j/AbstractDateElement;
.source "EnumElement.java"

# interfaces
.implements Lnet/time4j/NavigableElement;
.implements Lnet/time4j/format/NumericalElement;
.implements Lnet/time4j/format/internal/GregorianTextElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Lnet/time4j/AbstractDateElement<",
        "TV;>;",
        "Lnet/time4j/NavigableElement<",
        "TV;>;",
        "Lnet/time4j/format/NumericalElement<",
        "TV;>;",
        "Lnet/time4j/format/internal/GregorianTextElement<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final DAY_OF_WEEK:I = 0x66

.field static final MONTH:I = 0x65

.field static final QUARTER_OF_YEAR:I = 0x67

.field private static final serialVersionUID:J = 0x1c85cb7c7e27dfceL


# instance fields
.field private final transient dmax:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final transient dmin:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final transient index:I

.field private final transient symbol:C

.field private final transient type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/Enum;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;TV;TV;IC)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lnet/time4j/AbstractDateElement;-><init>(Ljava/lang/String;)V

    .line 93
    iput-object p2, p0, Lnet/time4j/EnumElement;->type:Ljava/lang/Class;

    .line 94
    iput-object p3, p0, Lnet/time4j/EnumElement;->dmin:Ljava/lang/Enum;

    .line 95
    iput-object p4, p0, Lnet/time4j/EnumElement;->dmax:Ljava/lang/Enum;

    .line 96
    iput p5, p0, Lnet/time4j/EnumElement;->index:I

    .line 97
    iput-char p6, p0, Lnet/time4j/EnumElement;->symbol:C

    return-void
.end method

.method private accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 1

    .line 311
    iget v0, p0, Lnet/time4j/EnumElement;->index:I

    packed-switch v0, :pswitch_data_0

    .line 319
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/EnumElement;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :pswitch_0
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getQuarters(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    .line 315
    :pswitch_1
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getWeekdays(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    .line 313
    :pswitch_2
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 326
    invoke-virtual {p0}, Lnet/time4j/EnumElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/PlainDate;->lookupElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 329
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p0}, Lnet/time4j/EnumElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDefaultMaximum()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lnet/time4j/EnumElement;->dmax:Ljava/lang/Enum;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lnet/time4j/EnumElement;->getDefaultMaximum()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lnet/time4j/EnumElement;->dmin:Ljava/lang/Enum;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lnet/time4j/EnumElement;->getDefaultMinimum()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method getIndex()I
    .locals 1

    .line 301
    iget v0, p0, Lnet/time4j/EnumElement;->index:I

    return v0
.end method

.method public getSymbol()C
    .locals 1

    .line 113
    iget-char v0, p0, Lnet/time4j/EnumElement;->symbol:C

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lnet/time4j/EnumElement;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public numerical(Ljava/lang/Enum;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic numerical(Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lnet/time4j/EnumElement;->numerical(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;)Ljava/lang/Enum;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/TextWidth;",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/Leniency;",
            ")TV;"
        }
    .end annotation

    .line 273
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 274
    invoke-direct {p0, p3, p4, p5}, Lnet/time4j/EnumElement;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v1

    invoke-virtual {p0}, Lnet/time4j/EnumElement;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, p6}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/format/Leniency;)Ljava/lang/Enum;

    move-result-object v1

    if-nez v1, :cond_1

    .line 276
    invoke-virtual {p6}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, -0x1

    .line 277
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 278
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 279
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne p5, v0, :cond_0

    sget-object p5, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    goto :goto_0

    :cond_0
    sget-object p5, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    .line 280
    :goto_0
    invoke-direct {p0, p3, p4, p5}, Lnet/time4j/EnumElement;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-virtual {p0}, Lnet/time4j/EnumElement;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4, p6}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/format/Leniency;)Ljava/lang/Enum;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")TV;"
        }
    .end annotation

    .line 233
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 234
    sget-object v1, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 235
    sget-object v2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/TextWidth;

    .line 236
    sget-object v3, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/OutputContext;

    .line 237
    invoke-direct {p0, v1, v2, v3}, Lnet/time4j/EnumElement;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v4

    invoke-virtual {p0}, Lnet/time4j/EnumElement;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, p1, p2, v5, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v4

    if-nez v4, :cond_1

    .line 239
    sget-object v5, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v5, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, -0x1

    .line 240
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 241
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 242
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne v3, v0, :cond_0

    sget-object v0, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    .line 243
    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lnet/time4j/EnumElement;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/EnumElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual/range {p0 .. p6}, Lnet/time4j/EnumElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Lnet/time4j/format/Leniency;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/EnumElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public parseFromInt(Lnet/time4j/engine/ChronoEntity;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;I)Z"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lnet/time4j/EnumElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 202
    invoke-virtual {p0, v4}, Lnet/time4j/EnumElement;->numerical(Ljava/lang/Enum;)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 203
    invoke-virtual {p1, p0, v4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 259
    invoke-direct {p0, p3, p4, p5}, Lnet/time4j/EnumElement;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 220
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TextWidth;

    .line 221
    sget-object v2, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/OutputContext;

    .line 222
    invoke-direct {p0, v0, v1, p3}, Lnet/time4j/EnumElement;->accessor(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public printToInt(Ljava/lang/Enum;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")I"
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic printToInt(Ljava/lang/Object;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/EnumElement;->printToInt(Ljava/lang/Enum;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I

    move-result p1

    return p1
.end method

.method public setToNext(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Lnet/time4j/NavigationOperator;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/NavigationOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V

    return-object v0
.end method

.method public setToNextOrSame(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Lnet/time4j/NavigationOperator;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/NavigationOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V

    return-object v0
.end method

.method public setToPrevious(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Lnet/time4j/NavigationOperator;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/NavigationOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V

    return-object v0
.end method

.method public setToPreviousOrSame(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lnet/time4j/NavigationOperator;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/NavigationOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Enum;)V

    return-object v0
.end method
