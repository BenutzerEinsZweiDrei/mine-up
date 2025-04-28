.class final Lnet/time4j/UnitPatterns;
.super Ljava/lang/Object;
.source "UnitPatterns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/UnitPatterns$FallbackProvider;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lnet/time4j/UnitPatterns;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK:Lnet/time4j/format/UnitPatternProvider;

.field private static final MAX_LIST_INDEX:I = 0x7

.field private static final MIN_LIST_INDEX:I = 0x2

.field private static final PROVIDER:Lnet/time4j/format/UnitPatternProvider;

.field private static final UNIT_IDS:[Lnet/time4j/IsoUnit;


# instance fields
.field private final future:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/IsoUnit;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lastWeekdays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/Weekday;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final list:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final locale:Ljava/util/Locale;

.field private final nextWeekdays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/Weekday;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final now:Ljava/lang/String;

.field private final past:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/IsoUnit;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final patterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/IsoUnit;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final shortFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/IsoUnit;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shortPast:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/IsoUnit;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final today:Ljava/lang/String;

.field private final tomorrow:Ljava/lang/String;

.field private final yesterday:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/UnitPatterns;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    const/16 v0, 0xa

    new-array v0, v0, [Lnet/time4j/IsoUnit;

    .line 54
    sget-object v1, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lnet/time4j/UnitPatterns;->UNIT_IDS:[Lnet/time4j/IsoUnit;

    .line 70
    new-instance v0, Lnet/time4j/UnitPatterns$FallbackProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/UnitPatterns$FallbackProvider;-><init>(Lnet/time4j/UnitPatterns$1;)V

    sput-object v0, Lnet/time4j/UnitPatterns;->FALLBACK:Lnet/time4j/format/UnitPatternProvider;

    .line 73
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    const-class v3, Lnet/time4j/format/UnitPatternProvider;

    invoke-virtual {v2, v3}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/UnitPatternProvider;

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 82
    :goto_0
    sput-object v0, Lnet/time4j/UnitPatterns;->PROVIDER:Lnet/time4j/format/UnitPatternProvider;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v1, v0, Lnet/time4j/UnitPatterns;->locale:Ljava/util/Locale;

    .line 108
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 110
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 112
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 116
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 121
    sget-object v3, Lnet/time4j/UnitPatterns;->UNIT_IDS:[Lnet/time4j/IsoUnit;

    array-length v9, v3

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_7

    aget-object v12, v3, v11

    .line 123
    new-instance v13, Ljava/util/EnumMap;

    const-class v14, Lnet/time4j/format/TextWidth;

    invoke-direct {v13, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 125
    invoke-static {}, Lnet/time4j/format/TextWidth;->values()[Lnet/time4j/format/TextWidth;

    move-result-object v14

    array-length v15, v14

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v15, :cond_1

    move-object/from16 v17, v3

    aget-object v3, v14, v10

    move/from16 v18, v9

    .line 126
    new-instance v9, Ljava/util/EnumMap;

    move-object/from16 v19, v14

    const-class v14, Lnet/time4j/format/PluralCategory;

    invoke-direct {v9, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    invoke-static {}, Lnet/time4j/format/PluralCategory;->values()[Lnet/time4j/format/PluralCategory;

    move-result-object v14

    move/from16 v20, v15

    array-length v15, v14

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v15, :cond_0

    move/from16 v21, v15

    aget-object v15, v14, v0

    move-object/from16 v22, v14

    .line 129
    invoke-static {v1, v12, v3, v15}, Lnet/time4j/UnitPatterns;->lookup(Ljava/util/Locale;Lnet/time4j/IsoUnit;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move/from16 v15, v21

    move-object/from16 v14, v22

    goto :goto_2

    .line 131
    :cond_0
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v13, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v17

    move/from16 v9, v18

    move-object/from16 v14, v19

    move/from16 v15, v20

    goto :goto_1

    :cond_1
    move-object/from16 v17, v3

    move/from16 v18, v9

    .line 135
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 133
    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-interface {v12}, Lnet/time4j/IsoUnit;->getSymbol()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_6

    .line 139
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lnet/time4j/format/PluralCategory;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    invoke-static {}, Lnet/time4j/format/PluralCategory;->values()[Lnet/time4j/format/PluralCategory;

    move-result-object v3

    array-length v9, v3

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_2

    aget-object v13, v3, v10

    const/4 v14, 0x0

    .line 142
    invoke-static {v1, v12, v14, v14, v13}, Lnet/time4j/UnitPatterns;->lookup(Ljava/util/Locale;Lnet/time4j/IsoUnit;ZZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 146
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 144
    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lnet/time4j/format/PluralCategory;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 149
    invoke-static {}, Lnet/time4j/format/PluralCategory;->values()[Lnet/time4j/format/PluralCategory;

    move-result-object v3

    array-length v9, v3

    const/4 v14, 0x0

    :goto_4
    const/4 v10, 0x1

    if-ge v14, v9, :cond_3

    aget-object v13, v3, v14

    const/4 v15, 0x0

    .line 150
    invoke-static {v1, v12, v15, v10, v13}, Lnet/time4j/UnitPatterns;->lookup(Ljava/util/Locale;Lnet/time4j/IsoUnit;ZZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 154
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 152
    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lnet/time4j/format/PluralCategory;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 159
    invoke-static {}, Lnet/time4j/format/PluralCategory;->values()[Lnet/time4j/format/PluralCategory;

    move-result-object v3

    array-length v9, v3

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v9, :cond_4

    aget-object v13, v3, v14

    move-object/from16 v16, v3

    const/4 v15, 0x0

    .line 160
    invoke-static {v1, v12, v10, v15, v13}, Lnet/time4j/UnitPatterns;->lookup(Ljava/util/Locale;Lnet/time4j/IsoUnit;ZZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    .line 164
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 162
    invoke-interface {v5, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lnet/time4j/format/PluralCategory;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 167
    invoke-static {}, Lnet/time4j/format/PluralCategory;->values()[Lnet/time4j/format/PluralCategory;

    move-result-object v3

    array-length v9, v3

    move v14, v15

    :goto_6
    if-ge v14, v9, :cond_5

    aget-object v13, v3, v14

    .line 168
    invoke-static {v1, v12, v10, v10, v13}, Lnet/time4j/UnitPatterns;->lookup(Ljava/util/Locale;Lnet/time4j/IsoUnit;ZZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    goto :goto_6

    .line 172
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 170
    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v17

    move/from16 v9, v18

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x2

    :goto_7
    const/4 v3, 0x7

    if-gt v0, v3, :cond_9

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 179
    new-instance v9, Ljava/util/EnumMap;

    const-class v10, Lnet/time4j/format/TextWidth;

    invoke-direct {v9, v10}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 181
    invoke-static {}, Lnet/time4j/format/TextWidth;->values()[Lnet/time4j/format/TextWidth;

    move-result-object v10

    array-length v11, v10

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v11, :cond_8

    aget-object v12, v10, v14

    .line 182
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v1, v12, v13}, Lnet/time4j/UnitPatterns;->lookup(Ljava/util/Locale;Lnet/time4j/format/TextWidth;I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 186
    :cond_8
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 184
    invoke-interface {v8, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 189
    :cond_9
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v2, p0

    iput-object v0, v2, Lnet/time4j/UnitPatterns;->patterns:Ljava/util/Map;

    .line 190
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lnet/time4j/UnitPatterns;->past:Ljava/util/Map;

    .line 191
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lnet/time4j/UnitPatterns;->future:Ljava/util/Map;

    .line 192
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lnet/time4j/UnitPatterns;->shortPast:Ljava/util/Map;

    .line 193
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lnet/time4j/UnitPatterns;->shortFuture:Ljava/util/Map;

    .line 194
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lnet/time4j/UnitPatterns;->list:Ljava/util/Map;

    .line 202
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lnet/time4j/Weekday;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 203
    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lnet/time4j/Weekday;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 205
    invoke-static {}, Lnet/time4j/Weekday;->values()[Lnet/time4j/Weekday;

    move-result-object v4

    array-length v5, v4

    const/4 v14, 0x0

    :goto_9
    const-string v6, ""

    if-ge v14, v5, :cond_a

    aget-object v7, v4, v14

    .line 206
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 211
    :cond_a
    :try_start_0
    sget-object v4, Lnet/time4j/UnitPatterns;->PROVIDER:Lnet/time4j/format/UnitPatternProvider;

    invoke-interface {v4, v1}, Lnet/time4j/format/UnitPatternProvider;->getNowWord(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 213
    instance-of v7, v4, Lnet/time4j/format/RelativeTimeProvider;

    if-eqz v7, :cond_c

    .line 214
    const-class v7, Lnet/time4j/format/RelativeTimeProvider;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/RelativeTimeProvider;

    .line 215
    invoke-interface {v4, v1}, Lnet/time4j/format/RelativeTimeProvider;->getYesterdayWord(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    .line 216
    :try_start_1
    invoke-interface {v4, v1}, Lnet/time4j/format/RelativeTimeProvider;->getTodayWord(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :try_start_2
    invoke-interface {v4, v1}, Lnet/time4j/format/RelativeTimeProvider;->getTomorrowWord(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-static {}, Lnet/time4j/Weekday;->values()[Lnet/time4j/Weekday;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v10, :cond_b

    aget-object v12, v9, v11

    .line 219
    invoke-interface {v4, v12, v1}, Lnet/time4j/format/RelativeTimeProvider;->labelForLast(Lnet/time4j/Weekday;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-interface {v4, v12, v1}, Lnet/time4j/format/RelativeTimeProvider;->labelForNext(Lnet/time4j/Weekday;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_b
    move-object v1, v6

    move-object v6, v7

    goto :goto_d

    :catch_0
    move-object v4, v6

    goto :goto_b

    :catch_1
    move-object v4, v6

    move-object v8, v4

    :goto_b
    move-object v6, v7

    goto :goto_c

    :cond_c
    move-object v1, v6

    move-object v8, v1

    goto :goto_d

    :catch_2
    move-object v4, v6

    move-object v8, v4

    .line 224
    :goto_c
    sget-object v5, Lnet/time4j/UnitPatterns;->FALLBACK:Lnet/time4j/format/UnitPatternProvider;

    invoke-interface {v5, v1}, Lnet/time4j/format/UnitPatternProvider;->getNowWord(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v4

    .line 227
    :goto_d
    iput-object v5, v2, Lnet/time4j/UnitPatterns;->now:Ljava/lang/String;

    .line 228
    iput-object v6, v2, Lnet/time4j/UnitPatterns;->yesterday:Ljava/lang/String;

    .line 229
    iput-object v8, v2, Lnet/time4j/UnitPatterns;->today:Ljava/lang/String;

    .line 230
    iput-object v1, v2, Lnet/time4j/UnitPatterns;->tomorrow:Ljava/lang/String;

    .line 231
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lnet/time4j/UnitPatterns;->lastWeekdays:Ljava/util/Map;

    .line 232
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lnet/time4j/UnitPatterns;->nextWeekdays:Ljava/util/Map;

    return-void
.end method

.method private static checkNull(Lnet/time4j/format/PluralCategory;)V
    .locals 1

    const-string v0, "Missing plural category."

    .line 441
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private static checkNull(Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)V
    .locals 1

    const-string v0, "Missing text width."

    .line 452
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    invoke-static {p1}, Lnet/time4j/UnitPatterns;->checkNull(Lnet/time4j/format/PluralCategory;)V

    return-void
.end method

.method private static getID(Lnet/time4j/IsoUnit;)C
    .locals 2

    .line 461
    invoke-interface {p0}, Lnet/time4j/IsoUnit;->getSymbol()C

    move-result v0

    .line 463
    sget-object v1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    if-ne p0, v1, :cond_0

    const/16 p0, 0x4e

    return p0

    :cond_0
    return v0
.end method

.method private static lookup(Ljava/util/Locale;Lnet/time4j/IsoUnit;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 479
    :try_start_0
    sget-object v0, Lnet/time4j/UnitPatterns;->PROVIDER:Lnet/time4j/format/UnitPatternProvider;

    invoke-static {p1}, Lnet/time4j/UnitPatterns;->getID(Lnet/time4j/IsoUnit;)C

    move-result v1

    invoke-static {v0, p0, v1, p2, p3}, Lnet/time4j/UnitPatterns;->lookup(Lnet/time4j/format/UnitPatternProvider;Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 481
    :catch_0
    sget-object v0, Lnet/time4j/UnitPatterns;->FALLBACK:Lnet/time4j/format/UnitPatternProvider;

    invoke-static {p1}, Lnet/time4j/UnitPatterns;->getID(Lnet/time4j/IsoUnit;)C

    move-result p1

    invoke-static {v0, p0, p1, p2, p3}, Lnet/time4j/UnitPatterns;->lookup(Lnet/time4j/format/UnitPatternProvider;Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lookup(Ljava/util/Locale;Lnet/time4j/IsoUnit;ZZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 6

    .line 530
    :try_start_0
    sget-object v0, Lnet/time4j/UnitPatterns;->PROVIDER:Lnet/time4j/format/UnitPatternProvider;

    invoke-static {p1}, Lnet/time4j/UnitPatterns;->getID(Lnet/time4j/IsoUnit;)C

    move-result v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lnet/time4j/UnitPatterns;->lookup(Lnet/time4j/format/UnitPatternProvider;Ljava/util/Locale;CZZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 532
    :catch_0
    sget-object v0, Lnet/time4j/UnitPatterns;->FALLBACK:Lnet/time4j/format/UnitPatternProvider;

    invoke-static {p1}, Lnet/time4j/UnitPatterns;->getID(Lnet/time4j/IsoUnit;)C

    move-result v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lnet/time4j/UnitPatterns;->lookup(Lnet/time4j/format/UnitPatternProvider;Ljava/util/Locale;CZZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lookup(Ljava/util/Locale;Lnet/time4j/format/TextWidth;I)Ljava/lang/String;
    .locals 1

    .line 596
    :try_start_0
    sget-object v0, Lnet/time4j/UnitPatterns;->PROVIDER:Lnet/time4j/format/UnitPatternProvider;

    invoke-interface {v0, p0, p1, p2}, Lnet/time4j/format/UnitPatternProvider;->getListPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 598
    :catch_0
    sget-object v0, Lnet/time4j/UnitPatterns;->FALLBACK:Lnet/time4j/format/UnitPatternProvider;

    invoke-interface {v0, p0, p1, p2}, Lnet/time4j/format/UnitPatternProvider;->getListPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lookup(Lnet/time4j/format/UnitPatternProvider;Ljava/util/Locale;CLnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x33

    if-eq p2, v0, :cond_9

    const/16 v0, 0x36

    if-eq p2, v0, :cond_8

    const/16 v0, 0x39

    if-eq p2, v0, :cond_7

    const/16 v0, 0x44

    if-eq p2, v0, :cond_6

    const/16 v0, 0x48

    if-eq p2, v0, :cond_5

    const/16 v0, 0x53

    if-eq p2, v0, :cond_4

    const/16 v0, 0x57

    if-eq p2, v0, :cond_3

    const/16 v0, 0x59

    if-eq p2, v0, :cond_2

    const/16 v0, 0x4d

    if-eq p2, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_0

    .line 506
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getMinutePattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 516
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unit-ID: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 498
    :cond_1
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getMonthPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 496
    :cond_2
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getYearPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 500
    :cond_3
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getWeekPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 508
    :cond_4
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getSecondPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 504
    :cond_5
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getHourPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 502
    :cond_6
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getDayPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 514
    :cond_7
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getNanoPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 512
    :cond_8
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getMicroPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 510
    :cond_9
    invoke-interface {p0, p1, p3, p4}, Lnet/time4j/format/UnitPatternProvider;->getMilliPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lookup(Lnet/time4j/format/UnitPatternProvider;Ljava/util/Locale;CZZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 8

    const-string v0, "Unit-ID: "

    const/16 v1, 0x4e

    const/16 v2, 0x4d

    const/16 v3, 0x59

    const/16 v4, 0x57

    const/16 v5, 0x53

    const/16 v6, 0x48

    const/16 v7, 0x44

    if-eqz p4, :cond_7

    .line 546
    instance-of p4, p0, Lnet/time4j/format/RelativeTimeProvider;

    if-eqz p4, :cond_7

    .line 547
    const-class p4, Lnet/time4j/format/RelativeTimeProvider;

    invoke-virtual {p4, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/RelativeTimeProvider;

    if-eq p2, v7, :cond_6

    if-eq p2, v6, :cond_5

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    .line 560
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/RelativeTimeProvider;->getShortMinutePattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 564
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 552
    :cond_1
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/RelativeTimeProvider;->getShortMonthPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 550
    :cond_2
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/RelativeTimeProvider;->getShortYearPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 554
    :cond_3
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/RelativeTimeProvider;->getShortWeekPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 562
    :cond_4
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/RelativeTimeProvider;->getShortSecondPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 558
    :cond_5
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/RelativeTimeProvider;->getShortHourPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 556
    :cond_6
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/RelativeTimeProvider;->getShortDayPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eq p2, v7, :cond_e

    if-eq p2, v6, :cond_d

    if-eq p2, v5, :cond_c

    if-eq p2, v4, :cond_b

    if-eq p2, v3, :cond_a

    if-eq p2, v2, :cond_9

    if-ne p2, v1, :cond_8

    .line 580
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/UnitPatternProvider;->getMinutePattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 584
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 572
    :cond_9
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/UnitPatternProvider;->getMonthPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 570
    :cond_a
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/UnitPatternProvider;->getYearPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 574
    :cond_b
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/UnitPatternProvider;->getWeekPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 582
    :cond_c
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/UnitPatternProvider;->getSecondPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 578
    :cond_d
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/UnitPatternProvider;->getHourPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 576
    :cond_e
    invoke-interface {p0, p1, p3, p5}, Lnet/time4j/format/UnitPatternProvider;->getDayPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;
    .locals 2

    const-string v0, "Missing language."

    .line 246
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lnet/time4j/UnitPatterns;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/UnitPatterns;

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Lnet/time4j/UnitPatterns;

    invoke-direct {v1, p0}, Lnet/time4j/UnitPatterns;-><init>(Ljava/util/Locale;)V

    .line 253
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/UnitPatterns;

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method getListPattern(Lnet/time4j/format/TextWidth;I)Ljava/lang/String;
    .locals 1

    const-string v0, "Missing width."

    .line 424
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 431
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->list:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 434
    :cond_0
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->locale:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Lnet/time4j/UnitPatterns;->lookup(Ljava/util/Locale;Lnet/time4j/format/TextWidth;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNowWord()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->now:Ljava/lang/String;

    return-object v0
.end method

.method getPattern(Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;Lnet/time4j/IsoUnit;)Ljava/lang/String;
    .locals 1

    .line 278
    invoke-static {p1, p2}, Lnet/time4j/UnitPatterns;->checkNull(Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)V

    .line 279
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->patterns:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getPatternInFuture(Lnet/time4j/format/PluralCategory;ZLnet/time4j/IsoUnit;)Ljava/lang/String;
    .locals 0

    .line 327
    invoke-static {p1}, Lnet/time4j/UnitPatterns;->checkNull(Lnet/time4j/format/PluralCategory;)V

    if-eqz p2, :cond_0

    .line 330
    iget-object p2, p0, Lnet/time4j/UnitPatterns;->shortFuture:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 332
    :cond_0
    iget-object p2, p0, Lnet/time4j/UnitPatterns;->future:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getPatternInPast(Lnet/time4j/format/PluralCategory;ZLnet/time4j/IsoUnit;)Ljava/lang/String;
    .locals 0

    .line 300
    invoke-static {p1}, Lnet/time4j/UnitPatterns;->checkNull(Lnet/time4j/format/PluralCategory;)V

    if-eqz p2, :cond_0

    .line 303
    iget-object p2, p0, Lnet/time4j/UnitPatterns;->shortPast:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 305
    :cond_0
    iget-object p2, p0, Lnet/time4j/UnitPatterns;->past:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getTodayWord()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->today:Ljava/lang/String;

    return-object v0
.end method

.method getTomorrowWord()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->tomorrow:Ljava/lang/String;

    return-object v0
.end method

.method getYesterdayWord()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->yesterday:Ljava/lang/String;

    return-object v0
.end method

.method labelForLast(Lnet/time4j/Weekday;)Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->lastWeekdays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method labelForNext(Lnet/time4j/Weekday;)Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lnet/time4j/UnitPatterns;->nextWeekdays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
