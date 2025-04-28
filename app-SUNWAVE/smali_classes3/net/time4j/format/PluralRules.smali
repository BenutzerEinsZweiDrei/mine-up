.class public abstract Lnet/time4j/format/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/PluralRules$Holder;,
        Lnet/time4j/format/PluralRules$FallbackProvider;,
        Lnet/time4j/format/PluralRules$FallbackRules;
    }
.end annotation


# static fields
.field private static final CARDINAL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/format/PluralRules;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_CARDINAL_ENGLISH:Lnet/time4j/format/PluralRules;

.field private static final FALLBACK_CARDINAL_OTHER:Lnet/time4j/format/PluralRules;

.field private static final FALLBACK_ORDINAL_ENGLISH:Lnet/time4j/format/PluralRules;

.field private static final FALLBACK_ORDINAL_OTHER:Lnet/time4j/format/PluralRules;

.field private static final ORDINAL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/format/PluralRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lnet/time4j/format/PluralRules$FallbackRules;

    sget-object v1, Lnet/time4j/format/NumberType;->CARDINALS:Lnet/time4j/format/NumberType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/format/PluralRules$FallbackRules;-><init>(Lnet/time4j/format/NumberType;ZLnet/time4j/format/PluralRules$1;)V

    sput-object v0, Lnet/time4j/format/PluralRules;->FALLBACK_CARDINAL_ENGLISH:Lnet/time4j/format/PluralRules;

    .line 74
    new-instance v0, Lnet/time4j/format/PluralRules$FallbackRules;

    sget-object v1, Lnet/time4j/format/NumberType;->CARDINALS:Lnet/time4j/format/NumberType;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3}, Lnet/time4j/format/PluralRules$FallbackRules;-><init>(Lnet/time4j/format/NumberType;ZLnet/time4j/format/PluralRules$1;)V

    sput-object v0, Lnet/time4j/format/PluralRules;->FALLBACK_CARDINAL_OTHER:Lnet/time4j/format/PluralRules;

    .line 76
    new-instance v0, Lnet/time4j/format/PluralRules$FallbackRules;

    sget-object v1, Lnet/time4j/format/NumberType;->ORDINALS:Lnet/time4j/format/NumberType;

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/format/PluralRules$FallbackRules;-><init>(Lnet/time4j/format/NumberType;ZLnet/time4j/format/PluralRules$1;)V

    sput-object v0, Lnet/time4j/format/PluralRules;->FALLBACK_ORDINAL_ENGLISH:Lnet/time4j/format/PluralRules;

    .line 78
    new-instance v0, Lnet/time4j/format/PluralRules$FallbackRules;

    sget-object v1, Lnet/time4j/format/NumberType;->ORDINALS:Lnet/time4j/format/NumberType;

    invoke-direct {v0, v1, v4, v3}, Lnet/time4j/format/PluralRules$FallbackRules;-><init>(Lnet/time4j/format/NumberType;ZLnet/time4j/format/PluralRules$1;)V

    sput-object v0, Lnet/time4j/format/PluralRules;->FALLBACK_ORDINAL_OTHER:Lnet/time4j/format/PluralRules;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/format/PluralRules;->CARDINAL_MAP:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/format/PluralRules;->ORDINAL_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lnet/time4j/format/PluralRules;
    .locals 1

    .line 68
    sget-object v0, Lnet/time4j/format/PluralRules;->FALLBACK_CARDINAL_ENGLISH:Lnet/time4j/format/PluralRules;

    return-object v0
.end method

.method static synthetic access$300()Lnet/time4j/format/PluralRules;
    .locals 1

    .line 68
    sget-object v0, Lnet/time4j/format/PluralRules;->FALLBACK_CARDINAL_OTHER:Lnet/time4j/format/PluralRules;

    return-object v0
.end method

.method static synthetic access$400()Lnet/time4j/format/PluralRules;
    .locals 1

    .line 68
    sget-object v0, Lnet/time4j/format/PluralRules;->FALLBACK_ORDINAL_ENGLISH:Lnet/time4j/format/PluralRules;

    return-object v0
.end method

.method static synthetic access$500()Lnet/time4j/format/PluralRules;
    .locals 1

    .line 68
    sget-object v0, Lnet/time4j/format/PluralRules;->FALLBACK_ORDINAL_OTHER:Lnet/time4j/format/PluralRules;

    return-object v0
.end method

.method private static getRuleMap(Lnet/time4j/format/NumberType;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/NumberType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/format/PluralRules;",
            ">;"
        }
    .end annotation

    .line 205
    sget-object v0, Lnet/time4j/format/PluralRules$1;->$SwitchMap$net$time4j$format$NumberType:[I

    invoke-virtual {p0}, Lnet/time4j/format/NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 209
    sget-object p0, Lnet/time4j/format/PluralRules;->ORDINAL_MAP:Ljava/util/Map;

    return-object p0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/format/NumberType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    sget-object p0, Lnet/time4j/format/PluralRules;->CARDINAL_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public static of(Ljava/util/Locale;Lnet/time4j/format/NumberType;)Lnet/time4j/format/PluralRules;
    .locals 4

    .line 120
    invoke-static {p1}, Lnet/time4j/format/PluralRules;->getRuleMap(Lnet/time4j/format/NumberType;)Ljava/util/Map;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 124
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-static {p0}, Lnet/time4j/format/PluralRules;->toKey(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnet/time4j/format/PluralRules;

    :cond_0
    if-nez v2, :cond_1

    .line 128
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lnet/time4j/format/PluralRules;

    :cond_1
    if-nez v2, :cond_2

    .line 133
    invoke-static {}, Lnet/time4j/format/PluralRules$Holder;->access$100()Lnet/time4j/format/PluralProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lnet/time4j/format/PluralProvider;->load(Ljava/util/Locale;Lnet/time4j/format/NumberType;)Lnet/time4j/format/PluralRules;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public static register(Ljava/util/Locale;Lnet/time4j/format/PluralRules;)V
    .locals 4

    .line 161
    invoke-virtual {p1}, Lnet/time4j/format/PluralRules;->getNumberType()Lnet/time4j/format/NumberType;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/format/PluralRules;->getRuleMap(Lnet/time4j/format/NumberType;)Ljava/util/Map;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-static {p0}, Lnet/time4j/format/PluralRules;->toKey(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 168
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static toKey(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCategory(J)Lnet/time4j/format/PluralCategory;
.end method

.method public abstract getNumberType()Lnet/time4j/format/NumberType;
.end method
