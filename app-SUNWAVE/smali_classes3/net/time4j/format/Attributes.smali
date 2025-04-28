.class public final Lnet/time4j/format/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Lnet/time4j/engine/AttributeQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/Attributes$Builder;
    }
.end annotation


# static fields
.field public static final CALENDAR_TYPE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECIMAL_SEPARATOR:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lnet/time4j/format/Attributes;

.field public static final FORMAT_PATTERN:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FOUR_DIGIT_YEAR:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LANGUAGE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENIENCY:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/format/Leniency;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_GMT_PREFIX:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/format/NumberSystem;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/format/OutputContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAD_CHAR:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIVOT_YEAR:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_OF_DAY:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/engine/StartOfDay;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/format/TextWidth;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/tz/TZID;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_SCALE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/scale/TimeScale;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRAILING_CHARACTERS:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/tz/TransitionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-class v0, Ljava/lang/String;

    const-string v1, "CALENDAR_TYPE"

    .line 73
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->CALENDAR_TYPE:Lnet/time4j/engine/AttributeKey;

    .line 88
    const-class v0, Ljava/util/Locale;

    const-string v1, "LANGUAGE"

    .line 89
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    .line 128
    const-class v0, Lnet/time4j/tz/TZID;

    const-string v1, "TIMEZONE_ID"

    .line 129
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    .line 148
    const-class v0, Lnet/time4j/tz/TransitionStrategy;

    const-string v1, "TRANSITION_STRATEGY"

    .line 149
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    .line 194
    const-class v0, Lnet/time4j/format/Leniency;

    const-string v1, "LENIENCY"

    .line 195
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    .line 207
    const-class v0, Lnet/time4j/format/TextWidth;

    const-string v1, "TEXT_WIDTH"

    .line 208
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    .line 221
    const-class v0, Lnet/time4j/format/OutputContext;

    const-string v1, "OUTPUT_CONTEXT"

    .line 222
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    .line 236
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "PARSE_CASE_INSENSITIVE"

    .line 237
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->PARSE_CASE_INSENSITIVE:Lnet/time4j/engine/AttributeKey;

    .line 253
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "PARSE_PARTIAL_COMPARE"

    .line 254
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->PARSE_PARTIAL_COMPARE:Lnet/time4j/engine/AttributeKey;

    .line 278
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "PARSE_MULTIPLE_CONTEXT"

    .line 279
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    .line 313
    const-class v0, Lnet/time4j/format/NumberSystem;

    const-string v1, "NUMBER_SYSTEM"

    .line 314
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    .line 334
    const-class v0, Ljava/lang/Character;

    const-string v1, "ZERO_DIGIT"

    .line 335
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 353
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "NO_GMT_PREFIX"

    .line 354
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->NO_GMT_PREFIX:Lnet/time4j/engine/AttributeKey;

    .line 374
    const-class v0, Ljava/lang/Character;

    const-string v1, "DECIMAL_SEPARATOR"

    .line 375
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->DECIMAL_SEPARATOR:Lnet/time4j/engine/AttributeKey;

    .line 439
    const-class v0, Ljava/lang/Character;

    const-string v1, "PAD_CHAR"

    .line 440
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->PAD_CHAR:Lnet/time4j/engine/AttributeKey;

    .line 463
    const-class v0, Ljava/lang/Integer;

    const-string v1, "PIVOT_YEAR"

    .line 464
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->PIVOT_YEAR:Lnet/time4j/engine/AttributeKey;

    .line 518
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "TRAILING_CHARACTERS"

    .line 519
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->TRAILING_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    .line 552
    const-class v0, Ljava/lang/Integer;

    const-string v1, "PROTECTED_CHARACTERS"

    .line 553
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->PROTECTED_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    .line 567
    const-class v0, Ljava/lang/String;

    const-string v1, "CALENDAR_VARIANT"

    .line 568
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    .line 585
    const-class v0, Lnet/time4j/engine/StartOfDay;

    const-string v1, "START_OF_DAY"

    .line 586
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    .line 602
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "FOUR_DIGIT_YEAR"

    .line 603
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->FOUR_DIGIT_YEAR:Lnet/time4j/engine/AttributeKey;

    .line 647
    const-class v0, Lnet/time4j/scale/TimeScale;

    const-string v1, "TIME_SCALE"

    .line 648
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->TIME_SCALE:Lnet/time4j/engine/AttributeKey;

    .line 662
    const-class v0, Ljava/lang/String;

    const-string v1, "FORMAT_PATTERN"

    .line 663
    invoke-static {v1, v0}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/Attributes;->FORMAT_PATTERN:Lnet/time4j/engine/AttributeKey;

    .line 665
    new-instance v0, Lnet/time4j/format/Attributes;

    invoke-direct {v0}, Lnet/time4j/format/Attributes;-><init>()V

    sput-object v0, Lnet/time4j/format/Attributes;->EMPTY:Lnet/time4j/format/Attributes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lnet/time4j/format/Attributes$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lnet/time4j/format/Attributes;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/format/Attributes;)Ljava/util/Map;
    .locals 0

    .line 49
    iget-object p0, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method public static createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;"
        }
    .end annotation

    .line 726
    invoke-static {p0, p1}, Lnet/time4j/format/PredefinedKey;->valueOf(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/format/PredefinedKey;

    move-result-object p0

    return-object p0
.end method

.method public static empty()Lnet/time4j/format/Attributes;
    .locals 1

    .line 699
    sget-object v0, Lnet/time4j/format/Attributes;->EMPTY:Lnet/time4j/format/Attributes;

    return-object v0
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "*>;)Z"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 777
    :cond_0
    instance-of v0, p1, Lnet/time4j/format/Attributes;

    if-eqz v0, :cond_1

    .line 778
    check-cast p1, Lnet/time4j/format/Attributes;

    .line 779
    iget-object v0, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    iget-object p1, p1, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->type()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 743
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;TA;)TA;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 761
    :cond_0
    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->type()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 792
    iget-object v0, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 806
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    iget-object v1, p0, Lnet/time4j/format/Attributes;->attributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
