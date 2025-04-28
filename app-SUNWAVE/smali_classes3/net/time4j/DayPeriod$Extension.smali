.class Lnet/time4j/DayPeriod$Extension;
.super Ljava/lang/Object;
.source "DayPeriod.java"

# interfaces
.implements Lnet/time4j/engine/ChronoExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/DayPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Extension"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static from(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/DayPeriod;
    .locals 2

    .line 747
    invoke-static {}, Lnet/time4j/DayPeriod;->access$000()Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-static {}, Lnet/time4j/DayPeriod;->access$000()Lnet/time4j/engine/AttributeKey;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/DayPeriod;

    return-object p0

    .line 751
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_TYPE:Lnet/time4j/engine/AttributeKey;

    const-string v1, "iso8601"

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lnet/time4j/DayPeriod;->of(Ljava/util/Locale;Ljava/lang/String;)Lnet/time4j/DayPeriod;

    move-result-object p0

    return-object p0
.end method

.method private static getHour12(Lnet/time4j/engine/ChronoEntity;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)I"
        }
    .end annotation

    .line 732
    sget-object v0, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    sget-object v0, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 737
    :cond_0
    sget-object v0, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    sget-object v0, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public accept(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 602
    const-class v0, Lnet/time4j/PlainTime;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public canResolve(Lnet/time4j/engine/ChronoElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 727
    instance-of p1, p1, Lnet/time4j/DayPeriod$Element;

    return p1
.end method

.method public getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 610
    invoke-static {p1, p2}, Lnet/time4j/DayPeriod$Extension;->from(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/DayPeriod;

    move-result-object p1

    .line 611
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 612
    new-instance v1, Lnet/time4j/DayPeriod$Element;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lnet/time4j/DayPeriod$Element;-><init>(ZLnet/time4j/DayPeriod;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-static {}, Lnet/time4j/DayPeriod;->access$000()Lnet/time4j/engine/AttributeKey;

    move-result-object v1

    invoke-interface {p2, v1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 614
    new-instance p2, Lnet/time4j/DayPeriod$Element;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p1}, Lnet/time4j/DayPeriod$Element;-><init>(ZLnet/time4j/DayPeriod;)V

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lnet/time4j/engine/ChronoEntity;Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoEntity;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 625
    sget-object v1, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    .line 626
    invoke-virtual {v0, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    .line 627
    invoke-virtual {v0, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    .line 628
    invoke-virtual {v0, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_DAY:Lnet/time4j/AdjustableElement;

    .line 629
    invoke-virtual {v0, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_b

    .line 634
    :cond_0
    invoke-static/range {p2 .. p3}, Lnet/time4j/DayPeriod$Extension;->from(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/DayPeriod;

    move-result-object v1

    .line 635
    new-instance v2, Lnet/time4j/DayPeriod$Element;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lnet/time4j/DayPeriod$Element;-><init>(ZLnet/time4j/DayPeriod;)V

    .line 637
    invoke-virtual {v0, v2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v4

    const-string v5, "midnight"

    const/4 v6, 0x1

    if-eqz v4, :cond_14

    .line 638
    invoke-virtual {v0, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move v8, v3

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x7c

    .line 644
    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 647
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {v4, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v10, v10, 0x1

    add-int/2addr v8, v6

    .line 654
    invoke-static {v1}, Lnet/time4j/DayPeriod;->access$100(Lnet/time4j/DayPeriod;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-nez v9, :cond_3

    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 656
    sget-object v3, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    :goto_2
    move-object v9, v3

    goto/16 :goto_8

    :cond_2
    const-string v12, "noon"

    .line 658
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 659
    sget-object v3, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    goto :goto_2

    .line 664
    :cond_3
    invoke-static {v1}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/time4j/PlainTime;

    .line 665
    invoke-static {v1}, Lnet/time4j/DayPeriod;->access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 667
    invoke-static/range {p1 .. p1}, Lnet/time4j/DayPeriod$Extension;->getHour12(Lnet/time4j/engine/ChronoEntity;)I

    move-result v14

    .line 668
    invoke-virtual {v1, v13}, Lnet/time4j/DayPeriod;->getEnd(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object v15

    .line 672
    invoke-virtual {v13}, Lnet/time4j/PlainTime;->getHour()I

    move-result v7

    const/16 v6, 0xc

    if-lt v7, v6, :cond_7

    .line 673
    invoke-virtual {v15, v13}, Lnet/time4j/PlainTime;->isAfter(Lnet/time4j/PlainTime;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object v6

    invoke-virtual {v15, v6}, Lnet/time4j/PlainTime;->isSimultaneous(Lnet/time4j/PlainTime;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    if-eq v14, v11, :cond_a

    add-int/lit8 v6, v14, 0xc

    .line 676
    invoke-virtual {v13}, Lnet/time4j/PlainTime;->getHour()I

    move-result v7

    if-lt v6, v7, :cond_5

    sget-object v6, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    goto :goto_5

    :cond_5
    sget-object v6, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    goto :goto_5

    .line 674
    :cond_6
    :goto_4
    sget-object v6, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    goto :goto_5

    .line 678
    :cond_7
    invoke-static {v6}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object v6

    invoke-virtual {v15, v6}, Lnet/time4j/PlainTime;->isAfter(Lnet/time4j/PlainTime;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 679
    sget-object v6, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    goto :goto_5

    :cond_8
    if-eq v14, v11, :cond_a

    .line 681
    invoke-virtual {v13}, Lnet/time4j/PlainTime;->getHour()I

    move-result v6

    if-lt v14, v6, :cond_9

    sget-object v6, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    goto :goto_5

    :cond_9
    sget-object v6, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_11

    if-eqz v9, :cond_10

    if-eq v9, v6, :cond_10

    if-ne v14, v11, :cond_c

    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    const-string v6, "night"

    .line 687
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x6

    if-eqz v6, :cond_e

    if-ge v14, v7, :cond_d

    .line 688
    sget-object v6, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    goto :goto_6

    :cond_d
    sget-object v6, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    goto :goto_6

    :cond_e
    const-string v6, "afternoon"

    .line 689
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-ge v14, v7, :cond_f

    .line 690
    sget-object v6, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    goto :goto_6

    :cond_f
    sget-object v6, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    :cond_10
    :goto_6
    move-object v9, v6

    :cond_11
    :goto_7
    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_12
    :goto_8
    if-gtz v10, :cond_13

    if-eqz v9, :cond_17

    .line 703
    sget-object v1, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    invoke-virtual {v0, v1, v9}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    const/4 v3, 0x1

    if-le v8, v3, :cond_17

    const/4 v1, 0x0

    .line 705
    invoke-virtual {v0, v2, v1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    goto :goto_b

    :cond_13
    move v3, v10

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_14
    move v3, v6

    .line 709
    new-instance v2, Lnet/time4j/DayPeriod$Element;

    invoke-direct {v2, v3, v1}, Lnet/time4j/DayPeriod$Element;-><init>(ZLnet/time4j/DayPeriod;)V

    .line 711
    invoke-virtual {v0, v2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 712
    invoke-virtual {v0, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "am"

    .line 713
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_9

    .line 716
    :cond_15
    sget-object v1, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    sget-object v3, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    invoke-virtual {v0, v1, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    goto :goto_a

    .line 714
    :cond_16
    :goto_9
    sget-object v1, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    sget-object v3, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    invoke-virtual {v0, v1, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    :goto_a
    const/4 v1, 0x0

    .line 718
    invoke-virtual {v0, v2, v1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    :cond_17
    :goto_b
    return-object v0
.end method
