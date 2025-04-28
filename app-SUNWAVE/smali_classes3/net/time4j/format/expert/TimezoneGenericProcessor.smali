.class final Lnet/time4j/format/expert/TimezoneGenericProcessor;
.super Ljava/lang/Object;
.source "TimezoneGenericProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "Lnet/time4j/tz/TZID;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_ZONENAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/tz/NameStyle;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/expert/ZoneLabels;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROVIDER:Ljava/lang/String; = "DEFAULT"

.field private static final MAX:I = 0x19


# instance fields
.field private final fallback:Lnet/time4j/format/expert/FormatProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field

.field private final lenientMode:Lnet/time4j/format/Leniency;

.field private final locale:Ljava/util/Locale;

.field private final preferredZones:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field

.field private final protectedLength:I

.field private final style:Lnet/time4j/tz/NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 57
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lnet/time4j/tz/NameStyle;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->CACHE_ZONENAMES:Ljava/util/Map;

    .line 63
    invoke-static {}, Lnet/time4j/tz/NameStyle;->values()[Lnet/time4j/tz/NameStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 64
    sget-object v4, Lnet/time4j/format/expert/TimezoneGenericProcessor;->CACHE_ZONENAMES:Ljava/util/Map;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/NameStyle;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    .line 90
    new-instance v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    invoke-virtual {p1}, Lnet/time4j/tz/NameStyle;->isAbbreviation()Z

    move-result p1

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/LocalizedGMTProcessor;-><init>(Z)V

    iput-object v0, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->preferredZones:Ljava/util/Set;

    .line 93
    sget-object p1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 94
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->locale:Ljava/util/Locale;

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->protectedLength:I

    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/NameStyle;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/NameStyle;",
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    .line 112
    new-instance v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    invoke-virtual {p1}, Lnet/time4j/tz/NameStyle;->isAbbreviation()Z

    move-result p1

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/LocalizedGMTProcessor;-><init>(Z)V

    iput-object v0, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    .line 113
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->preferredZones:Ljava/util/Set;

    .line 115
    sget-object p1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 116
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->locale:Ljava/util/Locale;

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->protectedLength:I

    return-void
.end method

.method private constructor <init>(Lnet/time4j/tz/NameStyle;Lnet/time4j/format/expert/FormatProcessor;Ljava/util/Set;Lnet/time4j/format/Leniency;Ljava/util/Locale;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/NameStyle;",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Lnet/time4j/tz/TZID;",
            ">;",
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;",
            "Lnet/time4j/format/Leniency;",
            "Ljava/util/Locale;",
            "I)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    .line 132
    iput-object p2, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    .line 133
    iput-object p3, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->preferredZones:Ljava/util/Set;

    .line 136
    iput-object p4, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 137
    iput-object p5, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->locale:Ljava/util/Locale;

    .line 138
    iput p6, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->protectedLength:I

    return-void
.end method

.method private createZoneNames(Ljava/util/Locale;)Lnet/time4j/format/expert/ZoneLabels;
    .locals 5

    .line 405
    invoke-static {}, Lnet/time4j/tz/Timezone;->getAvailableIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/tz/TZID;

    .line 406
    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    invoke-static {v2, v3, p1}, Lnet/time4j/tz/Timezone;->getDisplayName(Lnet/time4j/tz/TZID;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-interface {v2}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {v1, v3, v2}, Lnet/time4j/format/expert/ZoneLabels;->insert(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v1

    goto :goto_0

    .line 415
    :cond_1
    new-instance p1, Lnet/time4j/format/expert/ZoneLabels;

    invoke-direct {p1, v1}, Lnet/time4j/format/expert/ZoneLabels;-><init>(Lnet/time4j/format/expert/ZoneLabels$Node;)V

    return-object p1
.end method

.method private static excludeWinZones(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 438
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 441
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 442
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/tz/TZID;

    .line 444
    invoke-interface {v3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WINDOWS~"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method private static readZoneNames(Lnet/time4j/format/expert/ZoneLabels;Ljava/lang/CharSequence;[I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ZoneLabels;",
            "Ljava/lang/CharSequence;",
            "[I)",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 425
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lnet/time4j/format/expert/ZoneLabels;->longestPrefixOf(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ZoneLabels;->find(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 428
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    aget v1, p2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    aput v1, p2, v0

    :cond_0
    return-object p0
.end method

.method private resolveUsingPreferred(Ljava/util/List;Ljava/util/Locale;Lnet/time4j/format/Leniency;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/Leniency;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "DEFAULT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/tz/TZID;

    .line 468
    invoke-interface {v3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v3

    .line 469
    iget-object v5, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->preferredZones:Ljava/util/Set;

    const/16 v6, 0x7e

    .line 471
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 474
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-nez v5, :cond_2

    .line 481
    invoke-virtual {p3}, Lnet/time4j/format/Leniency;->isSmart()Z

    move-result v5

    .line 479
    invoke-static {p2, v5, v4}, Lnet/time4j/tz/Timezone;->getPreferredIDs(Ljava/util/Locale;ZLjava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 485
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/tz/TZID;

    .line 486
    invoke-interface {v6}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 487
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4

    .line 489
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_4
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 501
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 502
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 505
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 506
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v4, 0x1

    move-object p1, p3

    :cond_7
    if-nez v4, :cond_8

    .line 513
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_8
    move-object p2, p1

    :cond_9
    return-object p2
.end method

.method private static toString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/tz/TZID;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2c

    .line 533
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    :goto_1
    invoke-interface {v2}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    .line 538
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 366
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/TimezoneGenericProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 367
    check-cast p1, Lnet/time4j/format/expert/TimezoneGenericProcessor;

    .line 368
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    iget-object v3, p1, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->preferredZones:Ljava/util/Set;

    iget-object p1, p1, Lnet/time4j/format/expert/TimezoneGenericProcessor;->preferredZones:Ljava/util/Set;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    .line 372
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getElement()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 325
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 383
    iget-object v0, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    invoke-virtual {v0}, Lnet/time4j/tz/NameStyle;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/format/expert/ParsedEntity<",
            "*>;Z)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    .line 214
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    .line 215
    iget v3, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->protectedLength:I

    goto :goto_0

    :cond_0
    sget-object v3, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    sub-int/2addr v1, v3

    :cond_1
    if-lt v0, v1, :cond_2

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing timezone name in style "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 226
    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->locale:Ljava/util/Locale;

    goto :goto_1

    :cond_3
    sget-object v3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    :goto_1
    if-eqz p5, :cond_4

    .line 227
    iget-object v4, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    goto :goto_2

    :cond_4
    sget-object v4, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p3, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/Leniency;

    :goto_2
    add-int/lit8 v5, v0, 0x3

    .line 228
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p1, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GMT"

    .line 231
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "UT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_8

    .line 237
    :cond_5
    sget-object p5, Lnet/time4j/format/expert/TimezoneGenericProcessor;->CACHE_ZONENAMES:Ljava/util/Map;

    iget-object v6, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    invoke-interface {p5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/concurrent/ConcurrentMap;

    .line 238
    invoke-interface {p5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/format/expert/ZoneLabels;

    if-nez v6, :cond_6

    .line 241
    invoke-direct {p0, v3}, Lnet/time4j/format/expert/TimezoneGenericProcessor;->createZoneNames(Ljava/util/Locale;)Lnet/time4j/format/expert/ZoneLabels;

    move-result-object v6

    .line 243
    invoke-interface {p5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v7

    const/16 v8, 0x19

    if-ge v7, v8, :cond_6

    .line 244
    invoke-interface {p5, v3, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lnet/time4j/format/expert/ZoneLabels;

    if-eqz p5, :cond_6

    move-object v6, p5

    :cond_6
    const/4 p5, 0x1

    new-array v7, p5, [I

    aput v0, v7, v2

    .line 255
    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v6, p1, v7}, Lnet/time4j/format/expert/TimezoneGenericProcessor;->readZoneNames(Lnet/time4j/format/expert/ZoneLabels;Ljava/lang/CharSequence;[I)Ljava/util/List;

    move-result-object p1

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown timezone name: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_7
    if-le v1, p5, :cond_8

    .line 265
    invoke-virtual {v4}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v6

    if-nez v6, :cond_8

    .line 266
    invoke-static {p1}, Lnet/time4j/format/expert/TimezoneGenericProcessor;->excludeWinZones(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 267
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_8
    if-le v1, p5, :cond_c

    .line 272
    invoke-virtual {v4}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v1

    if-nez v1, :cond_c

    .line 273
    sget-object v1, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    sget-object v6, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-interface {p3, v1, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/tz/TZID;

    .line 274
    instance-of v1, p3, Lnet/time4j/tz/ZonalOffset;

    if-eqz v1, :cond_9

    .line 275
    invoke-direct {p0, p1, v3, v4}, Lnet/time4j/format/expert/TimezoneGenericProcessor;->resolveUsingPreferred(Ljava/util/List;Ljava/util/Locale;Lnet/time4j/format/Leniency;)Ljava/util/List;

    move-result-object p3

    goto :goto_4

    .line 278
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/tz/TZID;

    .line 279
    invoke-interface {v6}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 280
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    move v1, p5

    goto :goto_3

    :cond_b
    move-object p3, p1

    move v1, v2

    :goto_3
    if-nez v1, :cond_d

    .line 286
    invoke-direct {p0, p3, v3, v4}, Lnet/time4j/format/expert/TimezoneGenericProcessor;->resolveUsingPreferred(Ljava/util/List;Ljava/util/Locale;Lnet/time4j/format/Leniency;)Ljava/util/List;

    move-result-object p3

    goto :goto_4

    :cond_c
    move-object p3, p1

    .line 291
    :cond_d
    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 294
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/time4j/tz/TZID;

    .line 296
    invoke-interface {p4}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 298
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Time zone name \""

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" not found among preferred timezones in locale "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", style="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", candidates="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_f
    if-eq v1, p5, :cond_11

    .line 310
    invoke-virtual {v4}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_6

    .line 314
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Time zone name of style "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " is not unique: \""

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" in "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {p3}, Lnet/time4j/format/expert/TimezoneGenericProcessor;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p2, v0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    goto :goto_7

    .line 311
    :cond_11
    :goto_6
    sget-object p1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p1, p3}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 312
    aget p1, v7, v2

    invoke-virtual {p2, p1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    :goto_7
    return-void

    .line 232
    :cond_12
    :goto_8
    iget-object v0, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lnet/time4j/format/expert/FormatProcessor;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/Appendable;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Ljava/util/Set<",
            "Lnet/time4j/format/expert/ElementPosition;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Lnet/time4j/engine/ChronoDisplay;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p1}, Lnet/time4j/engine/ChronoDisplay;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p3, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    .line 164
    :goto_0
    instance-of v1, v0, Lnet/time4j/tz/ZonalOffset;

    if-eqz v1, :cond_1

    .line 165
    iget-object v2, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lnet/time4j/format/expert/FormatProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    move-result p1

    return p1

    .line 169
    :cond_1
    invoke-static {v0}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    if-eqz p5, :cond_2

    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->locale:Ljava/util/Locale;

    goto :goto_1

    :cond_2
    sget-object v3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 173
    invoke-interface {p3, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 169
    :goto_1
    invoke-virtual {v1, v2, v3}, Lnet/time4j/tz/Timezone;->getDisplayName(Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-interface {v0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v2, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lnet/time4j/format/expert/FormatProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    move-result p1

    return p1

    .line 181
    :cond_3
    instance-of p1, p2, Ljava/lang/CharSequence;

    const/4 p3, -0x1

    if-eqz p1, :cond_4

    .line 182
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, p3

    .line 185
    :goto_2
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p1, p3, :cond_5

    if-lez p2, :cond_5

    if-eqz p4, :cond_5

    .line 193
    new-instance p3, Lnet/time4j/format/expert/ElementPosition;

    sget-object p5, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    add-int v0, p1, p2

    invoke-direct {p3, p5, p1, v0}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return p2

    .line 160
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot extract timezone name in style "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " from: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public quickPath(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/AttributeQuery;I)Lnet/time4j/format/expert/FormatProcessor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "I)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance p1, Lnet/time4j/format/expert/TimezoneGenericProcessor;

    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    iget-object v2, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->preferredZones:Ljava/util/Set;

    sget-object p3, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 354
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lnet/time4j/format/Leniency;

    sget-object p3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 355
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/util/Locale;

    sget-object p3, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    const/4 v0, 0x0

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/TimezoneGenericProcessor;-><init>(Lnet/time4j/tz/NameStyle;Lnet/time4j/format/expert/FormatProcessor;Ljava/util/Set;Lnet/time4j/format/Leniency;Ljava/util/Locale;I)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[style="

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->style:Lnet/time4j/tz/NameStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preferredZones="

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneGenericProcessor;->preferredZones:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/tz/TZID;",
            ">;)",
            "Lnet/time4j/format/expert/FormatProcessor<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
