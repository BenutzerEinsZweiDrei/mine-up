.class public abstract Lnet/time4j/tz/Timezone;
.super Ljava/lang/Object;
.source "Timezone.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/tz/Timezone$PlatformZoneProvider;,
        Lnet/time4j/tz/Timezone$ZonalKeys;,
        Lnet/time4j/tz/Timezone$NamedReference;,
        Lnet/time4j/tz/Timezone$Cache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALLOW_SYSTEM_TZ_OVERRIDE:Z

.field private static final ANDROID:Z

.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/time4j/tz/Timezone$NamedReference;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

.field private static final DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

.field private static final ETCETERA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_USED:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/time4j/tz/Timezone;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAME_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field private static final NAME_JUT:Ljava/lang/String; = "java.util.TimeZone"

.field static final NAME_PROVIDER:Lnet/time4j/tz/ZoneNameProvider;

.field private static final NAME_TZDB:Ljava/lang/String; = "TZDB"

.field private static final NEW_LINE:Ljava/lang/String;

.field private static final PLATFORM_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

.field private static final PREDEFINED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDERS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/time4j/tz/ZoneModelProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUEUE:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lnet/time4j/tz/Timezone;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPOSITORY_VERSION:Ljava/lang/String;

.field public static final STRICT_MODE:Lnet/time4j/tz/TransitionStrategy;

.field private static final SYSTEM_TZ_ORIGINAL:Lnet/time4j/tz/Timezone;

.field private static volatile cacheActive:Z

.field private static volatile currentSystemTZ:Lnet/time4j/tz/Timezone;

.field private static softLimit:I

