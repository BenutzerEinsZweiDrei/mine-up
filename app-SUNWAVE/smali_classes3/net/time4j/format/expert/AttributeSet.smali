.class final Lnet/time4j/format/expert/AttributeSet;
.super Ljava/lang/Object;
.source "AttributeSet.java"

# interfaces
.implements Lnet/time4j/engine/AttributeQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUMERICAL_SYMBOLS:Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;

.field private static final ISO_DECIMAL_SEPARATOR:C

.field static final MINUS_SIGN:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUMBER_SYMBOLS:Lnet/time4j/format/NumberSymbolProvider;

.field private static final NUMBER_SYMBOL_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;",
            ">;"
        }
    .end annotation
.end field

.field static final PLUS_SIGN:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attributes:Lnet/time4j/format/Attributes;

.field private final internals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final level:I

.field private final locale:Ljava/util/Locale;

.field private final printCondition:Lnet/time4j/engine/ChronoCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/ChronoDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final section:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 56
    const-class v0, Ljava/lang/String;

    const-string v1, "PLUS_SIGN"

    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/AttributeSet;->PLUS_SIGN:Lnet/time4j/engine/AttributeKey;

    .line 57
    const-class v0, Ljava/lang/String;

    const-string v1, "MINUS_SIGN"

    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/AttributeSet;->MINUS_SIGN:Lnet/time4j/engine/AttributeKey;

    .line 65
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    const-class v1, Lnet/time4j/format/NumberSymbolProvider;

    invoke-virtual {v0, v1}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/NumberSymbolProvider;

    .line 66
    invoke-interface {v3}, Lnet/time4j/format/NumberSymbolProvider;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v4

    array-length v4, v4

    if-le v4, v2, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 74
    sget-object v1, Lnet/time4j/i18n/SymbolProviderSPI;->INSTANCE:Lnet/time4j/i18n/SymbolProviderSPI;

    .line 77
    :cond_2
    sput-object v1, Lnet/time4j/format/expert/AttributeSet;->NUMBER_SYMBOLS:Lnet/time4j/format/NumberSymbolProvider;

    const-string v0, "net.time4j.format.iso.decimal.dot"

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2e

    goto :goto_1

    :cond_3
    const/16 v0, 0x2c

    :goto_1
    move v4, v0

    sput-char v4, Lnet/time4j/format/expert/AttributeSet;->ISO_DECIMAL_SEPARATOR:C

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/format/expert/AttributeSet;->NUMBER_SYMBOL_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    new-instance v0, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;

    sget-object v2, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    const/16 v3, 0x30

    const-string v5, "+"

    const-string v6, "-"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;-><init>(Lnet/time4j/format/NumberSystem;CCLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/format/expert/AttributeSet;->DEFAULT_NUMERICAL_SYMBOLS:Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;

    return-void
.end method

.method constructor <init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 106
    invoke-direct/range {v0 .. v5}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;IILnet/time4j/engine/ChronoCondition;)V

    return-void
.end method

.method constructor <init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;IILnet/time4j/engine/ChronoCondition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/Attributes;",
            "Ljava/util/Locale;",
            "II",
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/ChronoDisplay;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing format attributes."

    .line 120
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iput-object p1, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    if-nez p2, :cond_0

    .line 124
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    :cond_0
    iput-object p2, p0, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    .line 125
    iput p3, p0, Lnet/time4j/format/expert/AttributeSet;->level:I

    .line 126
    iput p4, p0, Lnet/time4j/format/expert/AttributeSet;->section:I

    .line 127
    iput-object p5, p0, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;IILnet/time4j/engine/ChronoCondition;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/Attributes;",
            "Ljava/util/Locale;",
            "II",
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/ChronoDisplay;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing format attributes."

    .line 144
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iput-object p1, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    if-nez p2, :cond_0

    .line 148
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    :cond_0
    iput-object p2, p0, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    .line 149
    iput p3, p0, Lnet/time4j/format/expert/AttributeSet;->level:I

    .line 150
    iput p4, p0, Lnet/time4j/format/expert/AttributeSet;->section:I

    .line 151
    iput-object p5, p0, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    .line 152
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    return-void
.end method

