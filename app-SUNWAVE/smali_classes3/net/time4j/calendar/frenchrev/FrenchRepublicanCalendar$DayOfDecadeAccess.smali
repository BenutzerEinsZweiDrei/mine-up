.class Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;
.super Lnet/time4j/engine/BasicElement;
.source "FrenchRepublicanCalendar.java"

# interfaces
.implements Lnet/time4j/format/TextElement;
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayOfDecadeAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Lnet/time4j/calendar/frenchrev/DayOfDecade;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/frenchrev/DayOfDecade;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        "Lnet/time4j/calendar/frenchrev/DayOfDecade;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71f65acfcada0a9aL


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "DAY_OF_DECADE"

    .line 2031
    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private accessor(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;
    .locals 4

    .line 2201
    sget-object v0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/TextWidth;

    .line 2202
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/format/OutputContext;

    .line 2203
    sget-object v1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne v0, v1, :cond_0

    const-string p2, "N"

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne p2, v0, :cond_1

    const-string p2, "w"

    goto :goto_0

    :cond_1
    const-string p2, "W"

    :goto_0
    const-string v0, "frenchrev"

    .line 2204
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2020
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getChildAtCeiling(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2020
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getChildAtFloor(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 2020
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getDefaultMaximum()Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/frenchrev/DayOfDecade;
    .locals 1

    .line 2162
    sget-object v0, Lnet/time4j/calendar/frenchrev/DayOfDecade;->DECADI:Lnet/time4j/calendar/frenchrev/DayOfDecade;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 2020
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getDefaultMinimum()Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/frenchrev/DayOfDecade;
    .locals 1

    .line 2155
    sget-object v0, Lnet/time4j/calendar/frenchrev/DayOfDecade;->PRIMIDI:Lnet/time4j/calendar/frenchrev/DayOfDecade;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "frenchrev"

    .line 2170
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_dayofdecade"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2171
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2020
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getMaximum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/DayOfDecade;
    .locals 3

    .line 2064
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    sget-object p1, Lnet/time4j/calendar/frenchrev/DayOfDecade;->DECADI:Lnet/time4j/calendar/frenchrev/DayOfDecade;

    return-object p1

    .line 2065
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get maximum for day of decade on sansculottides: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2020
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getMinimum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/DayOfDecade;
    .locals 3

    .line 2053
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2057
    sget-object p1, Lnet/time4j/calendar/frenchrev/DayOfDecade;->PRIMIDI:Lnet/time4j/calendar/frenchrev/DayOfDecade;

    return-object p1

    .line 2054
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get minimum for day of decade on sansculottides: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x43

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/frenchrev/DayOfDecade;",
            ">;"
        }
    .end annotation

    .line 2148
    const-class v0, Lnet/time4j/calendar/frenchrev/DayOfDecade;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2020
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/DayOfDecade;
    .locals 0

    .line 2046
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfDecade()Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object p1

    return-object p1
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

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2020
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Lnet/time4j/calendar/frenchrev/DayOfDecade;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/DayOfDecade;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/DayOfDecade;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 2078
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2020
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/frenchrev/DayOfDecade;
    .locals 2

    .line 2140
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2141
    invoke-direct {p0, v0, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->accessor(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/frenchrev/DayOfDecade;

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

    .line 2127
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/frenchrev/DayOfDecade;

    .line 2128
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2129
    invoke-direct {p0, v0, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->accessor(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2020
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Lnet/time4j/calendar/frenchrev/DayOfDecade;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;->withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/DayOfDecade;Z)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/DayOfDecade;Z)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 1

    if-eqz p2, :cond_2

    .line 2091
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result p3

    if-nez p3, :cond_1

    .line 2095
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    rem-int/lit8 p3, p3, 0xa

    add-int/lit8 p3, p3, 0x1

    .line 2096
    invoke-virtual {p2}, Lnet/time4j/calendar/frenchrev/DayOfDecade;->getValue()I

    move-result p2

    sub-int/2addr p2, p3

    if-nez p2, :cond_0

    return-object p1

    .line 2101
    :cond_0
    new-instance p3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    add-int/2addr p1, p2

    invoke-direct {p3, v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object p3

    .line 2092
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set day of decade on sansculottides."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2090
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing day of decade."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
