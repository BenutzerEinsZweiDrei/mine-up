.class public final Lnet/time4j/DayPeriod;
.super Ljava/lang/Object;
.source "DayPeriod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/DayPeriod$PeriodName;,
        Lnet/time4j/DayPeriod$Element;,
        Lnet/time4j/DayPeriod$Extension;
    }
.end annotation


# static fields
.field private static final CUSTOM:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/DayPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private static FALLBACK:Lnet/time4j/DayPeriod;

.field private static final STD_RULES:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Lnet/time4j/PlainTime;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient calendarType:Ljava/lang/String;

.field private final transient codeMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Lnet/time4j/PlainTime;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transient locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 102
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 103
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object v1

    const-string v2, "am"

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 104
    invoke-static {v1}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object v1

    const-string v2, "pm"

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Lnet/time4j/DayPeriod;->STD_RULES:Ljava/util/SortedMap;

    .line 108
    new-instance v1, Lnet/time4j/DayPeriod;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "iso8601"

    invoke-direct {v1, v2, v3, v0}, Lnet/time4j/DayPeriod;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/util/SortedMap;)V

    sput-object v1, Lnet/time4j/DayPeriod;->FALLBACK:Lnet/time4j/DayPeriod;

    .line 109
    const-class v0, Lnet/time4j/DayPeriod;

    const-string v1, "CUSTOM_DAY_PERIOD"

    invoke-static {v1, v0}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    sput-object v0, Lnet/time4j/DayPeriod;->CUSTOM:Lnet/time4j/engine/AttributeKey;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap<",
            "Lnet/time4j/PlainTime;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lnet/time4j/DayPeriod;->locale:Ljava/util/Locale;

    .line 127
    iput-object p2, p0, Lnet/time4j/DayPeriod;->calendarType:Ljava/lang/String;

    .line 128
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    return-void
.end method

