.class Lnet/time4j/calendar/EastAsianCY;
.super Ljava/lang/Object;
.source "EastAsianCY.java"

# interfaces
.implements Lnet/time4j/format/TextElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/CyclicYear;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final SINGLETON:Lnet/time4j/calendar/EastAsianCY;

.field private static final serialVersionUID:J = -0x3a71e28ca541d382L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lnet/time4j/calendar/EastAsianCY;

    invoke-direct {v0}, Lnet/time4j/calendar/EastAsianCY;-><init>()V

    sput-object v0, Lnet/time4j/calendar/EastAsianCY;->SINGLETON:Lnet/time4j/calendar/EastAsianCY;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianCY;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 81
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/CyclicYear;

    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/SexagesimalName;

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/CyclicYear;->compareTo(Lnet/time4j/calendar/SexagesimalName;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCY;->getDefaultMaximum()Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/CyclicYear;
    .locals 1

    const/16 v0, 0x3c

    .line 95
    invoke-static {v0}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCY;->getDefaultMinimum()Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/CyclicYear;
    .locals 1

    const/4 v0, 0x1

    .line 88
    invoke-static {v0}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 124
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_year"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 125
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCY;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x55

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/CyclicYear;",
            ">;"
        }
    .end annotation

    .line 64
    const-class v0, Lnet/time4j/calendar/CyclicYear;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "CYCLIC_YEAR"

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianCY;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/CyclicYear;
    .locals 3

    .line 148
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 149
    sget-object v1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/Leniency;

    invoke-virtual {p3}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 150
    invoke-static {p1, p2, v0, p3}, Lnet/time4j/calendar/CyclicYear;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Z)Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

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

    .line 136
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    .line 137
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/CyclicYear;

    invoke-virtual {p1, p3}, Lnet/time4j/calendar/CyclicYear;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 160
    sget-object v0, Lnet/time4j/calendar/EastAsianCY;->SINGLETON:Lnet/time4j/calendar/EastAsianCY;

    return-object v0
.end method
