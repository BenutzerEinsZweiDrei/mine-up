.class final Lnet/time4j/format/expert/TimezoneNameProcessor;
.super Ljava/lang/Object;
.source "TimezoneNameProcessor.java"

# interfaces
.implements Lnet/time4j/format/expert/FormatProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/FormatProcessor<",
        "Lnet/time4j/tz/TZID;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_ABBREVIATIONS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_ZONENAMES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROVIDER:Ljava/lang/String; = "DEFAULT"

.field private static final MAX:I = 0x19


# instance fields
.field private final abbreviated:Z

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/format/expert/TimezoneNameProcessor;->CACHE_ABBREVIATIONS:Ljava/util/concurrent/ConcurrentMap;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/format/expert/TimezoneNameProcessor;->CACHE_ZONENAMES:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    .line 87
    new-instance v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/LocalizedGMTProcessor;-><init>(Z)V

    iput-object v0, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    .line 90
    sget-object p1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 91
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->locale:Ljava/util/Locale;

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->protectedLength:I

    return-void
.end method

.method constructor <init>(ZLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    .line 109
    new-instance v0, Lnet/time4j/format/expert/LocalizedGMTProcessor;

    invoke-direct {v0, p1}, Lnet/time4j/format/expert/LocalizedGMTProcessor;-><init>(Z)V

    iput-object v0, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    .line 110
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    .line 112
    sget-object p1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 113
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iput-object p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->locale:Ljava/util/Locale;

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->protectedLength:I

    return-void
.end method

.method private constructor <init>(ZLnet/time4j/format/expert/FormatProcessor;Ljava/util/Set;Lnet/time4j/format/Leniency;Ljava/util/Locale;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    .line 129
    iput-object p2, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    .line 130
    iput-object p3, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    .line 133
    iput-object p4, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    .line 134
    iput-object p5, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->locale:Ljava/util/Locale;

    .line 135
    iput p6, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->protectedLength:I

    return-void
.end method

.method private createZoneNames(Ljava/util/Locale;Z)Lnet/time4j/format/expert/ZoneLabels;
    .locals 5

    .line 482
    invoke-direct {p0, p2}, Lnet/time4j/format/expert/TimezoneNameProcessor;->getStyle(Z)Lnet/time4j/tz/NameStyle;

    move-result-object p2

    .line 484
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

    .line 485
    invoke-static {v2, p2, p1}, Lnet/time4j/tz/Timezone;->getDisplayName(Lnet/time4j/tz/TZID;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-interface {v2}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {v1, v3, v2}, Lnet/time4j/format/expert/ZoneLabels;->insert(Lnet/time4j/format/expert/ZoneLabels$Node;Ljava/lang/String;Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ZoneLabels$Node;

    move-result-object v1

    goto :goto_0

    .line 494
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

    .line 500
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 503
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 504
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/tz/TZID;

    .line 506
    invoke-interface {v3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WINDOWS~"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method private extractRelevantKey(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_1

    .line 458
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 461
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    if-nez v3, :cond_1

    if-le v1, p2, :cond_1

    .line 462
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 465
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStyle(Z)Lnet/time4j/tz/NameStyle;
    .locals 0

    if-eqz p1, :cond_1

    .line 588
    iget-boolean p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    if-eqz p1, :cond_0

    sget-object p1, Lnet/time4j/tz/NameStyle;->SHORT_DAYLIGHT_TIME:Lnet/time4j/tz/NameStyle;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/tz/NameStyle;->LONG_DAYLIGHT_TIME:Lnet/time4j/tz/NameStyle;

    :goto_0
    return-object p1

    .line 593
    :cond_1
    iget-boolean p1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    if-eqz p1, :cond_2

    sget-object p1, Lnet/time4j/tz/NameStyle;->SHORT_STANDARD_TIME:Lnet/time4j/tz/NameStyle;

    goto :goto_1

    :cond_2
    sget-object p1, Lnet/time4j/tz/NameStyle;->LONG_STANDARD_TIME:Lnet/time4j/tz/NameStyle;

    :goto_1
    return-object p1
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

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "DEFAULT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
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

    .line 530
    invoke-interface {v3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v3

    .line 531
    iget-object v5, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    const/16 v6, 0x7e

    .line 533
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 536
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-nez v5, :cond_2

    .line 543
    invoke-virtual {p3}, Lnet/time4j/format/Leniency;->isSmart()Z

    move-result v5

    .line 541
    invoke-static {p2, v5, v4}, Lnet/time4j/tz/Timezone;->getPreferredIDs(Ljava/util/Locale;ZLjava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 547
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

    .line 548
    invoke-interface {v6}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 549
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4

    .line 551
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 552
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_4
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 560
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 563
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 564
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
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

    .line 567
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 568
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v4, 0x1

    move-object p1, p3

    :cond_7
    if-nez v4, :cond_8

    .line 575
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

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
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

    .line 611
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    :goto_1
    invoke-interface {v2}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    .line 616
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

    .line 412
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/TimezoneNameProcessor;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 413
    check-cast p1, Lnet/time4j/format/expert/TimezoneNameProcessor;

    .line 414
    iget-boolean v1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    iget-boolean v3, p1, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    iget-object p1, p1, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    .line 418
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

    .line 371
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 429
    iget-object v0, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isNumerical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V
    .locals 18
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

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 213
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    .line 214
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v12, 0x0

    if-eqz p5, :cond_0

    .line 215
    iget v7, v0, Lnet/time4j/format/expert/TimezoneNameProcessor;->protectedLength:I

    goto :goto_0

    :cond_0
    sget-object v7, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_0
    if-lez v7, :cond_1

    sub-int/2addr v6, v7

    :cond_1
    if-lt v1, v6, :cond_2

    const-string v2, "Missing timezone name."

    .line 222
    invoke-virtual {v3, v1, v2}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_2
    if-eqz p5, :cond_3

    .line 226
    iget-object v7, v0, Lnet/time4j/format/expert/TimezoneNameProcessor;->locale:Ljava/util/Locale;

    goto :goto_1

    :cond_3
    sget-object v7, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v4, v7, v8}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Locale;

    :goto_1
    move-object v13, v7

    if-eqz p5, :cond_4

    .line 227
    iget-object v7, v0, Lnet/time4j/format/expert/TimezoneNameProcessor;->lenientMode:Lnet/time4j/format/Leniency;

    goto :goto_2

    :cond_4
    sget-object v7, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v8, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {v4, v7, v8}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/format/Leniency;

    :goto_2
    move-object v14, v7

    .line 228
    invoke-direct {v0, v2, v1, v6}, Lnet/time4j/format/expert/TimezoneNameProcessor;->extractRelevantKey(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v15

    const-string v7, "GMT"

    .line 231
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "UT"

    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_f

    .line 237
    :cond_5
    iget-boolean v7, v0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    if-eqz v7, :cond_6

    sget-object v7, Lnet/time4j/format/expert/TimezoneNameProcessor;->CACHE_ABBREVIATIONS:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_3

    :cond_6
    sget-object v7, Lnet/time4j/format/expert/TimezoneNameProcessor;->CACHE_ZONENAMES:Ljava/util/concurrent/ConcurrentMap;

    .line 238
    :goto_3
    invoke-interface {v7, v13}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;

    const/4 v11, 0x1

    if-nez v8, :cond_7

    .line 241
    invoke-direct {v0, v13, v12}, Lnet/time4j/format/expert/TimezoneNameProcessor;->createZoneNames(Ljava/util/Locale;Z)Lnet/time4j/format/expert/ZoneLabels;

    move-result-object v8

    .line 242
    invoke-direct {v0, v13, v11}, Lnet/time4j/format/expert/TimezoneNameProcessor;->createZoneNames(Ljava/util/Locale;Z)Lnet/time4j/format/expert/ZoneLabels;

    move-result-object v9

    .line 243
    new-instance v10, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;

    invoke-direct {v10, v8, v9}, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;-><init>(Lnet/time4j/format/expert/ZoneLabels;Lnet/time4j/format/expert/ZoneLabels;)V

    .line 245
    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v8

    const/16 v9, 0x19

    if-ge v8, v9, :cond_8

    .line 246
    invoke-interface {v7, v13, v10}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;

    if-eqz v7, :cond_8

    move-object v10, v7

    goto :goto_4

    :cond_7
    move-object v10, v8

    .line 255
    :cond_8
    :goto_4
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 256
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 258
    invoke-interface {v2, v12, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v6, v10

    move-object v2, v8

    move v8, v1

    move v10, v9

    move-object/from16 v9, v16

    move v12, v10

    move-object/from16 v10, v17

    move v12, v11

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Lnet/time4j/format/expert/TimezoneNameProcessor$TZNames;->search(Ljava/lang/CharSequence;ILjava/util/List;Ljava/util/List;[I)V

    .line 260
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-nez v6, :cond_9

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" does not match any known timezone name."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    :cond_9
    if-le v6, v12, :cond_a

    .line 270
    invoke-virtual {v14}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v7

    if-nez v7, :cond_a

    .line 271
    invoke-static/range {v16 .. v16}, Lnet/time4j/format/expert/TimezoneNameProcessor;->excludeWinZones(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 272
    invoke-static/range {v17 .. v17}, Lnet/time4j/format/expert/TimezoneNameProcessor;->excludeWinZones(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 273
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    :cond_a
    if-le v6, v12, :cond_11

    .line 280
    invoke-virtual {v14}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v6

    if-nez v6, :cond_11

    .line 281
    sget-object v6, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    sget-object v7, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-interface {v4, v6, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/tz/TZID;

    .line 283
    instance-of v6, v4, Lnet/time4j/tz/ZonalOffset;

    if-nez v6, :cond_e

    .line 284
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/tz/TZID;

    .line 285
    invoke-interface {v7}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 286
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move v11, v12

    goto :goto_5

    :cond_c
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_f

    .line 293
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/tz/TZID;

    .line 294
    invoke-interface {v9}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 296
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x1

    goto :goto_7

    :cond_d
    const/4 v12, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    const/4 v11, 0x0

    :cond_f
    :goto_7
    if-nez v11, :cond_12

    .line 304
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 305
    invoke-direct {v0, v6, v13, v14}, Lnet/time4j/format/expert/TimezoneNameProcessor;->resolveUsingPreferred(Ljava/util/List;Ljava/util/Locale;Lnet/time4j/format/Leniency;)Ljava/util/List;

    move-result-object v6

    .line 307
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 308
    invoke-direct {v0, v7, v13, v14}, Lnet/time4j/format/expert/TimezoneNameProcessor;->resolveUsingPreferred(Ljava/util/List;Ljava/util/Locale;Lnet/time4j/format/Leniency;)Ljava/util/List;

    move-result-object v7

    goto :goto_8

    :cond_11
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    .line 313
    :cond_12
    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v4, v8

    if-nez v4, :cond_15

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 318
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/tz/TZID;

    .line 319
    invoke-interface {v5}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 321
    :cond_13
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/tz/TZID;

    .line 322
    invoke-interface {v5}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 324
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time zone name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" not found among preferred timezones in locale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", candidates="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-void

    .line 338
    :cond_15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_18

    const/4 v8, 0x2

    if-ne v4, v8, :cond_16

    .line 342
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_16

    const/4 v4, 0x0

    .line 343
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/tz/TZID;

    invoke-interface {v8}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/tz/TZID;

    invoke-interface {v9}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_b

    .line 346
    :cond_16
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 348
    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v6, v4

    :cond_17
    :goto_b
    const/4 v11, 0x0

    goto :goto_c

    :cond_18
    move-object v6, v7

    const/4 v11, 0x1

    .line 356
    :goto_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_1a

    invoke-virtual {v14}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_d

    .line 361
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time zone name is not unique: \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {v6}, Lnet/time4j/format/expert/TimezoneNameProcessor;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v3, v1, v2}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    goto :goto_e

    .line 357
    :cond_1a
    :goto_d
    sget-object v1, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 358
    sget-object v1, Lnet/time4j/engine/FlagElement;->DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 359
    aget v1, v2, v11

    invoke-virtual {v3, v1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    :goto_e
    return-void

    .line 232
    :cond_1b
    :goto_f
    iget-object v1, v0, Lnet/time4j/format/expert/TimezoneNameProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/time4j/format/expert/FormatProcessor;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I
    .locals 9
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

    .line 150
    invoke-interface {p1}, Lnet/time4j/engine/ChronoDisplay;->hasTimezone()Z

    move-result v0

    const-string v1, "Cannot extract timezone name from: "

    if-eqz v0, :cond_5

    .line 155
    invoke-interface {p1}, Lnet/time4j/engine/ChronoDisplay;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v0

    .line 157
    instance-of v2, v0, Lnet/time4j/tz/ZonalOffset;

    if-eqz v2, :cond_0

    .line 158
    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lnet/time4j/format/expert/FormatProcessor;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    move-result p1

    return p1

    .line 163
    :cond_0
    instance-of v2, p1, Lnet/time4j/base/UnixTime;

    if-eqz v2, :cond_4

    .line 164
    invoke-static {v0}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v0

    .line 165
    const-class v1, Lnet/time4j/base/UnixTime;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/base/UnixTime;

    .line 169
    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->isDaylightSaving(Lnet/time4j/base/UnixTime;)Z

    move-result p1

    invoke-direct {p0, p1}, Lnet/time4j/format/expert/TimezoneNameProcessor;->getStyle(Z)Lnet/time4j/tz/NameStyle;

    move-result-object p1

    if-eqz p5, :cond_1

    iget-object p3, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->locale:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    sget-object p5, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 172
    invoke-interface {p3, p5, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    .line 168
    :goto_0
    invoke-virtual {v0, p1, p3}, Lnet/time4j/tz/Timezone;->getDisplayName(Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 181
    instance-of p3, p2, Ljava/lang/CharSequence;

    const/4 p5, -0x1

    if-eqz p3, :cond_2

    .line 182
    move-object p3, p2

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    goto :goto_1

    :cond_2
    move p3, p5

    .line 185
    :goto_1
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p3, p5, :cond_3

    if-lez p1, :cond_3

    if-eqz p4, :cond_3

    .line 193
    new-instance p2, Lnet/time4j/format/expert/ElementPosition;

    sget-object p5, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    add-int v0, p3, p1

    invoke-direct {p2, p5, p3, v0}, Lnet/time4j/format/expert/ElementPosition;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return p1

    .line 174
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 151
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 396
    new-instance p1, Lnet/time4j/format/expert/TimezoneNameProcessor;

    iget-boolean v1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    iget-object v2, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->fallback:Lnet/time4j/format/expert/FormatProcessor;

    iget-object v3, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    sget-object p3, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 400
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lnet/time4j/format/Leniency;

    sget-object p3, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 401
    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/util/Locale;

    sget-object p3, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    const/4 v0, 0x0

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/TimezoneNameProcessor;-><init>(ZLnet/time4j/format/expert/FormatProcessor;Ljava/util/Set;Lnet/time4j/format/Leniency;Ljava/util/Locale;I)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[abbreviated="

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-boolean v1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->abbreviated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preferredZones="

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v1, p0, Lnet/time4j/format/expert/TimezoneNameProcessor;->preferredZones:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
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