.method private static accept(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x54

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method static synthetic access$000()Lnet/time4j/engine/AttributeKey;
    .locals 1

    .line 95
    sget-object v0, Lnet/time4j/DayPeriod;->CUSTOM:Lnet/time4j/engine/AttributeKey;

    return-object v0
.end method

.method static synthetic access$100(Lnet/time4j/DayPeriod;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Lnet/time4j/DayPeriod;->isPredefined()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lnet/time4j/DayPeriod;)Ljava/util/SortedMap;
    .locals 0

    .line 95
    iget-object p0, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    return-object p0
.end method

.method static synthetic access$300(Lnet/time4j/PlainTime;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-static {p0}, Lnet/time4j/DayPeriod;->getFixedCode(Lnet/time4j/PlainTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 95
    invoke-static {p0, p1}, Lnet/time4j/DayPeriod;->loadTextForms(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/DayPeriod;->createKey(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lnet/time4j/DayPeriod;)Ljava/util/Locale;
    .locals 0

    .line 95
    iget-object p0, p0, Lnet/time4j/DayPeriod;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$700(Lnet/time4j/DayPeriod;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lnet/time4j/DayPeriod;->calendarType:Ljava/lang/String;

    return-object p0
.end method

.method private static createKey(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/time4j/format/TextWidth;",
            "Lnet/time4j/format/OutputContext;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 519
    sget-object v0, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    if-ne p1, v0, :cond_0

    .line 520
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    .line 523
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lnet/time4j/DayPeriod;->toPrefix(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 526
    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p2, v1, :cond_2

    .line 527
    sget-object v0, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-ne p1, v0, :cond_1

    .line 528
    sget-object p2, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/DayPeriod;->createKey(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_1
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/DayPeriod;->createKey(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_2
    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    if-eq p1, v1, :cond_3

    .line 534
    sget-object p1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/DayPeriod;->createKey(Ljava/util/Map;Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getFixedCode(Lnet/time4j/PlainTime;)Ljava/lang/String;
    .locals 1

    .line 498
    sget-object v0, Lnet/time4j/PlainTime;->MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v0}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    const/16 v0, 0x5a0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_1

    const-string p0, "am"

    return-object p0

    :cond_1
    if-ne p0, v0, :cond_2

    const-string p0, "noon"

    return-object p0

    :cond_2
    const-string p0, "pm"

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "midnight"

    return-object p0
.end method

.method private isPredefined()Z
    .locals 1

    .line 492
    iget-object v0, p0, Lnet/time4j/DayPeriod;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static loadTextForms(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    invoke-static {p1, p0}, Lnet/time4j/format/CalendarText;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v0

    const-string v1, "iso8601"

    .line 577
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hasDayPeriods"

    .line 578
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 580
    invoke-static {p0}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static of(Ljava/util/Locale;)Lnet/time4j/DayPeriod;
    .locals 1

    const-string v0, "iso8601"

    .line 154
    invoke-static {p0, v0}, Lnet/time4j/DayPeriod;->of(Ljava/util/Locale;Ljava/lang/String;)Lnet/time4j/DayPeriod;

    move-result-object p0

    return-object p0
.end method

.method static of(Ljava/util/Locale;Ljava/lang/String;)Lnet/time4j/DayPeriod;
    .locals 10

    .line 442
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nn"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    new-instance p0, Ljava/util/Locale;

    const-string v1, "nb"

    invoke-direct {p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 448
    :cond_0
    invoke-static {p0, p1}, Lnet/time4j/DayPeriod;->loadTextForms(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 449
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 451
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 452
    invoke-static {v4}, Lnet/time4j/DayPeriod;->accept(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    const/4 v6, 0x3

    .line 453
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x5

    .line 454
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 455
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object v7

    const-string v8, "Invalid time key: "

    const/16 v9, 0x18

    if-ne v5, v9, :cond_3

    if-nez v6, :cond_2

    goto :goto_1

    .line 458
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-ltz v5, :cond_4

    if-ge v5, v9, :cond_4

    if-ltz v6, :cond_4

    const/16 v9, 0x3c

    if-ge v6, v9, :cond_4

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v6

    int-to-long v5, v5

    .line 461
    sget-object v8, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-virtual {v7, v5, v6, v8}, Lnet/time4j/PlainTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lnet/time4j/PlainTime;

    .line 465
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v7, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 463
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 469
    :cond_5
    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 473
    :cond_6
    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    .line 476
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/PlainTime;

    .line 478
    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 479
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    move-object v1, v3

    goto :goto_2

    .line 486
    :cond_8
    new-instance v0, Lnet/time4j/DayPeriod;

    invoke-direct {v0, p0, p1, v2}, Lnet/time4j/DayPeriod;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/util/SortedMap;)V

    return-object v0

    .line 470
    :cond_9
    :goto_3
    sget-object p0, Lnet/time4j/DayPeriod;->FALLBACK:Lnet/time4j/DayPeriod;

    return-object p0
.end method

.method public static of(Ljava/util/Map;)Lnet/time4j/DayPeriod;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/time4j/PlainTime;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/time4j/DayPeriod;"
        }
    .end annotation

    .line 178
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 184
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/PlainTime;

    .line 185
    invoke-virtual {v2}, Lnet/time4j/PlainTime;->getHour()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_0

    .line 186
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-interface {v0, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map has empty label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_2
    new-instance p0, Lnet/time4j/DayPeriod;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Lnet/time4j/DayPeriod;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/util/SortedMap;)V

    return-object p0

    .line 179
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Label map is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toPrefix(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Ljava/lang/String;
    .locals 1

    .line 550
    sget-object v0, Lnet/time4j/DayPeriod$1;->$SwitchMap$net$time4j$format$TextWidth:[I

    invoke-virtual {p0}, Lnet/time4j/format/TextWidth;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x61

    goto :goto_0

    :cond_0
    const/16 p0, 0x6e

    goto :goto_0

    :cond_1
    const/16 p0, 0x77

    .line 561
    :goto_0
    sget-object v0, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    if-ne p1, v0, :cond_2

    .line 562
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    .line 565
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "P("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ")_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public approximate()Lnet/time4j/engine/ChronoFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, v0, v1}, Lnet/time4j/DayPeriod;->approximate(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public approximate(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/engine/ChronoFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/TextWidth;",
            "Lnet/time4j/format/OutputContext;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Lnet/time4j/DayPeriod$PeriodName;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/time4j/DayPeriod$PeriodName;-><init>(Lnet/time4j/DayPeriod;ZLnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 382
    :cond_0
    instance-of v1, p1, Lnet/time4j/DayPeriod;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 383
    check-cast p1, Lnet/time4j/DayPeriod;

    .line 384
    iget-object v1, p0, Lnet/time4j/DayPeriod;->locale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 385
    iget-object v1, p1, Lnet/time4j/DayPeriod;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    return v2

    .line 388
    :cond_1
    iget-object v3, p1, Lnet/time4j/DayPeriod;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 391
    :cond_2
    iget-object v1, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    iget-object v3, p1, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/time4j/DayPeriod;->calendarType:Ljava/lang/String;

    iget-object p1, p1, Lnet/time4j/DayPeriod;->calendarType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    :cond_4
    return v2
.end method

.method public fixed()Lnet/time4j/engine/ChronoFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    sget-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-virtual {p0, v0, v1}, Lnet/time4j/DayPeriod;->fixed(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public fixed(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/engine/ChronoFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/TextWidth;",
            "Lnet/time4j/format/OutputContext;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Lnet/time4j/DayPeriod$PeriodName;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lnet/time4j/DayPeriod$PeriodName;-><init>(Lnet/time4j/DayPeriod;ZLnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)V

    return-object v0
.end method

.method public getEnd(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 3

    .line 363
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 364
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object p1

    .line 367
    :cond_0
    iget-object v0, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainTime;

    .line 368
    invoke-virtual {p1, v1}, Lnet/time4j/PlainTime;->isBefore(Lnet/time4j/PlainTime;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 373
    :cond_2
    iget-object p1, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1
.end method

.method public getStart(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 4

    .line 325
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 326
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object p1

    .line 328
    :cond_0
    iget-object v0, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainTime;

    .line 330
    iget-object v1, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/PlainTime;

    .line 331
    invoke-virtual {p1, v2}, Lnet/time4j/PlainTime;->isSimultaneous(Lnet/time4j/PlainTime;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 333
    :cond_1
    invoke-virtual {p1, v2}, Lnet/time4j/PlainTime;->isBefore(Lnet/time4j/PlainTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 401
    iget-object v0, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DayPeriod["

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-direct {p0}, Lnet/time4j/DayPeriod;->isPredefined()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "locale="

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget-object v1, p0, Lnet/time4j/DayPeriod;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    iget-object v2, p0, Lnet/time4j/DayPeriod;->calendarType:Ljava/lang/String;

    const-string v3, "iso8601"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",calendar-type="

    .line 425
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v2, p0, Lnet/time4j/DayPeriod;->calendarType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    :cond_0
    iget-object v1, p0, Lnet/time4j/DayPeriod;->codeMap:Ljava/util/SortedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
