.class public final Lnet/time4j/i18n/IsoTextProviderSPI;
.super Ljava/lang/Object;
.source "IsoTextProviderSPI.java"

# interfaces
.implements Lnet/time4j/format/TextProvider;
.implements Lnet/time4j/format/internal/ExtendedPatterns;


# static fields
.field private static final ISO_PATH:Ljava/lang/String; = "calendar/names/iso8601/iso8601"

.field private static final LANGUAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCALES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "calendar/names/iso8601/iso8601"

    invoke-static {v1, v0}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    const-string v1, "languages"

    .line 60
    invoke-virtual {v0, v1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 62
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 63
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/i18n/IsoTextProviderSPI;->LANGUAGES:Ljava/util/Set;

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lnet/time4j/i18n/LanguageMatch;->values()[Lnet/time4j/i18n/LanguageMatch;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 73
    new-instance v5, Ljava/util/Locale;

    invoke-virtual {v4}, Lnet/time4j/i18n/LanguageMatch;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 76
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/i18n/IsoTextProviderSPI;->LOCALES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static eras(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 412
    invoke-static {p0}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 415
    sget-object v2, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    if-ne p1, v2, :cond_0

    .line 416
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    :cond_0
    const-string v2, "ERA"

    .line 419
    invoke-static {v0, v2}, Lnet/time4j/i18n/IsoTextProviderSPI;->getKey(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    sget-object v3, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p1, v3, :cond_1

    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    :cond_1
    move-object v4, v1

    const/4 v1, 0x5

    .line 421
    sget-object v5, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lnet/time4j/i18n/IsoTextProviderSPI;->lookupBundle(Lnet/time4j/i18n/PropertyBundle;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 424
    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-eq p1, v0, :cond_2

    .line 425
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-static {p0, p1}, Lnet/time4j/i18n/IsoTextProviderSPI;->eras(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    .line 430
    :cond_3
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find ISO-8601-resource for era and locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lnet/time4j/i18n/IsoTextProviderSPI;

    .line 432
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private static getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const-string v0, "calendar/names/iso8601/iso8601"

    .line 485
    invoke-static {v0, p0}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    return-object p0
.end method

.method private static getKey(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "useShortKeys"

    .line 559
    invoke-virtual {p0, v0}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {p0, v0}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 563
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method static getPrimaryLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    sget-object v0, Lnet/time4j/i18n/IsoTextProviderSPI;->LANGUAGES:Ljava/util/Set;

    return-object v0
.end method

.method private static lookupBundle(Lnet/time4j/i18n/PropertyBundle;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;I)[Ljava/lang/String;
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p5

    .line 505
    new-array v10, v8, [Ljava/lang/String;

    .line 506
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v11, 0x0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    move v13, v11

    :goto_1
    if-ge v13, v8, :cond_6

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p2

    .line 510
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_2

    .line 514
    invoke-virtual/range {p3 .. p3}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 516
    sget-object v2, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-eq v9, v2, :cond_1

    .line 517
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 520
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 522
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne v9, v1, :cond_3

    const/16 v1, 0x7c

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual/range {p5 .. p5}, Lnet/time4j/format/OutputContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    const/16 v1, 0x29

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int v1, v13, p6

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {v7, v0}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 536
    invoke-virtual {v7, v0}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    if-eqz p4, :cond_5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 538
    invoke-static/range {v0 .. v6}, Lnet/time4j/i18n/IsoTextProviderSPI;->lookupBundle(Lnet/time4j/i18n/PropertyBundle;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 540
    aget-object v0, v0, v13

    aput-object v0, v10, v13

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    return-object v15

    :cond_6
    return-object v10
.end method

.method private static meridiemKey(Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 1

    .line 577
    invoke-virtual {p1}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 578
    sget-object v0, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne p2, v0, :cond_0

    .line 579
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 582
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "P("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")_"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static meridiems(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 446
    invoke-static {p0}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 449
    sget-object v1, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    if-ne p1, v1, :cond_0

    .line 450
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    :cond_0
    const-string v1, "am"

    .line 453
    invoke-static {v1, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->meridiemKey(Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pm"

    .line 454
    invoke-static {v2, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->meridiemKey(Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {v0, v1}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 458
    invoke-virtual {v0, v1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    const/4 p1, 0x1

    .line 459
    invoke-virtual {v0, v2}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    return-object p0

    .line 464
    :cond_1
    sget-object v0, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p2, v0, :cond_3

    .line 465
    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-ne p1, v0, :cond_2

    .line 466
    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->meridiems(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 468
    :cond_2
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->meridiems(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 470
    :cond_3
    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-eq p1, v0, :cond_4

    .line 471
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->meridiems(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 475
    :cond_4
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find ISO-8601-resource for am/pm and locale: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lnet/time4j/i18n/IsoTextProviderSPI;

    .line 477
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private static months(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 283
    invoke-static {p0}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 286
    sget-object v1, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    if-ne p1, v1, :cond_0

    .line 287
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    :cond_0
    const-string v1, "MONTH_OF_YEAR"

    .line 290
    invoke-static {v0, v1}, Lnet/time4j/i18n/IsoTextProviderSPI;->getKey(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xc

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    move-object v5, p2

    .line 291
    invoke-static/range {v0 .. v6}, Lnet/time4j/i18n/IsoTextProviderSPI;->lookupBundle(Lnet/time4j/i18n/PropertyBundle;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 295
    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p2, v1, :cond_1

    .line 296
    sget-object p2, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-eq p1, p2, :cond_4

    .line 297
    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->months(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    sget-object p2, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-ne p1, p2, :cond_2

    .line 301
    sget-object p1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->months(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_2
    sget-object p2, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p1, p2, :cond_4

    .line 303
    sget-object p2, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->months(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    return-object v0

    .line 310
    :cond_5
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find ISO-8601-month for locale: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lnet/time4j/i18n/IsoTextProviderSPI;

    .line 312
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private static quarters(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 327
    invoke-static {p0}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 330
    sget-object v1, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    if-ne p1, v1, :cond_0

    .line 331
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    :cond_0
    const-string v1, "QUARTER_OF_YEAR"

    .line 334
    invoke-static {v0, v1}, Lnet/time4j/i18n/IsoTextProviderSPI;->getKey(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    move-object v5, p2

    .line 335
    invoke-static/range {v0 .. v6}, Lnet/time4j/i18n/IsoTextProviderSPI;->lookupBundle(Lnet/time4j/i18n/PropertyBundle;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 339
    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p2, v1, :cond_1

    .line 340
    sget-object p2, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-eq p1, p2, :cond_4

    .line 341
    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->quarters(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    sget-object p2, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-ne p1, p2, :cond_2

    .line 345
    sget-object p1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->quarters(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_2
    sget-object p2, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p1, p2, :cond_4

    .line 347
    sget-object p2, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->quarters(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    return-object v0

    .line 354
    :cond_5
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find ISO-8601-quarter-of-year for locale: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lnet/time4j/i18n/IsoTextProviderSPI;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private static toChar(Lnet/time4j/format/DisplayMode;)C
    .locals 1

    .line 491
    invoke-virtual {p0}, Lnet/time4j/format/DisplayMode;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    return p0
.end method

.method private static weekdays(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 371
    invoke-static {p0}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "DAY_OF_WEEK"

    .line 374
    invoke-static {v0, v1}, Lnet/time4j/i18n/IsoTextProviderSPI;->getKey(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    move-object v5, p2

    .line 375
    invoke-static/range {v0 .. v6}, Lnet/time4j/i18n/IsoTextProviderSPI;->lookupBundle(Lnet/time4j/i18n/PropertyBundle;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 379
    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p2, v1, :cond_0

    .line 380
    sget-object p2, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-eq p1, p2, :cond_4

    .line 381
    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->weekdays(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_0
    sget-object p2, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-ne p1, p2, :cond_1

    .line 385
    sget-object p1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->weekdays(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_1
    sget-object p2, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    if-ne p1, p2, :cond_2

    .line 387
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->weekdays(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_2
    sget-object p2, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p1, p2, :cond_4

    .line 389
    sget-object p2, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->weekdays(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    return-object v0

    .line 396
    :cond_5
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find ISO-8601-day-of-week for locale: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lnet/time4j/i18n/IsoTextProviderSPI;

    .line 398
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public eras(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;
    .locals 0

    .line 161
    invoke-static {p2, p3}, Lnet/time4j/i18n/IsoTextProviderSPI;->eras(Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .line 113
    sget-object v0, Lnet/time4j/i18n/IsoTextProviderSPI;->LOCALES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method public getDatePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F("

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {p1}, Lnet/time4j/i18n/IsoTextProviderSPI;->toChar(Lnet/time4j/format/DisplayMode;)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ")_d"

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDateTimePattern(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 234
    invoke-virtual {p1, p2}, Lnet/time4j/format/DisplayMode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p1, p2

    .line 238
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "F("

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {p1}, Lnet/time4j/i18n/IsoTextProviderSPI;->toChar(Lnet/time4j/format/DisplayMode;)C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ")_dt"

    .line 241
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p3}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIntervalPattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 250
    invoke-static {p1}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p1

    const-string v0, "I"

    invoke-virtual {p1, v0}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedCalendarTypes()[Ljava/lang/String;
    .locals 1

    const-string v0, "iso8601"

    .line 106
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/i18n/IsoTextProviderSPI;->getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1

    if-eqz p3, :cond_0

    .line 211
    sget-object p3, Lnet/time4j/format/DisplayMode;->FULL:Lnet/time4j/format/DisplayMode;

    if-ne p1, p3, :cond_0

    const-string p1, "F(alt)"

    goto :goto_0

    .line 214
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "F("

    .line 215
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {p1}, Lnet/time4j/i18n/IsoTextProviderSPI;->toChar(Lnet/time4j/format/DisplayMode;)C

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ")_t"

    .line 217
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    :goto_0
    invoke-static {p2}, Lnet/time4j/i18n/IsoTextProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public meridiems(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 173
    invoke-static {p2, p3, p4}, Lnet/time4j/i18n/IsoTextProviderSPI;->meridiems(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;
    .locals 0

    .line 126
    invoke-static {p2, p3, p4}, Lnet/time4j/i18n/IsoTextProviderSPI;->months(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public quarters(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 138
    invoke-static {p2, p3, p4}, Lnet/time4j/i18n/IsoTextProviderSPI;->quarters(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supportsCalendarType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "iso8601"

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public supportsLanguage(Ljava/util/Locale;)Z
    .locals 1

    .line 99
    sget-object v0, Lnet/time4j/i18n/IsoTextProviderSPI;->LANGUAGES:Ljava/util/Set;

    invoke-static {p1}, Lnet/time4j/i18n/LanguageMatch;->getAlias(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "IsoTextProviderSPI"

    return-object v0
.end method

.method public weekdays(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 150
    invoke-static {p2, p3, p4}, Lnet/time4j/i18n/IsoTextProviderSPI;->weekdays(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
