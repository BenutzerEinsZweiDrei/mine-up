.class public final Lnet/time4j/format/CalendarText;
.super Ljava/lang/Object;
.source "CalendarText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/CalendarText$FormatPatterns;,
        Lnet/time4j/format/CalendarText$FallbackProvider;,
        Lnet/time4j/format/CalendarText$JDKTextProvider;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/time4j/format/CalendarText;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_PATTERN_PROVIDER:Lnet/time4j/format/FormatPatternProvider;

.field public static final ISO_CALENDAR_TYPE:Ljava/lang/String; = "iso8601"

.field private static final JDK_PROVIDER:Lnet/time4j/format/TextProvider;

.field private static final ROOT_PROVIDER:Lnet/time4j/format/TextProvider;

.field private static final RTL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final calendarType:Ljava/lang/String;

.field private final eras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Lnet/time4j/format/TextAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private final leapMonths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/TextAccessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final locale:Ljava/util/Locale;

.field private final meridiems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/TextAccessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mre:Ljava/util/MissingResourceException;

.field private final provider:Ljava/lang/String;

.field private final quarters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/TextAccessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final stdMonths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/TextAccessor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final textForms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final weekdays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/TextAccessor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ar"

    .line 162
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dv"

    .line 163
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "fa"

    .line 164
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ha"

    .line 165
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "he"

    .line 166
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "iw"

    .line 167
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ji"

    .line 168
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ps"

    .line 169
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "sd"

    .line 170
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ug"

    .line 171
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "ur"

    .line 172
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "yi"

    .line 173
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/CalendarText;->RTL:Ljava/util/Set;

    .line 181
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    const-class v1, Lnet/time4j/format/FormatPatternProvider;

    invoke-virtual {v0, v1}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/FormatPatternProvider;

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lnet/time4j/i18n/IsoTextProviderSPI;

    invoke-direct {v0}, Lnet/time4j/i18n/IsoTextProviderSPI;-><init>()V

    .line 190
    :goto_0
    new-instance v1, Lnet/time4j/format/CalendarText$FormatPatterns;

    invoke-direct {v1, v0}, Lnet/time4j/format/CalendarText$FormatPatterns;-><init>(Lnet/time4j/format/FormatPatternProvider;)V

    sput-object v1, Lnet/time4j/format/CalendarText;->FORMAT_PATTERN_PROVIDER:Lnet/time4j/format/FormatPatternProvider;

    .line 201
    new-instance v0, Lnet/time4j/format/CalendarText$JDKTextProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/time4j/format/CalendarText$JDKTextProvider;-><init>(Lnet/time4j/format/CalendarText$1;)V

    sput-object v0, Lnet/time4j/format/CalendarText;->JDK_PROVIDER:Lnet/time4j/format/TextProvider;

    .line 202
    new-instance v0, Lnet/time4j/format/CalendarText$FallbackProvider;

    invoke-direct {v0, v1}, Lnet/time4j/format/CalendarText$FallbackProvider;-><init>(Lnet/time4j/format/CalendarText$1;)V

    sput-object v0, Lnet/time4j/format/CalendarText;->ROOT_PROVIDER:Lnet/time4j/format/TextProvider;

    .line 204
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/format/CalendarText;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextProvider;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lnet/time4j/format/CalendarText;->provider:Ljava/lang/String;

    const/4 v4, 0x0

    .line 238
    invoke-static {v2, v3, v0, v4}, Lnet/time4j/format/CalendarText;->getMonths(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextProvider;Z)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v1, Lnet/time4j/format/CalendarText;->stdMonths:Ljava/util/Map;

    const/4 v6, 0x1

    .line 241
    invoke-static {v2, v3, v0, v6}, Lnet/time4j/format/CalendarText;->getMonths(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextProvider;Z)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_0

    .line 244
    iput-object v5, v1, Lnet/time4j/format/CalendarText;->leapMonths:Ljava/util/Map;

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v1, Lnet/time4j/format/CalendarText;->leapMonths:Ljava/util/Map;

    .line 249
    :goto_0
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lnet/time4j/format/TextWidth;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 251
    invoke-static {}, Lnet/time4j/format/TextWidth;->values()[Lnet/time4j/format/TextWidth;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 252
    new-instance v10, Ljava/util/EnumMap;

    const-class v11, Lnet/time4j/format/OutputContext;

    invoke-direct {v10, v11}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 254
    invoke-static {}, Lnet/time4j/format/OutputContext;->values()[Lnet/time4j/format/OutputContext;

    move-result-object v11

    array-length v12, v11

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    .line 255
    new-instance v15, Lnet/time4j/format/TextAccessor;

    .line 257
    invoke-interface {v0, v2, v3, v9, v14}, Lnet/time4j/format/TextProvider;->quarters(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lnet/time4j/format/TextAccessor;-><init>([Ljava/lang/String;)V

    .line 255
    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 259
    :cond_1
    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 262
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v1, Lnet/time4j/format/CalendarText;->quarters:Ljava/util/Map;

    .line 264
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lnet/time4j/format/TextWidth;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 266
    invoke-static {}, Lnet/time4j/format/TextWidth;->values()[Lnet/time4j/format/TextWidth;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 267
    new-instance v9, Ljava/util/EnumMap;

    const-class v10, Lnet/time4j/format/OutputContext;

    invoke-direct {v9, v10}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 269
    invoke-static {}, Lnet/time4j/format/OutputContext;->values()[Lnet/time4j/format/OutputContext;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_3

    aget-object v13, v10, v12

    .line 270
    new-instance v14, Lnet/time4j/format/TextAccessor;

    .line 272
    invoke-interface {v0, v2, v3, v8, v13}, Lnet/time4j/format/TextProvider;->weekdays(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lnet/time4j/format/TextAccessor;-><init>([Ljava/lang/String;)V

    .line 270
    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 274
    :cond_3
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 277
    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v1, Lnet/time4j/format/CalendarText;->weekdays:Ljava/util/Map;

    .line 279
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lnet/time4j/format/TextWidth;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 281
    invoke-static {}, Lnet/time4j/format/TextWidth;->values()[Lnet/time4j/format/TextWidth;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 282
    new-instance v9, Lnet/time4j/format/TextAccessor;

    .line 284
    invoke-interface {v0, v2, v3, v8}, Lnet/time4j/format/TextProvider;->eras(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/time4j/format/TextAccessor;-><init>([Ljava/lang/String;)V

    .line 282
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 287
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v1, Lnet/time4j/format/CalendarText;->eras:Ljava/util/Map;

    .line 289
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lnet/time4j/format/TextWidth;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 291
    invoke-static {}, Lnet/time4j/format/TextWidth;->values()[Lnet/time4j/format/TextWidth;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 292
    new-instance v9, Ljava/util/EnumMap;

    const-class v10, Lnet/time4j/format/OutputContext;

    invoke-direct {v9, v10}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 294
    invoke-static {}, Lnet/time4j/format/OutputContext;->values()[Lnet/time4j/format/OutputContext;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    .line 295
    new-instance v14, Lnet/time4j/format/TextAccessor;

    .line 297
    invoke-interface {v0, v2, v3, v8, v13}, Lnet/time4j/format/TextProvider;->meridiems(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)[Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lnet/time4j/format/TextAccessor;-><init>([Ljava/lang/String;)V

    .line 295
    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 299
    :cond_6
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 302
    :cond_7
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lnet/time4j/format/CalendarText;->meridiems:Ljava/util/Map;

    .line 306
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 310
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendar/names/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-static {v5, v3}, Lnet/time4j/i18n/PropertyBundle;->load(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/i18n/PropertyBundle;

    move-result-object v5

    .line 314
    invoke-virtual {v5}, Lnet/time4j/i18n/PropertyBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 315
    invoke-virtual {v5, v7}, Lnet/time4j/i18n/PropertyBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 321
    :cond_8
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v1, Lnet/time4j/format/CalendarText;->textForms:Ljava/util/Map;

    .line 322
    iput-object v2, v1, Lnet/time4j/format/CalendarText;->calendarType:Ljava/lang/String;

    .line 323
    iput-object v3, v1, Lnet/time4j/format/CalendarText;->locale:Ljava/util/Locale;

    .line 324
    iput-object v0, v1, Lnet/time4j/format/CalendarText;->mre:Ljava/util/MissingResourceException;

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 1053
    sget-object v0, Lnet/time4j/format/CalendarText;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method static extractCalendarType(Lnet/time4j/engine/Chronology;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1088
    :goto_0
    instance-of v0, p0, Lnet/time4j/engine/BridgeChronology;

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object p0

    goto :goto_0

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lnet/time4j/format/CalendarType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/CalendarType;

    if-nez p0, :cond_1

    const-string p0, "iso8601"

    goto :goto_1

    .line 1093
    :cond_1
    invoke-interface {p0}, Lnet/time4j/format/CalendarType;->value()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;
    .locals 5

    const-string v0, "Missing calendar type."

    .line 400
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2d

    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    sget-object v1, Lnet/time4j/format/CalendarText;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/CalendarText;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    .line 419
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "iso8601"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    sget-object v1, Lnet/time4j/format/CalendarText;->ROOT_PROVIDER:Lnet/time4j/format/TextProvider;

    goto :goto_0

    .line 423
    :cond_1
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    const-class v3, Lnet/time4j/format/TextProvider;

    invoke-virtual {v2, v3}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/TextProvider;

    .line 424
    invoke-interface {v3, p0}, Lnet/time4j/format/TextProvider;->supportsCalendarType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3, p1}, Lnet/time4j/format/TextProvider;->supportsLanguage(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_3
    if-nez v1, :cond_5

    .line 432
    sget-object v2, Lnet/time4j/format/CalendarText;->JDK_PROVIDER:Lnet/time4j/format/TextProvider;

    .line 434
    invoke-interface {v2, p0}, Lnet/time4j/format/TextProvider;->supportsCalendarType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, p1}, Lnet/time4j/format/TextProvider;->supportsLanguage(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    :cond_4
    if-nez v1, :cond_5

    .line 439
    sget-object v1, Lnet/time4j/format/CalendarText;->ROOT_PROVIDER:Lnet/time4j/format/TextProvider;

    .line 444
    :cond_5
    :goto_0
    new-instance v2, Lnet/time4j/format/CalendarText;

    invoke-direct {v2, p0, p1, v1}, Lnet/time4j/format/CalendarText;-><init>(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextProvider;)V

    .line 445
    sget-object p0, Lnet/time4j/format/CalendarText;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lnet/time4j/format/CalendarText;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v2

    :cond_7
    :goto_1
    return-object v1
.end method

.method public static getInstance(Lnet/time4j/engine/Chronology;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/CalendarText;"
        }
    .end annotation

    .line 372
    invoke-static {p0}, Lnet/time4j/format/CalendarText;->extractCalendarType(Lnet/time4j/engine/Chronology;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p0

    return-object p0
.end method

.method public static getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;
    .locals 1

    const-string v0, "iso8601"

    .line 347
    invoke-static {v0, p0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p0

    return-object p0
.end method

.method private getKeyPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1145
    iget-object v0, p0, Lnet/time4j/format/CalendarText;->textForms:Ljava/util/Map;

    const-string v1, "useShortKeys"

    .line 1146
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/time4j/format/CalendarText;->textForms:Ljava/util/Map;

    .line 1147
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MONTH_OF_YEAR"

    .line 1150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DAY_OF_WEEK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "QUARTER_OF_YEAR"

    .line 1151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "EVANGELIST"

    .line 1154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "EV"

    return-object p1

    :cond_1
    const-string v0, "SANSCULOTTIDES"

    .line 1156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "S"

    return-object p1

    :cond_2
    const-string v0, "DAY_OF_DECADE"

    .line 1158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "D"

    return-object p1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1153
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private static varargs getKeyStart(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 1173
    array-length v1, p2

    if-lez v1, :cond_4

    .line 1174
    array-length v1, p2

    if-ge v1, p1, :cond_0

    return-object v0

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    move v2, p0

    .line 1181
    :goto_0
    array-length v3, p2

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_2

    if-eqz v1, :cond_1

    const/16 v1, 0x28

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, p0

    goto :goto_1

    :cond_1
    const/16 v3, 0x7c

    .line 1186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1188
    :goto_1
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/16 p0, 0x29

    .line 1192
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1195
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-lez p1, :cond_5

    move-object p0, v0

    :cond_5
    return-object p0
.end method

.method private static getMonths(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextProvider;Z)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Lnet/time4j/format/TextProvider;",
            "Z)",
            "Ljava/util/Map<",
            "Lnet/time4j/format/TextWidth;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/OutputContext;",
            "Lnet/time4j/format/TextAccessor;",
            ">;>;"
        }
    .end annotation

    .line 1118
    new-instance v6, Ljava/util/EnumMap;

    const-class v0, Lnet/time4j/format/TextWidth;

    invoke-direct {v6, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1123
    invoke-static {}, Lnet/time4j/format/TextWidth;->values()[Lnet/time4j/format/TextWidth;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    move v0, v9

    move v10, v0

    :goto_0
    if-ge v10, v8, :cond_2

    aget-object v15, v7, v10

    .line 1124
    new-instance v14, Ljava/util/EnumMap;

    const-class v1, Lnet/time4j/format/OutputContext;

    invoke-direct {v14, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1126
    invoke-static {}, Lnet/time4j/format/OutputContext;->values()[Lnet/time4j/format/OutputContext;

    move-result-object v13

    array-length v12, v13

    move v11, v0

    move v5, v9

    :goto_1
    if-ge v5, v12, :cond_1

    aget-object v4, v13, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v5, p3

    .line 1128
    invoke-interface/range {v0 .. v5}, Lnet/time4j/format/TextProvider;->months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    if-nez v11, :cond_0

    const/16 v16, 0x0

    move-object/from16 v11, p2

    move v1, v12

    move-object/from16 v12, p0

    move-object v2, v13

    move-object/from16 v13, p1

    move-object v3, v14

    move-object v14, v15

    move-object v4, v15

    move-object/from16 v15, v17

    .line 1131
    invoke-interface/range {v11 .. v16}, Lnet/time4j/format/TextProvider;->months(Ljava/lang/String;Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)[Ljava/lang/String;

    move-result-object v5

    .line 1132
    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    move v11, v5

    goto :goto_2

    :cond_0
    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    .line 1134
    :goto_2
    new-instance v5, Lnet/time4j/format/TextAccessor;

    invoke-direct {v5, v0}, Lnet/time4j/format/TextAccessor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v18, 0x1

    move v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    goto :goto_1

    :cond_1
    move-object v3, v14

    move-object v4, v15

    .line 1136
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move v0, v11

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :cond_4
    :goto_3
    return-object v6
.end method

.method private getMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;
    .locals 0

    if-eqz p3, :cond_0

    .line 1104
    iget-object p3, p0, Lnet/time4j/format/CalendarText;->leapMonths:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextAccessor;

    return-object p1

    .line 1106
    :cond_0
    iget-object p3, p0, Lnet/time4j/format/CalendarText;->stdMonths:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextAccessor;

    return-object p1
.end method

.method public static isRTL(Ljava/util/Locale;)Z
    .locals 1

    .line 1073
    sget-object v0, Lnet/time4j/format/CalendarText;->RTL:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static patternForDate(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 901
    sget-object v0, Lnet/time4j/format/CalendarText;->FORMAT_PATTERN_PROVIDER:Lnet/time4j/format/FormatPatternProvider;

    invoke-interface {v0, p0, p1}, Lnet/time4j/format/FormatPatternProvider;->getDatePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static patternForInterval(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1021
    sget-object v0, Lnet/time4j/format/CalendarText;->FORMAT_PATTERN_PROVIDER:Lnet/time4j/format/FormatPatternProvider;

    invoke-interface {v0, p0}, Lnet/time4j/format/FormatPatternProvider;->getIntervalPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static patternForMoment(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 993
    sget-object v0, Lnet/time4j/format/CalendarText;->FORMAT_PATTERN_PROVIDER:Lnet/time4j/format/FormatPatternProvider;

    invoke-interface {v0, p0, p1, p2}, Lnet/time4j/format/FormatPatternProvider;->getDateTimePattern(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static patternForTime(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 930
    sget-object v0, Lnet/time4j/format/CalendarText;->FORMAT_PATTERN_PROVIDER:Lnet/time4j/format/FormatPatternProvider;

    invoke-interface {v0, p0, p1}, Lnet/time4j/format/FormatPatternProvider;->getTimePattern(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static patternForTimestamp(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 960
    sget-object v0, Lnet/time4j/format/CalendarText;->FORMAT_PATTERN_PROVIDER:Lnet/time4j/format/FormatPatternProvider;

    invoke-interface {v0, p0, p1, p2}, Lnet/time4j/format/FormatPatternProvider;->getDateTimePattern(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 961
    invoke-static {p0}, Lnet/time4j/format/internal/FormatUtils;->removeZones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x5f

    .line 1209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    .line 1210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEras(Lnet/time4j/format/TextWidth;)Lnet/time4j/format/TextAccessor;
    .locals 1

    .line 660
    iget-object v0, p0, Lnet/time4j/format/CalendarText;->eras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextAccessor;

    return-object p1
.end method

.method public getLeapMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 1

    const/4 v0, 0x1

    .line 536
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/format/CalendarText;->getMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method public getMeridiems(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 1

    .line 693
    iget-object v0, p0, Lnet/time4j/format/CalendarText;->meridiems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextAccessor;

    return-object p1
.end method

.method public getQuarters(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 1

    .line 578
    iget-object v0, p0, Lnet/time4j/format/CalendarText;->quarters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextAccessor;

    return-object p1
.end method

.method public getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 1

    const/4 v0, 0x0

    .line 498
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/format/CalendarText;->getMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Z)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method public getTextForms()Ljava/util/Map;
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

    .line 711
    iget-object v0, p0, Lnet/time4j/format/CalendarText;->textForms:Ljava/util/Map;

    return-object v0
.end method

.method public varargs getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;[",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/format/TextAccessor;"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lnet/time4j/format/CalendarText;->mre:Ljava/util/MissingResourceException;

    if-nez v0, :cond_5

    .line 838
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 839
    array-length v1, v0

    .line 840
    new-array v2, v1, [Ljava/lang/String;

    .line 841
    invoke-direct {p0, p1}, Lnet/time4j/format/CalendarText;->getKeyPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 842
    const-class v4, Lnet/time4j/engine/CalendarEra;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_4

    const/4 v6, 0x0

    move v7, v4

    .line 850
    :goto_1
    invoke-static {v3, v7, p3}, Lnet/time4j/format/CalendarText;->getKeyStart(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 851
    invoke-static {v8, v5, p2}, Lnet/time4j/format/CalendarText;->toKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 853
    iget-object v9, p0, Lnet/time4j/format/CalendarText;->textForms:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v6, v8

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v6, :cond_3

    .line 862
    iget-object v6, p0, Lnet/time4j/format/CalendarText;->textForms:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 863
    iget-object v6, p0, Lnet/time4j/format/CalendarText;->textForms:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    goto :goto_3

    .line 865
    :cond_2
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    goto :goto_3

    .line 868
    :cond_3
    iget-object v7, p0, Lnet/time4j/format/CalendarText;->textForms:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 872
    :cond_4
    new-instance p1, Lnet/time4j/format/TextAccessor;

    invoke-direct {p1, v2}, Lnet/time4j/format/TextAccessor;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 832
    :cond_5
    new-instance p1, Ljava/util/MissingResourceException;

    iget-object p2, p0, Lnet/time4j/format/CalendarText;->mre:Ljava/util/MissingResourceException;

    .line 833
    invoke-virtual {p2}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lnet/time4j/format/CalendarText;->mre:Ljava/util/MissingResourceException;

    .line 834
    invoke-virtual {p3}, Ljava/util/MissingResourceException;->getClassName()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lnet/time4j/format/CalendarText;->mre:Ljava/util/MissingResourceException;

    .line 835
    invoke-virtual {v0}, Ljava/util/MissingResourceException;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public varargs getTextForms(Lnet/time4j/engine/ChronoElement;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;[",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/format/TextAccessor;"
        }
    .end annotation

    .line 799
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lnet/time4j/format/CalendarText;->getTextForms(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method public getWeekdays(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 1

    .line 620
    iget-object v0, p0, Lnet/time4j/format/CalendarText;->weekdays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextAccessor;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/CalendarText;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/format/CalendarText;->calendarType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/format/CalendarText;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