.field private static volatile zonalKeys:Lnet/time4j/tz/Timezone$ZonalKeys;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "line.separator"

    .line 113
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/Timezone;->NEW_LINE:Ljava/lang/String;

    const-string v0, "net.time4j.tz.repository.version"

    .line 115
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/Timezone;->REPOSITORY_VERSION:Ljava/lang/String;

    .line 117
    new-instance v0, Lnet/time4j/tz/Timezone$1;

    invoke-direct {v0}, Lnet/time4j/tz/Timezone$1;-><init>()V

    sput-object v0, Lnet/time4j/tz/Timezone;->ID_COMPARATOR:Ljava/util/Comparator;

    .line 151
    sget-object v0, Lnet/time4j/tz/GapResolver;->PUSH_FORWARD:Lnet/time4j/tz/GapResolver;

    sget-object v1, Lnet/time4j/tz/OverlapResolver;->LATER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    .line 152
    invoke-virtual {v0, v1}, Lnet/time4j/tz/GapResolver;->and(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/Timezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    .line 171
    sget-object v0, Lnet/time4j/tz/GapResolver;->ABORT:Lnet/time4j/tz/GapResolver;

    sget-object v1, Lnet/time4j/tz/OverlapResolver;->LATER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    .line 172
    invoke-virtual {v0, v1}, Lnet/time4j/tz/GapResolver;->and(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/Timezone;->STRICT_MODE:Lnet/time4j/tz/TransitionStrategy;

    const-string v0, "java.vm.name"

    .line 174
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lnet/time4j/tz/Timezone;->ANDROID:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "net.time4j.allow.system.tz.override"

    .line 177
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lnet/time4j/tz/Timezone;->ALLOW_SYSTEM_TZ_OVERRIDE:Z

    const/4 v0, 0x0

    .line 179
    sput-object v0, Lnet/time4j/tz/Timezone;->zonalKeys:Lnet/time4j/tz/Timezone$ZonalKeys;

    .line 180
    sput-object v0, Lnet/time4j/tz/Timezone;->currentSystemTZ:Lnet/time4j/tz/Timezone;

    .line 181
    sput-boolean v2, Lnet/time4j/tz/Timezone;->cacheActive:Z

    const/16 v2, 0xb

    .line 182
    sput v2, Lnet/time4j/tz/Timezone;->softLimit:I

    .line 205
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lnet/time4j/tz/Timezone;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 206
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    .line 207
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v2, Lnet/time4j/tz/Timezone;->QUEUE:Ljava/lang/ref/ReferenceQueue;

    .line 208
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lnet/time4j/tz/Timezone;->LAST_USED:Ljava/util/LinkedList;

    .line 213
    :try_start_0
    const-class v2, Lnet/time4j/tz/Timezone;

    .line 215
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "AFRICA"

    const-string v4, "AMERICA"

    const-string v5, "AMERICA$ARGENTINA"

    const-string v6, "AMERICA$INDIANA"

    const-string v7, "AMERICA$KENTUCKY"

    const-string v8, "AMERICA$NORTH_DAKOTA"

    const-string v9, "ANTARCTICA"

    const-string v10, "ASIA"

    const-string v11, "ATLANTIC"

    const-string v12, "AUSTRALIA"

    const-string v13, "EUROPE"

    const-string v14, "INDIAN"

    const-string v15, "PACIFIC"

    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v2, v3}, Lnet/time4j/tz/Timezone;->loadPredefined(Ljava/lang/ClassLoader;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 231
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 234
    :goto_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 235
    sget-object v4, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v5, "Z"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v4, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v6, "UT"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v4, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v6, "UTC"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v4, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v7, "GMT"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v4, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v7, "UTC0"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v4, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v7, "GMT0"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 243
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lnet/time4j/tz/TZID;

    array-length v7, v4

    move v8, v1

    :goto_3
    if-ge v8, v7, :cond_2

    aget-object v9, v4, v8

    .line 244
    invoke-interface {v9}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 248
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lnet/time4j/tz/Timezone;->PREDEFINED:Ljava/util/Map;

    .line 250
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 251
    invoke-static {v2}, Lnet/time4j/tz/Timezone;->fillEtcetera(Ljava/util/Map;)V

    .line 252
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lnet/time4j/tz/Timezone;->ETCETERA:Ljava/util/Map;

    .line 257
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    const-class v3, Lnet/time4j/tz/ZoneModelProvider;

    invoke-virtual {v2, v3}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v7, "TZDB"

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/tz/ZoneModelProvider;

    .line 258
    invoke-interface {v4}, Lnet/time4j/tz/ZoneModelProvider;->getName()Ljava/lang/String;

    move-result-object v8

    .line 260
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 261
    invoke-static {v4, v3}, Lnet/time4j/tz/Timezone;->compareTZDB(Lnet/time4j/tz/ZoneModelProvider;Lnet/time4j/tz/ZoneModelProvider;)Lnet/time4j/tz/ZoneModelProvider;

    move-result-object v3

    goto :goto_4

    .line 262
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "DEFAULT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 263
    sget-object v7, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v8, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 267
    :cond_6
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    const-class v4, Lnet/time4j/tz/ZoneNameProvider;

    invoke-virtual {v2, v4}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/tz/ZoneNameProvider;

    goto :goto_5

    .line 271
    :cond_7
    new-instance v2, Lnet/time4j/tz/Timezone$PlatformZoneProvider;

    invoke-direct {v2, v0}, Lnet/time4j/tz/Timezone$PlatformZoneProvider;-><init>(Lnet/time4j/tz/Timezone$1;)V

    sput-object v2, Lnet/time4j/tz/Timezone;->PLATFORM_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    if-nez v4, :cond_8

    .line 272
    invoke-interface {v2}, Lnet/time4j/tz/ZoneModelProvider;->getSpecificZoneNameRepository()Lnet/time4j/tz/ZoneNameProvider;

    move-result-object v4

    :cond_8
    sput-object v4, Lnet/time4j/tz/Timezone;->NAME_PROVIDER:Lnet/time4j/tz/ZoneNameProvider;

    .line 273
    sget-object v4, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "java.util.TimeZone"

    invoke-interface {v4, v8, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 276
    sput-object v2, Lnet/time4j/tz/Timezone;->DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    goto :goto_6

    .line 278
    :cond_9
    invoke-interface {v4, v7, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sput-object v3, Lnet/time4j/tz/Timezone;->DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    :goto_6
    :try_start_1
    const-string v2, "user.timezone"

    .line 285
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    if-eqz v2, :cond_c

    .line 290
    invoke-static {v2}, Lnet/time4j/tz/Timezone;->resolve(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lnet/time4j/tz/Timezone;->getTZ(Lnet/time4j/tz/TZID;Ljava/lang/String;Z)Lnet/time4j/tz/Timezone;

    move-result-object v0

    goto :goto_8

    .line 288
    :cond_b
    :goto_7
    sget-object v1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getModel()Lnet/time4j/tz/SingleOffsetTimezone;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_c
    :goto_8
    if-nez v0, :cond_d

    .line 297
    invoke-static {}, Lnet/time4j/tz/Timezone;->getDefaultTZ()Lnet/time4j/tz/Timezone;

    move-result-object v0

    sput-object v0, Lnet/time4j/tz/Timezone;->SYSTEM_TZ_ORIGINAL:Lnet/time4j/tz/Timezone;

    goto :goto_9

    .line 299
    :cond_d
    sput-object v0, Lnet/time4j/tz/Timezone;->SYSTEM_TZ_ORIGINAL:Lnet/time4j/tz/Timezone;

    .line 302
    :goto_9
    sget-boolean v0, Lnet/time4j/tz/Timezone;->ALLOW_SYSTEM_TZ_OVERRIDE:Z

    if-eqz v0, :cond_e

    .line 303
    sget-object v0, Lnet/time4j/tz/Timezone;->SYSTEM_TZ_ORIGINAL:Lnet/time4j/tz/Timezone;

    sput-object v0, Lnet/time4j/tz/Timezone;->currentSystemTZ:Lnet/time4j/tz/Timezone;

    .line 307
    :cond_e
    new-instance v0, Lnet/time4j/tz/Timezone$ZonalKeys;

    invoke-direct {v0}, Lnet/time4j/tz/Timezone$ZonalKeys;-><init>()V

    sput-object v0, Lnet/time4j/tz/Timezone;->zonalKeys:Lnet/time4j/tz/Timezone$ZonalKeys;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lnet/time4j/tz/Timezone;
    .locals 1

    .line 107
    invoke-static {}, Lnet/time4j/tz/Timezone;->getDefaultTZ()Lnet/time4j/tz/Timezone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0

    .line 107
    sput-boolean p0, Lnet/time4j/tz/Timezone;->cacheActive:Z

    return p0
.end method

.method static synthetic access$1202(I)I
    .locals 0

    .line 107
    sput p0, Lnet/time4j/tz/Timezone;->softLimit:I

    return p0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1400()Lnet/time4j/tz/ZoneModelProvider;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/tz/Timezone;->PLATFORM_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    return-object v0
.end method

.method static synthetic access$1500()Lnet/time4j/tz/ZoneModelProvider;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/tz/Timezone;->DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    return-object v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)Lnet/time4j/tz/TZID;
    .locals 0

    .line 107
    invoke-static {p0}, Lnet/time4j/tz/Timezone;->resolve(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700()Ljava/util/Comparator;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/tz/Timezone;->ID_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/tz/Timezone;->QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/LinkedList;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/tz/Timezone;->LAST_USED:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$602(Lnet/time4j/tz/Timezone$ZonalKeys;)Lnet/time4j/tz/Timezone$ZonalKeys;
    .locals 0

    .line 107
    sput-object p0, Lnet/time4j/tz/Timezone;->zonalKeys:Lnet/time4j/tz/Timezone$ZonalKeys;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 107
    sget-object v0, Lnet/time4j/tz/Timezone;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 107
    sget-boolean v0, Lnet/time4j/tz/Timezone;->ALLOW_SYSTEM_TZ_OVERRIDE:Z

    return v0
.end method

.method static synthetic access$902(Lnet/time4j/tz/Timezone;)Lnet/time4j/tz/Timezone;
    .locals 0

    .line 107
    sput-object p0, Lnet/time4j/tz/Timezone;->currentSystemTZ:Lnet/time4j/tz/Timezone;

    return-object p0
.end method

.method private static compareTZDB(Lnet/time4j/tz/ZoneModelProvider;Lnet/time4j/tz/ZoneModelProvider;)Lnet/time4j/tz/ZoneModelProvider;
    .locals 3

    .line 1701
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 1703
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1704
    sget-object v1, Lnet/time4j/tz/Timezone;->REPOSITORY_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    .line 1709
    invoke-interface {p1}, Lnet/time4j/tz/ZoneModelProvider;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_0

    .line 1713
    :cond_1
    invoke-interface {p1}, Lnet/time4j/tz/ZoneModelProvider;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1714
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{java.home}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, p1

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static fillEtcetera(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/tz/TZID;",
            ">;)V"
        }
    .end annotation

    .line 1624
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/GMT"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/Greenwich"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/Universal"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/Zulu"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/GMT+0"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/GMT-0"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/GMT0"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/UTC"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    const-string v1, "Etc/UCT"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xc4e0

    .line 1633
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-14"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xb6d0

    .line 1634
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-13"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xa8c0

    .line 1635
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-12"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x9ab0

    .line 1636
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-11"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x8ca0

    .line 1637
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-10"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x7e90

    .line 1638
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-9"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x7080

    .line 1639
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-8"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6270

    .line 1640
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-7"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x5460

    .line 1641
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-6"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4650

    .line 1642
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-5"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3840

    .line 1643
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-4"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2a30

    .line 1644
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-3"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c20

    .line 1645
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-2"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe10

    .line 1646
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT-1"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0xe10

    .line 1647
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+1"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x1c20

    .line 1648
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+2"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x2a30

    .line 1649
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+3"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x3840

    .line 1650
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+4"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x4650

    .line 1651
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+5"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x5460

    .line 1652
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+6"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x6270

    .line 1653
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+7"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x7080

    .line 1654
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+8"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, -0x7e90

    .line 1655
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+9"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, -0x8ca0

    .line 1656
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+10"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, -0x9ab0

    .line 1657
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+11"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, -0xa8c0

    .line 1658
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    const-string v1, "Etc/GMT+12"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAvailableIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 334
    sget-object v0, Lnet/time4j/tz/Timezone;->zonalKeys:Lnet/time4j/tz/Timezone$ZonalKeys;

    invoke-static {v0}, Lnet/time4j/tz/Timezone$ZonalKeys;->access$100(Lnet/time4j/tz/Timezone$ZonalKeys;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableIDs(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    const-string v0, "INCLUDE_ALIAS"

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    sget-object p0, Lnet/time4j/tz/Timezone;->zonalKeys:Lnet/time4j/tz/Timezone$ZonalKeys;

    invoke-static {p0}, Lnet/time4j/tz/Timezone$ZonalKeys;->access$200(Lnet/time4j/tz/Timezone$ZonalKeys;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 375
    :cond_0
    invoke-static {p0}, Lnet/time4j/tz/Timezone;->getProvider(Ljava/lang/String;)Lnet/time4j/tz/ZoneModelProvider;

    move-result-object p0

    if-nez p0, :cond_1

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 381
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getAvailableIDs()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    invoke-static {v1}, Lnet/time4j/tz/Timezone;->resolve(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_2
    sget-object p0, Lnet/time4j/tz/Timezone;->ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 388
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultTZ()Lnet/time4j/tz/Timezone;
    .locals 3

    .line 1395
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1396
    invoke-static {v1, v0, v2}, Lnet/time4j/tz/Timezone;->getTZ(Lnet/time4j/tz/TZID;Ljava/lang/String;Z)Lnet/time4j/tz/Timezone;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1400
    new-instance v1, Lnet/time4j/tz/PlatformTimezone;

    new-instance v2, Lnet/time4j/tz/NamedID;

    invoke-direct {v2, v0}, Lnet/time4j/tz/NamedID;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lnet/time4j/tz/PlatformTimezone;-><init>(Lnet/time4j/tz/TZID;)V

    :cond_0
    return-object v1
.end method

.method public static getDisplayName(Lnet/time4j/tz/TZID;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .line 1262
    invoke-interface {p0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x7e

    .line 1263
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1264
    sget-object v1, Lnet/time4j/tz/Timezone;->DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    if-ltz v0, :cond_1

    const/4 v2, 0x0

    .line 1268
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEFAULT"

    .line 1269
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1270
    sget-object v1, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/ZoneModelProvider;

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1275
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 1278
    :goto_0
    invoke-interface {v1}, Lnet/time4j/tz/ZoneModelProvider;->getSpecificZoneNameRepository()Lnet/time4j/tz/ZoneNameProvider;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1281
    sget-object v1, Lnet/time4j/tz/Timezone;->NAME_PROVIDER:Lnet/time4j/tz/ZoneNameProvider;

    .line 1284
    :cond_2
    invoke-interface {v1, v0, p1, p2}, Lnet/time4j/tz/ZoneNameProvider;->getDisplayName(Ljava/lang/String;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1286
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1287
    sget-object v3, Lnet/time4j/tz/Timezone;->NAME_PROVIDER:Lnet/time4j/tz/ZoneNameProvider;

    if-eq v1, v3, :cond_3

    .line 1288
    invoke-interface {v3, v0, p1, p2}, Lnet/time4j/tz/ZoneNameProvider;->getDisplayName(Ljava/lang/String;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1290
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v2

    :goto_1
    move-object v2, p0

    :cond_5
    return-object v2
.end method

.method public static getPreferredIDs(Ljava/util/Locale;ZLjava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation

    .line 437
    invoke-static {p2}, Lnet/time4j/tz/Timezone;->getProvider(Ljava/lang/String;)Lnet/time4j/tz/ZoneModelProvider;

    move-result-object p2

    if-nez p2, :cond_0

    .line 440
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 443
    :cond_0
    invoke-interface {p2}, Lnet/time4j/tz/ZoneModelProvider;->getSpecificZoneNameRepository()Lnet/time4j/tz/ZoneNameProvider;

    move-result-object p2

    if-nez p2, :cond_1

    .line 446
    sget-object p2, Lnet/time4j/tz/Timezone;->NAME_PROVIDER:Lnet/time4j/tz/ZoneNameProvider;

    .line 449
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 451
    invoke-interface {p2, p0, p1}, Lnet/time4j/tz/ZoneNameProvider;->getPreferredIDs(Ljava/util/Locale;Z)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 452
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->resolve(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static getProvider(Ljava/lang/String;)Lnet/time4j/tz/ZoneModelProvider;
    .locals 1

    .line 1685
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DEFAULT"

    .line 1690
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/time4j/tz/Timezone;->DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    .line 1692
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/ZoneModelProvider;

    :goto_0
    return-object p0

    .line 1686
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing zone model provider."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getProviderInfo()Ljava/lang/String;
    .locals 5

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1059
    const-class v1, Lnet/time4j/tz/Timezone;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":[default-provider="

    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    sget-object v1, Lnet/time4j/tz/Timezone;->DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    invoke-interface {v1}, Lnet/time4j/tz/ZoneModelProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", registered={"

    .line 1062
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    sget-object v1, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1065
    sget-object v3, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/tz/ZoneModelProvider;

    if-eqz v2, :cond_0

    const-string v3, "(name="

    .line 1067
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-interface {v2}, Lnet/time4j/tz/ZoneModelProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-interface {v2}, Lnet/time4j/tz/ZoneModelProvider;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 1072
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ",location="

    .line 1073
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    :cond_1
    invoke-interface {v2}, Lnet/time4j/tz/ZoneModelProvider;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 1079
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ",version="

    .line 1080
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v2, 0x29

    .line 1084
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "}]"

    .line 1088
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteredProviders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1135
    sget-object v0, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getTZ(Lnet/time4j/tz/TZID;Ljava/lang/String;Z)Lnet/time4j/tz/Timezone;
    .locals 9

    .line 1428
    sget-object v0, Lnet/time4j/tz/Timezone;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/Timezone$NamedReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1431
    invoke-virtual {v1}, Lnet/time4j/tz/Timezone$NamedReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/tz/Timezone;

    if-nez v3, :cond_1

    .line 1433
    invoke-static {v1}, Lnet/time4j/tz/Timezone$NamedReference;->access$300(Lnet/time4j/tz/Timezone$NamedReference;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    const-string v0, ""

    .line 1445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_4

    .line 1446
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7e

    if-ne v7, v8, :cond_3

    .line 1447
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v5, v6

    .line 1448
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move-object v1, p1

    .line 1453
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p2, :cond_5

    return-object v2

    .line 1455
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timezone key is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1461
    :cond_6
    sget-object v5, Lnet/time4j/tz/Timezone;->DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    .line 1464
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "DEFAULT"

    .line 1465
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v4, v6

    :cond_8
    if-nez v4, :cond_b

    .line 1468
    sget-object v5, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/tz/ZoneModelProvider;

    if-nez v5, :cond_b

    if-eqz p2, :cond_a

    const-string p0, "TZDB"

    .line 1473
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "TZDB provider not available: "

    goto :goto_3

    :cond_9
    const-string p0, "Timezone model provider not registered: "

    .line 1478
    :goto_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    return-object v2

    :cond_b
    if-nez p0, :cond_d

    if-eqz v4, :cond_c

    .line 1490
    invoke-static {v1}, Lnet/time4j/tz/Timezone;->resolve(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object p0

    .line 1491
    instance-of v0, p0, Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_d

    .line 1492
    check-cast p0, Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0}, Lnet/time4j/tz/ZonalOffset;->getModel()Lnet/time4j/tz/SingleOffsetTimezone;

    move-result-object p0

    return-object p0

    .line 1497
    :cond_c
    new-instance p0, Lnet/time4j/tz/NamedID;

    invoke-direct {p0, p1}, Lnet/time4j/tz/NamedID;-><init>(Ljava/lang/String;)V

    .line 1502
    :cond_d
    sget-object v0, Lnet/time4j/tz/Timezone;->PLATFORM_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    if-ne v5, v0, :cond_f

    .line 1503
    new-instance v0, Lnet/time4j/tz/PlatformTimezone;

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/PlatformTimezone;-><init>(Lnet/time4j/tz/TZID;Ljava/lang/String;)V

    .line 1507
    invoke-virtual {v0}, Lnet/time4j/tz/PlatformTimezone;->isGMT()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "GMT"

    .line 1508
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "UT"

    .line 1509
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "Z"

    .line 1510
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    :cond_e
    move-object v3, v0

    goto :goto_4

    .line 1515
    :cond_f
    invoke-interface {v5, v1}, Lnet/time4j/tz/ZoneModelProvider;->load(Ljava/lang/String;)Lnet/time4j/tz/TransitionHistory;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1519
    invoke-static {v5, p0, v1}, Lnet/time4j/tz/Timezone;->getZoneByAlias(Lnet/time4j/tz/ZoneModelProvider;Lnet/time4j/tz/TZID;Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object v3

    goto :goto_4

    .line 1521
    :cond_10
    new-instance v3, Lnet/time4j/tz/HistorizedTimezone;

    invoke-direct {v3, p0, v0}, Lnet/time4j/tz/HistorizedTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TransitionHistory;)V

    :cond_11
    :goto_4
    if-nez v3, :cond_14

    if-nez p2, :cond_12

    return-object v2

    .line 1529
    :cond_12
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 1531
    new-instance p0, Lnet/time4j/tz/PlatformTimezone;

    new-instance p2, Lnet/time4j/tz/NamedID;

    invoke-direct {p2, p1}, Lnet/time4j/tz/NamedID;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lnet/time4j/tz/PlatformTimezone;-><init>(Lnet/time4j/tz/TZID;)V

    return-object p0

    .line 1533
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown timezone: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1538
    :cond_14
    sget-boolean p0, Lnet/time4j/tz/Timezone;->cacheActive:Z

    if-eqz p0, :cond_17

    .line 1539
    sget-object p0, Lnet/time4j/tz/Timezone;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    new-instance p2, Lnet/time4j/tz/Timezone$NamedReference;

    sget-object v0, Lnet/time4j/tz/Timezone;->QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p2, v3, v0}, Lnet/time4j/tz/Timezone$NamedReference;-><init>(Lnet/time4j/tz/Timezone;Ljava/lang/ref/ReferenceQueue;)V

    .line 1540
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/Timezone$NamedReference;

    if-nez p0, :cond_16

    .line 1546
    const-class p1, Lnet/time4j/tz/Timezone;

    monitor-enter p1

    .line 1547
    :try_start_0
    sget-object p0, Lnet/time4j/tz/Timezone;->LAST_USED:Ljava/util/LinkedList;

    invoke-virtual {p0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1549
    :goto_5
    sget-object p0, Lnet/time4j/tz/Timezone;->LAST_USED:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p2

    sget v0, Lnet/time4j/tz/Timezone;->softLimit:I

    if-lt p2, v0, :cond_15

    .line 1550
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    .line 1552
    :cond_15
    monitor-exit p1

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1554
    :cond_16
    invoke-virtual {p0}, Lnet/time4j/tz/Timezone$NamedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/Timezone;

    if-eqz p0, :cond_17

    move-object v3, p0

    :cond_17
    :goto_6
    return-object v3
.end method

.method private static getTZ(Lnet/time4j/tz/TZID;Z)Lnet/time4j/tz/Timezone;
    .locals 1

    .line 1412
    instance-of v0, p0, Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_0

    .line 1413
    check-cast p0, Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0}, Lnet/time4j/tz/ZonalOffset;->getModel()Lnet/time4j/tz/SingleOffsetTimezone;

    move-result-object p0

    return-object p0

    .line 1416
    :cond_0
    invoke-interface {p0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lnet/time4j/tz/Timezone;->getTZ(Lnet/time4j/tz/TZID;Ljava/lang/String;Z)Lnet/time4j/tz/Timezone;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1112
    invoke-static {p0}, Lnet/time4j/tz/Timezone;->getProvider(Ljava/lang/String;)Lnet/time4j/tz/ZoneModelProvider;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1113
    :cond_0
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getVersion()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getZoneByAlias(Lnet/time4j/tz/ZoneModelProvider;Lnet/time4j/tz/TZID;Ljava/lang/String;)Lnet/time4j/tz/Timezone;
    .locals 4

    .line 1574
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getAliases()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, p2

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    .line 1578
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1580
    invoke-interface {p0, v3}, Lnet/time4j/tz/ZoneModelProvider;->load(Ljava/lang/String;)Lnet/time4j/tz/TransitionHistory;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-nez v2, :cond_3

    .line 1584
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getFallback()Ljava/lang/String;

    move-result-object v0

    .line 1586
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 1588
    :cond_1
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1592
    new-instance p0, Lnet/time4j/tz/FallbackTimezone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "~"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1594
    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/time4j/tz/FallbackTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/Timezone;)V

    return-object p0

    .line 1589
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Circular zone model provider fallback: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1597
    :cond_3
    new-instance p0, Lnet/time4j/tz/HistorizedTimezone;

    invoke-direct {p0, p1, v2}, Lnet/time4j/tz/HistorizedTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TransitionHistory;)V

    return-object p0
.end method

.method private static varargs loadPredefined(Ljava/lang/ClassLoader;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lnet/time4j/tz/TZID;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1670
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net.time4j.tz.olson."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1672
    invoke-static {v3, v4, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1674
    const-class v4, Lnet/time4j/tz/TZID;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1675
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1679
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Lnet/time4j/tz/TZID;
    .locals 6

    .line 751
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 752
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7e

    if-ne v4, v5, :cond_0

    .line 753
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v3

    .line 754
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    move-object v2, p0

    .line 759
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 763
    sget-object v4, Lnet/time4j/tz/Timezone;->DEFAULT_PROVIDER:Lnet/time4j/tz/ZoneModelProvider;

    .line 764
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "DEFAULT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    if-nez v1, :cond_5

    const-string v1, "WINDOWS"

    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "MILITARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 767
    sget-object v1, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lnet/time4j/tz/ZoneModelProvider;

    if-nez v4, :cond_5

    const-string v1, "TZDB"

    .line 771
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "TZDB provider not available: "

    goto :goto_2

    :cond_4
    const-string v0, "Timezone model provider not registered: "

    .line 776
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 782
    :cond_5
    invoke-interface {v4}, Lnet/time4j/tz/ZoneModelProvider;->getAliases()Ljava/util/Map;

    move-result-object p0

    .line 784
    :goto_3
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    move-object v2, v0

    goto :goto_3

    .line 788
    :cond_6
    sget-object p0, Lnet/time4j/tz/Timezone;->ETCETERA:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 789
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/TZID;

    return-object p0

    .line 792
    :cond_7
    invoke-static {v2}, Lnet/time4j/tz/Timezone;->resolve(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object p0

    return-object p0

    .line 760
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty zone identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static normalize(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/TZID;
    .locals 0

    .line 705
    invoke-interface {p0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/time4j/tz/Timezone;->normalize(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 600
    invoke-static {v0, p0, v1}, Lnet/time4j/tz/Timezone;->getTZ(Lnet/time4j/tz/TZID;Ljava/lang/String;Z)Lnet/time4j/tz/Timezone;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 641
    invoke-static {v0, p0, v1}, Lnet/time4j/tz/Timezone;->getTZ(Lnet/time4j/tz/TZID;Ljava/lang/String;Z)Lnet/time4j/tz/Timezone;

    move-result-object p0

    if-nez p0, :cond_0

    .line 644
    invoke-static {p1, v1}, Lnet/time4j/tz/Timezone;->getTZ(Lnet/time4j/tz/TZID;Z)Lnet/time4j/tz/Timezone;

    move-result-object p0

    if-nez p0, :cond_0

    .line 647
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static of(Ljava/lang/String;Lnet/time4j/tz/TransitionHistory;)Lnet/time4j/tz/Timezone;
    .locals 1

    .line 681
    new-instance v0, Lnet/time4j/tz/HistorizedTimezone;

    invoke-static {p0}, Lnet/time4j/tz/Timezone;->resolve(Ljava/lang/String;)Lnet/time4j/tz/TZID;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/time4j/tz/HistorizedTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TransitionHistory;)V

    return-object v0
.end method

.method public static of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;
    .locals 1

    const/4 v0, 0x1

    .line 576
    invoke-static {p0, v0}, Lnet/time4j/tz/Timezone;->getTZ(Lnet/time4j/tz/TZID;Z)Lnet/time4j/tz/Timezone;

    move-result-object p0

    return-object p0
.end method

.method public static ofPlatform()Lnet/time4j/tz/Timezone;
    .locals 1

    .line 552
    new-instance v0, Lnet/time4j/tz/PlatformTimezone;

    invoke-direct {v0}, Lnet/time4j/tz/PlatformTimezone;-><init>()V

    return-object v0
.end method

.method public static ofSystem()Lnet/time4j/tz/Timezone;
    .locals 1

    .line 509
    sget-boolean v0, Lnet/time4j/tz/Timezone;->ALLOW_SYSTEM_TZ_OVERRIDE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/tz/Timezone;->currentSystemTZ:Lnet/time4j/tz/Timezone;

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lnet/time4j/tz/Timezone;->currentSystemTZ:Lnet/time4j/tz/Timezone;

    return-object v0

    .line 514
    :cond_0
    sget-object v0, Lnet/time4j/tz/Timezone;->SYSTEM_TZ_ORIGINAL:Lnet/time4j/tz/Timezone;

    return-object v0
.end method

.method public static registerProvider(Lnet/time4j/tz/ZoneModelProvider;)Z
    .locals 2

    .line 1322
    invoke-interface {p0}, Lnet/time4j/tz/ZoneModelProvider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "TZDB"

    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "java.util.TimeZone"

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "DEFAULT"

    .line 1333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1338
    sget-object v1, Lnet/time4j/tz/Timezone;->PROVIDERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1341
    new-instance v0, Lnet/time4j/tz/Timezone$ZonalKeys;

    invoke-direct {v0}, Lnet/time4j/tz/Timezone$ZonalKeys;-><init>()V

    sput-object v0, Lnet/time4j/tz/Timezone;->zonalKeys:Lnet/time4j/tz/Timezone$ZonalKeys;

    :cond_1
    return p0

    .line 1334
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default zone model provider cannot be overridden."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1331
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Platform provider cannot be replaced."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1328
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TZDB provider cannot be registered after startup."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1325
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing name of zone model provider."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static resolve(Ljava/lang/String;)Lnet/time4j/tz/TZID;
    .locals 2

    .line 1605
    sget-object v0, Lnet/time4j/tz/Timezone;->PREDEFINED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    if-nez v0, :cond_1

    const-string v0, "GMT"

    .line 1608
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1612
    invoke-static {p0, v0}, Lnet/time4j/tz/ZonalOffset;->parse(Ljava/lang/String;Z)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1615
    new-instance v0, Lnet/time4j/tz/NamedID;

    invoke-direct {v0, p0}, Lnet/time4j/tz/NamedID;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Start Of Dump =>"

    .line 1367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/time4j/tz/Timezone;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*** Timezone-ID:"

    .line 1368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">>> "

    .line 1369
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v3

    invoke-interface {v3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-virtual {p0}, Lnet/time4j/tz/Timezone;->isFixed()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "*** Fixed offset:"

    .line 1372
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-virtual {p0}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v2

    invoke-interface {v2}, Lnet/time4j/tz/TransitionHistory;->getInitialOffset()Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, "*** Strategy:"

    .line 1375
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/tz/Timezone;->getStrategy()Lnet/time4j/tz/TransitionStrategy;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {p0}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v2

    const-string v3, "*** History:"

    .line 1379
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const-string v2, ">>> Not public!"

    .line 1382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1384
    :cond_1
    invoke-interface {v2, v0}, Lnet/time4j/tz/TransitionHistory;->dump(Ljava/lang/Appendable;)V

    :goto_0
    const-string v2, "<= End Of Dump"

    .line 1388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public abstract getDaylightSavingOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
.end method

.method public getDisplayName(Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnet/time4j/tz/Timezone;->getDisplayName(Lnet/time4j/tz/TZID;Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getHistory()Lnet/time4j/tz/TransitionHistory;
.end method

.method public abstract getID()Lnet/time4j/tz/TZID;
.end method

.method public abstract getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;
.end method

.method public abstract getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
.end method

.method public abstract getStandardOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
.end method

.method public abstract getStrategy()Lnet/time4j/tz/TransitionStrategy;
.end method

.method public abstract isDaylightSaving(Lnet/time4j/base/UnixTime;)Z
.end method

.method public abstract isFixed()Z
.end method

.method public abstract isInvalid(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Z
.end method

.method public abstract with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;
.end method
