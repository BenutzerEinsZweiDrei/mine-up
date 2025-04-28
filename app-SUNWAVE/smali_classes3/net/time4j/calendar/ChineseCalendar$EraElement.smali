.class Lnet/time4j/calendar/ChineseCalendar$EraElement;
.super Lnet/time4j/format/DisplayElement;
.source "ChineseCalendar.java"

# interfaces
.implements Lnet/time4j/format/TextElement;
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ChineseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Lnet/time4j/calendar/ChineseEra;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/ChineseEra;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/ChineseCalendar;",
        "Lnet/time4j/calendar/ChineseEra;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lnet/time4j/calendar/ChineseCalendar$EraElement;

.field private static final serialVersionUID:J = -0x6d32a670c00820eaL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1004
    new-instance v0, Lnet/time4j/calendar/ChineseCalendar$EraElement;

    invoke-direct {v0}, Lnet/time4j/calendar/ChineseCalendar$EraElement;-><init>()V

    sput-object v0, Lnet/time4j/calendar/ChineseCalendar$EraElement;->INSTANCE:Lnet/time4j/calendar/ChineseCalendar$EraElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "ERA"

    .line 1011
    invoke-direct {p0, v0}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lnet/time4j/calendar/ChineseCalendar$EraElement;Lnet/time4j/calendar/ChineseCalendar;)I
    .locals 0

    .line 998
    invoke-direct {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getRelatedGregorianYear(Lnet/time4j/calendar/ChineseCalendar;)I

    move-result p0

    return p0
.end method

.method private getRelatedGregorianYear(Lnet/time4j/calendar/ChineseCalendar;)I
    .locals 1

    .line 1192
    invoke-virtual {p1}, Lnet/time4j/calendar/ChineseCalendar;->getCycle()I

    move-result v0

    .line 1193
    invoke-virtual {p1}, Lnet/time4j/calendar/ChineseCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p1

    add-int/lit16 v0, v0, -0xa4d

    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1188
    sget-object v0, Lnet/time4j/calendar/ChineseCalendar$EraElement;->INSTANCE:Lnet/time4j/calendar/ChineseCalendar$EraElement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 998
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getChildAtCeiling(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ChineseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1116
    sget-object p1, Lnet/time4j/calendar/ChineseCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 998
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getChildAtFloor(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/ChineseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1111
    sget-object p1, Lnet/time4j/calendar/ChineseCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 998
    invoke-virtual {p0}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getDefaultMaximum()Lnet/time4j/calendar/ChineseEra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/ChineseEra;
    .locals 1

    .line 1034
    sget-object v0, Lnet/time4j/calendar/ChineseEra;->YELLOW_EMPEROR:Lnet/time4j/calendar/ChineseEra;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 998
    invoke-virtual {p0}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getDefaultMinimum()Lnet/time4j/calendar/ChineseEra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/ChineseEra;
    .locals 1

    .line 1029
    sget-object v0, Lnet/time4j/calendar/ChineseEra;->QING_SHUNZHI_1644_1662:Lnet/time4j/calendar/ChineseEra;

    return-object v0
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 998
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getMaximum(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/calendar/ChineseEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/calendar/ChineseEra;
    .locals 0

    .line 1083
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->YELLOW_EMPEROR:Lnet/time4j/calendar/ChineseEra;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 998
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getMinimum(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/calendar/ChineseEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/calendar/ChineseEra;
    .locals 0

    .line 1078
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_SHUNZHI_1644_1662:Lnet/time4j/calendar/ChineseEra;

    return-object p1
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
            "Lnet/time4j/calendar/ChineseEra;",
            ">;"
        }
    .end annotation

    .line 1019
    const-class v0, Lnet/time4j/calendar/ChineseEra;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 998
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getValue(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/calendar/ChineseEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/calendar/ChineseEra;
    .locals 4

    .line 1049
    invoke-direct {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getRelatedGregorianYear(Lnet/time4j/calendar/ChineseCalendar;)I

    move-result v0

    const/16 v1, 0x67e

    if-ge v0, v1, :cond_0

    .line 1052
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_SHUNZHI_1644_1662:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    :cond_0
    const/16 v1, 0x6bb

    if-ge v0, v1, :cond_1

    .line 1054
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_KANGXI_1662_1723:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    :cond_1
    const/16 v1, 0x6c8

    if-ge v0, v1, :cond_2

    .line 1056
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_YONGZHENG_1723_1736:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    :cond_2
    const/16 v1, 0x704

    if-ge v0, v1, :cond_3

    .line 1058
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_QIANLONG_1736_1796:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    :cond_3
    const/16 v1, 0x71d

    if-ge v0, v1, :cond_4

    .line 1060
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_JIAQING_1796_1821:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    :cond_4
    const/16 v1, 0x73b

    if-ge v0, v1, :cond_5

    .line 1062
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_DAOGUANG_1821_1851:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    :cond_5
    const/16 v1, 0x746

    if-ge v0, v1, :cond_6

    .line 1064
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_XIANFENG_1851_1862:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    :cond_6
    const/16 v1, 0x753

    if-ge v0, v1, :cond_7

    .line 1066
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_TONGZHI_1862_1875:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    :cond_7
    const/16 v1, 0x775

    if-ge v0, v1, :cond_8

    .line 1068
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_GUANGXU_1875_1909:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    .line 1069
    :cond_8
    invoke-virtual {p1}, Lnet/time4j/calendar/ChineseCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    const-wide/16 v2, -0x5571

    cmp-long p1, v0, v2

    if-gez p1, :cond_9

    .line 1070
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->QING_XUANTONG_1909_1912:Lnet/time4j/calendar/ChineseEra;

    return-object p1

    .line 1072
    :cond_9
    sget-object p1, Lnet/time4j/calendar/ChineseEra;->YELLOW_EMPEROR:Lnet/time4j/calendar/ChineseEra;

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

    .line 998
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    check-cast p2, Lnet/time4j/calendar/ChineseEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->isValid(Lnet/time4j/calendar/ChineseCalendar;Lnet/time4j/calendar/ChineseEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/ChineseCalendar;Lnet/time4j/calendar/ChineseEra;)Z
    .locals 0

    .line 1091
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->getValue(Lnet/time4j/calendar/ChineseCalendar;)Lnet/time4j/calendar/ChineseEra;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 998
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/ChineseEra;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/ChineseEra;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1137
    sget-object v3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v2, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 1138
    sget-object v4, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1139
    sget-object v5, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1140
    sget-object v6, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v7, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {v2, v6, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/TextWidth;

    .line 1141
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 1143
    invoke-static {}, Lnet/time4j/calendar/ChineseEra;->values()[Lnet/time4j/calendar/ChineseEra;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_3

    aget-object v11, v7, v10

    .line 1144
    invoke-virtual {v11, v3, v2}, Lnet/time4j/calendar/ChineseEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object v12

    .line 1145
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-le v13, v6, :cond_2

    .line 1147
    invoke-interface {v0, v6, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v4, :cond_0

    .line 1149
    invoke-virtual {v12, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 1150
    invoke-virtual {v14, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 1152
    :cond_0
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v5, :cond_2

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1153
    :cond_1
    invoke-virtual {v1, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v11

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1159
    :cond_3
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v7, "zh"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1161
    invoke-static {}, Lnet/time4j/calendar/ChineseEra;->values()[Lnet/time4j/calendar/ChineseEra;

    move-result-object v3

    array-length v7, v3

    :goto_1
    if-ge v9, v7, :cond_7

    aget-object v8, v3, v9

    .line 1162
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v10, v2}, Lnet/time4j/calendar/ChineseEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object v10

    .line 1163
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-le v11, v6, :cond_6

    .line 1165
    invoke-interface {v0, v6, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v4, :cond_4

    .line 1167
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 1168
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 1170
    :cond_4
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    if-eqz v5, :cond_6

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1171
    :cond_5
    invoke-virtual {v1, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v8

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1178
    :cond_7
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 1125
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 1126
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/TextWidth;

    .line 1127
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ChineseEra;

    invoke-virtual {p1, v0, p3}, Lnet/time4j/calendar/ChineseEra;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    .line 1128
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 998
    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    check-cast p2, Lnet/time4j/calendar/ChineseEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->withValue(Lnet/time4j/calendar/ChineseCalendar;Lnet/time4j/calendar/ChineseEra;Z)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/ChineseCalendar;Lnet/time4j/calendar/ChineseEra;Z)Lnet/time4j/calendar/ChineseCalendar;
    .locals 0

    .line 1100
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ChineseCalendar$EraElement;->isValid(Lnet/time4j/calendar/ChineseCalendar;Lnet/time4j/calendar/ChineseEra;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 1103
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing Chinese era."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1105
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Chinese era is read-only."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
