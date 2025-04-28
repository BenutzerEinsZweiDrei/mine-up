.class public final Lnet/time4j/calendar/service/GenericTextProviderSPI;
.super Ljava/lang/Object;
.source "GenericTextProviderSPI.java"

# interfaces
.implements Lnet/time4j/format/TextProvider;


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

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

.field private static final TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    sput-object v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 59
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "calendar/names/generic/generic"

    .line 60
    invoke-static {v1, v0}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    const-string v1, "languages"

    .line 64
    invoke-virtual {v0, v1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 66
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v0, ""

    .line 67
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;->LANGUAGES:Ljava/util/Set;

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;->LOCALES:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "buddhist"

    .line 83
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "chinese"

    .line 84
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "coptic"

    .line 85
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dangi"

    .line 86
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ethiopic"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "frenchrev"

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "hindu"

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "generic"

    .line 90
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "hebrew"

    .line 91
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "indian"

    .line 92
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "islamic"

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "japanese"

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "juche"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "persian"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "roc"

    .line 97
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "vietnam"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;->TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countOfEras(Ljava/lang/String;)I
    .locals 1

    const-string v0, "hindu"

    .line 463
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const-string v0, "ethiopic"

    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "generic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roc"

    .line 469
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "buddhist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "korean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method private static countOfMonths(Ljava/lang/String;)I
    .locals 1

    const-string v0, "coptic"

    .line 457
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ethiopic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "generic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hebrew"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0xd

    :goto_1
    return p0
.end method

.method static getBundle(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calendar/names/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;->LANGUAGES:Ljava/util/Set;

    .line 313
    invoke-static {p1}, Lnet/time4j/i18n/LanguageMatch;->getAlias(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 311
    :goto_0
    invoke-static {p0, p1}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 450
    const-class v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getKey(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "useShortKeys"

    .line 436
    invoke-virtual {p0, v0}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {p0, v0}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static lookupBundle(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;ZI)[Ljava/lang/String;
    .locals 7

    .line 329
    new-array v0, p3, [Ljava/lang/String;

    .line 330
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v1, v2

    :goto_1
    if-ge v1, p3, :cond_8

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    .line 338
    invoke-virtual {p5}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 340
    sget-object v6, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-eq p6, v6, :cond_1

    .line 341
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 344
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 346
    :cond_2
    invoke-virtual {p5}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    sget-object v5, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    const/16 v6, 0x7c

    if-ne p6, v5, :cond_3

    .line 349
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p6}, Lnet/time4j/format/OutputContext;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p7, :cond_4

    .line 353
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "LEAP"

    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    const/16 v5, 0x29

    .line 358
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x5f

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int v5, v1, p8

    .line 360
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_5

    const/4 v5, 0x6

    if-ne v1, v5, :cond_5

    const-string v5, "hebrew"

    .line 361
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x4c

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-virtual {p0, v4}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 368
    invoke-virtual {p0, v4}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p7, :cond_6

    const-string v5, "chinese"

    .line 369
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 370
    invoke-static {v4, p2, p5, p6}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->toLeapForm(Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object v4

    .line 372
    :cond_6
    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 p0, 0x0

    return-object p0

    :cond_8
    return-object v0
.end method

.method private static toLeapForm(Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 2

    const-string v0, "en"

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "i"

    if-eqz v0, :cond_1

    .line 390
    sget-object p1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p2, p1, :cond_0

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 393
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(leap) "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    const-string v0, "de"

    .line 397
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "es"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "fr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "it"

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "ja"

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u958f"

    if-eqz v0, :cond_3

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_3
    const-string v0, "ko"

    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\uc724"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_4
    const-string v0, "zh"

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    const-string v0, "vi"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 416
    sget-object p1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p2, p1, :cond_6

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 419
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p3, p0, :cond_7

    const-string p0, " Nhu\u1eadn"

    goto :goto_0

    :cond_7
    const-string p0, " nhu\u1eadn"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 423
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 400
    :cond_9
    :goto_1
    sget-object p1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p2, p1, :cond_a

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 403
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(i) "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public eras(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;
    .locals 11

    const-string v0, "chinese"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "vietnam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "japanese"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    sget-object p1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne p3, p1, :cond_1

    const-string p1, "M"

    const-string p2, "T"

    const-string p3, "S"

    const-string v0, "H"

    .line 235
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Meiji"

    const-string p2, "Taish\u014d"

    const-string p3, "Sh\u014dwa"

    const-string v0, "Heisei"

    .line 237
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "dangi"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "juche"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 246
    :cond_3
    invoke-static {p1, p2}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v2

    .line 248
    sget-object v0, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    if-ne p3, v0, :cond_4

    .line 249
    sget-object p3, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    .line 256
    :cond_4
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {p1}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->countOfEras(Ljava/lang/String;)I

    move-result v5

    const-string v0, "ERA"

    .line 258
    invoke-static {v2, v0}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->getKey(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v7, p3

    .line 253
    invoke-static/range {v2 .. v10}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->lookupBundle(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;ZI)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 264
    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-eq p3, v1, :cond_5

    .line 265
    sget-object p3, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->eras(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    return-object v0

    .line 269
    :cond_6
    new-instance p1, Ljava/util/MissingResourceException;

    const-class p3, Lnet/time4j/calendar/service/GenericTextProviderSPI;

    .line 271
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 272
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Cannot find calendar resource for era."

    invoke-direct {p1, v0, p3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    const-string v1, "korean"

    .line 240
    invoke-virtual {p0, v1, p2, p3}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->eras(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/String;

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    aget-object p1, p2, v0

    goto :goto_1

    :cond_8
    aget-object p1, p2, p3

    :goto_1
    aput-object p1, v1, v0

    return-object v1

    .line 232
    :cond_9
    :goto_2
    sget-object p1, Lnet/time4j/calendar/service/GenericTextProviderSPI;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .line 136
    sget-object v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;->LOCALES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Locale;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method public getSupportedCalendarTypes()[Ljava/lang/String;
    .locals 2

    .line 129
    sget-object v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;->TYPES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public meridiems(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 287
    sget-object p1, Lnet/time4j/calendar/service/GenericTextProviderSPI;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p1
.end method

.method public months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    const-string v2, "roc"

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "buddhist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "japanese"

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    const-string v9, "7"

    const-string v10, "8"

    const-string v11, "9"

    const-string v12, "10"

    const-string v13, "11"

    const-string v14, "12"

    const-string v15, "13"

    .line 153
    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v2, "dangi"

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "vietnam"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "hindu"

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "indian"

    goto :goto_1

    :cond_3
    const-string v2, "juche"

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    invoke-static/range {p2 .. p2}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/format/TextAccessor;->getTextForms()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_4
    :goto_0
    const-string v0, "chinese"

    :cond_5
    :goto_1
    move-object/from16 v11, p2

    move-object v10, v0

    .line 162
    invoke-static {v10, v11}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v0

    .line 164
    sget-object v2, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    if-ne v1, v2, :cond_6

    .line 165
    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    :cond_6
    move-object v12, v1

    const-string v1, "MONTH_OF_YEAR"

    .line 169
    invoke-static {v0, v1}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->getKey(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->countOfMonths(Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x1

    move-object v1, v10

    move-object v5, v12

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 171
    invoke-static/range {v0 .. v8}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->lookupBundle(Lnet/time4j/i18n/PropertyBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;ZI)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 176
    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne v9, v1, :cond_7

    .line 177
    sget-object v1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-eq v12, v1, :cond_9

    .line 178
    sget-object v5, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 181
    :cond_7
    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-ne v12, v1, :cond_8

    .line 182
    sget-object v4, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v5, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p2

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 183
    :cond_8
    sget-object v1, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    if-ne v12, v1, :cond_9

    .line 184
    sget-object v5, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/time4j/calendar/service/GenericTextProviderSPI;->months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    return-object v0

    .line 190
    :cond_a
    new-instance v0, Ljava/util/MissingResourceException;

    const-class v1, Lnet/time4j/calendar/service/GenericTextProviderSPI;

    .line 192
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot find calendar month."

    invoke-direct {v0, v3, v1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    move-object/from16 v11, p2

    .line 150
    invoke-static/range {p2 .. p2}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/format/TextAccessor;->getTextForms()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public quarters(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 208
    sget-object p1, Lnet/time4j/calendar/service/GenericTextProviderSPI;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p1
.end method

.method public supportsCalendarType(Ljava/lang/String;)Z
    .locals 1

    .line 115
    sget-object v0, Lnet/time4j/calendar/service/GenericTextProviderSPI;->TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public supportsLanguage(Ljava/util/Locale;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "GenericTextProviderSPI"

    return-object v0
.end method

.method public weekdays(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;
    .locals 0

    .line 220
    sget-object p1, Lnet/time4j/calendar/service/GenericTextProviderSPI;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object p1
.end method
