.class public Lnet/time4j/tz/spi/ZoneNameProviderSPI;
.super Ljava/lang/Object;
.source "ZoneNameProviderSPI.java"

# interfaces
.implements Lnet/time4j/tz/ZoneNameProvider;


# static fields
.field private static final GMT_ZONES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAMES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lnet/time4j/tz/NameStyle;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final PRIMARIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERRITORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->NAMES:Ljava/util/concurrent/ConcurrentMap;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "Z"

    .line 67
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "GMT"

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "GMT0"

    .line 69
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Greenwich"

    .line 70
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "UCT"

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "UTC"

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "UTC0"

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Universal"

    .line 74
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Zulu"

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->GMT_ZONES:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "data/zone1970.tab"

    .line 80
    invoke-static {v0, v1}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->loadTerritories(Ljava/util/Map;Ljava/lang/String;)V

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->TERRITORIES:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "CL"

    const-string v2, "America/Santiago"

    .line 85
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CN"

    const-string v2, "Asia/Shanghai"

    .line 86
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DE"

    const-string v2, "Europe/Berlin"

    .line 87
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EC"

    const-string v2, "America/Guayaquil"

    .line 88
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ES"

    const-string v2, "Europe/Madrid"

    .line 89
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MH"

    const-string v2, "Pacific/Majuro"

    .line 90
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MY"

    const-string v2, "Asia/Kuala_Lumpur"

    .line 91
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NZ"

    const-string v2, "Pacific/Auckland"

    .line 92
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PT"

    const-string v2, "Europe/Lisbon"

    .line 93
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UA"

    const-string v2, "Europe/Kiev"

    .line 94
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UZ"

    const-string v2, "Asia/Tashkent"

    .line 95
    invoke-static {v0, v1, v2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->PRIMARIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPrimary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addTerritory(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 255
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 259
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;
    .locals 1

    const-string v0, "olson/zones/tzname"

    .line 278
    invoke-static {v0, p0}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p0

    return-object p0
.end method

.method static loadTerritories(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 210
    const-class v0, Lnet/time4j/tz/spi/ZoneNameProviderSPI;

    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v1

    const-string v2, "olson"

    invoke-virtual {v1, v2, v0, p1}, Lnet/time4j/base/ResourceLoader;->locate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 211
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lnet/time4j/base/ResourceLoader;->load(Ljava/net/URI;Z)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_4

    .line 219
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 221
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "#"

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "\t"

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    .line 227
    aget-object v3, v0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    const/4 v6, 0x2

    .line 228
    aget-object v6, v0, v6

    invoke-static {p0, v5, v6}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->addTerritory(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 238
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 240
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 235
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 233
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 240
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 241
    :goto_3
    throw p0

    .line 244
    :cond_4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: File \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/lang/String;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 10

    .line 145
    sget-object v0, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->GMT_ZONES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    sget-object v0, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->NAMES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3

    .line 152
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 156
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 157
    new-instance v7, Ljava/util/EnumMap;

    const-class v8, Lnet/time4j/tz/NameStyle;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 158
    sget-object v8, Lnet/time4j/tz/NameStyle;->LONG_STANDARD_TIME:Lnet/time4j/tz/NameStyle;

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v8, Lnet/time4j/tz/NameStyle;->SHORT_STANDARD_TIME:Lnet/time4j/tz/NameStyle;

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v8, Lnet/time4j/tz/NameStyle;->LONG_DAYLIGHT_TIME:Lnet/time4j/tz/NameStyle;

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v8, Lnet/time4j/tz/NameStyle;->SHORT_DAYLIGHT_TIME:Lnet/time4j/tz/NameStyle;

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    aget-object v6, v6, v4

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    :cond_1
    sget-object v0, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->NAMES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 173
    :cond_3
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 176
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public getPreferredIDs(Ljava/util/Locale;Z)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string p2, "US"

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    const-string p2, "America/New_York"

    .line 112
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p2, "America/Chicago"

    .line 113
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p2, "America/Denver"

    .line 114
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p2, "America/Los_Angeles"

    .line 115
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p2, "America/Anchorage"

    .line 116
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p2, "Pacific/Honolulu"

    .line 117
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    sget-object p2, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->PRIMARIES:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 123
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 128
    :cond_1
    sget-object p2, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->TERRITORIES:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_2

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public getStdFormatPattern(ZLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 201
    invoke-static {p2}, Lnet/time4j/tz/spi/ZoneNameProviderSPI;->getBundle(Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object p2

    if-eqz p1, :cond_0

    const-string p1, "utc-literal"

    goto :goto_0

    :cond_0
    const-string p1, "offset-pattern"

    :goto_0
    invoke-virtual {p2, p1}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
