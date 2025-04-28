.class public final Lnet/time4j/i18n/SymbolProviderSPI;
.super Ljava/lang/Object;
.source "SymbolProviderSPI.java"

# interfaces
.implements Lnet/time4j/format/NumberSymbolProvider;


# static fields
.field private static final CLDR_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/format/NumberSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[Ljava/util/Locale;

.field public static final INSTANCE:Lnet/time4j/i18n/SymbolProviderSPI;

.field public static final SUPPORTED_LOCALES:Ljava/util/Set;
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
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Locale;

    .line 48
    sput-object v1, Lnet/time4j/i18n/SymbolProviderSPI;->EMPTY_ARRAY:[Ljava/util/Locale;

    .line 56
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "i18n/numbers/symbol"

    .line 57
    invoke-static {v2, v1}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v1

    const-string v2, "locales"

    .line 61
    invoke-virtual {v1, v2}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 63
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 64
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lnet/time4j/i18n/SymbolProviderSPI;->SUPPORTED_LOCALES:Ljava/util/Set;

    .line 65
    new-instance v1, Lnet/time4j/i18n/SymbolProviderSPI;

    invoke-direct {v1}, Lnet/time4j/i18n/SymbolProviderSPI;-><init>()V

    sput-object v1, Lnet/time4j/i18n/SymbolProviderSPI;->INSTANCE:Lnet/time4j/i18n/SymbolProviderSPI;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-static {}, Lnet/time4j/format/NumberSystem;->values()[Lnet/time4j/format/NumberSystem;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 69
    invoke-virtual {v4}, Lnet/time4j/format/NumberSystem;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/i18n/SymbolProviderSPI;->CLDR_NAMES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;
    .locals 2

    .line 194
    sget-object v0, Lnet/time4j/i18n/SymbolProviderSPI;->SUPPORTED_LOCALES:Ljava/util/Set;

    invoke-static {p0}, Lnet/time4j/i18n/LanguageMatch;->getAlias(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "i18n/numbers/symbol"

    .line 195
    invoke-static {v0, p0}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static lookup(Ljava/util/Locale;Ljava/lang/String;C)C
    .locals 1

    .line 166
    invoke-static {p0}, Lnet/time4j/i18n/SymbolProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static lookup(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 182
    invoke-static {p0}, Lnet/time4j/i18n/SymbolProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lnet/time4j/i18n/PropertyBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method


# virtual methods
.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 89
    sget-object v0, Lnet/time4j/i18n/SymbolProviderSPI;->EMPTY_ARRAY:[Ljava/util/Locale;

    return-object v0
.end method

.method public getDecimalSeparator(Ljava/util/Locale;)C
    .locals 2

    .line 106
    sget-object v0, Lnet/time4j/format/NumberSymbolProvider;->DEFAULT:Lnet/time4j/format/NumberSymbolProvider;

    .line 109
    invoke-interface {v0, p1}, Lnet/time4j/format/NumberSymbolProvider;->getDecimalSeparator(Ljava/util/Locale;)C

    move-result v0

    const-string v1, "separator"

    .line 106
    invoke-static {p1, v1, v0}, Lnet/time4j/i18n/SymbolProviderSPI;->lookup(Ljava/util/Locale;Ljava/lang/String;C)C

    move-result p1

    return p1
.end method

.method public getDefaultNumberSystem(Ljava/util/Locale;)Lnet/time4j/format/NumberSystem;
    .locals 3

    .line 136
    sget-object v0, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-virtual {v0}, Lnet/time4j/format/NumberSystem;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "numsys"

    invoke-static {p1, v1, v0}, Lnet/time4j/i18n/SymbolProviderSPI;->lookup(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    sget-object v1, Lnet/time4j/i18n/SymbolProviderSPI;->CLDR_NAMES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/NumberSystem;

    if-eqz v1, :cond_0

    return-object v1

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized number system: "

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (locale="

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMinusSign(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 126
    sget-object v0, Lnet/time4j/format/NumberSymbolProvider;->DEFAULT:Lnet/time4j/format/NumberSymbolProvider;

    .line 129
    invoke-interface {v0, p1}, Lnet/time4j/format/NumberSymbolProvider;->getMinusSign(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "minus"

    .line 126
    invoke-static {p1, v1, v0}, Lnet/time4j/i18n/SymbolProviderSPI;->lookup(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPlusSign(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 116
    sget-object v0, Lnet/time4j/format/NumberSymbolProvider;->DEFAULT:Lnet/time4j/format/NumberSymbolProvider;

    .line 119
    invoke-interface {v0, p1}, Lnet/time4j/format/NumberSymbolProvider;->getPlusSign(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "plus"

    .line 116
    invoke-static {p1, v1, v0}, Lnet/time4j/i18n/SymbolProviderSPI;->lookup(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getZeroDigit(Ljava/util/Locale;)C
    .locals 2

    .line 96
    sget-object v0, Lnet/time4j/format/NumberSymbolProvider;->DEFAULT:Lnet/time4j/format/NumberSymbolProvider;

    .line 99
    invoke-interface {v0, p1}, Lnet/time4j/format/NumberSymbolProvider;->getZeroDigit(Ljava/util/Locale;)C

    move-result v0

    const-string v1, "zero"

    .line 96
    invoke-static {p1, v1, v0}, Lnet/time4j/i18n/SymbolProviderSPI;->lookup(Ljava/util/Locale;Ljava/lang/String;C)C

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SymbolProviderSPI"

    return-object v0
.end method
