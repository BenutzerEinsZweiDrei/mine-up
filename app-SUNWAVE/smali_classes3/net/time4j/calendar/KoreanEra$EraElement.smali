.class Lnet/time4j/calendar/KoreanEra$EraElement;
.super Lnet/time4j/format/DisplayElement;
.source "KoreanEra.java"

# interfaces
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/KoreanEra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Lnet/time4j/calendar/KoreanEra;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/KoreanEra;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x47e02c2b995af97bL


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ERA"

    .line 191
    invoke-direct {p0, v0}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/KoreanEra$1;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lnet/time4j/calendar/KoreanEra$EraElement;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 285
    sget-object v0, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    invoke-virtual {v0}, Lnet/time4j/calendar/KoreanEra;->era()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;",
            "Lnet/time4j/calendar/KoreanEra;",
            ">;"
        }
    .end annotation

    .line 272
    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 273
    new-instance p1, Lnet/time4j/calendar/KoreanEra$EraRule;

    invoke-direct {p1, v0}, Lnet/time4j/calendar/KoreanEra$EraRule;-><init>(Lnet/time4j/calendar/KoreanEra$1;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lnet/time4j/calendar/KoreanEra$EraElement;->getDefaultMaximum()Lnet/time4j/calendar/KoreanEra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/KoreanEra;
    .locals 1

    .line 214
    sget-object v0, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lnet/time4j/calendar/KoreanEra$EraElement;->getDefaultMinimum()Lnet/time4j/calendar/KoreanEra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/KoreanEra;
    .locals 1

    .line 209
    sget-object v0, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/KoreanEra;",
            ">;"
        }
    .end annotation

    .line 199
    const-class v0, Lnet/time4j/calendar/KoreanEra;

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

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 180
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/KoreanEra$EraElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/KoreanEra;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/KoreanEra;
    .locals 6

    .line 245
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 246
    sget-object v1, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 247
    sget-object v2, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 248
    sget-object v3, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/TextWidth;

    .line 249
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 250
    sget-object v4, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    invoke-virtual {v4, v0, p3}, Lnet/time4j/calendar/KoreanEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p3

    .line 251
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 254
    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 259
    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    :cond_1
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 261
    sget-object p1, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    return-object p1

    .line 265
    :cond_2
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 233
    sget-object p1, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, p1, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    .line 234
    sget-object v0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/TextWidth;

    .line 235
    sget-object v0, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    invoke-virtual {v0, p1, p3}, Lnet/time4j/calendar/KoreanEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
