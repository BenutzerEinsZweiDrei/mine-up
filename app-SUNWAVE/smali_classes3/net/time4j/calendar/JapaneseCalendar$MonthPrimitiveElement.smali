.class Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;
.super Lnet/time4j/calendar/EastAsianME;
.source "JapaneseCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthPrimitiveElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/EastAsianME;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/JapaneseCalendar;",
        "Lnet/time4j/calendar/EastAsianMonth;",
        ">;"
    }
.end annotation


# static fields
.field static final SINGLETON_JP:Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;

.field private static final serialVersionUID:J = -0x295769f3dd75a24bL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2584
    new-instance v0, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;

    invoke-direct {v0}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;-><init>()V

    sput-object v0, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->SINGLETON_JP:Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2578
    invoke-direct {p0}, Lnet/time4j/calendar/EastAsianME;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V
    .locals 0

    .line 2578
    invoke-direct {p0}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2578
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->getChildAtCeiling(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2661
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2578
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->getChildAtFloor(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2654
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2578
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->getMaximum(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 3

    const/16 v0, 0xc

    .line 2607
    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    .line 2609
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v1

    const/16 v2, 0x751

    if-ge v1, v2, :cond_0

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v1

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    add-int/lit16 p1, p1, -0x2bd

    aget-byte p1, v1, p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 2610
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2578
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->getMinimum(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 0

    const/4 p1, 0x1

    .line 2600
    invoke-static {p1}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2578
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->getValue(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 0

    .line 2593
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2578
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    check-cast p2, Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->isValid(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/EastAsianMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/EastAsianMonth;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2625
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v1

    const/16 v2, 0x751

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 2626
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 2627
    :cond_1
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2628
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v1

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    add-int/lit16 p1, p1, -0x2bd

    aget-byte p1, v1, p1

    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p2

    add-int/2addr p2, v3

    if-ne p1, p2, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    return v3
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2578
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 5

    .line 2718
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2719
    sget-object v1, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2720
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v1, :cond_1

    .line 2723
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v1, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TextWidth;

    .line 2724
    sget-object v3, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/OutputContext;

    .line 2725
    invoke-static {v0}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    .line 2726
    const-class v1, Lnet/time4j/Month;

    invoke-virtual {v0, p1, p2, v1, p3}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/time4j/Month;

    if-eqz v0, :cond_0

    .line 2728
    invoke-virtual {v0}, Lnet/time4j/Month;->getValue()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1

    .line 2730
    :cond_0
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v0, -0x1

    .line 2731
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2735
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianME;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 2682
    sget-object v0, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x751

    if-lt v0, v1, :cond_2

    .line 2683
    sget-object v0, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2684
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-interface {p1, v2}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p1

    if-nez v0, :cond_0

    .line 2687
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 2688
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TextWidth;

    .line 2689
    sget-object v2, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/OutputContext;

    .line 2690
    invoke-static {v0}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    invoke-static {p1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p1

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 2692
    :cond_0
    sget-object v2, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/NumberSystem;

    .line 2693
    sget-object v3, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v2}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p3, v3, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result p3

    .line 2694
    invoke-static {v2, p3, p1}, Lnet/time4j/format/internal/DualFormatHelper;->toNumeral(Lnet/time4j/format/NumberSystem;CI)Ljava/lang/String;

    move-result-object p1

    .line 2696
    invoke-virtual {v2}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2697
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_1

    .line 2699
    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2703
    :cond_1
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 2706
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianME;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V

    :goto_1
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2671
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->SINGLETON_JP:Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;

    return-object v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2578
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    check-cast p2, Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->withValue(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/EastAsianMonth;Z)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/EastAsianMonth;Z)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 1

    .line 2642
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->isValid(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/EastAsianMonth;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2643
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p3

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {v0, p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1600(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2644
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {p1, v0, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar;->access$1700(Lnet/time4j/calendar/JapaneseCalendar;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1

    .line 2646
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid month: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
