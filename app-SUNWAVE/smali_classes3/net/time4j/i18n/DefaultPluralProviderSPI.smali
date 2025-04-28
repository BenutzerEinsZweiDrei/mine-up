.class public final Lnet/time4j/i18n/DefaultPluralProviderSPI;
.super Ljava/lang/Object;
.source "DefaultPluralProviderSPI.java"

# interfaces
.implements Lnet/time4j/format/PluralProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;,
        Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;
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

.field private static final STD_CARDINALS:Lnet/time4j/format/PluralRules;

.field private static final STD_ORDINALS:Lnet/time4j/format/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/time4j/i18n/DefaultPluralProviderSPI;->CARDINAL_MAP:Ljava/util/Map;

    .line 47
    new-instance v2, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;-><init>(ILnet/time4j/i18n/DefaultPluralProviderSPI$1;)V

    sput-object v2, Lnet/time4j/i18n/DefaultPluralProviderSPI;->STD_CARDINALS:Lnet/time4j/format/PluralRules;

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "bm bo dz id ig ii in ja jbo jv jw kde kea km ko lkt"

    const/4 v6, -0x1

    .line 51
    invoke-static {v2, v5, v6}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "lo ms my nqo root sah ses sg th to vi wo yo zh"

    .line 52
    invoke-static {v2, v5, v6}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "pt_PT"

    .line 53
    invoke-static {v2, v5, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "am as bn fa gu hi kn zu"

    const/4 v6, 0x1

    .line 54
    invoke-static {v2, v5, v6}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "ff fr hy kab pt"

    .line 55
    invoke-static {v2, v5, v6}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "si"

    .line 56
    invoke-static {v2, v5, v6}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "ak bh guw ln mg nso pa ti wa"

    .line 57
    invoke-static {v2, v5, v6}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "tzm"

    const/4 v7, 0x2

    .line 58
    invoke-static {v2, v5, v7}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "is"

    const/4 v8, 0x3

    .line 59
    invoke-static {v2, v5, v8}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v5, "mk"

    const/4 v9, 0x4

    .line 60
    invoke-static {v2, v5, v9}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v10, "ceb fil tl"

    const/4 v11, 0x5

    .line 61
    invoke-static {v2, v10, v11}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v10, "lv prg"

    const/4 v12, 0x6

    .line 62
    invoke-static {v2, v10, v12}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v10, "lag ksh"

    const/4 v13, 0x7

    .line 63
    invoke-static {v2, v10, v13}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v10, "iu naq se sma smi smj smn sms"

    const/16 v14, 0x8

    .line 64
    invoke-static {v2, v10, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v10, "shi"

    const/16 v15, 0x9

    .line 65
    invoke-static {v2, v10, v15}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v10, "mo ro"

    const/16 v15, 0xa

    .line 66
    invoke-static {v2, v10, v15}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v10, "bs hr sh sr"

    const/16 v15, 0xb

    .line 67
    invoke-static {v2, v10, v15}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v10, "gd"

    const/16 v15, 0xc

    .line 68
    invoke-static {v2, v10, v15}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v15, "sl"

    const/16 v14, 0xd

    .line 69
    invoke-static {v2, v15, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v15, "he iw"

    const/16 v14, 0xe

    .line 70
    invoke-static {v2, v15, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v15, "cs sk"

    const/16 v14, 0xf

    .line 71
    invoke-static {v2, v15, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v15, "pl"

    const/16 v14, 0x10

    .line 72
    invoke-static {v2, v15, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v14, "be"

    const/16 v15, 0x11

    .line 73
    invoke-static {v2, v14, v15}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v14, "lt"

    const/16 v13, 0x12

    .line 74
    invoke-static {v2, v14, v13}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "mt"

    const/16 v14, 0x13

    .line 75
    invoke-static {v2, v13, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "ru uk"

    .line 76
    invoke-static {v2, v13, v15}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "br"

    const/16 v14, 0x14

    .line 77
    invoke-static {v2, v13, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "ga"

    const/16 v14, 0x15

    .line 78
    invoke-static {v2, v13, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "gv"

    const/16 v14, 0x16

    .line 79
    invoke-static {v2, v13, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "ar"

    const/16 v14, 0x17

    .line 80
    invoke-static {v2, v13, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "cy"

    const/16 v14, 0x18

    .line 81
    invoke-static {v2, v13, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "dsb hsb"

    const/16 v14, 0x19

    .line 82
    invoke-static {v2, v13, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v13, "kw"

    const/16 v14, 0x1a

    .line 83
    invoke-static {v2, v13, v14}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillC(Ljava/util/Map;Ljava/lang/String;I)V

    .line 84
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/time4j/i18n/DefaultPluralProviderSPI;->ORDINAL_MAP:Ljava/util/Map;

    .line 88
    new-instance v1, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;

    invoke-direct {v1, v3, v4}, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;-><init>(ILnet/time4j/i18n/DefaultPluralProviderSPI$1;)V

    sput-object v1, Lnet/time4j/i18n/DefaultPluralProviderSPI;->STD_ORDINALS:Lnet/time4j/format/PluralRules;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sv"

    .line 92
    invoke-static {v1, v2, v6}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "fil fr ga hy lo mo ms ro tl vi"

    .line 93
    invoke-static {v1, v2, v7}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "hu"

    .line 94
    invoke-static {v1, v2, v8}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "ne"

    .line 95
    invoke-static {v1, v2, v9}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "kk"

    .line 96
    invoke-static {v1, v2, v11}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "it sc scn"

    .line 97
    invoke-static {v1, v2, v12}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "ka"

    const/4 v3, 0x7

    .line 98
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "sq"

    const/16 v3, 0x8

    .line 99
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "en"

    const/16 v3, 0x9

    .line 100
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "mr"

    const/16 v3, 0xa

    .line 101
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "ca"

    const/16 v3, 0xb

    .line 102
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v2, 0xc

    .line 103
    invoke-static {v1, v5, v2}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "az"

    const/16 v3, 0xd

    .line 104
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "gu hi"

    const/16 v3, 0xe

    .line 105
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "as bn"

    const/16 v3, 0xf

    .line 106
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "cy"

    const/16 v3, 0x10

    .line 107
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "be"

    .line 108
    invoke-static {v1, v2, v15}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "uk"

    const/16 v3, 0x12

    .line 109
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "tk"

    const/16 v3, 0x13

    .line 110
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "or"

    const/16 v3, 0x14

    .line 111
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v2, 0x15

    .line 112
    invoke-static {v1, v10, v2}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    const-string v2, "kw"

    const/16 v3, 0x16

    .line 113
    invoke-static {v1, v2, v3}, Lnet/time4j/i18n/DefaultPluralProviderSPI;->fillO(Ljava/util/Map;Ljava/lang/String;I)V

    .line 114
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillC(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/format/PluralRules;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, " "

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 178
    new-instance v3, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdCardinalRules;-><init>(ILnet/time4j/i18n/DefaultPluralProviderSPI$1;)V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static fillO(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/format/PluralRules;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, " "

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 190
    new-instance v3, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lnet/time4j/i18n/DefaultPluralProviderSPI$StdOrdinalRules;-><init>(ILnet/time4j/i18n/DefaultPluralProviderSPI$1;)V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public load(Ljava/util/Locale;Lnet/time4j/format/NumberType;)Lnet/time4j/format/PluralRules;
    .locals 4

    .line 135
    sget-object v0, Lnet/time4j/i18n/DefaultPluralProviderSPI$1;->$SwitchMap$net$time4j$format$NumberType:[I

    invoke-virtual {p2}, Lnet/time4j/format/NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 141
    sget-object p2, Lnet/time4j/i18n/DefaultPluralProviderSPI;->ORDINAL_MAP:Ljava/util/Map;

    .line 142
    sget-object v0, Lnet/time4j/i18n/DefaultPluralProviderSPI;->STD_ORDINALS:Lnet/time4j/format/PluralRules;

    goto :goto_0

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Lnet/time4j/format/NumberType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1
    sget-object p2, Lnet/time4j/i18n/DefaultPluralProviderSPI;->CARDINAL_MAP:Ljava/util/Map;

    .line 138
    sget-object v0, Lnet/time4j/i18n/DefaultPluralProviderSPI;->STD_CARDINALS:Lnet/time4j/format/PluralRules;

    :goto_0
    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/PluralRules;

    :cond_2
    if-nez v1, :cond_3

    .line 160
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lnet/time4j/format/PluralRules;

    :cond_3
    if-nez v1, :cond_4

    return-object v0

    :cond_4
    return-object v1
.end method
