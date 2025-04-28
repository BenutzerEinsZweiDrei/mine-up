.class Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;
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
    name = "SansculottidesAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Lnet/time4j/calendar/frenchrev/Sansculottides;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/frenchrev/Sansculottides;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        "Lnet/time4j/calendar/frenchrev/Sansculottides;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5bd0916a0fd71022L


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "SANSCULOTTIDES"

    .line 2221
    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private accessor(Ljava/util/Locale;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 4

    .line 2391
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne p2, v0, :cond_0

    const-string p2, "w"

    goto :goto_0

    :cond_0
    const-string p2, "W"

    :goto_0
    const-string v0, "frenchrev"

    .line 2392
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getType()Ljava/lang/Class;

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

    .line 2210
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getChildAtCeiling(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 2210
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getChildAtFloor(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/engine/ChronoElement;

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

    .line 2210
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getDefaultMaximum()Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 1

    .line 2353
    sget-object v0, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_5:Lnet/time4j/calendar/frenchrev/Sansculottides;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 2210
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getDefaultMinimum()Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 1

    .line 2346
    sget-object v0, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_1:Lnet/time4j/calendar/frenchrev/Sansculottides;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "frenchrev"

    .line 2381
    invoke-static {v0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_sansculottides"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2382
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2210
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getMaximum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 0

    .line 2250
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->isLeapYear()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/time4j/calendar/frenchrev/Sansculottides;->LEAP_DAY:Lnet/time4j/calendar/frenchrev/Sansculottides;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_5:Lnet/time4j/calendar/frenchrev/Sansculottides;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2210
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getMinimum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 0

    .line 2243
    sget-object p1, Lnet/time4j/calendar/frenchrev/Sansculottides;->COMPLEMENTARY_DAY_1:Lnet/time4j/calendar/frenchrev/Sansculottides;

    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x53

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/frenchrev/Sansculottides;",
            ">;"
        }
    .end annotation

    .line 2339
    const-class v0, Lnet/time4j/calendar/frenchrev/Sansculottides;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2210
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 0

    .line 2236
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getSansculottides()Lnet/time4j/calendar/frenchrev/Sansculottides;

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

    .line 2210
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Lnet/time4j/calendar/frenchrev/Sansculottides;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/Sansculottides;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/Sansculottides;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 2261
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->isLeapYear()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lnet/time4j/calendar/frenchrev/Sansculottides;->LEAP_DAY:Lnet/time4j/calendar/frenchrev/Sansculottides;

    if-eq p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2210
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 6

    .line 2320
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2321
    sget-object v1, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 2322
    sget-object v2, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/OutputContext;

    .line 2323
    invoke-direct {p0, v1, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->accessor(Ljava/util/Locale;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v3

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lnet/time4j/calendar/frenchrev/Sansculottides;

    if-nez v3, :cond_1

    .line 2325
    sget-object v4, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, -0x1

    .line 2326
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2327
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2328
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne v2, v0, :cond_0

    sget-object v0, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    .line 2329
    :goto_0
    invoke-direct {p0, v1, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->accessor(Ljava/util/Locale;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lnet/time4j/calendar/frenchrev/Sansculottides;

    :cond_1
    return-object v3
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 2306
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/frenchrev/Sansculottides;

    .line 2307
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2308
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/OutputContext;

    .line 2309
    invoke-direct {p0, v0, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->accessor(Ljava/util/Locale;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2210
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Lnet/time4j/calendar/frenchrev/Sansculottides;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/Sansculottides;Z)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/Sansculottides;Z)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 2281
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    invoke-static {p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(ILnet/time4j/calendar/frenchrev/Sansculottides;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    .line 2278
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing sansculottides value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
