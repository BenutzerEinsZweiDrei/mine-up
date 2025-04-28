.class Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;
.super Lnet/time4j/format/DisplayElement;
.source "HinduCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/hindu/AdjustableTextElement;
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/HinduCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Lnet/time4j/calendar/hindu/HinduMonth;",
        ">;",
        "Lnet/time4j/calendar/hindu/AdjustableTextElement<",
        "Lnet/time4j/calendar/hindu/HinduMonth;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/hindu/HinduCalendar;",
        "Lnet/time4j/calendar/hindu/HinduMonth;",
        ">;"
    }
.end annotation


# static fields
.field static final SINGLETON:Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;

.field private static final serialVersionUID:J = 0x6790e5e0ead0f515L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1725
    new-instance v0, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;

    invoke-direct {v0}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;-><init>()V

    sput-object v0, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->SINGLETON:Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "MONTH_OF_YEAR"

    .line 1732
    invoke-direct {p0, v0}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1719
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->getChildAtCeiling(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1842
    sget-object p1, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1719
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->getChildAtFloor(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1837
    sget-object p1, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    return-object p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 1719
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->getDefaultMaximum()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 1

    const/16 v0, 0xc

    .line 1862
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 1719
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->getDefaultMinimum()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 1

    const/4 v0, 0x1

    .line 1857
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1719
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->getMaximum(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 5

    .line 1769
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xc

    .line 1770
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->ofSolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    return-object p1

    .line 1773
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide v1

    const-wide/16 v3, 0x14

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    .line 1774
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1719
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->getMinimum(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 0

    .line 1764
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x4d

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/calendar/hindu/HinduMonth;",
            ">;"
        }
    .end annotation

    .line 1847
    const-class v0, Lnet/time4j/calendar/hindu/HinduMonth;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1719
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->getValue(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 0

    .line 1759
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

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

    .line 1719
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    check-cast p2, Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->isValid(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduMonth;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 1783
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1787
    :cond_0
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1788
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v1

    move v2, v0

    .line 1791
    :goto_0
    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/time4j/calendar/hindu/HinduMonth;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1792
    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    return v0

    .line 1798
    :cond_1
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->nextMonth()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v1

    goto :goto_0

    .line 1802
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isLunisolar()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1803
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$400(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCS;->isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public maximized()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .line 1749
    new-instance v0, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement$2;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement$2;-><init>(Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;)V

    return-object v0
.end method

.method public minimized()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .line 1739
    new-instance v0, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement$1;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement$1;-><init>(Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;)V

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1719
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 23

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1971
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    .line 1972
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/4 v12, 0x0

    if-lt v10, v11, :cond_0

    .line 1976
    invoke-virtual {v8, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v12

    .line 1980
    :cond_0
    invoke-static {v12, v9}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$900(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    .line 1981
    sget-object v1, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v9, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Locale;

    .line 1982
    sget-object v1, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1983
    sget-object v1, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    const/16 v1, 0x2a

    .line 1989
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v17

    const-string v6, "hindu"

    const-string v5, "R"

    const/4 v4, -0x1

    const/4 v3, 0x1

    if-nez v17, :cond_3

    const-string v0, "generic"

    .line 1992
    invoke-static {v0, v13}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v0

    .line 1993
    sget-object v1, Lnet/time4j/calendar/hindu/HinduPrimitive;->ADHIKA_IS_TRAILING:Lnet/time4j/engine/AttributeKey;

    const-string v2, "leap-alignment"

    .line 1994
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 1995
    sget-object v1, Lnet/time4j/calendar/hindu/HinduPrimitive;->ADHIKA_INDICATOR:Lnet/time4j/engine/AttributeKey;

    const-string v2, "leap-indicator"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v9, v1, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v19

    .line 1996
    invoke-static {v6, v13}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v0

    const-string v1, "adhika"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    if-nez v18, :cond_1

    move-object/from16 v0, p1

    move v1, v10

    move v2, v11

    move/from16 v3, v16

    move v14, v4

    move-object/from16 v4, v20

    move-object/from16 v21, v5

    move/from16 v5, v19

    move-object/from16 v22, v6

    move-object v6, v13

    .line 1999
    invoke-static/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$1000(Ljava/lang/CharSequence;IIZLjava/lang/String;CLjava/util/Locale;)I

    move-result v0

    if-eq v0, v14, :cond_2

    move/from16 v1, v18

    move/from16 v5, v19

    move-object/from16 v4, v20

    const/16 v18, 0x1

    goto :goto_1

    :cond_1
    move v14, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    :cond_2
    move v0, v10

    move/from16 v1, v18

    move/from16 v5, v19

    move-object/from16 v4, v20

    goto :goto_0

    :cond_3
    move v14, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const-string v0, ""

    move-object v4, v0

    move v5, v1

    move v0, v10

    const/4 v1, 0x0

    :goto_0
    const/16 v18, 0x0

    :goto_1
    if-lt v0, v11, :cond_4

    .line 2009
    invoke-virtual {v8, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v12

    :cond_4
    if-nez v15, :cond_7

    .line 2016
    invoke-virtual {v8, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2017
    sget-object v2, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {v9, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/TextWidth;

    .line 2018
    sget-object v3, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v6, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {v9, v3, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/OutputContext;

    const-string v6, "indian"

    .line 2019
    invoke-static {v6, v13}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v6

    .line 2020
    invoke-virtual {v6, v2, v3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v2

    const-class v3, Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v2, v7, v8, v3, v9}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lnet/time4j/calendar/IndianMonth;

    if-nez v2, :cond_5

    if-eqz v17, :cond_5

    .line 2024
    invoke-virtual {v8, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2025
    invoke-virtual {v8, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, v22

    .line 2026
    invoke-static {v0, v13}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    const-class v2, Lnet/time4j/calendar/IndianMonth;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v6, v21

    invoke-virtual {v0, v6, v2, v3}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    .line 2027
    const-class v2, Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v0, v7, v8, v2, v9}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v0}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v0

    .line 2028
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->ofSolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    .line 2032
    invoke-virtual {v8, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v12

    .line 2035
    :cond_6
    invoke-static {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->of(Lnet/time4j/calendar/IndianMonth;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    .line 2036
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object v9, v0

    move v10, v2

    goto/16 :goto_7

    .line 2039
    :cond_7
    sget-object v2, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {v9, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/NumberSystem;

    .line 2040
    sget-object v3, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v2}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v9, v3, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    if-eqz v17, :cond_8

    .line 2043
    invoke-virtual {v2}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_2
    if-ge v0, v11, :cond_8

    .line 2044
    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/16 v6, 0xc

    move v9, v6

    move v6, v15

    :goto_3
    const/4 v15, 0x1

    if-lt v9, v15, :cond_c

    if-nez v6, :cond_c

    .line 2050
    invoke-static {v2, v3, v9}, Lnet/time4j/format/internal/DualFormatHelper;->toNumeral(Lnet/time4j/format/NumberSystem;CI)Ljava/lang/String;

    move-result-object v15

    .line 2051
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v21, v2

    const/4 v12, 0x0

    :goto_4
    add-int v2, v0, v12

    if-le v11, v2, :cond_9

    .line 2053
    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move/from16 p3, v3

    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_a

    goto :goto_5

    :cond_9
    move/from16 p3, v3

    :cond_a
    add-int/lit8 v12, v12, 0x1

    if-ne v12, v14, :cond_b

    add-int/2addr v0, v14

    move v6, v9

    :goto_5
    add-int/lit8 v9, v9, -0x1

    move/from16 v3, p3

    move-object/from16 v2, v21

    const/4 v12, 0x0

    const/4 v14, -0x1

    goto :goto_3

    :cond_b
    move/from16 v3, p3

    goto :goto_4

    :cond_c
    if-nez v6, :cond_d

    .line 2064
    invoke-virtual {v8, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_d
    if-eqz v17, :cond_e

    .line 2067
    invoke-static {v6}, Lnet/time4j/calendar/hindu/HinduMonth;->ofSolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    goto :goto_6

    :cond_e
    invoke-static {v6}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    :goto_6
    move v10, v0

    move-object v9, v2

    :goto_7
    if-eqz v1, :cond_f

    move-object/from16 v0, p1

    move v1, v10

    move v2, v11

    move/from16 v3, v16

    move-object v6, v13

    .line 2072
    invoke-static/range {v0 .. v6}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$1100(Ljava/lang/CharSequence;IIZLjava/lang/String;CLjava/util/Locale;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    move v10, v0

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    move/from16 v3, v18

    :goto_8
    if-eqz v3, :cond_10

    .line 2081
    invoke-virtual {v9}, Lnet/time4j/calendar/hindu/HinduMonth;->withLeap()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v9

    .line 2084
    :cond_10
    invoke-virtual {v8, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v9
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 1894
    invoke-static {p1, p3}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$900(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    .line 1895
    sget-object v1, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 1896
    sget-object v2, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v2, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1897
    sget-object v4, Lnet/time4j/calendar/hindu/HinduCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    invoke-interface {p1, v4}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/hindu/HinduMonth;

    .line 1902
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "generic"

    .line 1903
    invoke-static {v4, v1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v4

    invoke-virtual {v4}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v4

    .line 1904
    sget-object v5, Lnet/time4j/calendar/hindu/HinduPrimitive;->ADHIKA_IS_TRAILING:Lnet/time4j/engine/AttributeKey;

    const-string v6, "leap-alignment"

    .line 1905
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "R"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {p3, v5, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1906
    sget-object v6, Lnet/time4j/calendar/hindu/HinduPrimitive;->ADHIKA_INDICATOR:Lnet/time4j/engine/AttributeKey;

    const-string v7, "leap-indicator"

    .line 1907
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p3, v6, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    const-string v6, "hindu"

    .line 1908
    invoke-static {v6, v1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v6

    invoke-virtual {v6}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v6

    const-string v7, "adhika"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v4, 0x2a

    const-string v6, ""

    move v5, v3

    :goto_0
    if-nez v2, :cond_5

    .line 1912
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lnet/time4j/calendar/hindu/HinduMonth;->RASI_NAMES:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->prefersRasiNames()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1913
    invoke-virtual {p1, v1}, Lnet/time4j/calendar/hindu/HinduMonth;->getRasi(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_4

    .line 1915
    :cond_1
    sget-object v0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v0, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/TextWidth;

    .line 1916
    sget-object v2, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/OutputContext;

    .line 1918
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_3

    if-nez v5, :cond_3

    .line 1919
    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    if-ne v0, v2, :cond_2

    .line 1920
    invoke-interface {p2, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1921
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 1923
    :cond_2
    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1925
    :goto_1
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->of(Lnet/time4j/calendar/IndianMonth;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    .line 1928
    :cond_3
    invoke-virtual {p1, v1, v0, p3}, Lnet/time4j/calendar/hindu/HinduMonth;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-eqz v5, :cond_9

    .line 1931
    sget-object p1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    if-ne v0, p1, :cond_4

    .line 1932
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1933
    invoke-interface {p2, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 1935
    :cond_4
    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    .line 1940
    :cond_5
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v5, :cond_6

    .line 1941
    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1944
    :cond_6
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getRasi()I

    move-result p1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result p1

    .line 1945
    :goto_2
    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v6, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {p3, v1, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/NumberSystem;

    .line 1946
    sget-object v6, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v1}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p3, v6, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p3

    .line 1947
    invoke-static {v1, p3, p1}, Lnet/time4j/format/internal/DualFormatHelper;->toNumeral(Lnet/time4j/format/NumberSystem;CI)Ljava/lang/String;

    move-result-object p1

    .line 1949
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1950
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    :goto_3
    if-lez v2, :cond_8

    .line 1952
    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1957
    :cond_8
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-eqz v5, :cond_9

    .line 1960
    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_9
    :goto_4
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1885
    sget-object v0, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->SINGLETON:Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;

    return-object v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1719
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    check-cast p2, Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->withValue(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduMonth;Z)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduMonth;Z)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 3

    const-string p3, "Invalid month: "

    if-eqz p2, :cond_4

    .line 1815
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1819
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    const/4 v1, 0x0

    .line 1822
    :goto_0
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/time4j/calendar/hindu/HinduMonth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1823
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 1826
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1829
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->nextMonth()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    goto :goto_0

    .line 1832
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$600(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$800(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1

    .line 1816
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
