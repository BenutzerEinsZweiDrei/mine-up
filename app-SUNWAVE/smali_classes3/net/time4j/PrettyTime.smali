.class public final Lnet/time4j/PrettyTime;
.super Ljava/lang/Object;
.source "PrettyTime.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LANGUAGE_MAP:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "Lnet/time4j/PrettyTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIO:I = 0xf4240

.field private static final NUMBER_SYMBOLS:Lnet/time4j/format/NumberSymbolProvider;

.field private static final START_1972:J

.field private static final STD_UNITS:[Lnet/time4j/IsoUnit;

.field private static final SUPPORTED_UNITS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final TSP_UNITS:[Lnet/time4j/IsoUnit;


# instance fields
.field private final emptyUnit:Lnet/time4j/IsoUnit;

.field private final endListSeparator:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private final minusSign:Ljava/lang/String;

.field private final refClock:Lnet/time4j/base/TimeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/base/TimeSource<",
            "*>;"
        }
    .end annotation
.end field

.field private final rules:Lnet/time4j/format/PluralRules;

.field private final shortStyle:Z

.field private final stdListSeparator:Ljava/lang/String;

.field private final weekToDays:Z

.field private final zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    .line 94
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v1

    const-class v2, Lnet/time4j/format/NumberSymbolProvider;

    invoke-virtual {v1, v2}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/NumberSymbolProvider;

    .line 95
    invoke-interface {v4}, Lnet/time4j/format/NumberSymbolProvider;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v5

    array-length v5, v5

    if-lt v5, v3, :cond_0

    move-object v0, v4

    move v3, v5

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 103
    sget-object v0, Lnet/time4j/format/NumberSymbolProvider;->DEFAULT:Lnet/time4j/format/NumberSymbolProvider;

    .line 106
    :cond_2
    sput-object v0, Lnet/time4j/PrettyTime;->NUMBER_SYMBOLS:Lnet/time4j/format/NumberSymbolProvider;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/time4j/PrettyTime;->LANGUAGE_MAP:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x7

    new-array v0, v0, [Lnet/time4j/IsoUnit;

    .line 119
    sget-object v1, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    aput-object v1, v0, v2

    sget-object v1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    .line 121
    sput-object v0, Lnet/time4j/PrettyTime;->STD_UNITS:[Lnet/time4j/IsoUnit;

    new-array v1, v8, [Lnet/time4j/IsoUnit;

    .line 122
    sget-object v8, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    aput-object v8, v1, v2

    sget-object v2, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    aput-object v2, v1, v3

    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    aput-object v2, v1, v4

    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    aput-object v2, v1, v5

    sget-object v2, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    aput-object v2, v1, v6

    sget-object v2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    aput-object v2, v1, v7

    sput-object v1, Lnet/time4j/PrettyTime;->TSP_UNITS:[Lnet/time4j/IsoUnit;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lnet/time4j/PrettyTime;->SUPPORTED_UNITS:Ljava/util/Set;

    const-wide/32 v0, 0x3c26700

    .line 128
    sput-wide v0, Lnet/time4j/PrettyTime;->START_1972:J

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lnet/time4j/base/TimeSource<",
            "*>;C",
            "Ljava/lang/String;",
            "Lnet/time4j/IsoUnit;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing zero time unit."

    .line 160
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing reference clock."

    .line 162
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lnet/time4j/format/NumberType;->CARDINALS:Lnet/time4j/format/NumberType;

    invoke-static {p1, v0}, Lnet/time4j/format/PluralRules;->of(Ljava/util/Locale;Lnet/time4j/format/NumberType;)Lnet/time4j/format/PluralRules;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/PrettyTime;->rules:Lnet/time4j/format/PluralRules;

    .line 167
    iput-object p1, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    .line 168
    iput-object p2, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    .line 169
    iput-char p3, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    .line 170
    iput-object p5, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    .line 171
    iput-object p4, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    .line 172
    iput-boolean p6, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    .line 173
    iput-boolean p7, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    .line 174
    iput-object p8, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    .line 175
    iput-object p9, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    return-void
.end method

.method private format(J)Ljava/lang/String;
    .locals 5

    .line 1839
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1840
    iget-char v1, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    .line 1841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-gez p1, :cond_0

    .line 1844
    iget-object p1, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    .line 1847
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_2

    .line 1848
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v1, v4, :cond_1

    add-int/2addr v3, v1

    sub-int/2addr v3, v4

    int-to-char v3, v3

    .line 1852
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1855
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(JLnet/time4j/IsoUnit;ZLnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 8

    if-eqz p4, :cond_0

    .line 1785
    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    .line 1788
    :goto_0
    sget-object p4, Lnet/time4j/PrettyTime;->SUPPORTED_UNITS:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 1789
    invoke-interface {p3}, Lnet/time4j/IsoUnit;->isCalendrical()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1790
    const-class p1, Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/CalendarUnit;

    .line 1791
    invoke-virtual {p0, v0, v1, p1, p5}, Lnet/time4j/PrettyTime;->print(JLnet/time4j/CalendarUnit;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1793
    :cond_1
    const-class p4, Lnet/time4j/ClockUnit;

    invoke-virtual {p4, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/ClockUnit;

    .line 1794
    sget-object p4, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    if-ne p3, p4, :cond_3

    const-wide/32 v2, 0xf4240

    .line 1795
    rem-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long p4, v4, v6

    if-nez p4, :cond_2

    .line 1796
    sget-object p3, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    .line 1797
    div-long/2addr v0, v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x3e8

    .line 1798
    rem-long/2addr p1, v2

    cmp-long p1, p1, v6

    if-nez p1, :cond_3

    .line 1799
    sget-object p3, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    .line 1800
    div-long/2addr v0, v2

    .line 1803
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, p3, p5}, Lnet/time4j/PrettyTime;->print(JLnet/time4j/ClockUnit;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1807
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown unit: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private format(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    .line 1816
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_0

    .line 1819
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 1820
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    .line 1821
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 1823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, v1, 0x3

    .line 1824
    invoke-direct {p0, p2, p3}, Lnet/time4j/PrettyTime;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-gez p2, :cond_2

    .line 1830
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private getCategory(J)Lnet/time4j/format/PluralCategory;
    .locals 1

    .line 1644
    iget-object v0, p0, Lnet/time4j/PrettyTime;->rules:Lnet/time4j/format/PluralRules;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/PluralRules;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object p1

    return-object p1
.end method

.method private getEmptyRelativeString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2

    .line 1584
    iget-object v0, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    .line 1586
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1587
    invoke-virtual {v0}, Lnet/time4j/UnitPatterns;->getTodayWord()Ljava/lang/String;

    move-result-object p1

    .line 1589
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 1594
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/UnitPatterns;->getNowWord()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFuturePattern(JLnet/time4j/CalendarUnit;)Ljava/lang/String;
    .locals 1

    .line 1614
    iget-object v0, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    .line 1615
    invoke-direct {p0, p1, p2}, Lnet/time4j/PrettyTime;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object p1

    .line 1616
    iget-boolean p2, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/UnitPatterns;->getPatternInFuture(Lnet/time4j/format/PluralCategory;ZLnet/time4j/IsoUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFuturePattern(JLnet/time4j/ClockUnit;)Ljava/lang/String;
    .locals 1

    .line 1636
    iget-object v0, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    .line 1637
    invoke-direct {p0, p1, p2}, Lnet/time4j/PrettyTime;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object p1

    .line 1638
    iget-boolean p2, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/UnitPatterns;->getPatternInFuture(Lnet/time4j/format/PluralCategory;ZLnet/time4j/IsoUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPastPattern(JLnet/time4j/CalendarUnit;)Ljava/lang/String;
    .locals 1

    .line 1603
    iget-object v0, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    .line 1604
    invoke-direct {p0, p1, p2}, Lnet/time4j/PrettyTime;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object p1

    .line 1605
    iget-boolean p2, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/UnitPatterns;->getPatternInPast(Lnet/time4j/format/PluralCategory;ZLnet/time4j/IsoUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPastPattern(JLnet/time4j/ClockUnit;)Ljava/lang/String;
    .locals 1

    .line 1625
    iget-object v0, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    .line 1626
    invoke-direct {p0, p1, p2}, Lnet/time4j/PrettyTime;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object p1

    .line 1627
    iget-boolean p2, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/UnitPatterns;->getPatternInPast(Lnet/time4j/format/PluralCategory;ZLnet/time4j/IsoUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRelativeReplacement(Lnet/time4j/PlainDate;ZJ)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    const-wide/16 v1, 0x7

    cmp-long p3, p3, v1

    if-gtz p3, :cond_3

    .line 1568
    iget-object p3, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {p3}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object p3

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 1571
    invoke-virtual {p3}, Lnet/time4j/UnitPatterns;->getYesterdayWord()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lnet/time4j/UnitPatterns;->getTomorrowWord()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 1573
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 1574
    invoke-virtual {p3, p1}, Lnet/time4j/UnitPatterns;->labelForLast(Lnet/time4j/Weekday;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p1}, Lnet/time4j/UnitPatterns;->labelForNext(Lnet/time4j/Weekday;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public static of(Ljava/util/Locale;)Lnet/time4j/PrettyTime;
    .locals 12

    .line 199
    sget-object v0, Lnet/time4j/PrettyTime;->LANGUAGE_MAP:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/PrettyTime;

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lnet/time4j/PrettyTime;

    sget-object v4, Lnet/time4j/SystemClock;->INSTANCE:Lnet/time4j/SystemClock;

    sget-object v2, Lnet/time4j/PrettyTime;->NUMBER_SYMBOLS:Lnet/time4j/format/NumberSymbolProvider;

    .line 206
    invoke-interface {v2, p0}, Lnet/time4j/format/NumberSymbolProvider;->getZeroDigit(Ljava/util/Locale;)C

    move-result v5

    .line 207
    invoke-interface {v2, p0}, Lnet/time4j/format/NumberSymbolProvider;->getMinusSign(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PrettyTime;

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private printRelativeSeconds(Lnet/time4j/Moment;Lnet/time4j/Moment;J)Ljava/lang/String;
    .locals 4

    .line 1480
    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    sget-wide v2, Lnet/time4j/PrettyTime;->START_1972:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1481
    sget-object p3, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {p3, p1, p2}, Lnet/time4j/SI;->between(Lnet/time4j/Moment;Lnet/time4j/Moment;)J

    move-result-wide p3

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_1

    .line 1484
    iget-object p1, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {p1}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/UnitPatterns;->getNowWord()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1486
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    if-gez p1, :cond_2

    .line 1487
    sget-object p1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    .line 1489
    invoke-direct {p0, p2, p3, p1}, Lnet/time4j/PrettyTime;->getPastPattern(JLnet/time4j/ClockUnit;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    .line 1490
    invoke-direct {p0, p2, p3, p1}, Lnet/time4j/PrettyTime;->getFuturePattern(JLnet/time4j/ClockUnit;)Ljava/lang/String;

    move-result-object p1

    .line 1491
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/PrettyTime;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private printRelativeTime(Lnet/time4j/Moment;Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;Lnet/time4j/CalendarUnit;Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/tz/Timezone;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/Moment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1507
    invoke-virtual {p3, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    .line 1505
    invoke-static {p1, v0}, Lnet/time4j/PlainTimestamp;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    .line 1511
    invoke-virtual {p3, p2}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    .line 1509
    invoke-static {p2, v0}, Lnet/time4j/PlainTimestamp;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 1513
    iget-boolean v1, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    if-eqz v1, :cond_0

    sget-object v1, Lnet/time4j/PrettyTime;->TSP_UNITS:[Lnet/time4j/IsoUnit;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/time4j/PrettyTime;->STD_UNITS:[Lnet/time4j/IsoUnit;

    .line 1514
    :goto_0
    invoke-static {p3, v1}, Lnet/time4j/Duration;->in(Lnet/time4j/tz/Timezone;[Lnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeMetric;

    move-result-object p3

    invoke-interface {p3, p1, v0}, Lnet/time4j/engine/TimeMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Duration;

    .line 1516
    invoke-virtual {p1}, Lnet/time4j/Duration;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1517
    invoke-direct {p0, p4}, Lnet/time4j/PrettyTime;->getEmptyRelativeString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1520
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object p3

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/engine/TimeSpan$Item;

    .line 1521
    invoke-virtual {p3}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v1

    .line 1522
    invoke-virtual {p3}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/IsoUnit;

    .line 1524
    instance-of v3, p3, Lnet/time4j/ClockUnit;

    if-eqz v3, :cond_2

    .line 1525
    move-object p2, p3

    check-cast p2, Lnet/time4j/ClockUnit;

    invoke-virtual {p2}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result p2

    rsub-int/lit8 p2, p2, 0x5

    invoke-virtual {p4}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result p5

    if-ge p2, p5, :cond_4

    .line 1526
    invoke-direct {p0, p4}, Lnet/time4j/PrettyTime;->getEmptyRelativeString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p5, :cond_3

    .line 1530
    invoke-interface {p3}, Lnet/time4j/IsoUnit;->getLength()D

    move-result-wide v3

    invoke-virtual {p5}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide p4

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Double;->compare(DD)I

    move-result p4

    if-lez p4, :cond_3

    .line 1532
    invoke-interface {p6, p2}, Lnet/time4j/format/TemporalFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1533
    :cond_3
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1534
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object p2

    invoke-virtual {p1}, Lnet/time4j/Duration;->isNegative()Z

    move-result p4

    invoke-direct {p0, p2, p4, v1, v2}, Lnet/time4j/PrettyTime;->getRelativeReplacement(Lnet/time4j/PlainDate;ZJ)Ljava/lang/String;

    move-result-object p2

    .line 1536
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    return-object p2

    .line 1543
    :cond_4
    invoke-virtual {p1}, Lnet/time4j/Duration;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1544
    invoke-interface {p3}, Lnet/time4j/IsoUnit;->isCalendrical()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1545
    check-cast p3, Lnet/time4j/CalendarUnit;

    invoke-direct {p0, v1, v2, p3}, Lnet/time4j/PrettyTime;->getPastPattern(JLnet/time4j/CalendarUnit;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1547
    :cond_5
    check-cast p3, Lnet/time4j/ClockUnit;

    invoke-direct {p0, v1, v2, p3}, Lnet/time4j/PrettyTime;->getPastPattern(JLnet/time4j/ClockUnit;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1550
    :cond_6
    invoke-interface {p3}, Lnet/time4j/IsoUnit;->isCalendrical()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1551
    check-cast p3, Lnet/time4j/CalendarUnit;

    invoke-direct {p0, v1, v2, p3}, Lnet/time4j/PrettyTime;->getFuturePattern(JLnet/time4j/CalendarUnit;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1553
    :cond_7
    check-cast p3, Lnet/time4j/ClockUnit;

    invoke-direct {p0, v1, v2, p3}, Lnet/time4j/PrettyTime;->getFuturePattern(JLnet/time4j/ClockUnit;)Ljava/lang/String;

    move-result-object p1

    .line 1557
    :goto_1
    invoke-direct {p0, p1, v1, v2}, Lnet/time4j/PrettyTime;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static push([JLnet/time4j/CalendarUnit;JZ)V
    .locals 4

    .line 1696
    sget-object v0, Lnet/time4j/PrettyTime$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p1}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1731
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/CalendarUnit;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p4, :cond_0

    const-wide/16 v2, 0x7

    .line 1721
    invoke-static {p2, p3, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_1
    const-wide/16 v0, 0x3

    .line 1713
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    :pswitch_2
    move v1, v2

    goto :goto_1

    :pswitch_3
    const-wide/16 v0, 0xa

    .line 1706
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    goto :goto_0

    :pswitch_4
    const-wide/16 v0, 0x64

    .line 1702
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    goto :goto_0

    :pswitch_5
    const-wide/16 v0, 0x3e8

    .line 1698
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    :goto_0
    :pswitch_6
    move v1, v3

    .line 1734
    :goto_1
    :pswitch_7
    aget-wide v2, p0, v1

    invoke-static {p2, p3, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    aput-wide p1, p0, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static push([JLnet/time4j/ClockUnit;J)V
    .locals 4

    .line 1746
    sget-object v0, Lnet/time4j/PrettyTime$1;->$SwitchMap$net$time4j$ClockUnit:[I

    invoke-virtual {p1}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_0

    .line 1768
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-wide/16 v2, 0x3e8

    .line 1761
    invoke-static {p2, p3, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    goto :goto_0

    :pswitch_1
    const-wide/32 v2, 0xf4240

    .line 1757
    invoke-static {p2, p3, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x4

    .line 1771
    :goto_0
    :pswitch_5
    aget-wide v2, p0, v1

    invoke-static {p2, p3, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    aput-wide p1, p0, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static pushDuration([JLnet/time4j/Duration;Lnet/time4j/base/TimeSource;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lnet/time4j/Duration<",
            "*>;",
            "Lnet/time4j/base/TimeSource<",
            "*>;Z)V"
        }
    .end annotation

    .line 1655
    invoke-virtual {p1}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1659
    invoke-virtual {p1}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/TimeSpan$Item;

    .line 1660
    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/IsoUnit;

    .line 1661
    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v5

    .line 1663
    instance-of v3, v4, Lnet/time4j/CalendarUnit;

    if-eqz v3, :cond_0

    .line 1664
    const-class v3, Lnet/time4j/CalendarUnit;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/CalendarUnit;

    invoke-static {p0, v3, v5, v6, p3}, Lnet/time4j/PrettyTime;->push([JLnet/time4j/CalendarUnit;JZ)V

    goto :goto_2

    .line 1665
    :cond_0
    instance-of v3, v4, Lnet/time4j/ClockUnit;

    if-eqz v3, :cond_1

    .line 1666
    const-class v3, Lnet/time4j/ClockUnit;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/ClockUnit;

    invoke-static {p0, v3, v5, v6}, Lnet/time4j/PrettyTime;->push([JLnet/time4j/ClockUnit;J)V

    goto :goto_2

    .line 1667
    :cond_1
    instance-of v3, v4, Lnet/time4j/OverflowUnit;

    if-eqz v3, :cond_2

    .line 1668
    const-class v3, Lnet/time4j/OverflowUnit;

    .line 1670
    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/OverflowUnit;

    invoke-virtual {v3}, Lnet/time4j/OverflowUnit;->getCalendarUnit()Lnet/time4j/CalendarUnit;

    move-result-object v3

    .line 1668
    invoke-static {p0, v3, v5, v6, p3}, Lnet/time4j/PrettyTime;->push([JLnet/time4j/CalendarUnit;JZ)V

    goto :goto_2

    .line 1673
    :cond_2
    invoke-static {}, Lnet/time4j/CalendarUnit;->weekBasedYears()Lnet/time4j/IsoDateUnit;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1674
    aget-wide v3, p0, v1

    invoke-static {v5, v6, v3, v4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v3

    aput-wide v3, p0, v1

    goto :goto_2

    .line 1676
    :cond_3
    invoke-interface {p2}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object v3

    invoke-static {v3}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v3

    .line 1677
    sget-object v7, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v3, v7}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object v3

    .line 1678
    invoke-virtual {v3, v5, v6, v4}, Lnet/time4j/PlainTimestamp;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v4

    check-cast v4, Lnet/time4j/PlainTimestamp;

    if-eqz p3, :cond_4

    .line 1679
    sget-object v5, Lnet/time4j/PrettyTime;->TSP_UNITS:[Lnet/time4j/IsoUnit;

    goto :goto_1

    :cond_4
    sget-object v5, Lnet/time4j/PrettyTime;->STD_UNITS:[Lnet/time4j/IsoUnit;

    .line 1680
    :goto_1
    invoke-static {v5}, Lnet/time4j/Duration;->in([Lnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeMetric;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lnet/time4j/engine/TimeMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/Duration;

    .line 1681
    invoke-static {p0, v3, p2, p3}, Lnet/time4j/PrettyTime;->pushDuration([JLnet/time4j/Duration;Lnet/time4j/base/TimeSource;Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 238
    iget-object v0, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getReferenceClock()Lnet/time4j/base/TimeSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/base/TimeSource<",
            "*>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    return-object v0
.end method

.method public print(JLnet/time4j/CalendarUnit;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 3

    .line 813
    iget-object v0, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    .line 816
    sget-object v1, Lnet/time4j/PrettyTime$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p3}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 851
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Lnet/time4j/CalendarUnit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 848
    :pswitch_0
    sget-object p3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 840
    :pswitch_1
    iget-boolean p3, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    if-eqz p3, :cond_0

    const-wide/16 v1, 0x7

    .line 841
    invoke-static {p1, p2, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 842
    sget-object p3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 844
    :cond_0
    sget-object p3, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 837
    :pswitch_2
    sget-object p3, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    :pswitch_3
    const-wide/16 v1, 0x3

    .line 833
    invoke-static {p1, p2, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 834
    sget-object p3, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    .line 830
    :pswitch_4
    sget-object p3, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    :pswitch_5
    const-wide/16 v1, 0xa

    .line 826
    invoke-static {p1, p2, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 827
    sget-object p3, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    :pswitch_6
    const-wide/16 v1, 0x64

    .line 822
    invoke-static {p1, p2, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 823
    sget-object p3, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    goto :goto_0

    :pswitch_7
    const-wide/16 v1, 0x3e8

    .line 818
    invoke-static {p1, p2, v1, v2}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 819
    sget-object p3, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    .line 854
    :goto_0
    invoke-direct {p0, p1, p2}, Lnet/time4j/PrettyTime;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object v1

    invoke-virtual {v0, p4, v1, p3}, Lnet/time4j/UnitPatterns;->getPattern(Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;Lnet/time4j/IsoUnit;)Ljava/lang/String;

    move-result-object p3

    .line 855
    invoke-direct {p0, p3, p1, p2}, Lnet/time4j/PrettyTime;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public print(JLnet/time4j/ClockUnit;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 2

    .line 885
    iget-object v0, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lnet/time4j/PrettyTime;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object v1

    invoke-virtual {v0, p4, v1, p3}, Lnet/time4j/UnitPatterns;->getPattern(Lnet/time4j/format/TextWidth;Lnet/time4j/format/PluralCategory;Lnet/time4j/IsoUnit;)Ljava/lang/String;

    move-result-object p3

    .line 886
    invoke-direct {p0, p3, p1, p2}, Lnet/time4j/PrettyTime;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/Duration;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Duration<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 925
    iget-boolean v0, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    :goto_0
    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 926
    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/time4j/PrettyTime;->print(Lnet/time4j/Duration;Lnet/time4j/format/TextWidth;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/Duration;Lnet/time4j/format/TextWidth;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Duration<",
            "*>;",
            "Lnet/time4j/format/TextWidth;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 965
    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/time4j/PrettyTime;->print(Lnet/time4j/Duration;Lnet/time4j/format/TextWidth;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/Duration;Lnet/time4j/format/TextWidth;ZI)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Duration<",
            "*>;",
            "Lnet/time4j/format/TextWidth;",
            "ZI)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p4

    const/4 v9, 0x1

    if-lt v8, v9, :cond_c

    .line 1032
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, v6, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    invoke-interface {v0}, Lnet/time4j/IsoUnit;->isCalendrical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    const-class v0, Lnet/time4j/CalendarUnit;

    iget-object v1, v6, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/CalendarUnit;

    .line 1035
    invoke-virtual {v6, v10, v11, v0, v7}, Lnet/time4j/PrettyTime;->print(JLnet/time4j/CalendarUnit;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1037
    :cond_0
    const-class v0, Lnet/time4j/ClockUnit;

    iget-object v1, v6, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/ClockUnit;

    .line 1038
    invoke-virtual {v6, v10, v11, v0, v7}, Lnet/time4j/PrettyTime;->print(JLnet/time4j/ClockUnit;Lnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1043
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lnet/time4j/Duration;->isNegative()Z

    move-result v12

    const/16 v13, 0x8

    new-array v14, v13, [J

    .line 1045
    iget-object v0, v6, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-boolean v1, v6, Lnet/time4j/PrettyTime;->weekToDays:Z

    move-object/from16 v2, p1

    invoke-static {v14, v2, v0, v1}, Lnet/time4j/PrettyTime;->pushDuration([JLnet/time4j/Duration;Lnet/time4j/base/TimeSource;Z)V

    .line 1048
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v3, v5

    move v4, v3

    :goto_0
    if-ge v4, v13, :cond_7

    if-ge v3, v8, :cond_6

    .line 1052
    iget-boolean v0, v6, Lnet/time4j/PrettyTime;->weekToDays:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq v4, v0, :cond_6

    :cond_2
    if-eqz p3, :cond_3

    if-gtz v3, :cond_4

    :cond_3
    aget-wide v0, v14, v4

    cmp-long v0, v0, v10

    if-lez v0, :cond_6

    :cond_4
    const/4 v0, 0x7

    if-ne v4, v0, :cond_5

    .line 1057
    sget-object v0, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    goto :goto_1

    :cond_5
    sget-object v0, Lnet/time4j/PrettyTime;->STD_UNITS:[Lnet/time4j/IsoUnit;

    aget-object v0, v0, v4

    :goto_1
    move-object/from16 v16, v0

    .line 1058
    aget-wide v1, v14, v4

    move-object/from16 v0, p0

    move v10, v3

    move-object/from16 v3, v16

    move v11, v4

    move v4, v12

    move v13, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/time4j/PrettyTime;->format(JLnet/time4j/IsoUnit;ZLnet/time4j/format/TextWidth;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v10, 0x1

    goto :goto_2

    :cond_6
    move v10, v3

    move v11, v4

    move v13, v5

    move v3, v10

    :goto_2
    add-int/lit8 v4, v11, 0x1

    move v5, v13

    const-wide/16 v10, 0x0

    const/16 v13, 0x8

    goto :goto_0

    :cond_7
    move v10, v3

    move v13, v5

    if-ne v10, v9, :cond_8

    .line 1068
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1074
    :cond_8
    iget-object v0, v6, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1075
    iget-object v1, v6, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    move-object v0, v1

    .line 1079
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{0}"

    .line 1080
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v10, -0x1

    :goto_4
    const/16 v2, 0x7d

    const/16 v4, 0x7b

    if-ge v9, v3, :cond_a

    .line 1083
    iget-object v5, v6, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1088
    :cond_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1094
    :cond_b
    iget-object v0, v6, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    invoke-virtual {v0, v7, v10}, Lnet/time4j/UnitPatterns;->getListPattern(Lnet/time4j/format/TextWidth;I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    :goto_5
    new-array v1, v10, [Ljava/lang/Object;

    .line 1099
    invoke-interface {v15, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 1097
    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max length is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public printLast(Lnet/time4j/Weekday;)Ljava/lang/String;
    .locals 1

    .line 757
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/UnitPatterns;->labelForLast(Lnet/time4j/Weekday;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printNext(Lnet/time4j/Weekday;)Ljava/lang/String;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/UnitPatterns;->labelForNext(Lnet/time4j/Weekday;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printRelative(Lnet/time4j/base/UnixTime;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1215
    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/PrettyTime;->printRelative(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printRelative(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/TZID;)Ljava/lang/String;
    .locals 1

    .line 1184
    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/PrettyTime;->printRelative(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printRelative(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 8

    .line 1278
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getReferenceClock()Lnet/time4j/base/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object v0

    .line 1279
    invoke-static {v0}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v2

    .line 1280
    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v3

    .line 1282
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 1283
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, p1}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    .line 1285
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    cmp-long p1, v4, v6

    if-gez p1, :cond_0

    .line 1286
    invoke-direct {p0, v2, v3, v0, v1}, Lnet/time4j/PrettyTime;->printRelativeSeconds(Lnet/time4j/Moment;Lnet/time4j/Moment;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    .line 1290
    invoke-direct/range {v1 .. v7}, Lnet/time4j/PrettyTime;->printRelativeTime(Lnet/time4j/Moment;Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;Lnet/time4j/CalendarUnit;Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printRelativeInStdTimezone(Lnet/time4j/base/UnixTime;)Ljava/lang/String;
    .locals 2

    .line 1125
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1}, Lnet/time4j/PrettyTime;->printRelative(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printRelativeOrDate(Lnet/time4j/PlainDate;Lnet/time4j/tz/TZID;Lnet/time4j/CalendarUnit;Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            "Lnet/time4j/tz/TZID;",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Missing max relative unit."

    .line 1434
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1437
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getReferenceClock()Lnet/time4j/base/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v0

    .line 1438
    invoke-virtual {v0, p2}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object p2

    .line 1441
    iget-boolean v0, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1442
    invoke-static {}, Lnet/time4j/Duration;->inYearsMonthsDays()Lnet/time4j/engine/TimeMetric;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lnet/time4j/engine/TimeMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Duration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/time4j/CalendarUnit;

    .line 1444
    sget-object v2, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    sget-object v3, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    aput-object v3, v0, v2

    .line 1445
    invoke-static {v0}, Lnet/time4j/Duration;->in([Lnet/time4j/IsoUnit;)Lnet/time4j/engine/TimeMetric;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lnet/time4j/engine/TimeMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Duration;

    .line 1448
    :goto_0
    invoke-virtual {p2}, Lnet/time4j/Duration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1449
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1}, Lnet/time4j/PrettyTime;->getEmptyRelativeString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1452
    :cond_1
    invoke-virtual {p2}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/TimeSpan$Item;

    .line 1453
    invoke-virtual {v0}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v1

    .line 1454
    invoke-virtual {v0}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/CalendarUnit;

    .line 1456
    invoke-virtual {v0}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v3

    invoke-virtual {p3}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p3

    if-lez p3, :cond_2

    .line 1457
    invoke-interface {p4, p1}, Lnet/time4j/format/TemporalFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1458
    :cond_2
    sget-object p3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, p3}, Lnet/time4j/CalendarUnit;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1459
    invoke-virtual {p2}, Lnet/time4j/Duration;->isNegative()Z

    move-result p3

    invoke-direct {p0, p1, p3, v1, v2}, Lnet/time4j/PrettyTime;->getRelativeReplacement(Lnet/time4j/PlainDate;ZJ)Ljava/lang/String;

    move-result-object p1

    .line 1461
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    return-object p1

    .line 1467
    :cond_3
    invoke-virtual {p2}, Lnet/time4j/Duration;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1468
    invoke-direct {p0, v1, v2, v0}, Lnet/time4j/PrettyTime;->getPastPattern(JLnet/time4j/CalendarUnit;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1469
    :cond_4
    invoke-direct {p0, v1, v2, v0}, Lnet/time4j/PrettyTime;->getFuturePattern(JLnet/time4j/CalendarUnit;)Ljava/lang/String;

    move-result-object p1

    .line 1470
    :goto_1
    invoke-direct {p0, p1, v1, v2}, Lnet/time4j/PrettyTime;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printRelativeOrDateTime(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;JLnet/time4j/format/TemporalFormatter;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/UnixTime;",
            "Lnet/time4j/tz/Timezone;",
            "Ljava/util/concurrent/TimeUnit;",
            "J",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/Moment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1333
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getReferenceClock()Lnet/time4j/base/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object v0

    .line 1334
    invoke-static {v0}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v2

    .line 1335
    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v3

    .line 1336
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, p1}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    .line 1338
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long p1, v4, p4

    if-lez p1, :cond_0

    .line 1339
    invoke-interface {p6, v3}, Lnet/time4j/format/TemporalFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1340
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1341
    invoke-virtual {p3, p1}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 1342
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p4

    const-wide/16 v4, 0x3c

    cmp-long p1, p4, v4

    if-gez p1, :cond_1

    .line 1344
    invoke-direct {p0, v2, v3, v0, v1}, Lnet/time4j/PrettyTime;->printRelativeSeconds(Lnet/time4j/Moment;Lnet/time4j/Moment;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    .line 1347
    invoke-direct/range {v1 .. v7}, Lnet/time4j/PrettyTime;->printRelativeTime(Lnet/time4j/Moment;Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;Lnet/time4j/CalendarUnit;Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printRelativeOrDateTime(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;Lnet/time4j/CalendarUnit;Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/UnixTime;",
            "Lnet/time4j/tz/Timezone;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/Moment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Missing max relative unit."

    .line 1385
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1388
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getReferenceClock()Lnet/time4j/base/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object v0

    .line 1389
    invoke-static {v0}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v2

    .line 1390
    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object v3

    .line 1391
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, p1}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v0

    .line 1393
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1394
    invoke-virtual {p3, p1}, Ljava/util/concurrent/TimeUnit;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 1395
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    cmp-long p1, v4, v6

    if-gez p1, :cond_0

    .line 1397
    invoke-direct {p0, v2, v3, v0, v1}, Lnet/time4j/PrettyTime;->printRelativeSeconds(Lnet/time4j/Moment;Lnet/time4j/Moment;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1400
    invoke-direct/range {v1 .. v7}, Lnet/time4j/PrettyTime;->printRelativeTime(Lnet/time4j/Moment;Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;Ljava/util/concurrent/TimeUnit;Lnet/time4j/CalendarUnit;Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public printToday()Ljava/lang/String;
    .locals 1

    .line 719
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/UnitPatterns;->getTodayWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printTomorrow()Ljava/lang/String;
    .locals 1

    .line 737
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/UnitPatterns;->getTomorrowWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printYesterday()Ljava/lang/String;
    .locals 1

    .line 701
    invoke-virtual {p0}, Lnet/time4j/PrettyTime;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/UnitPatterns;->of(Ljava/util/Locale;)Lnet/time4j/UnitPatterns;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/UnitPatterns;->getYesterdayWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDefaultListSeparator(Ljava/lang/String;)Lnet/time4j/PrettyTime;
    .locals 11

    .line 629
    iget-object v0, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 633
    :cond_0
    new-instance v0, Lnet/time4j/PrettyTime;

    iget-object v2, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-char v4, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    iget-object v5, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    iget-object v6, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    iget-boolean v7, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    iget-boolean v8, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    iget-object v10, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    move-object v1, v0

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withEmptyUnit(Lnet/time4j/CalendarUnit;)Lnet/time4j/PrettyTime;
    .locals 11

    .line 459
    iget-object v0, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 463
    :cond_0
    new-instance v0, Lnet/time4j/PrettyTime;

    iget-object v2, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-char v4, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    iget-object v5, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    iget-boolean v7, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    iget-boolean v8, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    iget-object v9, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    iget-object v10, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withEmptyUnit(Lnet/time4j/ClockUnit;)Lnet/time4j/PrettyTime;
    .locals 11

    .line 501
    iget-object v0, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 505
    :cond_0
    new-instance v0, Lnet/time4j/PrettyTime;

    iget-object v2, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-char v4, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    iget-object v5, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    iget-boolean v7, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    iget-boolean v8, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    iget-object v9, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    iget-object v10, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withLastListSeparator(Ljava/lang/String;)Lnet/time4j/PrettyTime;
    .locals 11

    .line 670
    iget-object v0, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 674
    :cond_0
    new-instance v0, Lnet/time4j/PrettyTime;

    iget-object v2, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-char v4, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    iget-object v5, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    iget-object v6, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    iget-boolean v7, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    iget-boolean v8, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    iget-object v9, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    move-object v1, v0

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withMinusSign(Ljava/lang/String;)Lnet/time4j/PrettyTime;
    .locals 11

    .line 417
    iget-object v0, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 421
    :cond_0
    new-instance v0, Lnet/time4j/PrettyTime;

    iget-object v2, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-char v4, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    iget-object v6, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    iget-boolean v7, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    iget-boolean v8, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    iget-object v9, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    iget-object v10, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v10}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withReferenceClock(Lnet/time4j/base/TimeSource;)Lnet/time4j/PrettyTime;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;)",
            "Lnet/time4j/PrettyTime;"
        }
    .end annotation

    .line 290
    new-instance v10, Lnet/time4j/PrettyTime;

    iget-object v1, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-char v3, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    iget-object v4, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    iget-object v5, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    iget-boolean v6, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    iget-boolean v7, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    iget-object v8, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    iget-object v9, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public withShortStyle()Lnet/time4j/PrettyTime;
    .locals 11

    .line 570
    iget-boolean v0, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 574
    :cond_0
    new-instance v0, Lnet/time4j/PrettyTime;

    iget-object v2, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-char v4, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    iget-object v5, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    iget-object v6, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    iget-boolean v7, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    const/4 v8, 0x1

    iget-object v9, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    iget-object v10, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withWeeksToDays()Lnet/time4j/PrettyTime;
    .locals 11

    .line 532
    iget-boolean v0, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 536
    :cond_0
    new-instance v0, Lnet/time4j/PrettyTime;

    iget-object v2, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-char v4, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    iget-object v5, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    iget-object v6, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    const/4 v7, 0x1

    iget-boolean v8, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    iget-object v9, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    iget-object v10, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withZeroDigit(C)Lnet/time4j/PrettyTime;
    .locals 11

    .line 363
    iget-char v0, p0, Lnet/time4j/PrettyTime;->zeroDigit:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 367
    :cond_0
    new-instance v0, Lnet/time4j/PrettyTime;

    iget-object v2, p0, Lnet/time4j/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lnet/time4j/PrettyTime;->refClock:Lnet/time4j/base/TimeSource;

    iget-object v5, p0, Lnet/time4j/PrettyTime;->minusSign:Ljava/lang/String;

    iget-object v6, p0, Lnet/time4j/PrettyTime;->emptyUnit:Lnet/time4j/IsoUnit;

    iget-boolean v7, p0, Lnet/time4j/PrettyTime;->weekToDays:Z

    iget-boolean v8, p0, Lnet/time4j/PrettyTime;->shortStyle:Z

    iget-object v9, p0, Lnet/time4j/PrettyTime;->stdListSeparator:Ljava/lang/String;

    iget-object v10, p0, Lnet/time4j/PrettyTime;->endListSeparator:Ljava/lang/String;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v10}, Lnet/time4j/PrettyTime;-><init>(Ljava/util/Locale;Lnet/time4j/base/TimeSource;CLjava/lang/String;Lnet/time4j/IsoUnit;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withZeroDigit(Lnet/time4j/format/NumberSystem;)Lnet/time4j/PrettyTime;
    .locals 3

    .line 323
    invoke-virtual {p1}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p1}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lnet/time4j/PrettyTime;->withZeroDigit(C)Lnet/time4j/PrettyTime;

    move-result-object p1

    return-object p1

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number system is not decimal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
