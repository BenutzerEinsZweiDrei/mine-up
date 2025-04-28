.class Lnet/time4j/UnitPatterns$FallbackProvider;
.super Ljava/lang/Object;
.source "UnitPatterns.java"

# interfaces
.implements Lnet/time4j/format/UnitPatternProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/UnitPatterns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallbackProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/UnitPatterns$1;)V
    .locals 0

    .line 605
    invoke-direct {p0}, Lnet/time4j/UnitPatterns$FallbackProvider;-><init>()V

    return-void
.end method

.method private static getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 835
    sget-object v0, Lnet/time4j/UnitPatterns$1;->$SwitchMap$net$time4j$format$TextWidth:[I

    invoke-virtual {p3}, Lnet/time4j/format/TextWidth;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    .line 842
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "{0}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 844
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Lnet/time4j/format/TextWidth;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 840
    :cond_1
    invoke-static {p1, p4}, Lnet/time4j/UnitPatterns$FallbackProvider;->getPluralPattern(Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 837
    :cond_2
    invoke-static {p0, p4}, Lnet/time4j/UnitPatterns$FallbackProvider;->getPluralPattern(Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPluralPattern(Ljava/lang/String;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 854
    sget-object v0, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "s"

    .line 855
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRelativeEnglishPattern(Ljava/lang/String;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 871
    sget-object v0, Lnet/time4j/format/PluralCategory;->ONE:Lnet/time4j/format/PluralCategory;

    if-ne p2, v0, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p2, "s"

    :goto_0
    if-eqz p1, :cond_1

    .line 874
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "in {0} "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 876
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{0} "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ago"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRelativePattern(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "+"

    goto :goto_0

    :cond_0
    const-string p1, "-"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "{0} "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUnitPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{0} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDayPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 662
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "d"

    if-eqz p1, :cond_0

    const-string p1, "day"

    .line 663
    invoke-static {p1, p1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 666
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDayPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 767
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "day"

    .line 768
    invoke-static {p1, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativeEnglishPattern(Ljava/lang/String;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "d"

    .line 771
    invoke-static {p1, p2}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHourPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 677
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "h"

    if-eqz p1, :cond_0

    const-string p1, "hour"

    const-string v1, "hr"

    .line 678
    invoke-static {p1, v1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 681
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHourPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 782
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "hour"

    .line 783
    invoke-static {p1, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativeEnglishPattern(Ljava/lang/String;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "h"

    .line 786
    invoke-static {p1, p2}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getListPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;I)Ljava/lang/String;
    .locals 1

    const/4 p1, 0x2

    if-lt p3, p1, :cond_2

    .line 902
    new-instance p1, Ljava/lang/StringBuilder;

    mul-int/lit8 p2, p3, 0x5

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    const/16 v0, 0x7b

    .line 905
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    .line 907
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p3, -0x1

    if-ge p2, v0, :cond_0

    const-string v0, ", "

    .line 910
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 898
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size must be greater than 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMicroPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 941
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "\u00b5s"

    if-eqz p1, :cond_0

    const-string p1, "microsecond"

    const-string v1, "\u00b5sec"

    .line 942
    invoke-static {p1, v1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 946
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMilliPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 925
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "ms"

    if-eqz p1, :cond_0

    const-string p1, "millisecond"

    const-string v1, "msec"

    .line 926
    invoke-static {p1, v1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 930
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMinutePattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 692
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "min"

    if-eqz p1, :cond_0

    const-string p1, "minute"

    const-string v1, "m"

    .line 693
    invoke-static {p1, v0, v1, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 696
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMinutePattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 797
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "minute"

    .line 798
    invoke-static {p1, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativeEnglishPattern(Ljava/lang/String;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "min"

    .line 801
    invoke-static {p1, p2}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMonthPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 632
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "m"

    if-eqz p1, :cond_0

    const-string p1, "month"

    const-string v1, "mth"

    .line 633
    invoke-static {p1, v1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 636
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMonthPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 737
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "month"

    .line 738
    invoke-static {p1, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativeEnglishPattern(Ljava/lang/String;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "m"

    .line 741
    invoke-static {p1, p2}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNanoPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 957
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "ns"

    if-eqz p1, :cond_0

    const-string p1, "nanosecond"

    const-string v1, "nsec"

    .line 958
    invoke-static {p1, v1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 962
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNowWord(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p1, "now"

    return-object p1
.end method

.method public getSecondPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 707
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "s"

    if-eqz p1, :cond_0

    const-string p1, "second"

    const-string v1, "sec"

    .line 708
    invoke-static {p1, v1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 711
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSecondPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 812
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "second"

    .line 813
    invoke-static {p1, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativeEnglishPattern(Ljava/lang/String;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "s"

    .line 816
    invoke-static {p1, p2}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWeekPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 647
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "w"

    if-eqz p1, :cond_0

    const-string p1, "week"

    const-string v1, "wk"

    .line 648
    invoke-static {p1, v1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 651
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWeekPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 752
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "week"

    .line 753
    invoke-static {p1, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativeEnglishPattern(Ljava/lang/String;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "w"

    .line 756
    invoke-static {p1, p2}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getYearPattern(Ljava/util/Locale;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 2

    .line 617
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "y"

    if-eqz p1, :cond_0

    const-string p1, "year"

    const-string v1, "yr"

    .line 618
    invoke-static {p1, v1, v0, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getEnglishPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 621
    :cond_0
    invoke-static {v0}, Lnet/time4j/UnitPatterns$FallbackProvider;->getUnitPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getYearPattern(Ljava/util/Locale;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;
    .locals 1

    .line 722
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "year"

    .line 723
    invoke-static {p1, p2, p3}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativeEnglishPattern(Ljava/lang/String;ZLnet/time4j/format/PluralCategory;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "y"

    .line 726
    invoke-static {p1, p2}, Lnet/time4j/UnitPatterns$FallbackProvider;->getRelativePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
