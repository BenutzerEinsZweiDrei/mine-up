.class Lnet/time4j/calendar/EastAsianME;
.super Ljava/lang/Object;
.source "EastAsianME.java"

# interfaces
.implements Lnet/time4j/format/TextElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/EastAsianMonth;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final SINGLETON_EA:Lnet/time4j/calendar/EastAsianME;

.field private static final serialVersionUID:J = -0x5185980e91d15c61L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lnet/time4j/calendar/EastAsianME;

    invoke-direct {v0}, Lnet/time4j/calendar/EastAsianME;-><init>()V

    sput-object v0, Lnet/time4j/calendar/EastAsianME;->SINGLETON_EA:Lnet/time4j/calendar/EastAsianME;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EastAsianME;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 0

    .line 88
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EastAsianMonth;

    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/EastAsianMonth;->compareTo(Lnet/time4j/calendar/EastAsianMonth;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianME;->getDefaultMaximum()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/EastAsianMonth;
    .locals 1

    const/16 v0, 0xc

    .line 102
    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianME;->getDefaultMinimum()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/EastAsianMonth;
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 131
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_month"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianME;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
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
            "Lnet/time4j/calendar/EastAsianMonth;",
            ">;"
        }
    .end annotation

    .line 71
    const-class v0, Lnet/time4j/calendar/EastAsianMonth;

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

    const-string v0, "MONTH_OF_YEAR"

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EastAsianME;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 178
    sget-object v3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v2, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 179
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 180
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    const/4 v6, 0x0

    if-lt v5, v4, :cond_0

    .line 183
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v6

    .line 190
    :cond_0
    sget-object v7, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    invoke-interface {v2, v7}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_9

    const-string v7, "generic"

    .line 191
    invoke-static {v7, v3}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v3

    .line 192
    sget-object v7, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v10, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {v2, v7, v10}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/format/NumberSystem;

    .line 194
    sget-object v10, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v7}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    .line 196
    sget-object v11, Lnet/time4j/calendar/EastAsianMonth;->LEAP_MONTH_IS_TRAILING:Lnet/time4j/engine/AttributeKey;

    const-string v12, "leap-alignment"

    .line 197
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "R"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 198
    sget-object v12, Lnet/time4j/calendar/EastAsianMonth;->LEAP_MONTH_INDICATOR:Lnet/time4j/engine/AttributeKey;

    const-string v13, "leap-indicator"

    .line 199
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-nez v11, :cond_1

    .line 201
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    add-int/lit8 v3, v5, 0x1

    move v12, v9

    goto :goto_0

    :cond_1
    move v3, v5

    move v12, v8

    .line 206
    :goto_0
    invoke-virtual {v7}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v13

    if-eqz v13, :cond_2

    :goto_1
    if-ge v3, v4, :cond_2

    .line 208
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v10, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v13, 0xc

    move v14, v8

    :goto_2
    if-lt v13, v9, :cond_6

    if-nez v14, :cond_6

    .line 216
    invoke-static {v7, v10, v13}, Lnet/time4j/format/internal/DualFormatHelper;->toNumeral(Lnet/time4j/format/NumberSystem;CI)Ljava/lang/String;

    move-result-object v15

    .line 217
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    add-int v6, v3, v9

    if-le v4, v6, :cond_3

    .line 219
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move-object/from16 v17, v7

    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_4

    goto :goto_4

    :cond_3
    move-object/from16 v17, v7

    :cond_4
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v8, :cond_5

    add-int/2addr v3, v8

    move v14, v13

    :goto_4
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v7, v17

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v7, v17

    goto :goto_3

    :cond_6
    if-nez v14, :cond_7

    .line 230
    invoke-virtual {v1, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :goto_5
    const/4 v0, 0x0

    return-object v0

    :cond_7
    if-eqz v11, :cond_8

    if-le v4, v3, :cond_8

    .line 234
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_8

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    move v9, v12

    .line 239
    :goto_6
    invoke-static {v14}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    .line 240
    invoke-virtual {v1, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_8

    .line 242
    :cond_9
    sget-object v4, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v6, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {v2, v4, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/TextWidth;

    .line 243
    sget-object v6, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v7, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {v2, v6, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/format/OutputContext;

    const-string v7, "chinese"

    .line 244
    invoke-static {v7, v3}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v8

    invoke-virtual {v8, v4, v6}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v8

    .line 247
    const-class v9, Lnet/time4j/Month;

    invoke-virtual {v8, v0, v1, v9, v2}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v8

    check-cast v8, Lnet/time4j/Month;

    if-nez v8, :cond_a

    const/4 v8, -0x1

    .line 250
    invoke-virtual {v1, v8}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 251
    invoke-virtual {v1, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 252
    invoke-static {v7, v3}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Lnet/time4j/format/CalendarText;->getLeapMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v3

    .line 253
    const-class v4, Lnet/time4j/Month;

    invoke-virtual {v3, v0, v1, v4, v2}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lnet/time4j/Month;

    if-eqz v8, :cond_a

    const/16 v16, 0x1

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    :goto_7
    if-nez v8, :cond_b

    .line 260
    invoke-virtual {v1, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_5

    .line 264
    :cond_b
    invoke-virtual {v8}, Lnet/time4j/Month;->getValue()I

    move-result v0

    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    move/from16 v9, v16

    :goto_8
    if-eqz v9, :cond_c

    .line 268
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 153
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 154
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EastAsianMonth;

    .line 156
    sget-object v1, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p3, v1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/NumberSystem;

    .line 158
    invoke-virtual {p1, v0, v1, p3}, Lnet/time4j/calendar/EastAsianMonth;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/NumberSystem;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 160
    :cond_0
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TextWidth;

    .line 161
    sget-object v2, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/OutputContext;

    .line 163
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v2

    const-string v3, "chinese"

    if-eqz v2, :cond_1

    .line 164
    invoke-static {v3, v0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lnet/time4j/format/CalendarText;->getLeapMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {v3, v0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p3

    .line 166
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p1

    invoke-virtual {p3, p1}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

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

    .line 142
    sget-object v0, Lnet/time4j/calendar/EastAsianME;->SINGLETON_EA:Lnet/time4j/calendar/EastAsianME;

    return-object v0
.end method
