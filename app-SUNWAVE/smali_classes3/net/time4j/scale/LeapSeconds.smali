.class public final Lnet/time4j/scale/LeapSeconds;
.super Ljava/lang/Object;
.source "LeapSeconds.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lnet/time4j/scale/LeapSecondEvent;",
        ">;",
        "Ljava/util/Comparator<",
        "Lnet/time4j/scale/LeapSecondEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lnet/time4j/scale/ExtendedLSE;

.field public static final FINAL_UTC_LEAPSECONDS:Z

.field private static final INSTANCE:Lnet/time4j/scale/LeapSeconds;

.field private static final MJD_OFFSET:J = 0x9e8bL

.field public static final PATH_TO_LEAPSECONDS:Ljava/lang/String;

.field public static final SUPPRESS_UTC_LEAPSECONDS:Z

.field private static final UNIX_OFFSET:J = 0x3c26700L


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/scale/ExtendedLSE;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Lnet/time4j/scale/LeapSecondProvider;

.field private final reverseFinal:[Lnet/time4j/scale/ExtendedLSE;

.field private volatile reverseVolatile:[Lnet/time4j/scale/ExtendedLSE;

.field private final supportsNegativeLS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "net.time4j.scale.leapseconds.suppressed"

    .line 121
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lnet/time4j/scale/LeapSeconds;->SUPPRESS_UTC_LEAPSECONDS:Z

    const-string v0, "net.time4j.scale.leapseconds.final"

    .line 140
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lnet/time4j/scale/LeapSeconds;->FINAL_UTC_LEAPSECONDS:Z

    const-string v0, "net.time4j.scale.leapseconds.path"

    const-string v1, "data/leapseconds.data"

    .line 169
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/scale/LeapSeconds;->PATH_TO_LEAPSECONDS:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/time4j/scale/ExtendedLSE;

    .line 173
    sput-object v0, Lnet/time4j/scale/LeapSeconds;->EMPTY_ARRAY:[Lnet/time4j/scale/ExtendedLSE;

    .line 174
    new-instance v0, Lnet/time4j/scale/LeapSeconds;

    invoke-direct {v0}, Lnet/time4j/scale/LeapSeconds;-><init>()V

    sput-object v0, Lnet/time4j/scale/LeapSeconds;->INSTANCE:Lnet/time4j/scale/LeapSeconds;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    sget-boolean v0, Lnet/time4j/scale/LeapSeconds;->SUPPRESS_UTC_LEAPSECONDS:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 196
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    const-class v3, Lnet/time4j/scale/LeapSecondProvider;

    invoke-virtual {v0, v3}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/scale/LeapSecondProvider;

    .line 197
    invoke-interface {v5}, Lnet/time4j/scale/LeapSecondProvider;->getLeapSecondTable()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-le v6, v4, :cond_0

    move-object v3, v5

    move v4, v6

    goto :goto_0

    :cond_1
    move-object v3, v1

    move v4, v2

    :cond_2
    if-eqz v3, :cond_a

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 216
    :cond_3
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 220
    invoke-interface {v3}, Lnet/time4j/scale/LeapSecondProvider;->getLeapSecondTable()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lnet/time4j/base/GregorianDate;

    .line 223
    invoke-static {v7}, Lnet/time4j/scale/LeapSeconds;->toPosix(Lnet/time4j/base/GregorianDate;)J

    move-result-wide v5

    .line 225
    new-instance v13, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;

    const-wide/high16 v8, -0x8000000000000000L

    const-wide/32 v10, -0x3c11580

    add-long/2addr v5, v10

    const-wide/16 v10, 0x1

    sub-long v10, v5, v10

    .line 230
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;-><init>(Lnet/time4j/base/GregorianDate;JJI)V

    .line 225
    invoke-interface {v0, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_4
    invoke-static {v0}, Lnet/time4j/scale/LeapSeconds;->extend(Ljava/util/SortedSet;)V

    .line 237
    sget-boolean v1, Lnet/time4j/scale/LeapSeconds;->FINAL_UTC_LEAPSECONDS:Z

    if-eqz v1, :cond_5

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    goto :goto_2

    .line 242
    :cond_5
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    .line 245
    :goto_2
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->initReverse()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/scale/LeapSeconds;->reverseFinal:[Lnet/time4j/scale/ExtendedLSE;

    .line 246
    iput-object v0, p0, Lnet/time4j/scale/LeapSeconds;->reverseVolatile:[Lnet/time4j/scale/ExtendedLSE;

    .line 247
    iput-object v3, p0, Lnet/time4j/scale/LeapSeconds;->provider:Lnet/time4j/scale/LeapSecondProvider;

    const/4 v0, 0x1

    if-eqz v1, :cond_9

    .line 250
    invoke-interface {v3}, Lnet/time4j/scale/LeapSecondProvider;->supportsNegativeLS()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 253
    iget-object v1, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/scale/ExtendedLSE;

    .line 254
    invoke-interface {v3}, Lnet/time4j/scale/ExtendedLSE;->getShift()I

    move-result v3

    if-gez v3, :cond_6

    move v2, v0

    :cond_7
    move v1, v2

    .line 261
    :cond_8
    iput-boolean v1, p0, Lnet/time4j/scale/LeapSeconds;->supportsNegativeLS:Z

    goto :goto_4

    .line 263
    :cond_9
    iput-boolean v0, p0, Lnet/time4j/scale/LeapSeconds;->supportsNegativeLS:Z

    goto :goto_4

    .line 210
    :cond_a
    :goto_3
    iput-object v1, p0, Lnet/time4j/scale/LeapSeconds;->provider:Lnet/time4j/scale/LeapSecondProvider;

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    .line 212
    sget-object v0, Lnet/time4j/scale/LeapSeconds;->EMPTY_ARRAY:[Lnet/time4j/scale/ExtendedLSE;

    iput-object v0, p0, Lnet/time4j/scale/LeapSeconds;->reverseFinal:[Lnet/time4j/scale/ExtendedLSE;

    .line 213
    iput-object v0, p0, Lnet/time4j/scale/LeapSeconds;->reverseVolatile:[Lnet/time4j/scale/ExtendedLSE;

    .line 214
    iput-boolean v2, p0, Lnet/time4j/scale/LeapSeconds;->supportsNegativeLS:Z

    :goto_4
    return-void
.end method

.method static synthetic access$000(Lnet/time4j/base/GregorianDate;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {p0}, Lnet/time4j/scale/LeapSeconds;->format(Lnet/time4j/base/GregorianDate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createLSE(Lnet/time4j/base/GregorianDate;ILnet/time4j/scale/ExtendedLSE;)Lnet/time4j/scale/ExtendedLSE;
    .locals 11

    .line 1002
    invoke-static {p0}, Lnet/time4j/scale/LeapSeconds;->toPosix(Lnet/time4j/base/GregorianDate;)J

    move-result-wide v0

    const-wide/32 v2, -0x3c11580

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    .line 1003
    invoke-interface {p2}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v0

    invoke-interface {p2}, Lnet/time4j/scale/ExtendedLSE;->raw()J

    move-result-wide v2

    sub-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    long-to-int p2, v0

    .line 1005
    new-instance v0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;

    int-to-long v1, p2

    add-long v6, v8, v1

    move-object v4, v0

    move-object v5, p0

    move v10, p1

    invoke-direct/range {v4 .. v10}, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;-><init>(Lnet/time4j/base/GregorianDate;JJI)V

    return-object v0
.end method

.method private static extend(Ljava/util/SortedSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Lnet/time4j/scale/ExtendedLSE;",
            ">;)V"
        }
    .end annotation

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 982
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/scale/ExtendedLSE;

    .line 983
    invoke-interface {v3}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 984
    invoke-interface {v3}, Lnet/time4j/scale/ExtendedLSE;->getShift()I

    move-result v4

    add-int/2addr v2, v4

    .line 985
    new-instance v4, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;

    invoke-direct {v4, v3, v2}, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;-><init>(Lnet/time4j/scale/ExtendedLSE;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 987
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 991
    :cond_1
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 992
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static format(Lnet/time4j/base/GregorianDate;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1039
    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1040
    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1041
    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%1$04d-%2$02d-%3$02d"

    .line 1037
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;
    .locals 1

    .line 969
    sget-boolean v0, Lnet/time4j/scale/LeapSeconds;->SUPPRESS_UTC_LEAPSECONDS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lnet/time4j/scale/LeapSeconds;->FINAL_UTC_LEAPSECONDS:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    iget-object v0, p0, Lnet/time4j/scale/LeapSeconds;->reverseVolatile:[Lnet/time4j/scale/ExtendedLSE;

    return-object v0

    .line 970
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/time4j/scale/LeapSeconds;->reverseFinal:[Lnet/time4j/scale/ExtendedLSE;

    return-object v0
.end method

.method public static getInstance()Lnet/time4j/scale/LeapSeconds;
    .locals 1

    .line 283
    sget-object v0, Lnet/time4j/scale/LeapSeconds;->INSTANCE:Lnet/time4j/scale/LeapSeconds;

    return-object v0
.end method

.method private initReverse()[Lnet/time4j/scale/ExtendedLSE;
    .locals 2

    .line 1027
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    .line 1028
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1029
    iget-object v1, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1030
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1031
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lnet/time4j/scale/ExtendedLSE;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/scale/ExtendedLSE;

    return-object v0
.end method

.method private register(IIIZ)V
    .locals 5

    .line 915
    sget-boolean v0, Lnet/time4j/scale/LeapSeconds;->FINAL_UTC_LEAPSECONDS:Z

    if-nez v0, :cond_7

    .line 921
    sget-boolean v0, Lnet/time4j/scale/LeapSeconds;->SUPPRESS_UTC_LEAPSECONDS:Z

    if-nez v0, :cond_6

    .line 929
    monitor-enter p0

    .line 930
    :try_start_0
    invoke-static {p1, p2, p3}, Lnet/time4j/base/GregorianMath;->checkDate(III)V

    .line 932
    invoke-virtual {p0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 936
    iget-object v0, p0, Lnet/time4j/scale/LeapSeconds;->reverseVolatile:[Lnet/time4j/scale/ExtendedLSE;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 937
    invoke-interface {v0}, Lnet/time4j/scale/ExtendedLSE;->getDate()Lnet/time4j/base/GregorianDate;

    move-result-object v2

    .line 940
    invoke-interface {v2}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v3

    const/4 v4, 0x1

    if-le p1, v3, :cond_0

    :goto_0
    move v1, v4

    goto :goto_1

    .line 942
    :cond_0
    invoke-interface {v2}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 943
    invoke-interface {v2}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v3

    if-le p2, v3, :cond_1

    goto :goto_0

    .line 945
    :cond_1
    invoke-interface {v2}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 946
    invoke-interface {v2}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result v2

    if-le p3, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    if-eqz p4, :cond_3

    const/4 v4, -0x1

    .line 958
    :cond_3
    iget-object p4, p0, Lnet/time4j/scale/LeapSeconds;->provider:Lnet/time4j/scale/LeapSecondProvider;

    .line 959
    invoke-interface {p4, p1, p2, p3}, Lnet/time4j/scale/LeapSecondProvider;->getDateOfEvent(III)Lnet/time4j/base/GregorianDate;

    move-result-object p1

    .line 960
    iget-object p2, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    invoke-static {p1, v4, v0}, Lnet/time4j/scale/LeapSeconds;->createLSE(Lnet/time4j/base/GregorianDate;ILnet/time4j/scale/ExtendedLSE;)Lnet/time4j/scale/ExtendedLSE;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->initReverse()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/scale/LeapSeconds;->reverseVolatile:[Lnet/time4j/scale/ExtendedLSE;

    .line 962
    monitor-exit p0

    return-void

    .line 953
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "New leap second must be after last leap second."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 933
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Leap seconds not activated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 962
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 922
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Leap seconds are not supported, change requires edit of system property \"time4j.utc.leapseconds.suppressed\" and reboot of JVM."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 916
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Leap seconds are final, change requires edit of system property \"time4j.utc.leapseconds.final\" and reboot of JVM."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static toPosix(Lnet/time4j/base/GregorianDate;)J
    .locals 4

    .line 1017
    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->toMJD(Lnet/time4j/base/GregorianDate;)J

    move-result-wide v0

    const-wide/32 v2, 0x9e8b

    .line 1016
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    .line 1015
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 101
    check-cast p1, Lnet/time4j/scale/LeapSecondEvent;

    check-cast p2, Lnet/time4j/scale/LeapSecondEvent;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/scale/LeapSeconds;->compare(Lnet/time4j/scale/LeapSecondEvent;Lnet/time4j/scale/LeapSecondEvent;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/scale/LeapSecondEvent;Lnet/time4j/scale/LeapSecondEvent;)I
    .locals 4

    .line 840
    invoke-interface {p1}, Lnet/time4j/scale/LeapSecondEvent;->getDate()Lnet/time4j/base/GregorianDate;

    move-result-object p1

    .line 841
    invoke-interface {p2}, Lnet/time4j/scale/LeapSecondEvent;->getDate()Lnet/time4j/base/GregorianDate;

    move-result-object p2

    .line 843
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v0

    .line 844
    invoke-interface {p2}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 852
    :cond_1
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v0

    .line 853
    invoke-interface {p2}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v1

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    if-le v0, v1, :cond_3

    return v3

    .line 861
    :cond_3
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result p1

    .line 862
    invoke-interface {p2}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result p2

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    if-ne p1, p2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    return v2
.end method

.method public enhance(J)J
    .locals 5

    const-wide/32 v0, 0x3c26700

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_0

    return-wide v0

    .line 682
    :cond_0
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object p1

    const/4 p2, 0x0

    .line 684
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    .line 685
    aget-object v2, p1, p2

    .line 687
    invoke-interface {v2}, Lnet/time4j/scale/ExtendedLSE;->raw()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gez v3, :cond_1

    .line 688
    invoke-interface {v2}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide p1

    invoke-interface {v2}, Lnet/time4j/scale/ExtendedLSE;->raw()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .line 353
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getCount(Lnet/time4j/base/UnixTime;)I
    .locals 6

    .line 376
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    .line 377
    invoke-virtual {p0, v0, v1}, Lnet/time4j/scale/LeapSeconds;->enhance(J)J

    move-result-wide v2

    const-wide/32 v4, 0x3c26700

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    return p1
.end method

.method public getDateOfExpiration()Lnet/time4j/base/GregorianDate;
    .locals 2

    .line 807
    invoke-virtual {p0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lnet/time4j/scale/LeapSeconds;->provider:Lnet/time4j/scale/LeapSecondProvider;

    invoke-interface {v0}, Lnet/time4j/scale/LeapSecondProvider;->getDateOfExpiration()Lnet/time4j/base/GregorianDate;

    move-result-object v0

    return-object v0

    .line 808
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Leap seconds not activated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextEvent(J)Lnet/time4j/scale/LeapSecondEvent;
    .locals 6

    .line 626
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 629
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 630
    aget-object v3, v0, v2

    .line 632
    invoke-interface {v3}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public getShift(J)I
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 588
    :cond_0
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object v0

    move v2, v1

    .line 590
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 591
    aget-object v3, v0, v2

    .line 593
    invoke-interface {v3}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    return v1

    .line 596
    :cond_1
    invoke-interface {v3}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v4

    invoke-interface {v3}, Lnet/time4j/scale/ExtendedLSE;->getShift()I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    cmp-long v3, p1, v4

    if-lez v3, :cond_2

    sub-long/2addr p1, v4

    long-to-int p1, p1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getShift(Lnet/time4j/base/GregorianDate;)I
    .locals 8

    .line 538
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7b4

    if-lt v0, v2, :cond_1

    .line 543
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object v2

    move v3, v1

    .line 545
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 546
    aget-object v4, v2, v3

    .line 547
    invoke-interface {v4}, Lnet/time4j/scale/ExtendedLSE;->getDate()Lnet/time4j/base/GregorianDate;

    move-result-object v5

    .line 551
    invoke-interface {v5}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v6

    if-ne v0, v6, :cond_0

    .line 552
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v6

    invoke-interface {v5}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 553
    invoke-interface {p1}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result v6

    invoke-interface {v5}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result v5

    if-ne v6, v5, :cond_0

    .line 555
    invoke-interface {v4}, Lnet/time4j/scale/ExtendedLSE;->getShift()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isExtensible()Z
    .locals 1

    .line 337
    sget-boolean v0, Lnet/time4j/scale/LeapSeconds;->FINAL_UTC_LEAPSECONDS:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPositiveLS(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 775
    :cond_0
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object v0

    move v2, v1

    .line 777
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 778
    aget-object v3, v0, v2

    invoke-interface {v3}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 781
    aget-object p1, v0, v2

    invoke-interface {p1}, Lnet/time4j/scale/ExtendedLSE;->getShift()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move v1, p2

    :cond_1
    return v1

    :cond_2
    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/time4j/scale/LeapSecondEvent;",
            ">;"
        }
    .end annotation

    .line 506
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object v0

    .line 507
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public registerNegativeLS(III)V
    .locals 1

    const/4 v0, 0x1

    .line 465
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/time4j/scale/LeapSeconds;->register(IIIZ)V

    return-void
.end method

.method public registerPositiveLS(III)V
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/time4j/scale/LeapSeconds;->register(IIIZ)V

    return-void
.end method

.method public strip(J)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/32 v1, 0x3c26700

    if-gtz v0, :cond_0

    add-long/2addr p1, v1

    return-wide p1

    .line 732
    :cond_0
    invoke-direct {p0}, Lnet/time4j/scale/LeapSeconds;->getEventsInDescendingOrder()[Lnet/time4j/scale/ExtendedLSE;

    move-result-object v0

    .line 733
    iget-boolean v3, p0, Lnet/time4j/scale/LeapSeconds;->supportsNegativeLS:Z

    const/4 v4, 0x0

    .line 735
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 736
    aget-object v5, v0, v4

    .line 739
    invoke-interface {v5}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v6

    invoke-interface {v5}, Lnet/time4j/scale/ExtendedLSE;->getShift()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v6, v6, p1

    if-ltz v6, :cond_2

    if-eqz v3, :cond_1

    .line 740
    invoke-interface {v5}, Lnet/time4j/scale/ExtendedLSE;->getShift()I

    move-result v6

    if-gez v6, :cond_1

    invoke-interface {v5}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 742
    :cond_2
    :goto_1
    invoke-interface {v5}, Lnet/time4j/scale/ExtendedLSE;->raw()J

    move-result-wide v3

    invoke-interface {v5}, Lnet/time4j/scale/ExtendedLSE;->utc()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {p1, p2, v3, v4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    :cond_3
    add-long/2addr p1, v1

    return-wide p1
.end method

.method public supportsNegativeLS()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lnet/time4j/scale/LeapSeconds;->supportsNegativeLS:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[PROVIDER="

    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget-object v1, p0, Lnet/time4j/scale/LeapSeconds;->provider:Lnet/time4j/scale/LeapSecondProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 884
    iget-object v1, p0, Lnet/time4j/scale/LeapSeconds;->provider:Lnet/time4j/scale/LeapSecondProvider;

    if-eqz v1, :cond_0

    const-string v1, ",EXPIRES="

    .line 885
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {p0}, Lnet/time4j/scale/LeapSeconds;->getDateOfExpiration()Lnet/time4j/base/GregorianDate;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/scale/LeapSeconds;->format(Lnet/time4j/base/GregorianDate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ",EVENTS=["

    .line 888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 892
    iget-object v2, p0, Lnet/time4j/scale/LeapSeconds;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x7c

    .line 896
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "NOT SUPPORTED"

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "]]"

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
