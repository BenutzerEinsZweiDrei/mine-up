.class final Lnet/time4j/format/NumberSymbolProvider$1;
.super Ljava/lang/Object;
.source "NumberSymbolProvider.java"

# interfaces
.implements Lnet/time4j/format/NumberSymbolProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/NumberSymbolProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSymbols(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .locals 0

    .line 111
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 76
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalSeparator(Ljava/util/Locale;)C
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lnet/time4j/format/NumberSymbolProvider$1;->getSymbols(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p1

    return p1
.end method

.method public getDefaultNumberSystem(Ljava/util/Locale;)Lnet/time4j/format/NumberSystem;
    .locals 0

    .line 107
    sget-object p1, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    return-object p1
.end method

.method public getMinusSign(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 99
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u200f-"

    return-object p1

    .line 102
    :cond_0
    invoke-direct {p0, p1}, Lnet/time4j/format/NumberSymbolProvider$1;->getSymbols(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPlusSign(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 91
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u200f+"

    return-object p1

    :cond_0
    const/16 p1, 0x2b

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getZeroDigit(Ljava/util/Locale;)C
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lnet/time4j/format/NumberSymbolProvider$1;->getSymbols(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result p1

    return p1
.end method
