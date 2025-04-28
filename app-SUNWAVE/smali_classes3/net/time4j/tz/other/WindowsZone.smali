.class public final Lnet/time4j/tz/other/WindowsZone;
.super Ljava/lang/Object;
.source "WindowsZone.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/tz/other/WindowsZone;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final PROVIDER:Lnet/time4j/tz/spi/WinZoneProviderSPI;

.field private static final WORLDWIDE:Ljava/util/Locale;

.field private static final serialVersionUID:J = -0x5441833e7d32185cL


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    const-string v2, "001"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/tz/other/WindowsZone;->WORLDWIDE:Ljava/util/Locale;

    .line 97
    new-instance v0, Lnet/time4j/tz/spi/WinZoneProviderSPI;

    invoke-direct {v0}, Lnet/time4j/tz/spi/WinZoneProviderSPI;-><init>()V

    sput-object v0, Lnet/time4j/tz/other/WindowsZone;->PROVIDER:Lnet/time4j/tz/spi/WinZoneProviderSPI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    return-void
.end method

.method private static check(Ljava/lang/String;)V
    .locals 3

    .line 415
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/time4j/tz/spi/WinZoneProviderSPI;->NAME_BASED_MAP:Ljava/util/Map;

    .line 416
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown windows zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAvailableNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    sget-object v0, Lnet/time4j/tz/spi/WinZoneProviderSPI;->NAME_BASED_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static getVersion()Ljava/lang/String;
    .locals 1

    .line 408
    sget-object v0, Lnet/time4j/tz/spi/WinZoneProviderSPI;->WIN_NAME_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lnet/time4j/tz/other/WindowsZone;
    .locals 1

    .line 154
    invoke-static {p0}, Lnet/time4j/tz/other/WindowsZone;->check(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lnet/time4j/tz/other/WindowsZone;

    invoke-direct {v0, p0}, Lnet/time4j/tz/other/WindowsZone;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 433
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 434
    iget-object p1, p0, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    invoke-static {p1}, Lnet/time4j/tz/other/WindowsZone;->check(Ljava/lang/String;)V

    return-void
.end method

.method public static registerAsTimezone()V
    .locals 1

    .line 392
    sget-object v0, Lnet/time4j/tz/other/WindowsZone;->PROVIDER:Lnet/time4j/tz/spi/WinZoneProviderSPI;

    invoke-static {v0}, Lnet/time4j/tz/Timezone;->registerProvider(Lnet/time4j/tz/ZoneModelProvider;)Z

    return-void
.end method

.method public static toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 251
    invoke-static {p0}, Lnet/time4j/tz/Timezone;->normalize(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object p0

    invoke-interface {p0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p0

    .line 252
    sget-object v0, Lnet/time4j/tz/other/WindowsZone;->PROVIDER:Lnet/time4j/tz/spi/WinZoneProviderSPI;

    sget-object v1, Lnet/time4j/tz/NameStyle;->LONG_STANDARD_TIME:Lnet/time4j/tz/NameStyle;

    invoke-virtual {v0, p0, v1, p1}, Lnet/time4j/tz/spi/WinZoneProviderSPI;->getDisplayName(Ljava/lang/String;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object p1, Lnet/time4j/tz/NameStyle;->LONG_STANDARD_TIME:Lnet/time4j/tz/NameStyle;

    sget-object v1, Lnet/time4j/tz/other/WindowsZone;->WORLDWIDE:Ljava/util/Locale;

    invoke-virtual {v0, p0, p1, v1}, Lnet/time4j/tz/spi/WinZoneProviderSPI;->getDisplayName(Ljava/lang/String;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static toString(Lnet/time4j/tz/TZID;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 218
    invoke-interface {p0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/time4j/tz/other/WindowsZone;->toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Lnet/time4j/tz/other/WindowsZone;

    invoke-virtual {p0, p1}, Lnet/time4j/tz/other/WindowsZone;->compareTo(Lnet/time4j/tz/other/WindowsZone;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/tz/other/WindowsZone;)I
    .locals 1

    .line 281
    iget-object v0, p0, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    iget-object p1, p1, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 164
    :cond_0
    instance-of v0, p1, Lnet/time4j/tz/other/WindowsZone;

    if-eqz v0, :cond_1

    .line 165
    check-cast p1, Lnet/time4j/tz/other/WindowsZone;

    .line 166
    iget-object v0, p0, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    iget-object p1, p1, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 176
    iget-object v0, p0, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public resolve(Ljava/util/Locale;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 301
    sget-object v0, Lnet/time4j/tz/spi/WinZoneProviderSPI;->NAME_BASED_MAP:Ljava/util/Map;

    iget-object v1, p0, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 306
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public resolveSmart(Ljava/util/Locale;)Lnet/time4j/tz/TZID;
    .locals 3

    .line 352
    invoke-virtual {p0, p1}, Lnet/time4j/tz/other/WindowsZone;->resolve(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    .line 354
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 355
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 358
    sget-object p1, Lnet/time4j/tz/spi/WinZoneProviderSPI;->NAME_BASED_MAP:Ljava/util/Map;

    iget-object v0, p0, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 362
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 365
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/TZID;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lnet/time4j/tz/other/WindowsZone;->name:Ljava/lang/String;

    return-object v0
.end method