.method static createDefaults(Lnet/time4j/engine/Chronology;Lnet/time4j/format/Attributes;Ljava/util/Locale;)Lnet/time4j/format/expert/AttributeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Lnet/time4j/format/Attributes;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/AttributeSet;"
        }
    .end annotation

    .line 295
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0, p0}, Lnet/time4j/format/Attributes$Builder;-><init>(Lnet/time4j/engine/Chronology;)V

    .line 296
    sget-object p0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-virtual {v0, p0, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    .line 297
    sget-object p0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-virtual {v0, p0, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    .line 298
    sget-object p0, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {v0, p0, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    .line 299
    sget-object p0, Lnet/time4j/format/Attributes;->PAD_CHAR:Lnet/time4j/engine/AttributeKey;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;

    .line 300
    invoke-virtual {v0, p1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    .line 301
    new-instance p0, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;)V

    .line 302
    invoke-virtual {p0, p2}, Lnet/time4j/format/expert/AttributeSet;->withLocale(Ljava/util/Locale;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object p0

    return-object p0
.end method

.method private static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method static merge(Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/format/expert/AttributeSet;)Lnet/time4j/format/expert/AttributeSet;
    .locals 7

    .line 420
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 421
    iget-object v0, p1, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 422
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 423
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object p1, p1, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    .line 425
    invoke-virtual {v0, p1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    .line 426
    invoke-virtual {p1, v0}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    .line 427
    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v1

    .line 428
    new-instance p1, Lnet/time4j/format/expert/AttributeSet;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;IILnet/time4j/engine/ChronoCondition;Ljava/util/Map;)V

    .line 429
    iget-object p0, p0, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Lnet/time4j/format/expert/AttributeSet;->withLocale(Ljava/util/Locale;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/AttributeKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "*>;)Z"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    invoke-virtual {v0, p1}, Lnet/time4j/format/Attributes;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 205
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/AttributeSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 206
    check-cast p1, Lnet/time4j/format/expert/AttributeSet;

    .line 207
    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    iget-object v3, p1, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    .line 208
    invoke-virtual {v1, v3}, Lnet/time4j/format/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    iget-object v3, p1, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    .line 209
    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/AttributeSet;->level:I

    iget v3, p1, Lnet/time4j/format/expert/AttributeSet;->level:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/format/expert/AttributeSet;->section:I

    iget v3, p1, Lnet/time4j/format/expert/AttributeSet;->section:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    iget-object v3, p1, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    .line 212
    invoke-static {v1, v3}, Lnet/time4j/format/expert/AttributeSet;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    iget-object p1, p1, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    .line 213
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
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

    .line 172
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->type()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    invoke-virtual {v0, p1}, Lnet/time4j/format/Attributes;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 186
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->type()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getAttributes()Lnet/time4j/format/Attributes;
    .locals 1

    .line 261
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    return-object v0
.end method

.method getCondition()Lnet/time4j/engine/ChronoCondition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoCondition<",
            "Lnet/time4j/engine/ChronoDisplay;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    return-object v0
.end method

.method getLevel()I
    .locals 1

    .line 273
    iget v0, p0, Lnet/time4j/format/expert/AttributeSet;->level:I

    return v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .line 267
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getSection()I
    .locals 1

    .line 279
    iget v0, p0, Lnet/time4j/format/expert/AttributeSet;->section:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 227
    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    invoke-virtual {v0}, Lnet/time4j/format/Attributes;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[attributes="

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",locale="

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v1, p0, Lnet/time4j/format/expert/AttributeSet;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",section="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget v1, p0, Lnet/time4j/format/expert/AttributeSet;->section:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",print-condition="

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",other="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;
    .locals 8

    .line 313
    new-instance v7, Lnet/time4j/format/expert/AttributeSet;

    iget-object v2, p0, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    iget v3, p0, Lnet/time4j/format/expert/AttributeSet;->level:I

    iget v4, p0, Lnet/time4j/format/expert/AttributeSet;->section:I

    iget-object v5, p0, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    iget-object v6, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;IILnet/time4j/engine/ChronoCondition;Ljava/util/Map;)V

    return-object v7
.end method

.method withInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Lnet/time4j/format/expert/AttributeSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;TA;)",
            "Lnet/time4j/format/expert/AttributeSet;"
        }
    .end annotation

    .line 331
    new-instance v6, Ljava/util/HashMap;

    iget-object v0, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-nez p2, :cond_0

    .line 333
    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_0
    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_0
    new-instance p1, Lnet/time4j/format/expert/AttributeSet;

    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    iget-object v2, p0, Lnet/time4j/format/expert/AttributeSet;->locale:Ljava/util/Locale;

    iget v3, p0, Lnet/time4j/format/expert/AttributeSet;->level:I

    iget v4, p0, Lnet/time4j/format/expert/AttributeSet;->section:I

    iget-object v5, p0, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;IILnet/time4j/engine/ChronoCondition;Ljava/util/Map;)V

    return-object p1
.end method

.method withLocale(Ljava/util/Locale;)Lnet/time4j/format/expert/AttributeSet;
    .locals 10

    .line 352
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    .line 353
    iget-object v1, p0, Lnet/time4j/format/expert/AttributeSet;->attributes:Lnet/time4j/format/Attributes;

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    .line 357
    invoke-static {p1}, Lnet/time4j/i18n/LanguageMatch;->getAlias(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 365
    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    .line 366
    sget-object v1, Lnet/time4j/format/Attributes;->DECIMAL_SEPARATOR:Lnet/time4j/engine/AttributeKey;

    sget-char v2, Lnet/time4j/format/expert/AttributeSet;->ISO_DECIMAL_SEPARATOR:C

    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;

    const-string v1, "+"

    const-string v2, "-"

    :goto_0
    move-object v5, p1

    goto/16 :goto_2

    .line 372
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    :cond_1
    sget-object v2, Lnet/time4j/format/expert/AttributeSet;->NUMBER_SYMBOL_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;

    if-nez v2, :cond_2

    .line 380
    :try_start_0
    new-instance v2, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;

    sget-object v3, Lnet/time4j/format/expert/AttributeSet;->NUMBER_SYMBOLS:Lnet/time4j/format/NumberSymbolProvider;

    .line 382
    invoke-interface {v3, p1}, Lnet/time4j/format/NumberSymbolProvider;->getDefaultNumberSystem(Ljava/util/Locale;)Lnet/time4j/format/NumberSystem;

    move-result-object v4

    .line 383
    invoke-interface {v3, p1}, Lnet/time4j/format/NumberSymbolProvider;->getZeroDigit(Ljava/util/Locale;)C

    move-result v5

    .line 384
    invoke-interface {v3, p1}, Lnet/time4j/format/NumberSymbolProvider;->getDecimalSeparator(Ljava/util/Locale;)C

    move-result v6

    .line 385
    invoke-interface {v3, p1}, Lnet/time4j/format/NumberSymbolProvider;->getPlusSign(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 386
    invoke-interface {v3, p1}, Lnet/time4j/format/NumberSymbolProvider;->getMinusSign(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;-><init>(Lnet/time4j/format/NumberSystem;CCLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    :catch_0
    sget-object v2, Lnet/time4j/format/expert/AttributeSet;->DEFAULT_NUMERICAL_SYMBOLS:Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;

    .line 392
    :goto_1
    sget-object v3, Lnet/time4j/format/expert/AttributeSet;->NUMBER_SYMBOL_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 393
    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;

    if-eqz v1, :cond_2

    move-object v2, v1

    .line 399
    :cond_2
    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    invoke-static {v2}, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->access$000(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)Lnet/time4j/format/NumberSystem;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    .line 400
    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    invoke-static {v2}, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->access$100(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)C

    move-result v3

    invoke-virtual {v0, v1, v3}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;

    .line 401
    sget-object v1, Lnet/time4j/format/Attributes;->DECIMAL_SEPARATOR:Lnet/time4j/engine/AttributeKey;

    invoke-static {v2}, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->access$200(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)C

    move-result v3

    invoke-virtual {v0, v1, v3}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;

    .line 402
    invoke-static {v2}, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->access$300(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v2}, Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;->access$400(Lnet/time4j/format/expert/AttributeSet$NumericalSymbols;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 406
    :goto_2
    invoke-virtual {v0, v5}, Lnet/time4j/format/Attributes$Builder;->setLanguage(Ljava/util/Locale;)Lnet/time4j/format/Attributes$Builder;

    .line 407
    new-instance v9, Ljava/util/HashMap;

    iget-object p1, p0, Lnet/time4j/format/expert/AttributeSet;->internals:Ljava/util/Map;

    invoke-direct {v9, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 408
    sget-object p1, Lnet/time4j/format/expert/AttributeSet;->PLUS_SIGN:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v9, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object p1, Lnet/time4j/format/expert/AttributeSet;->MINUS_SIGN:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1}, Lnet/time4j/engine/AttributeKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v9, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance p1, Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v4

    iget v6, p0, Lnet/time4j/format/expert/AttributeSet;->level:I

    iget v7, p0, Lnet/time4j/format/expert/AttributeSet;->section:I

    iget-object v8, p0, Lnet/time4j/format/expert/AttributeSet;->printCondition:Lnet/time4j/engine/ChronoCondition;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lnet/time4j/format/expert/AttributeSet;-><init>(Lnet/time4j/format/Attributes;Ljava/util/Locale;IILnet/time4j/engine/ChronoCondition;Ljava/util/Map;)V

    return-object p1
.end method
