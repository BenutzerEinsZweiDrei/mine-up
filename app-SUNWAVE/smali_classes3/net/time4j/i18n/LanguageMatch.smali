.class public final enum Lnet/time4j/i18n/LanguageMatch;
.super Ljava/lang/Enum;
.source "LanguageMatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/i18n/LanguageMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/i18n/LanguageMatch;

.field static final ALIASES:[Lnet/time4j/i18n/LanguageMatch;

.field public static final enum in:Lnet/time4j/i18n/LanguageMatch;

.field public static final enum iw:Lnet/time4j/i18n/LanguageMatch;

.field public static final enum no:Lnet/time4j/i18n/LanguageMatch;

.field public static final enum tl:Lnet/time4j/i18n/LanguageMatch;


# instance fields
.field private final alias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 34
    new-instance v0, Lnet/time4j/i18n/LanguageMatch;

    const-string v1, "tl"

    const/4 v2, 0x0

    const-string v3, "fil"

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/i18n/LanguageMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/time4j/i18n/LanguageMatch;->tl:Lnet/time4j/i18n/LanguageMatch;

    .line 35
    new-instance v1, Lnet/time4j/i18n/LanguageMatch;

    const-string v3, "no"

    const/4 v4, 0x1

    const-string v5, "nb"

    invoke-direct {v1, v3, v4, v5}, Lnet/time4j/i18n/LanguageMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/time4j/i18n/LanguageMatch;->no:Lnet/time4j/i18n/LanguageMatch;

    .line 36
    new-instance v3, Lnet/time4j/i18n/LanguageMatch;

    const-string v5, "in"

    const/4 v6, 0x2

    const-string v7, "id"

    invoke-direct {v3, v5, v6, v7}, Lnet/time4j/i18n/LanguageMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnet/time4j/i18n/LanguageMatch;->in:Lnet/time4j/i18n/LanguageMatch;

    .line 37
    new-instance v5, Lnet/time4j/i18n/LanguageMatch;

    const-string v7, "iw"

    const/4 v8, 0x3

    const-string v9, "he"

    invoke-direct {v5, v7, v8, v9}, Lnet/time4j/i18n/LanguageMatch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnet/time4j/i18n/LanguageMatch;->iw:Lnet/time4j/i18n/LanguageMatch;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/i18n/LanguageMatch;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 30
    sput-object v7, Lnet/time4j/i18n/LanguageMatch;->$VALUES:[Lnet/time4j/i18n/LanguageMatch;

    .line 39
    invoke-static {}, Lnet/time4j/i18n/LanguageMatch;->values()[Lnet/time4j/i18n/LanguageMatch;

    move-result-object v0

    sput-object v0, Lnet/time4j/i18n/LanguageMatch;->ALIASES:[Lnet/time4j/i18n/LanguageMatch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lnet/time4j/i18n/LanguageMatch;->alias:Ljava/lang/String;

    return-void
.end method

.method public static getAlias(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    .line 61
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "nn"

    return-object p0

    .line 67
    :cond_0
    sget-object p0, Lnet/time4j/i18n/LanguageMatch;->ALIASES:[Lnet/time4j/i18n/LanguageMatch;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 68
    invoke-virtual {v3}, Lnet/time4j/i18n/LanguageMatch;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    iget-object p0, v3, Lnet/time4j/i18n/LanguageMatch;->alias:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/i18n/LanguageMatch;
    .locals 1

    .line 30
    const-class v0, Lnet/time4j/i18n/LanguageMatch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/i18n/LanguageMatch;

    return-object p0
.end method

.method public static values()[Lnet/time4j/i18n/LanguageMatch;
    .locals 1

    .line 30
    sget-object v0, Lnet/time4j/i18n/LanguageMatch;->$VALUES:[Lnet/time4j/i18n/LanguageMatch;

    invoke-virtual {v0}, [Lnet/time4j/i18n/LanguageMatch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/i18n/LanguageMatch;

    return-object v0
.end method
