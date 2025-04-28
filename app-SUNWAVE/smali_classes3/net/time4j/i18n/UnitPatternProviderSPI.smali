.class public final Lnet/time4j/i18n/UnitPatternProviderSPI;
.super Ljava/lang/Object;
.source "UnitPatternProviderSPI.java"

# interfaces
.implements Lnet/time4j/format/RelativeTimeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildKey(CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 572
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    sget-object p0, Lnet/time4j/i18n/UnitPatternProviderSPI$1;->$SwitchMap$net$time4j$format$TextWidth:[I

    invoke-virtual {p1}, Lnet/time4j/format/TextWidth;->ordinal()I

    move-result v2

    aget p0, p0, v2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/16 p0, 0x6e

    .line 583
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 586
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x73

    .line 580
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p0, 0x77

    .line 576
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    :goto_0
    invoke-virtual {p2}, Lnet/time4j/format/PluralCategory;->ordinal()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildKey(CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 600
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p0, 0x2b

    goto :goto_0

    :cond_0
    const/16 p0, 0x2d

    .line 601
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p2}, Lnet/time4j/format/PluralCategory;->ordinal()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildListKey(Lnet/time4j/format/TextWidth;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    sget-object v1, Lnet/time4j/i18n/UnitPatternProviderSPI$1;->$SwitchMap$net$time4j$format$TextWidth:[I

    invoke-virtual {p0}, Lnet/time4j/format/TextWidth;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/16 p0, 0x6e

    .line 623
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 626
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p0, 0x73

    .line 620
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p0, 0x77

    .line 616
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p0, 0x2d

    .line 629
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLabel(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 540
    invoke-static {p1}, Lnet/time4j/i18n/PropertyBundle;->getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    const-string v3, "i18n/reltime/relpattern"

    .line 544
    invoke-static {v3, v2}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v3

    :goto_1
    if-eqz v0, :cond_3

    .line 547
    invoke-virtual {v3}, Lnet/time4j/i18n/PropertyBundle;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-object v1, v3

    goto :goto_0

    .line 555
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lnet/time4j/i18n/PropertyBundle;->getInternalKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    invoke-virtual {v3, p2}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method private getPattern(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 5

    .line 496
    invoke-static {p1}, Lnet/time4j/i18n/PropertyBundle;->getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 497
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "i18n/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {v3, v2}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v3

    :goto_1
    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {v3}, Lnet/time4j/i18n/PropertyBundle;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-object v1, v3

    goto :goto_0

    .line 511
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lnet/time4j/i18n/PropertyBundle;->getInternalKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    invoke-virtual {v3, p3}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 513
    :cond_4
    sget-object v2, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    if-eq p5, v2, :cond_0

    .line 515
    invoke-virtual {v3}, Lnet/time4j/i18n/PropertyBundle;->getInternalKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v3, p4}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 522
    :cond_5
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Can\'t find resource for bundle "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".properties, key "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".properties"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2, p3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 6

    .line 478
    invoke-static {p2, p3, p4}, Lnet/time4j/i18n/UnitPatternProviderSPI;->buildKey(CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    .line 479
    invoke-static {p2, p3, v0}, Lnet/time4j/i18n/UnitPatternProviderSPI;->buildKey(CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "reltime/relpattern"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    .line 475
    invoke-direct/range {v0 .. v5}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getPattern(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 6

    .line 461
    invoke-static {p2, p3, p4}, Lnet/time4j/i18n/UnitPatternProviderSPI;->buildKey(CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    .line 462
    invoke-static {p2, p3, v0}, Lnet/time4j/i18n/UnitPatternProviderSPI;->buildKey(CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "units/upattern"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    .line 458
    invoke-direct/range {v0 .. v5}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getPattern(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static replace(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 6

    .line 639
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 641
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 642
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_0

    add-int/lit8 v3, v1, 0x2

    .line 643
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_0

    .line 645
    new-instance p1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xa

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 646
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, v3, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getDayPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x44

    .line 94
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDayPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x44

    .line 204
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHourPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x48

    .line 105
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHourPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x48

    .line 215
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getListPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;I)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x2

    if-lt p3, v0, :cond_8

    const-string v1, "i18n/units/upattern"

    .line 395
    invoke-static {v1, p1}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p1

    .line 396
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lnet/time4j/i18n/UnitPatternProviderSPI;->buildListKey(Lnet/time4j/format/TextWidth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {p1, v1}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {p1, v1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "end"

    .line 402
    invoke-static {p2, v1}, Lnet/time4j/i18n/UnitPatternProviderSPI;->buildListKey(Lnet/time4j/format/TextWidth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne p3, v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "start"

    .line 408
    invoke-static {p2, v2}, Lnet/time4j/i18n/UnitPatternProviderSPI;->buildListKey(Lnet/time4j/format/TextWidth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "middle"

    .line 409
    invoke-static {p2, v3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->buildListKey(Lnet/time4j/format/TextWidth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p3, -0x1

    const/16 v3, 0x31

    .line 411
    invoke-static {v1, v3, p2}, Lnet/time4j/i18n/UnitPatternProviderSPI;->replace(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v1, p3, -0x2

    const/16 v4, 0x30

    .line 412
    invoke-static {p2, v4, v1}, Lnet/time4j/i18n/UnitPatternProviderSPI;->replace(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, p3, -0x3

    move v1, p3

    move-object p3, p2

    :goto_0
    if-ltz v1, :cond_7

    if-nez v1, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, p1

    .line 420
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    :goto_2
    const/4 v8, -0x1

    if-ltz v7, :cond_4

    if-lt v7, v0, :cond_3

    .line 425
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7d

    if-ne v9, v10, :cond_3

    add-int/lit8 v9, v7, -0x1

    .line 426
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_3

    add-int/lit8 v9, v7, -0x2

    .line 427
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x7b

    if-ne v10, v11, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_4
    move v9, v8

    :goto_3
    if-le v9, v8, :cond_5

    .line 435
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v6, v6, -0x3

    if-ge v9, v6, :cond_5

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5
    if-lez v1, :cond_6

    .line 443
    invoke-static {p2, v4, v1}, Lnet/time4j/i18n/UnitPatternProviderSPI;->replace(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object p3

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    return-object p2

    .line 392
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size must be greater than 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMicroPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x36

    .line 149
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMilliPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x33

    .line 138
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMinutePattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4e

    .line 116
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMinutePattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4e

    .line 226
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMonthPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4d

    .line 72
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMonthPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4d

    .line 182
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNanoPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x39

    .line 160
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNowWord(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 244
    sget-object v5, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    const-string v2, "reltime/relpattern"

    const-string v3, "now"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getPattern(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSecondPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x53

    .line 127
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSecondPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x53

    .line 237
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortDayPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    .line 293
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortHourPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x68

    .line 304
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortMinutePattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6e

    .line 315
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortMonthPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6d

    .line 271
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortSecondPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x73

    .line 326
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortWeekPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x77

    .line 282
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortYearPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x79

    .line 260
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTodayWord(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 345
    sget-object v5, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    const-string v2, "reltime/relpattern"

    const-string v3, "today"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getPattern(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTomorrowWord(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 357
    sget-object v5, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    const-string v2, "reltime/relpattern"

    const-string v3, "tomorrow"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getPattern(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWeekPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x57

    .line 83
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWeekPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x57

    .line 193
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getYearPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x59

    .line 61
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getUnitPattern(Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getYearPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x59

    .line 171
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getRelativePattern(Ljava/util/Locale;CZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getYesterdayWord(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 333
    sget-object v5, Lnet/time4j/format/PluralCategory;->OTHER:Lnet/time4j/format/PluralCategory;

    const-string v2, "reltime/relpattern"

    const-string v3, "yesterday"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getPattern(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public labelForLast(Lnet/time4j/Weekday;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-virtual {p1}, Lnet/time4j/Weekday;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-direct {p0, p2, p1}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getLabel(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public labelForNext(Lnet/time4j/Weekday;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    invoke-virtual {p1}, Lnet/time4j/Weekday;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "+"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-direct {p0, p2, p1}, Lnet/time4j/i18n/UnitPatternProviderSPI;->getLabel(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
