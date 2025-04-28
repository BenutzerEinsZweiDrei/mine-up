.class Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;
.super Ljava/lang/Object;
.source "JapaneseCalendar.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JapaneseUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/JapaneseCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/calendar/JapaneseCalendar$Unit;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/JapaneseCalendar$Unit;)V
    .locals 0

    .line 1819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1821
    iput-object p1, p0, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->unit:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    return-void
.end method

.method private static checkAmountOfMonths(J)V
    .locals 2

    .line 2086
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v0, 0x61a8

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    return-void

    .line 2087
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Month arithmetic limited to delta smaller than 25000."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static erasAdded(Lnet/time4j/calendar/JapaneseCalendar;J)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 5

    .line 2002
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object v0

    .line 2003
    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar;->getYear()I

    move-result v1

    .line 2004
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    .line 2005
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v3

    .line 2007
    sget-object v4, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-virtual {v0, v4}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2008
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {v0}, Lnet/time4j/calendar/Nengo;->ofRelatedGregorianYear(I)Lnet/time4j/calendar/Nengo;

    move-result-object v0

    .line 2009
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p0

    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v1

    sub-int/2addr p0, v1

    add-int/lit8 v1, p0, 0x1

    .line 2013
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getIndexOfficial()I

    move-result p0

    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    invoke-static {p0, p1}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p0

    invoke-static {p0}, Lnet/time4j/calendar/Nengo;->ofIndexOfficial(I)Lnet/time4j/calendar/Nengo;

    move-result-object p0

    .line 2014
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->findNext()Lnet/time4j/calendar/Nengo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2017
    invoke-virtual {p1}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result p1

    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    if-le v1, p1, :cond_1

    move v1, p1

    :cond_1
    add-int/lit8 p1, v1, -0x1

    .line 2023
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x751

    if-lt p1, p2, :cond_2

    .line 2026
    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2027
    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p2

    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    goto :goto_0

    .line 2029
    :cond_2
    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object p2

    add-int/lit16 v0, p1, -0x2bd

    aget-byte p2, p2, v0

    if-nez p2, :cond_3

    .line 2030
    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p2

    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    .line 2033
    :cond_3
    :goto_0
    invoke-static {p1, v2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1600(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result p1

    if-le v3, p1, :cond_4

    move v3, p1

    .line 2039
    :cond_4
    invoke-static {p0, v1, v2, v3}, Lnet/time4j/calendar/JapaneseCalendar;->of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p0

    return-object p0
.end method

.method private static erasBetween(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/JapaneseCalendar;)I
    .locals 8

    .line 2048
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object v0

    .line 2049
    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar;->getYear()I

    move-result v1

    .line 2050
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v2

    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/time4j/calendar/JapaneseCalendar;->access$1800(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v2

    .line 2051
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v3

    .line 2053
    sget-object v4, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-virtual {v0, v4}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2054
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {v0}, Lnet/time4j/calendar/Nengo;->ofRelatedGregorianYear(I)Lnet/time4j/calendar/Nengo;

    move-result-object v0

    .line 2055
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p0

    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v1

    sub-int/2addr p0, v1

    add-int/lit8 v1, p0, 0x1

    .line 2058
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object p0

    .line 2059
    invoke-virtual {p1}, Lnet/time4j/calendar/JapaneseCalendar;->getYear()I

    move-result v4

    .line 2060
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v5

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/time4j/calendar/JapaneseCalendar;->access$1800(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v5

    .line 2061
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v6

    .line 2063
    sget-object v7, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-virtual {p0, v7}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2064
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p0

    invoke-static {p0}, Lnet/time4j/calendar/Nengo;->ofRelatedGregorianYear(I)Lnet/time4j/calendar/Nengo;

    move-result-object p0

    .line 2065
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v4

    sub-int/2addr p1, v4

    add-int/lit8 v4, p1, 0x1

    .line 2068
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->getIndexOfficial()I

    move-result p0

    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getIndexOfficial()I

    move-result p1

    sub-int/2addr p0, p1

    if-lez p0, :cond_3

    if-gt v1, v4, :cond_2

    if-ne v1, v4, :cond_5

    if-gt v2, v5, :cond_2

    if-ne v2, v5, :cond_5

    if-le v3, v6, :cond_5

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    if-gez p0, :cond_5

    if-lt v1, v4, :cond_4

    if-ne v1, v4, :cond_5

    if-lt v2, v5, :cond_4

    if-ne v2, v5, :cond_5

    if-ge v3, v6, :cond_5

    :cond_4
    add-int/lit8 p0, p0, 0x1

    :cond_5
    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1809
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->addTo(Lnet/time4j/calendar/JapaneseCalendar;J)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/JapaneseCalendar;J)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 11

    .line 1830
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$calendar$JapaneseCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->unit:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v2, 0x2

    const/16 v3, 0x751

    if-eq v0, v2, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1923
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->unit:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, 0x7

    .line 1913
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1916
    :goto_0
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$300()Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->transform(Lnet/time4j/calendar/JapaneseCalendar;)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    .line 1917
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$300()Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->transform(J)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p2

    .line 1918
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    sget-object p3, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-virtual {p1, p3}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1919
    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$2000(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p2

    :cond_2
    return-object p2

    .line 1856
    :cond_3
    :try_start_0
    invoke-static {p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->checkAmountOfMonths(J)V

    .line 1857
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    .line 1858
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1800(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-lez v6, :cond_4

    move v6, v1

    goto :goto_1

    :cond_4
    const/4 v6, -0x1

    :goto_1
    cmp-long v7, p2, v4

    if-eqz v7, :cond_c

    add-int/2addr v2, v6

    const/16 v7, 0xc

    const/16 v8, 0xd

    if-lt v0, v3, :cond_8

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    if-ge v0, v3, :cond_6

    .line 1865
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v2

    add-int/lit16 v9, v0, -0x2bd

    aget-byte v2, v2, v9

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move v7, v8

    :cond_6
    :goto_2
    move v2, v7

    goto :goto_5

    :cond_7
    if-ne v2, v8, :cond_b

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_5

    :cond_8
    if-nez v2, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 1873
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v2

    add-int/lit16 v9, v0, -0x2bd

    aget-byte v2, v2, v9

    if-nez v2, :cond_5

    goto :goto_2

    .line 1874
    :cond_9
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v9

    add-int/lit16 v10, v0, -0x2bd

    aget-byte v9, v9, v10

    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    move v7, v8

    :goto_4
    if-le v2, v7, :cond_b

    goto :goto_3

    :cond_b
    :goto_5
    int-to-long v7, v6

    sub-long/2addr p2, v7

    goto :goto_1

    :cond_c
    if-lt v0, v3, :cond_d

    .line 1882
    sget-object p2, Lnet/time4j/calendar/Nengo$Selector;->MODERN:Lnet/time4j/calendar/Nengo$Selector;

    invoke-static {v0, p2}, Lnet/time4j/calendar/Nengo;->ofRelatedGregorianYear(ILnet/time4j/calendar/Nengo$Selector;)Lnet/time4j/calendar/Nengo;

    move-result-object p2

    .line 1883
    invoke-static {v2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p3

    .line 1884
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-static {v0, p3}, Lnet/time4j/calendar/JapaneseCalendar;->access$1600(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1887
    invoke-virtual {p2}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 1885
    invoke-static {p2, v0, p3, p1, v1}, Lnet/time4j/calendar/JapaneseCalendar;->of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/format/Leniency;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p2, 0x0

    .line 1894
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object p3

    add-int/lit16 v3, v0, -0x2bd

    aget-byte p3, p3, v3

    if-lez p3, :cond_10

    if-gt p3, v2, :cond_e

    add-int/lit8 v3, v2, -0x1

    goto :goto_6

    :cond_e
    move v3, v2

    :goto_6
    if-ne p3, v2, :cond_f

    goto :goto_7

    :cond_f
    move v1, p2

    :goto_7
    move v2, v3

    goto :goto_8

    :cond_10
    move v1, p2

    .line 1903
    :goto_8
    invoke-static {v2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    if-eqz v1, :cond_11

    .line 1905
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    .line 1907
    :cond_11
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p3

    invoke-static {v0, p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1600(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1908
    invoke-static {p1, v0, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar;->access$1700(Lnet/time4j/calendar/JapaneseCalendar;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1910
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1839
    :cond_12
    :try_start_1
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {p2, p3}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p2

    invoke-static {v0, p2}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p2

    .line 1840
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p3

    .line 1841
    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v0

    if-lt p2, v3, :cond_13

    .line 1843
    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1844
    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p3

    goto :goto_9

    .line 1846
    :cond_13
    invoke-virtual {p3}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v1

    add-int/lit16 v2, p2, -0x2bd

    aget-byte v1, v1, v2

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_14

    .line 1847
    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p3

    .line 1849
    :cond_14
    :goto_9
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {p2, p3}, Lnet/time4j/calendar/JapaneseCalendar;->access$1600(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1850
    invoke-static {p1, p2, p3, v0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1700(Lnet/time4j/calendar/JapaneseCalendar;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 1852
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1833
    :cond_15
    :try_start_2
    invoke-static {p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->erasAdded(Lnet/time4j/calendar/JapaneseCalendar;J)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 1835
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1809
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    check-cast p2, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->between(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/JapaneseCalendar;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/JapaneseCalendar;)J
    .locals 11

    .line 1931
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$calendar$JapaneseCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->unit:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1990
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$300()Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->transform(Lnet/time4j/calendar/JapaneseCalendar;)J

    move-result-wide v0

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$300()Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->transform(Lnet/time4j/calendar/JapaneseCalendar;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 1992
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->unit:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1988
    :cond_1
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->between(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/JapaneseCalendar;)J

    move-result-wide p1

    const-wide/16 v0, 0x7

    div-long/2addr p1, v0

    return-wide p1

    .line 1953
    :cond_2
    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    .line 1954
    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v2

    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/time4j/calendar/JapaneseCalendar;->access$1800(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v2

    .line 1955
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v3

    .line 1956
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v4

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/time4j/calendar/JapaneseCalendar;->access$1800(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v4

    .line 1957
    invoke-virtual {p2, p1}, Lnet/time4j/calendar/JapaneseCalendar;->compareByTime(Lnet/time4j/engine/CalendarDate;)I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ne v3, v0, :cond_6

    if-eq v4, v2, :cond_3

    goto :goto_2

    :cond_3
    if-lez v6, :cond_4

    .line 1981
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v1

    if-le v0, v1, :cond_4

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    if-gez v6, :cond_5

    .line 1983
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p2

    if-ge p1, p2, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_5
    :goto_1
    int-to-long p1, v6

    return-wide p1

    :cond_6
    :goto_2
    add-int/2addr v4, v5

    const/16 v7, 0x751

    const/16 v8, 0xc

    const/16 v9, 0xd

    if-lt v3, v7, :cond_8

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    if-ge v3, v7, :cond_a

    .line 1964
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v4

    add-int/lit16 v7, v3, -0x2bd

    aget-byte v4, v4, v7

    if-nez v4, :cond_9

    goto :goto_4

    :cond_7
    if-ne v4, v9, :cond_d

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    goto :goto_6

    :cond_8
    if-nez v4, :cond_b

    add-int/lit8 v3, v3, -0x1

    .line 1972
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v4

    add-int/lit16 v7, v3, -0x2bd

    aget-byte v4, v4, v7

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    move v8, v9

    :cond_a
    :goto_4
    move v4, v8

    goto :goto_6

    .line 1973
    :cond_b
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v7

    add-int/lit16 v10, v3, -0x2bd

    aget-byte v7, v7, v10

    if-nez v7, :cond_c

    goto :goto_5

    :cond_c
    move v8, v9

    :goto_5
    if-le v4, v8, :cond_d

    goto :goto_3

    :cond_d
    :goto_6
    add-int/2addr v6, v5

    int-to-long v7, v6

    .line 1979
    invoke-static {v7, v8}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->checkAmountOfMonths(J)V

    goto :goto_0

    .line 1935
    :cond_e
    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_f

    const-wide/16 p1, 0x0

    return-wide p1

    .line 1939
    :cond_f
    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v1

    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1800(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v1

    .line 1940
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/time4j/calendar/JapaneseCalendar;->access$1800(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v2

    if-lez v0, :cond_11

    if-gt v2, v1, :cond_10

    if-ne v2, v1, :cond_13

    .line 1942
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p2

    if-le p1, p2, :cond_13

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_11
    if-gez v0, :cond_13

    if-lt v2, v1, :cond_12

    if-ne v2, v1, :cond_13

    .line 1946
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-static {p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p2

    if-ge p1, p2, :cond_13

    :cond_12
    add-int/lit8 v0, v0, 0x1

    :cond_13
    :goto_7
    int-to-long p1, v0

    return-wide p1

    .line 1933
    :cond_14
    invoke-static {p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;->erasBetween(Lnet/time4j/calendar/JapaneseCalendar;Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
