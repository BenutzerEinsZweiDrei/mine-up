.class final Lnet/time4j/history/HistoricEraElement;
.super Lnet/time4j/format/DisplayElement;
.source "HistoricEraElement.java"

# interfaces
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/history/HistoricEraElement$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Lnet/time4j/history/HistoricEra;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/history/HistoricEra;",
        ">;"
    }
.end annotation


# static fields
.field private static final LATIN:Ljava/util/Locale;

.field private static final serialVersionUID:J = 0x482c0196e2afe7feL


# instance fields
.field private final history:Lnet/time4j/history/ChronoHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/Locale;

    const-string v1, "la"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/history/HistoricEraElement;->LATIN:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>(Lnet/time4j/history/ChronoHistory;)V
    .locals 1

    const-string v0, "ERA"

    .line 75
    invoke-direct {p0, v0}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lnet/time4j/history/HistoricEraElement;->history:Lnet/time4j/history/ChronoHistory;

    return-void
.end method

.method private accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;
    .locals 8

    .line 172
    sget-object v0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/TextWidth;

    .line 174
    sget-object v1, Lnet/time4j/history/internal/HistoricAttribute;->LATIN_ERA:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "w"

    const-string v3, "a"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 176
    sget-object p1, Lnet/time4j/history/HistoricEraElement;->LATIN:Ljava/util/Locale;

    const-string v1, "historic"

    invoke-static {v1, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/String;

    .line 177
    sget-object v5, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    aput-object v2, v1, v4

    invoke-virtual {p1, p0, v1}, Lnet/time4j/format/CalendarText;->getTextForms(Lnet/time4j/engine/ChronoElement;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    .line 180
    :cond_1
    sget-object v1, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 181
    invoke-interface {p1, v1, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-static {v1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v1

    .line 183
    sget-object v6, Lnet/time4j/history/internal/HistoricAttribute;->COMMON_ERA:Lnet/time4j/engine/AttributeKey;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v6, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 185
    sget-object v6, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    if-ne v0, v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    aput-object v2, p1, v4

    const-string v0, "alt"

    aput-object v0, p1, v5

    invoke-virtual {v1, p0, p1}, Lnet/time4j/format/CalendarText;->getTextForms(Lnet/time4j/engine/ChronoElement;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1

    .line 188
    :cond_3
    invoke-virtual {v1, v0}, Lnet/time4j/format/CalendarText;->getEras(Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lnet/time4j/history/HistoricEraElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->era()Lnet/time4j/engine/ChronoElement;

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
            "Lnet/time4j/history/HistoricEra;",
            ">;"
        }
    .end annotation

    .line 155
    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    new-instance p1, Lnet/time4j/history/HistoricEraElement$Rule;

    iget-object v0, p0, Lnet/time4j/history/HistoricEraElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-direct {p1, v0}, Lnet/time4j/history/HistoricEraElement$Rule;-><init>(Lnet/time4j/history/ChronoHistory;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected doEquals(Lnet/time4j/engine/BasicElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/BasicElement<",
            "*>;)Z"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lnet/time4j/history/HistoricEraElement;->history:Lnet/time4j/history/ChronoHistory;

    check-cast p1, Lnet/time4j/history/HistoricEraElement;

    iget-object p1, p1, Lnet/time4j/history/HistoricEraElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lnet/time4j/history/HistoricEraElement;->getDefaultMaximum()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lnet/time4j/history/HistoricEraElement;->getDefaultMinimum()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 100
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

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
            "Lnet/time4j/history/HistoricEra;",
            ">;"
        }
    .end annotation

    .line 86
    const-class v0, Lnet/time4j/history/HistoricEra;

    return-object v0
.end method

.method public isDateElement()Z
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

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/history/HistoricEraElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/HistoricEra;
    .locals 2

    .line 143
    invoke-direct {p0, p3}, Lnet/time4j/history/HistoricEraElement;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lnet/time4j/history/HistoricEraElement;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 143
    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/history/HistoricEra;

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p3}, Lnet/time4j/history/HistoricEraElement;->accessor(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
