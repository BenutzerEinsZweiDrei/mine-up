.class Lnet/time4j/tz/Timezone$ZonalKeys;
.super Ljava/lang/Object;
.source "Timezone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/tz/Timezone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZonalKeys"
.end annotation


# instance fields
.field private final availables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field

.field private final availablesAndAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 7

    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1873
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1874
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1875
    sget-object v1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1877
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$1300()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1878
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/tz/ZoneModelProvider;

    .line 1881
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$1400()Lnet/time4j/tz/ZoneModelProvider;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1882
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$1500()Lnet/time4j/tz/ZoneModelProvider;

    move-result-object v4

    invoke-static {}, Lnet/time4j/tz/Timezone;->access$1400()Lnet/time4j/tz/ZoneModelProvider;

    move-result-object v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 1887
    :cond_1
    invoke-interface {v3}, Lnet/time4j/tz/ZoneModelProvider;->getAvailableIDs()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1888
    invoke-static {v5}, Lnet/time4j/tz/Timezone;->access$1600(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object v5

    .line 1891
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1892
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1896
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1898
    invoke-interface {v3}, Lnet/time4j/tz/ZoneModelProvider;->getAliases()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1899
    invoke-static {v4}, Lnet/time4j/tz/Timezone;->access$1600(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object v4

    .line 1902
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1903
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1908
    :cond_5
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$1700()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1909
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$1700()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1910
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/tz/Timezone$ZonalKeys;->availables:Ljava/util/List;

    .line 1911
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/tz/Timezone$ZonalKeys;->availablesAndAliases:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/tz/Timezone$ZonalKeys;)Ljava/util/List;
    .locals 0

    .line 1861
    iget-object p0, p0, Lnet/time4j/tz/Timezone$ZonalKeys;->availables:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lnet/time4j/tz/Timezone$ZonalKeys;)Ljava/util/List;
    .locals 0

    .line 1861
    iget-object p0, p0, Lnet/time4j/tz/Timezone$ZonalKeys;->availablesAndAliases:Ljava/util/List;

    return-object p0
.end method
