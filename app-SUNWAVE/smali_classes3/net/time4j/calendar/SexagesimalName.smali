.class public Lnet/time4j/calendar/SexagesimalName;
.super Ljava/lang/Object;
.source "SexagesimalName.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/SexagesimalName$Branch;,
        Lnet/time4j/calendar/SexagesimalName$Stem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/calendar/SexagesimalName;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BRANCHES_CHINESE:[Ljava/lang/String;

.field private static final BRANCHES_KOREAN:[Ljava/lang/String;

.field private static final BRANCHES_PINYIN:[Ljava/lang/String;

.field private static final BRANCHES_RUSSIAN:[Ljava/lang/String;

.field private static final BRANCHES_SIMPLE:[Ljava/lang/String;

.field private static final BRANCHES_VIETNAMESE:[Ljava/lang/String;

.field private static final INSTANCES:[Lnet/time4j/calendar/SexagesimalName;

.field private static final LANGS_WITHOUT_SEP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LANG_2_BRANCH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LANG_2_STEM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEMS_CHINESE:[Ljava/lang/String;

.field private static final STEMS_KOREAN:[Ljava/lang/String;

.field private static final STEMS_PINYIN:[Ljava/lang/String;

.field private static final STEMS_RUSSIAN:[Ljava/lang/String;

.field private static final STEMS_SIMPLE:[Ljava/lang/String;

.field private static final STEMS_VIETNAMESE:[Ljava/lang/String;

.field private static final serialVersionUID:J = -0x3f3c89f2788f42b5L


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "jia"

    const-string v1, "yi"

    const-string v2, "bing"

    const-string v3, "ding"

    const-string v4, "wu"

    const-string v5, "ji"

    const-string v6, "geng"

    const-string v7, "xin"

    const-string v8, "ren"

    const-string v9, "gui"

    .line 61
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->STEMS_SIMPLE:[Ljava/lang/String;

    const-string v1, "ji\u01ce"

    const-string v2, "y\u01d0"

    const-string v3, "b\u01d0ng"

    const-string v4, "d\u012bng"

    const-string v5, "w\u00f9"

    const-string v6, "j\u01d0"

    const-string v7, "g\u0113ng"

    const-string v8, "x\u012bn"

    const-string v9, "r\u00e9n"

    const-string v10, "gu\u01d0"

    .line 64
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->STEMS_PINYIN:[Ljava/lang/String;

    const-string v1, "\u7532"

    const-string v2, "\u4e59"

    const-string v3, "\u4e19"

    const-string v4, "\u4e01"

    const-string v5, "\u620a"

    const-string v6, "\u5df1"

    const-string v7, "\u5e9a"

    const-string v8, "\u8f9b"

    const-string v9, "\u58ec"

    const-string v10, "\u7678"

    .line 67
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->STEMS_CHINESE:[Ljava/lang/String;

    const-string v1, "\uac11"

    const-string v2, "\uc744"

    const-string v3, "\ubcd1"

    const-string v4, "\uc815"

    const-string v5, "\ubb34"

    const-string v6, "\uae30"

    const-string v7, "\uacbd"

    const-string v8, "\uc2e0"

    const-string v9, "\uc784"

    const-string v10, "\uacc4"

    .line 70
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->STEMS_KOREAN:[Ljava/lang/String;

    const-string v1, "gi\u00e1p"

    const-string v2, "\u1ea5t"

    const-string v3, "b\u00ednh"

    const-string v4, "\u0111inh"

    const-string v5, "m\u1eadu"

    const-string v6, "k\u1ef7"

    const-string v7, "canh"

    const-string v8, "t\u00e2n"

    const-string v9, "nh\u00e2m"

    const-string v10, "qu\u00fd"

    .line 73
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->STEMS_VIETNAMESE:[Ljava/lang/String;

    const-string v1, "\u0426\u0437\u044f"

    const-string v2, "\u0418"

    const-string v3, "\u0411\u0438\u043d"

    const-string v4, "\u0414\u0438\u043d"

    const-string v5, "\u0423"

    const-string v6, "\u0426\u0437\u0438"

    const-string v7, "\u0413\u044d\u043d"

    const-string v8, "\u0421\u0438\u043d\u044c"

    const-string v9, "\u0416\u044d\u043d\u044c"

    const-string v10, "\u0413\u0443\u0439"

    .line 76
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->STEMS_RUSSIAN:[Ljava/lang/String;

    const-string v1, "zi"

    const-string v2, "chou"

    const-string v3, "yin"

    const-string v4, "mao"

    const-string v5, "chen"

    const-string v6, "si"

    const-string v7, "wu"

    const-string v8, "wei"

    const-string v9, "shen"

    const-string v10, "you"

    const-string v11, "xu"

    const-string v12, "hai"

    .line 81
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_SIMPLE:[Ljava/lang/String;

    const-string v1, "z\u01d0"

    const-string v2, "ch\u01d2u"

    const-string v3, "y\u00edn"

    const-string v4, "m\u01ceo"

    const-string v5, "ch\u00e9n"

    const-string v6, "s\u00ec"

    const-string v7, "w\u01d4"

    const-string v8, "w\u00e8i"

    const-string v9, "sh\u0113n"

    const-string v10, "y\u01d2u"

    const-string v11, "x\u016b"

    const-string v12, "h\u00e0i"

    .line 84
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_PINYIN:[Ljava/lang/String;

    const-string v1, "\u5b50"

    const-string v2, "\u4e11"

    const-string v3, "\u5bc5"

    const-string v4, "\u536f"

    const-string v5, "\u8fb0"

    const-string v6, "\u5df3"

    const-string v7, "\u5348"

    const-string v8, "\u672a"

    const-string v9, "\u7533"

    const-string v10, "\u9149"

    const-string v11, "\u620c"

    const-string v12, "\u4ea5"

    .line 87
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_CHINESE:[Ljava/lang/String;

    const-string v1, "\uc790"

    const-string v2, "\ucd95"

    const-string v3, "\uc778"

    const-string v4, "\ubb18"

    const-string v5, "\uc9c4"

    const-string v6, "\uc0ac"

    const-string v7, "\uc624"

    const-string v8, "\ubbf8"

    const-string v9, "\uc2e0"

    const-string v10, "\uc720"

    const-string v11, "\uc220"

    const-string v12, "\ud574"

    .line 90
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_KOREAN:[Ljava/lang/String;

    const-string v1, "t\u00ed"

    const-string v2, "s\u1eedu"

    const-string v3, "d\u1ea7n"

    const-string v4, "m\u00e3o"

    const-string v5, "th\u00ecn"

    const-string v6, "t\u1ecb"

    const-string v7, "ng\u1ecd"

    const-string v8, "m\u00f9i"

    const-string v9, "th\u00e2n"

    const-string v10, "d\u1eadu"

    const-string v11, "tu\u1ea5t"

    const-string v12, "h\u1ee3i"

    .line 93
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_VIETNAMESE:[Ljava/lang/String;

    const-string v1, "\u0426\u0437\u044b"

    const-string v2, "\u0427\u043e\u0443"

    const-string v3, "\u0418\u043d\u044c"

    const-string v4, "\u041c\u0430\u043e"

    const-string v5, "\u0427\u044d\u043d\u044c"

    const-string v6, "\u0421\u044b"

    const-string v7, "\u0423"

    const-string v8, "\u0412\u044d\u0439"

    const-string v9, "\u0428\u044d\u043d\u044c"

    const-string v10, "\u042e"

    const-string v11, "\u0421\u044e\u0439"

    const-string v12, "\u0425\u0430\u0439"

    .line 96
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_RUSSIAN:[Ljava/lang/String;

    const/16 v0, 0x3c

    new-array v1, v0, [Lnet/time4j/calendar/SexagesimalName;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 108
    new-instance v3, Lnet/time4j/calendar/SexagesimalName;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v4}, Lnet/time4j/calendar/SexagesimalName;-><init>(I)V

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_0

    .line 110
    :cond_0
    sput-object v1, Lnet/time4j/calendar/SexagesimalName;->INSTANCES:[Lnet/time4j/calendar/SexagesimalName;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->STEMS_SIMPLE:[Ljava/lang/String;

    const-string v2, "root"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->STEMS_CHINESE:[Ljava/lang/String;

    const-string v3, "zh"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ja"

    .line 115
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->STEMS_KOREAN:[Ljava/lang/String;

    const-string v5, "ko"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->STEMS_VIETNAMESE:[Ljava/lang/String;

    const-string v6, "vi"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->STEMS_RUSSIAN:[Ljava/lang/String;

    const-string v7, "ru"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->LANG_2_STEM:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_SIMPLE:[Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_CHINESE:[Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_KOREAN:[Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_VIETNAMESE:[Ljava/lang/String;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_RUSSIAN:[Ljava/lang/String;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->LANG_2_BRANCH:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/SexagesimalName;->LANGS_WITHOUT_SEP:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 55
    sget-object v0, Lnet/time4j/calendar/SexagesimalName;->LANG_2_STEM:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lnet/time4j/calendar/SexagesimalName;->STEMS_PINYIN:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 55
    sget-object v0, Lnet/time4j/calendar/SexagesimalName;->LANG_2_BRANCH:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lnet/time4j/calendar/SexagesimalName;->BRANCHES_PINYIN:[Ljava/lang/String;

    return-object v0
.end method

.method public static of(I)Lnet/time4j/calendar/SexagesimalName;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x3c

    if-gt p0, v1, :cond_0

    .line 176
    sget-object v1, Lnet/time4j/calendar/SexagesimalName;->INSTANCES:[Lnet/time4j/calendar/SexagesimalName;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Lnet/time4j/calendar/SexagesimalName$Stem;Lnet/time4j/calendar/SexagesimalName$Branch;)Lnet/time4j/calendar/SexagesimalName;
    .locals 3

    .line 201
    invoke-virtual {p0}, Lnet/time4j/calendar/SexagesimalName$Stem;->ordinal()I

    move-result v0

    .line 202
    invoke-virtual {p1}, Lnet/time4j/calendar/SexagesimalName$Branch;->ordinal()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x19

    const/16 v0, 0x3c

    .line 203
    invoke-static {v1, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 204
    invoke-static {v2}, Lnet/time4j/calendar/SexagesimalName;->of(I)Lnet/time4j/calendar/SexagesimalName;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lnet/time4j/calendar/SexagesimalName;->getStem()Lnet/time4j/calendar/SexagesimalName$Stem;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0}, Lnet/time4j/calendar/SexagesimalName;->getBranch()Lnet/time4j/calendar/SexagesimalName$Branch;

    move-result-object p0

    if-ne p0, p1, :cond_0

    return-object v0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid combination of stem and branch."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Z)Lnet/time4j/calendar/SexagesimalName;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 458
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 459
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 460
    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    if-ge v6, v4, :cond_18

    if-gez v3, :cond_0

    goto/16 :goto_d

    .line 470
    :cond_0
    sget-object v8, Lnet/time4j/calendar/SexagesimalName;->LANGS_WITHOUT_SEP:Ljava/util/Set;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 471
    invoke-static {}, Lnet/time4j/calendar/SexagesimalName$Stem;->values()[Lnet/time4j/calendar/SexagesimalName$Stem;

    move-result-object v4

    array-length v8, v4

    move v11, v9

    :goto_0
    if-ge v11, v8, :cond_2

    aget-object v12, v4, v11

    .line 472
    invoke-virtual {v12, v2}, Lnet/time4j/calendar/SexagesimalName$Stem;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v13, v14, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    move-object v12, v7

    :goto_1
    if-eqz v12, :cond_4

    .line 478
    invoke-static {}, Lnet/time4j/calendar/SexagesimalName$Branch;->values()[Lnet/time4j/calendar/SexagesimalName$Branch;

    move-result-object v4

    array-length v8, v4

    move v11, v9

    :goto_2
    if-ge v11, v8, :cond_4

    aget-object v13, v4, v11

    .line 479
    invoke-virtual {v13, v2}, Lnet/time4j/calendar/SexagesimalName$Branch;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ne v14, v15, :cond_3

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_b

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    move-object v13, v7

    goto/16 :goto_b

    :cond_5
    :goto_3
    const/4 v8, -0x1

    if-ge v6, v4, :cond_7

    .line 490
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    move v6, v8

    :goto_4
    if-ne v6, v8, :cond_8

    .line 497
    invoke-virtual {v1, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v7

    .line 501
    :cond_8
    invoke-static {}, Lnet/time4j/calendar/SexagesimalName$Stem;->values()[Lnet/time4j/calendar/SexagesimalName$Stem;

    move-result-object v8

    array-length v11, v8

    move-object v12, v7

    move v13, v9

    :goto_5
    if-ge v13, v11, :cond_d

    aget-object v14, v8, v13

    .line 502
    invoke-virtual {v14, v2}, Lnet/time4j/calendar/SexagesimalName$Stem;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    move v9, v3

    :goto_6
    if-ge v9, v6, :cond_b

    sub-int v7, v9, v3

    .line 505
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    if-eqz v5, :cond_9

    .line 507
    invoke-static/range {v17 .. v17}, Lnet/time4j/calendar/SexagesimalName;->toASCII(C)C

    move-result v17

    :cond_9
    move/from16 v10, v17

    move-object/from16 v17, v8

    .line 509
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_c

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_c

    add-int/lit8 v7, v7, 0x1

    .line 510
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_a

    move-object v12, v14

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, v17

    const/4 v7, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v17, v8

    :cond_c
    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v17

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_5

    :cond_d
    if-nez v12, :cond_f

    if-eqz p3, :cond_e

    if-nez v5, :cond_e

    const/4 v2, 0x1

    add-int/2addr v6, v2

    if-ge v6, v4, :cond_e

    .line 522
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1, v3, v2}, Lnet/time4j/calendar/SexagesimalName;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Z)Lnet/time4j/calendar/SexagesimalName;

    move-result-object v0

    return-object v0

    .line 524
    :cond_e
    invoke-virtual {v1, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    return-object v0

    .line 529
    :cond_f
    invoke-static {}, Lnet/time4j/calendar/SexagesimalName$Branch;->values()[Lnet/time4j/calendar/SexagesimalName$Branch;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_8
    if-ge v9, v8, :cond_14

    aget-object v10, v7, v9

    .line 530
    invoke-virtual {v10, v2}, Lnet/time4j/calendar/SexagesimalName$Branch;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v14, v6, 0x1

    :goto_9
    if-ge v14, v4, :cond_12

    sub-int v15, v14, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 533
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    if-eqz v5, :cond_10

    .line 535
    invoke-static/range {v16 .. v16}, Lnet/time4j/calendar/SexagesimalName;->toASCII(C)C

    move-result v16

    :cond_10
    move/from16 v2, v16

    move/from16 v16, v3

    .line 537
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v15, v3, :cond_13

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_13

    add-int/lit8 v15, v15, 0x1

    .line 538
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v15, v2, :cond_11

    add-int/lit8 v3, v14, 0x1

    move-object v13, v10

    goto :goto_a

    :cond_11
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto :goto_9

    :cond_12
    move/from16 v16, v3

    :cond_13
    move/from16 v3, v16

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    goto :goto_8

    :cond_14
    move/from16 v16, v3

    :goto_b
    if-eqz v12, :cond_16

    if-nez v13, :cond_15

    goto :goto_c

    .line 559
    :cond_15
    invoke-virtual {v1, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 560
    invoke-static {v12, v13}, Lnet/time4j/calendar/SexagesimalName;->of(Lnet/time4j/calendar/SexagesimalName$Stem;Lnet/time4j/calendar/SexagesimalName$Branch;)Lnet/time4j/calendar/SexagesimalName;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_c
    if-eqz p3, :cond_17

    if-nez v5, :cond_17

    .line 552
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/calendar/SexagesimalName;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Z)Lnet/time4j/calendar/SexagesimalName;

    move-result-object v0

    return-object v0

    .line 554
    :cond_17
    invoke-virtual {v1, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_18
    :goto_d
    move-object v0, v7

    .line 463
    invoke-virtual {v1, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/calendar/SexagesimalName;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v2, 0x1

    .line 313
    invoke-static {p0, v0, p1, v2}, Lnet/time4j/calendar/SexagesimalName;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/util/Locale;Z)Lnet/time4j/calendar/SexagesimalName;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 316
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    invoke-direct {p1, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private static toASCII(C)C
    .locals 1

    const/16 v0, 0xe0

    if-eq p0, v0, :cond_4

    const/16 v0, 0xf9

    if-eq p0, v0, :cond_3

    const/16 v0, 0x113

    if-eq p0, v0, :cond_2

    const/16 v0, 0x12b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16b

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1ce

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1d0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1d2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xec

    if-eq p0, v0, :cond_1

    const/16 v0, 0xed

    if-eq p0, v0, :cond_1

    return p0

    :cond_0
    const/16 p0, 0x6f

    return p0

    :cond_1
    const/16 p0, 0x69

    return p0

    :cond_2
    const/16 p0, 0x65

    return p0

    :cond_3
    const/16 p0, 0x75

    return p0

    :cond_4
    const/16 p0, 0x61

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Lnet/time4j/calendar/SexagesimalName;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/SexagesimalName;->compareTo(Lnet/time4j/calendar/SexagesimalName;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/calendar/SexagesimalName;)I
    .locals 2

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget v0, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    const-class v1, Lnet/time4j/calendar/SexagesimalName;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/SexagesimalName;

    iget p1, p1, Lnet/time4j/calendar/SexagesimalName;->number:I

    sub-int/2addr v0, p1

    return v0

    .line 405
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Cannot compare different types."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 414
    iget v0, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    check-cast p1, Lnet/time4j/calendar/SexagesimalName;

    iget p1, p1, Lnet/time4j/calendar/SexagesimalName;->number:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBranch()Lnet/time4j/calendar/SexagesimalName$Branch;
    .locals 2

    .line 264
    iget v0, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    const/16 v1, 0xc

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 270
    :goto_0
    invoke-static {}, Lnet/time4j/calendar/SexagesimalName$Branch;->values()[Lnet/time4j/calendar/SexagesimalName$Branch;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .line 348
    invoke-virtual {p0}, Lnet/time4j/calendar/SexagesimalName;->getStem()Lnet/time4j/calendar/SexagesimalName$Stem;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lnet/time4j/calendar/SexagesimalName;->getBranch()Lnet/time4j/calendar/SexagesimalName$Branch;

    move-result-object v1

    .line 350
    sget-object v2, Lnet/time4j/calendar/SexagesimalName;->LANGS_WITHOUT_SEP:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "-"

    .line 351
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/SexagesimalName$Stem;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Lnet/time4j/calendar/SexagesimalName$Branch;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNumber()I
    .locals 1

    .line 226
    iget v0, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    return v0
.end method

.method public getStem()Lnet/time4j/calendar/SexagesimalName$Stem;
    .locals 2

    .line 242
    iget v0, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 248
    :goto_0
    invoke-static {}, Lnet/time4j/calendar/SexagesimalName$Stem;->values()[Lnet/time4j/calendar/SexagesimalName$Stem;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getZodiac(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 373
    invoke-virtual {p0}, Lnet/time4j/calendar/SexagesimalName;->getBranch()Lnet/time4j/calendar/SexagesimalName$Branch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/SexagesimalName$Branch;->getZodiac(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 424
    iget v0, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 600
    iget v0, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    invoke-static {v0}, Lnet/time4j/calendar/SexagesimalName;->of(I)Lnet/time4j/calendar/SexagesimalName;

    move-result-object v0

    return-object v0
.end method

.method public roll(I)Lnet/time4j/calendar/SexagesimalName;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 395
    :cond_0
    iget v0, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p1

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lnet/time4j/calendar/SexagesimalName;->of(I)Lnet/time4j/calendar/SexagesimalName;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Lnet/time4j/calendar/SexagesimalName;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/SexagesimalName;->number:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
