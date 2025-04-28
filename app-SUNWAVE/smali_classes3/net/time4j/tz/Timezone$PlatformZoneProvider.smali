.class Lnet/time4j/tz/Timezone$PlatformZoneProvider;
.super Ljava/lang/Object;
.source "Timezone.java"

# interfaces
.implements Lnet/time4j/tz/ZoneModelProvider;
.implements Lnet/time4j/tz/ZoneNameProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/tz/Timezone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlatformZoneProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/tz/Timezone$1;)V
    .locals 0

    .line 1917
    invoke-direct {p0}, Lnet/time4j/tz/Timezone$PlatformZoneProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1935
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableIDs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1925
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1926
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    .line 1927
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    const-string v0, "Missing locale."

    .line 1999
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2000
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 2005
    :cond_0
    invoke-static {p1}, Lnet/time4j/tz/PlatformTimezone;->findZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2007
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2009
    invoke-virtual {p2}, Lnet/time4j/tz/NameStyle;->isDaylightSaving()Z

    move-result p1

    .line 2010
    invoke-virtual {p2}, Lnet/time4j/tz/NameStyle;->isAbbreviation()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 2008
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getFallback()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "java.util.TimeZone"

    return-object v0
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

    .line 1987
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getSpecificZoneNameRepository()Lnet/time4j/tz/ZoneNameProvider;
    .locals 0

    return-object p0
.end method

.method public getStdFormatPattern(ZLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "GMT"

    goto :goto_0

    :cond_0
    const-string p1, "GMT\u00b1hh:mm"

    :goto_0
    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1963
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lnet/time4j/tz/TransitionHistory;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
