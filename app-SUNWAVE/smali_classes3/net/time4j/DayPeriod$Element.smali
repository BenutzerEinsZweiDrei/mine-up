.class Lnet/time4j/DayPeriod$Element;
.super Lnet/time4j/engine/BasicElement;
.source "DayPeriod.java"

# interfaces
.implements Lnet/time4j/format/TextElement;
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/DayPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Ljava/lang/String;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Ljava/lang/String;",
        ">;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/engine/ChronoEntity<",
        "*>;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4d9395be98365580L


# instance fields
.field private final transient dayPeriod:Lnet/time4j/DayPeriod;

.field private final transient fixed:Z


# direct methods
.method constructor <init>(ZLjava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .line 775
    invoke-static {p2, p3}, Lnet/time4j/DayPeriod;->of(Ljava/util/Locale;Ljava/lang/String;)Lnet/time4j/DayPeriod;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/time4j/DayPeriod$Element;-><init>(ZLnet/time4j/DayPeriod;)V

    return-void
.end method

.method constructor <init>(ZLnet/time4j/DayPeriod;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "FIXED_DAY_PERIOD"

    goto :goto_0

    :cond_0
    const-string v0, "APPROXIMATE_DAY_PERIOD"

    .line 783
    :goto_0
    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    .line 785
    iput-boolean p1, p0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    .line 786
    iput-object p2, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    return-void
.end method

.method private compareIgnoreCase(CC)Z
    .locals 3

    const/16 v0, 0x7a

    const/16 v1, 0x41

    const/16 v2, 0x61

    if-lt p1, v2, :cond_0

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x61

    add-int/2addr p1, v1

    int-to-char p1, p1

    :cond_0
    if-lt p2, v2, :cond_1

    if-gt p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x61

    add-int/2addr p2, v1

    int-to-char p2, p2

    :cond_1
    if-lt p1, v1, :cond_3

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_3

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1111
    :cond_3
    invoke-virtual {p0}, Lnet/time4j/DayPeriod$Element;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1112
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1113
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 1114
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 986
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 989
    iget-boolean v5, v0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    const-string v6, "pm"

    const-string v7, "am"

    const-string v8, "noon"

    const-string v9, "midnight"

    if-eqz v5, :cond_0

    .line 990
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 995
    :cond_0
    new-instance v5, Ljava/util/LinkedHashSet;

    iget-object v10, v0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v10}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 996
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 997
    iget-object v5, v0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v5}, Lnet/time4j/DayPeriod;->access$100(Lnet/time4j/DayPeriod;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 998
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_1
    :goto_0
    iget-object v5, v0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v5}, Lnet/time4j/DayPeriod;->access$100(Lnet/time4j/DayPeriod;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lnet/time4j/DayPeriod$Element;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/time4j/DayPeriod$Element;->getCalendarType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lnet/time4j/DayPeriod;->access$400(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 1007
    :goto_1
    sget-object v11, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v12, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {v2, v11, v12}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/time4j/format/TextWidth;

    .line 1008
    sget-object v12, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1009
    invoke-interface {v2, v12, v13}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1010
    sget-object v13, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1011
    invoke-interface {v2, v13, v14}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1013
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v13

    .line 1014
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 1017
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v4

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    .line 1020
    iget-object v1, v0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v1}, Lnet/time4j/DayPeriod;->access$100(Lnet/time4j/DayPeriod;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1022
    iget-boolean v1, v0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    if-eqz v1, :cond_4

    .line 1023
    invoke-static {v5, v11, v3, v4}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1025
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1026
    invoke-static {v5, v11, v3, v7}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1027
    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1028
    invoke-static {v5, v11, v3, v6}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1032
    :cond_4
    invoke-static {v5, v11, v3, v4}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    :cond_5
    :goto_3
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1035
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_13

    .line 1043
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v16, v5

    move/from16 v19, v13

    const/4 v5, 0x0

    const/16 v18, 0x1

    :goto_5
    if-eqz v18, :cond_c

    if-ge v5, v3, :cond_c

    move-object/from16 v20, v6

    add-int v6, v13, v5

    if-lt v6, v14, :cond_8

    move-object/from16 v21, v7

    const/16 v18, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v21, v7

    move-object/from16 v7, p1

    .line 1050
    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1051
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v12, :cond_9

    .line 1054
    invoke-direct {v0, v6, v7}, Lnet/time4j/DayPeriod$Element;->compareIgnoreCase(CC)Z

    move-result v6

    goto :goto_6

    :cond_9
    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_b

    add-int/lit8 v19, v19, 0x1

    :cond_b
    move/from16 v18, v6

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    goto :goto_5

    :cond_c
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    const-string v1, "|"

    if-nez v2, :cond_10

    const/4 v5, 0x1

    if-ne v3, v5, :cond_d

    goto :goto_8

    :cond_d
    if-eqz v18, :cond_14

    if-nez v10, :cond_e

    goto :goto_9

    .line 1080
    :cond_e
    iget-boolean v5, v0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    if-eqz v5, :cond_f

    move v15, v3

    goto :goto_a

    .line 1083
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move v15, v3

    goto :goto_b

    :cond_10
    :goto_8
    sub-int v3, v19, v13

    if-ge v15, v3, :cond_11

    :goto_9
    move v15, v3

    move-object v10, v4

    goto :goto_b

    :cond_11
    if-eqz v10, :cond_14

    if-ne v15, v3, :cond_14

    .line 1070
    iget-boolean v3, v0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    if-eqz v3, :cond_12

    :goto_a
    const/4 v10, 0x0

    goto :goto_b

    .line 1073
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    :cond_13
    move-object/from16 v16, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    :cond_14
    :goto_b
    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    goto/16 :goto_2

    :cond_15
    if-nez v10, :cond_16

    move-object/from16 v1, p2

    .line 1090
    invoke-virtual {v1, v13}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_c

    :cond_16
    move-object/from16 v1, p2

    add-int/2addr v13, v15

    .line 1092
    invoke-virtual {v1, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_c
    return-object v10
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 934
    new-instance v0, Lnet/time4j/SPX;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lnet/time4j/SPX;-><init>(Ljava/lang/Object;I)V

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 842
    sget-object v0, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

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

    .line 850
    check-cast p1, Lnet/time4j/DayPeriod$Element;

    .line 851
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    iget-object p1, p1, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-virtual {v0, p1}, Lnet/time4j/DayPeriod;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method getCalendarType()Ljava/lang/String;
    .locals 1

    .line 926
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$700(Lnet/time4j/DayPeriod;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 755
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/DayPeriod$Element;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 755
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/DayPeriod$Element;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method getCodeMap()Ljava/lang/Object;
    .locals 1

    .line 930
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lnet/time4j/DayPeriod$Element;->getDefaultMaximum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Ljava/lang/String;
    .locals 2

    .line 813
    iget-boolean v0, p0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    if-eqz v0, :cond_0

    const-string v0, "pm"

    return-object v0

    .line 816
    :cond_0
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainTime;

    .line 817
    iget-object v1, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v1}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lnet/time4j/DayPeriod$Element;->getDefaultMinimum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/String;
    .locals 2

    .line 804
    iget-boolean v0, p0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    if-eqz v0, :cond_0

    const-string v0, "am"

    return-object v0

    .line 807
    :cond_0
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainTime;

    .line 808
    iget-object v1, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v1}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .line 922
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$600(Lnet/time4j/DayPeriod;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 755
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/DayPeriod$Element;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lnet/time4j/DayPeriod$Element;->getDefaultMaximum()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 755
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/DayPeriod$Element;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 882
    invoke-virtual {p0}, Lnet/time4j/DayPeriod$Element;->getDefaultMinimum()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSymbol()C
    .locals 1

    .line 799
    iget-boolean v0, p0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    :goto_0
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 794
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 755
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/DayPeriod$Element;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 856
    sget-object v0, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    .line 857
    iget-boolean v0, p0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    if-eqz v0, :cond_0

    .line 858
    invoke-static {p1}, Lnet/time4j/DayPeriod;->access$300(Lnet/time4j/PlainTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 860
    :cond_0
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$100(Lnet/time4j/DayPeriod;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    invoke-virtual {p0}, Lnet/time4j/DayPeriod$Element;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/DayPeriod$Element;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/DayPeriod;->access$400(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 863
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->isMidnight()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "midnight"

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    .line 865
    invoke-static {v2}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/time4j/PlainTime;->isSimultaneous(Lnet/time4j/PlainTime;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "noon"

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 869
    sget-object v2, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {v0, v2, v3, v1}, Lnet/time4j/DayPeriod;->access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 870
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 875
    :cond_3
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-virtual {v0, p1}, Lnet/time4j/DayPeriod;->getStart(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object p1

    .line 876
    iget-object v0, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-static {v0}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isFixed()Z
    .locals 1

    .line 918
    iget-boolean v0, p0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 755
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/DayPeriod$Element;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 755
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/DayPeriod$Element;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/String;
    .locals 5

    .line 965
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 966
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/OutputContext;

    .line 967
    invoke-direct {p0, p1, p2, p3, v1}, Lnet/time4j/DayPeriod$Element;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 969
    sget-object v3, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, -0x1

    .line 970
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 971
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 972
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne v1, v0, :cond_0

    sget-object v0, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    .line 973
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/time4j/DayPeriod$Element;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 947
    sget-object v0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/TextWidth;

    .line 948
    sget-object v1, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/OutputContext;

    .line 950
    iget-boolean v1, p0, Lnet/time4j/DayPeriod$Element;->fixed:Z

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-virtual {v1, v0, p3}, Lnet/time4j/DayPeriod;->fixed(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p3

    invoke-interface {p3, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 953
    :cond_0
    iget-object v1, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-virtual {v1, v0, p3}, Lnet/time4j/DayPeriod;->approximate(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p3

    invoke-interface {p3, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 955
    :goto_0
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 833
    invoke-virtual {p0}, Lnet/time4j/DayPeriod$Element;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    iget-object v1, p0, Lnet/time4j/DayPeriod$Element;->dayPeriod:Lnet/time4j/DayPeriod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 755
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/DayPeriod$Element;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/String;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    .line 904
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Day period element cannot be set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
