.class Lnet/time4j/calendar/JapaneseCalendar$YearOfNengoElement;
.super Lnet/time4j/calendar/service/StdIntegerDateElement;
.source "JapaneseCalendar.java"

# interfaces
.implements Lnet/time4j/format/internal/DualFormatElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearOfNengoElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/service/StdIntegerDateElement<",
        "Lnet/time4j/calendar/JapaneseCalendar;",
        ">;",
        "Lnet/time4j/format/internal/DualFormatElement;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75fe8d5bff6d1b55L


# direct methods
.method private constructor <init>()V
    .locals 8

    .line 2440
    const-class v2, Lnet/time4j/calendar/JapaneseCalendar;

    sget-object v0, Lnet/time4j/calendar/Nengo$Element;->SINGLETON:Lnet/time4j/calendar/Nengo$Element;

    .line 2443
    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo$Element;->getDefaultMaximum()Lnet/time4j/calendar/Nengo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v0

    const v1, 0x3b9aca00

    sub-int v4, v1, v0

    const-string v1, "YEAR_OF_ERA"

    const/4 v3, 0x1

    const/16 v5, 0x79

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 2440
    invoke-direct/range {v0 .. v7}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V
    .locals 0

    .line 2429
    invoke-direct {p0}, Lnet/time4j/calendar/JapaneseCalendar$YearOfNengoElement;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;
    .locals 7

    .line 2506
    sget-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/NumberSystem;

    .line 2507
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2510
    sget-object v2, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    if-ne v0, v2, :cond_0

    .line 2512
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x5143

    if-ne v2, v3, :cond_0

    sget-object v2, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2513
    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 2515
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2519
    :cond_0
    sget-object v2, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 2520
    invoke-interface {p3, v2}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 2521
    invoke-interface {p3, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    goto :goto_0

    .line 2522
    :cond_1
    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x30

    .line 2524
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object p3, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    goto :goto_1

    :cond_3
    sget-object v4, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p3, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/Leniency;

    .line 2527
    :goto_1
    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 p3, v1, 0x9

    .line 2528
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    move v0, v1

    move v4, v0

    :goto_2
    if-ge v0, p3, :cond_7

    .line 2529
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v2

    if-ltz v5, :cond_7

    const/16 v6, 0x9

    if-gt v5, v6, :cond_7

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2540
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v4, v1

    move v5, v3

    :goto_3
    if-ge v4, v2, :cond_5

    .line 2541
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Lnet/time4j/format/NumberSystem;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-lez v5, :cond_6

    add-int v4, v1, v5

    .line 2549
    invoke-interface {p1, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lnet/time4j/format/NumberSystem;->toInteger(Ljava/lang/String;Lnet/time4j/format/Leniency;)I

    move-result v3

    goto :goto_4

    :cond_6
    move v4, v1

    :cond_7
    :goto_4
    if-ne v4, v1, :cond_8

    .line 2555
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p1, 0x0

    return-object p1

    .line 2558
    :cond_8
    invoke-virtual {p2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2559
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 2572
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$YearOfNengoElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2429
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$YearOfNengoElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 2458
    sget-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lnet/time4j/format/NumberSystem;

    .line 2459
    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 2460
    invoke-interface {p3, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 2461
    invoke-interface {p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    :goto_0
    move v6, v0

    goto :goto_1

    .line 2462
    :cond_0
    invoke-virtual {v5}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    goto :goto_0

    :goto_1
    const/4 v7, 0x1

    const/16 v8, 0x9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 2463
    invoke-virtual/range {v1 .. v8}, Lnet/time4j/calendar/JapaneseCalendar$YearOfNengoElement;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/NumberSystem;CII)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/NumberSystem;CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 2478
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    const/4 p7, 0x1

    if-ne p1, p7, :cond_0

    .line 2480
    sget-object p7, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    if-ne p4, p7, :cond_0

    sget-object p7, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2483
    invoke-interface {p3, p7, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    const-string p7, "ja"

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p1, 0x5143

    .line 2485
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 2487
    :cond_0
    invoke-virtual {p4, p1}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object p1

    .line 2488
    invoke-virtual {p4}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x0

    sub-int/2addr p6, p3

    :goto_0
    if-ge p4, p6, :cond_1

    .line 2491
    invoke-interface {p2, p5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 2494
    :cond_1
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method
