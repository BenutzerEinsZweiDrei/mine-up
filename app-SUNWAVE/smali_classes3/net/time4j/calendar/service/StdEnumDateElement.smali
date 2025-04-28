.class public Lnet/time4j/calendar/service/StdEnumDateElement;
.super Lnet/time4j/calendar/service/StdDateElement;
.source "StdEnumDateElement.java"

# interfaces
.implements Lnet/time4j/format/NumericalElement;
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Enum<",
        "TV;>;T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Lnet/time4j/calendar/service/StdDateElement<",
        "TV;TT;>;",
        "Lnet/time4j/format/NumericalElement<",
        "TV;>;",
        "Lnet/time4j/format/TextElement<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x220946d4ab620b21L


# instance fields
.field private final transient decrementor:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transient defaultCalendarType:Ljava/lang/String;

.field private final transient incrementor:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transient type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;C)V"
        }
    .end annotation

    .line 77
    invoke-static {p4}, Lnet/time4j/calendar/service/StdEnumDateElement;->isWeekdayElement(C)Z

    move-result v0

    invoke-direct {p0, p1, p2, p4, v0}, Lnet/time4j/calendar/service/StdDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;CZ)V

    .line 79
    iput-object p3, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->type:Ljava/lang/Class;

    .line 80
    invoke-static {p2}, Lnet/time4j/calendar/service/StdEnumDateElement;->extractCalendarType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->defaultCalendarType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->decrementor:Lnet/time4j/engine/ChronoOperator;

    .line 82
    iput-object p1, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->incrementor:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;CLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-static {p4}, Lnet/time4j/calendar/service/StdEnumDateElement;->isWeekdayElement(C)Z

    move-result v0

    invoke-direct {p0, p1, p2, p4, v0}, Lnet/time4j/calendar/service/StdDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;CZ)V

    .line 95
    iput-object p3, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->type:Ljava/lang/Class;

    .line 96
    iput-object p5, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->defaultCalendarType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->decrementor:Lnet/time4j/engine/ChronoOperator;

    .line 98
    iput-object p1, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->incrementor:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;CLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;C",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p4, v0}, Lnet/time4j/calendar/service/StdDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;CZ)V

    .line 112
    iput-object p3, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->type:Ljava/lang/Class;

    .line 113
    invoke-static {p2}, Lnet/time4j/calendar/service/StdEnumDateElement;->extractCalendarType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->defaultCalendarType:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->decrementor:Lnet/time4j/engine/ChronoOperator;

    .line 115
    iput-object p6, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->incrementor:Lnet/time4j/engine/ChronoOperator;

    return-void
.end method

.method private static extractCalendarType(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 369
    const-class v0, Lnet/time4j/format/CalendarType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/CalendarType;

    if-nez p0, :cond_0

    const-string p0, "iso8601"

    goto :goto_0

    .line 370
    :cond_0
    invoke-interface {p0}, Lnet/time4j/format/CalendarType;->value()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static isWeekdayElement(C)Z
    .locals 1

    const/16 v0, 0x45

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;
    .locals 3

    .line 341
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 342
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p1, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TextWidth;

    .line 343
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/service/StdEnumDateElement;->getCalendarType(Lnet/time4j/engine/AttributeQuery;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    .line 345
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isMonthElement()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 347
    invoke-virtual {p1, v1, p2}, Lnet/time4j/format/CalendarText;->getLeapMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    .line 349
    :cond_0
    invoke-virtual {p1, v1, p2}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    .line 351
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isWeekdayElement()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 352
    invoke-virtual {p1, v1, p2}, Lnet/time4j/format/CalendarText;->getWeekdays(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    .line 353
    :cond_2
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isEraElement()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 354
    invoke-virtual {p1, v1}, Lnet/time4j/format/CalendarText;->getEras(Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    .line 356
    :cond_3
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->name()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->type:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method public decremented()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->decrementor:Lnet/time4j/engine/ChronoOperator;

    if-eqz v0, :cond_0

    return-object v0

    .line 185
    :cond_0
    invoke-super {p0}, Lnet/time4j/calendar/service/StdDateElement;->decremented()Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    return-object v0
.end method

.method protected getCalendarType(Lnet/time4j/engine/AttributeQuery;)Ljava/lang/String;
    .locals 2

    .line 256
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isMonthElement()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isEraElement()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isWeekdayElement()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "iso8601"

    return-object p1

    .line 261
    :cond_1
    iget-object p1, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->defaultCalendarType:Ljava/lang/String;

    return-object p1

    .line 257
    :cond_2
    :goto_0
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_TYPE:Lnet/time4j/engine/AttributeKey;

    iget-object v1, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->defaultCalendarType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDefaultMaximum()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 139
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getDefaultMaximum()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getDefaultMinimum()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
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

    .line 124
    iget-object v0, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->type:Ljava/lang/Class;

    return-object v0
.end method

.method protected hasLeapMonth(Lnet/time4j/engine/ChronoDisplay;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public incremented()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lnet/time4j/calendar/service/StdEnumDateElement;->incrementor:Lnet/time4j/engine/ChronoOperator;

    if-eqz v0, :cond_0

    return-object v0

    .line 196
    :cond_0
    invoke-super {p0}, Lnet/time4j/calendar/service/StdDateElement;->incremented()Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    return-object v0
.end method

.method protected isEraElement()Z
    .locals 2

    .line 292
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getSymbol()C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isMonthElement()Z
    .locals 2

    .line 307
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getSymbol()C

    move-result v0

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isWeekdayElement()Z
    .locals 1

    .line 322
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getSymbol()C

    move-result v0

    invoke-static {v0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isWeekdayElement(C)Z

    move-result v0

    return v0
.end method

.method public numerical(Ljava/lang/Enum;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic numerical(Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/service/StdEnumDateElement;->numerical(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")TV;"
        }
    .end annotation

    .line 220
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 221
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/OutputContext;

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0, p3, v1, v2}, Lnet/time4j/calendar/service/StdEnumDateElement;->accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;

    move-result-object v3

    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isMonthElement()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    invoke-virtual {p2, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 226
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 227
    invoke-virtual {p0, p3, v1, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;->accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;

    move-result-object v3

    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, p1, p2, v6, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_2

    .line 230
    sget-object v6, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v6, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    invoke-virtual {p2, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 232
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 233
    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne v1, v3, :cond_1

    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    .line 234
    :goto_0
    invoke-virtual {p0, p3, v1, v2}, Lnet/time4j/calendar/service/StdEnumDateElement;->accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;

    move-result-object v2

    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v3

    if-nez v3, :cond_2

    .line 236
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->isMonthElement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {p2, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 238
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 239
    invoke-virtual {p0, p3, v1, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;->accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/service/StdEnumDateElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

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

    .line 167
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdEnumDateElement;->getType()Ljava/lang/Class;

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

    .line 168
    invoke-virtual {p0, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;->numerical(Ljava/lang/Enum;)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 169
    invoke-virtual {p1, p0, v4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 208
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/OutputContext;

    .line 209
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/service/StdEnumDateElement;->hasLeapMonth(Lnet/time4j/engine/ChronoDisplay;)Z

    move-result p1

    invoke-virtual {p0, p3, v1, p1}, Lnet/time4j/calendar/service/StdEnumDateElement;->accessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

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

    .line 157
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/service/StdEnumDateElement;->numerical(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic printToInt(Ljava/lang/Object;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/service/StdEnumDateElement;->printToInt(Ljava/lang/Enum;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I

    move-result p1

    return p1
.end method
