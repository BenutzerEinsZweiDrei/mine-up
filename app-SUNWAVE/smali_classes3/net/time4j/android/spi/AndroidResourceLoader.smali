.class public Lnet/time4j/android/spi/AndroidResourceLoader;
.super Lnet/time4j/base/ResourceLoader;
.source "AndroidResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/android/spi/AndroidResourceLoader$StatelessIterables;,
        Lnet/time4j/android/spi/AndroidResourceLoader$ZoneDataHolder;,
        Lnet/time4j/android/spi/AndroidResourceLoader$I18nDataHolder;,
        Lnet/time4j/android/spi/AndroidResourceLoader$LazyExtensions;,
        Lnet/time4j/android/spi/AndroidResourceLoader$LazyPluraldata;,
        Lnet/time4j/android/spi/AndroidResourceLoader$LazyLeapseconds;,
        Lnet/time4j/android/spi/AndroidResourceLoader$LazyZoneNames;,
        Lnet/time4j/android/spi/AndroidResourceLoader$LazyZoneRules;,
        Lnet/time4j/android/spi/AndroidResourceLoader$LazyTextdata;,
        Lnet/time4j/android/spi/AndroidResourceLoader$LazyWeekdata;,
        Lnet/time4j/android/spi/AndroidResourceLoader$LazyNumberSymbols;,
        Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;
    }
.end annotation


# static fields
.field private static final MODULES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private assetLocation:Lnet/time4j/android/AssetLocation;

.field private context:Landroid/content/Context;

.field private patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/format/FormatPatternProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    const-class v1, Lnet/time4j/format/TextProvider;

    new-instance v2, Lnet/time4j/android/spi/AndroidResourceLoader$LazyTextdata;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyTextdata;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-class v1, Lnet/time4j/tz/ZoneModelProvider;

    new-instance v2, Lnet/time4j/android/spi/AndroidResourceLoader$LazyZoneRules;

    invoke-direct {v2, v3}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyZoneRules;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-class v1, Lnet/time4j/tz/ZoneNameProvider;

    new-instance v2, Lnet/time4j/android/spi/AndroidResourceLoader$LazyZoneNames;

    invoke-direct {v2, v3}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyZoneNames;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-class v1, Lnet/time4j/scale/LeapSecondProvider;

    new-instance v2, Lnet/time4j/android/spi/AndroidResourceLoader$LazyLeapseconds;

    invoke-direct {v2, v3}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyLeapseconds;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-class v1, Lnet/time4j/engine/ChronoExtension;

    new-instance v2, Lnet/time4j/android/spi/AndroidResourceLoader$LazyExtensions;

    invoke-direct {v2, v3}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyExtensions;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-class v1, Lnet/time4j/format/NumberSymbolProvider;

    new-instance v2, Lnet/time4j/android/spi/AndroidResourceLoader$LazyNumberSymbols;

    invoke-direct {v2, v3}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyNumberSymbols;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-class v1, Lnet/time4j/format/PluralProvider;

    new-instance v2, Lnet/time4j/android/spi/AndroidResourceLoader$LazyPluraldata;

    invoke-direct {v2, v3}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyPluraldata;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-class v1, Lnet/time4j/format/UnitPatternProvider;

    new-instance v2, Lnet/time4j/i18n/UnitPatternProviderSPI;

    invoke-direct {v2}, Lnet/time4j/i18n/UnitPatternProviderSPI;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-class v1, Lnet/time4j/format/WeekdataProvider;

    new-instance v2, Lnet/time4j/android/spi/AndroidResourceLoader$LazyWeekdata;

    invoke-direct {v2, v3}, Lnet/time4j/android/spi/AndroidResourceLoader$LazyWeekdata;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-class v1, Lnet/time4j/scale/TickProvider;

    new-instance v2, Lnet/time4j/android/spi/AndroidTickerSPI;

    invoke-direct {v2}, Lnet/time4j/android/spi/AndroidTickerSPI;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader;->PROVIDERS:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "i18n"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "calendar"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "olson"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "tzdata"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/android/spi/AndroidResourceLoader;->MODULES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lnet/time4j/base/ResourceLoader;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->context:Landroid/content/Context;

    .line 108
    iput-object v0, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->assetLocation:Lnet/time4j/android/AssetLocation;

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->patterns:Ljava/util/List;

    return-void
.end method

.method static synthetic access$900(Lnet/time4j/android/spi/AndroidResourceLoader;)Landroid/content/Context;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->context:Landroid/content/Context;

    return-object p0
.end method

.method private static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lnet/time4j/android/AssetLocation;)V
    .locals 1

    const-string v0, "Missing Android-context."

    .line 125
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iput-object p1, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->context:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->assetLocation:Lnet/time4j/android/AssetLocation;

    .line 131
    new-instance p1, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lnet/time4j/android/spi/AndroidResourceLoader$AndroidFormatPatterns;-><init>(Lnet/time4j/android/spi/AndroidResourceLoader;Lnet/time4j/android/spi/AndroidResourceLoader$1;)V

    .line 132
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->patterns:Ljava/util/List;

    return-void
.end method

.method public load(Ljava/net/URI;Z)Ljava/io/InputStream;
    .locals 1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 175
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 178
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 179
    :cond_1
    iget-object v0, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->assetLocation:Lnet/time4j/android/AssetLocation;

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/time4j/android/AssetLocation;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 181
    :cond_2
    iget-object v0, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->context:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 182
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'ApplicationStarter.initialize(context)\' must be called first at app start."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method public locate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/URI;"
        }
    .end annotation

    .line 144
    :try_start_0
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader;->MODULES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "net/time4j/"

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance p1, Ljava/net/URI;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 154
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public services(Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/lang/Iterable<",
            "TS;>;"
        }
    .end annotation

    .line 198
    sget-object v0, Lnet/time4j/android/spi/AndroidResourceLoader;->PROVIDERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    if-nez v0, :cond_1

    .line 201
    const-class v0, Lnet/time4j/format/FormatPatternProvider;

    if-ne p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lnet/time4j/android/spi/AndroidResourceLoader;->patterns:Ljava/util/List;

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p1

    return-object p1

    .line 208
    :cond_1
    :goto_0
    invoke-static {v0}, Lnet/time4j/android/spi/AndroidResourceLoader;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method
