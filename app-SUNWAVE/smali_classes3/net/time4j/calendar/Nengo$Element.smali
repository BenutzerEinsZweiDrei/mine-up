.class Lnet/time4j/calendar/Nengo$Element;
.super Ljava/lang/Object;
.source "Nengo.java"

# interfaces
.implements Lnet/time4j/format/TextElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/Nengo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/calendar/Nengo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final SINGLETON:Lnet/time4j/calendar/Nengo$Element;

.field private static final serialVersionUID:J = -0xf4192b70637e210L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1367
    const-class v0, Lnet/time4j/calendar/Nengo;

    .line 1372
    new-instance v0, Lnet/time4j/calendar/Nengo$Element;

    invoke-direct {v0}, Lnet/time4j/calendar/Nengo$Element;-><init>()V

    sput-object v0, Lnet/time4j/calendar/Nengo$Element;->SINGLETON:Lnet/time4j/calendar/Nengo$Element;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1655
    sget-object v0, Lnet/time4j/calendar/Nengo$Element;->SINGLETON:Lnet/time4j/calendar/Nengo$Element;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1367
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/Nengo$Element;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 6

    .line 1590
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/Nengo;

    .line 1591
    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/Nengo;

    .line 1593
    invoke-static {p1}, Lnet/time4j/calendar/Nengo;->access$1300(Lnet/time4j/calendar/Nengo;)J

    move-result-wide v0

    invoke-static {p2}, Lnet/time4j/calendar/Nengo;->access$1300(Lnet/time4j/calendar/Nengo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 1595
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/Nengo;->access$1300(Lnet/time4j/calendar/Nengo;)J

    move-result-wide v2

    invoke-static {p2}, Lnet/time4j/calendar/Nengo;->access$1300(Lnet/time4j/calendar/Nengo;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    .line 1597
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/Nengo;->access$200(Lnet/time4j/calendar/Nengo;)B

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_3

    .line 1598
    invoke-static {p2}, Lnet/time4j/calendar/Nengo;->access$200(Lnet/time4j/calendar/Nengo;)B

    move-result p1

    if-ne p1, v2, :cond_2

    move v2, v0

    :cond_2
    return v2

    .line 1600
    :cond_3
    invoke-static {p2}, Lnet/time4j/calendar/Nengo;->access$200(Lnet/time4j/calendar/Nengo;)B

    move-result p1

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    return v1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 1367
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo$Element;->getDefaultMaximum()Lnet/time4j/calendar/Nengo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/calendar/Nengo;
    .locals 2

    .line 1615
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1400()[Lnet/time4j/calendar/Nengo;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1400()[Lnet/time4j/calendar/Nengo;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 1367
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo$Element;->getDefaultMinimum()Lnet/time4j/calendar/Nengo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/calendar/Nengo;
    .locals 2

    .line 1608
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1400()[Lnet/time4j/calendar/Nengo;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1644
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_era"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1645
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo$Element;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
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
            "Lnet/time4j/calendar/Nengo;",
            ">;"
        }
    .end annotation

    .line 1573
    const-class v0, Lnet/time4j/calendar/Nengo;

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

    const-string v0, "ERA"

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1367
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/Nengo$Element;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/Nengo;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1405
    sget-object v3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v2, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 1406
    sget-object v4, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {v2, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/TextWidth;

    const-string v5, "japanese"

    .line 1407
    invoke-static {v5, v3}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v5

    invoke-virtual {v5}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v5

    .line 1408
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 1410
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    if-lt v6, v7, :cond_0

    .line 1411
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v8

    .line 1415
    :cond_0
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ru"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v0, v6}, Lnet/time4j/calendar/Nengo;->access$500(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v6}, Lnet/time4j/calendar/Nengo;->hepburn(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v7, 0x0

    move v10, v7

    .line 1419
    :goto_1
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$600()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_4

    .line 1420
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$600()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v10

    .line 1421
    sget-object v12, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne v4, v12, :cond_2

    .line 1422
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_n"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1424
    :cond_2
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1425
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1426
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$700()[Lnet/time4j/calendar/Nengo;

    move-result-object v5

    aget-object v5, v5, v10

    .line 1427
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 1428
    sget-object v11, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-eq v4, v11, :cond_5

    sget-object v4, Lnet/time4j/calendar/Nengo;->SHOWA:Lnet/time4j/calendar/Nengo;

    if-eq v5, v4, :cond_5

    add-int/2addr v6, v10

    .line 1429
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v5

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    move v10, v7

    move-object v5, v8

    .line 1437
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-ge v4, v12, :cond_7

    if-eqz v5, :cond_6

    add-int/2addr v6, v11

    .line 1439
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_6
    return-object v5

    .line 1446
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 1448
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ja"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x4

    if-eqz v13, :cond_c

    .line 1449
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v14, :cond_8

    move v3, v14

    goto :goto_2

    :cond_8
    move v3, v12

    .line 1450
    :goto_2
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1451
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$800()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/time4j/calendar/Nengo;

    if-nez v13, :cond_9

    if-ne v3, v14, :cond_9

    .line 1453
    invoke-virtual {v0, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1454
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$800()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lnet/time4j/calendar/Nengo;

    :cond_9
    if-eqz v13, :cond_b

    if-ne v13, v5, :cond_a

    move-object v5, v8

    .line 1461
    :cond_a
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_b
    move-object v9, v8

    goto :goto_4

    .line 1463
    :cond_c
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    const-string v15, "zh"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1464
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v14, :cond_d

    move v3, v14

    goto :goto_3

    :cond_d
    move v3, v12

    .line 1465
    :goto_3
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1466
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$900()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/time4j/calendar/Nengo;

    if-nez v13, :cond_e

    if-ne v3, v14, :cond_e

    .line 1468
    invoke-virtual {v0, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1469
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$900()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lnet/time4j/calendar/Nengo;

    :cond_e
    if-eqz v13, :cond_b

    if-ne v13, v5, :cond_f

    move-object v5, v8

    .line 1476
    :cond_f
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    .line 1478
    :cond_10
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v12, "ko"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1479
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1000()Lnet/time4j/calendar/Nengo$TST;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lnet/time4j/calendar/Nengo$TST;->longestPrefixOf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v9

    .line 1480
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1000()Lnet/time4j/calendar/Nengo$TST;

    move-result-object v0

    invoke-virtual {v0, v9}, Lnet/time4j/calendar/Nengo$TST;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_4
    move v0, v7

    goto :goto_6

    .line 1482
    :cond_11
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "\u041f\u0435\u0440\u0438\u043e\u0434 "

    .line 1483
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x7

    if-eqz v3, :cond_12

    .line 1484
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_12
    move v4, v7

    .line 1487
    :goto_5
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1100()Lnet/time4j/calendar/Nengo$TST;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lnet/time4j/calendar/Nengo$TST;->longestPrefixOf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v9

    .line 1488
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1100()Lnet/time4j/calendar/Nengo$TST;

    move-result-object v0

    invoke-virtual {v0, v9}, Lnet/time4j/calendar/Nengo$TST;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move/from16 v16, v4

    move-object v4, v0

    move/from16 v0, v16

    goto :goto_6

    .line 1491
    :cond_13
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1200()Lnet/time4j/calendar/Nengo$TST;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lnet/time4j/calendar/Nengo$TST;->longestPrefixOf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v9

    .line 1492
    invoke-static {}, Lnet/time4j/calendar/Nengo;->access$1200()Lnet/time4j/calendar/Nengo$TST;

    move-result-object v0

    invoke-virtual {v0, v9}, Lnet/time4j/calendar/Nengo$TST;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    .line 1496
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1e

    if-nez v9, :cond_14

    goto/16 :goto_9

    .line 1507
    :cond_14
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v0

    if-ge v10, v9, :cond_15

    move-object v5, v8

    goto :goto_7

    :cond_15
    if-le v10, v9, :cond_16

    add-int/2addr v6, v10

    .line 1512
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v5

    :cond_16
    :goto_7
    if-ne v3, v11, :cond_18

    .line 1519
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/Nengo;

    if-eqz v5, :cond_17

    if-ne v0, v5, :cond_18

    :cond_17
    add-int/2addr v6, v9

    .line 1521
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v0

    .line 1527
    :cond_18
    sget-object v0, Lnet/time4j/calendar/Nengo;->SELECTOR:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/calendar/Nengo$Selector;->OFFICIAL:Lnet/time4j/calendar/Nengo$Selector;

    invoke-interface {v2, v0, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/Nengo$Selector;

    .line 1528
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v5, :cond_19

    .line 1530
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1531
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    :cond_19
    new-instance v4, Lnet/time4j/calendar/Nengo$Element$1;

    move-object/from16 v12, p0

    invoke-direct {v4, v12}, Lnet/time4j/calendar/Nengo$Element$1;-><init>(Lnet/time4j/calendar/Nengo$Element;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1542
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1544
    :cond_1a
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1545
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/calendar/Nengo;

    .line 1546
    invoke-virtual {v5, v0}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1547
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 1551
    :cond_1b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_1c

    add-int/2addr v6, v9

    .line 1552
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1553
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/Nengo;

    return-object v0

    .line 1554
    :cond_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v11, :cond_1d

    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {v2, v0, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v0

    if-nez v0, :cond_1d

    add-int/2addr v6, v9

    .line 1555
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1556
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/Nengo;

    return-object v0

    :cond_1d
    return-object v8

    :cond_1e
    :goto_9
    move-object/from16 v12, p0

    if-nez v5, :cond_1f

    return-object v8

    :cond_1f
    add-int/2addr v6, v10

    .line 1502
    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v5
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 1392
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 1393
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/TextWidth;

    .line 1394
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/Nengo;

    invoke-virtual {p1, v0, p3}, Lnet/time4j/calendar/Nengo;->getDisplayName(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
