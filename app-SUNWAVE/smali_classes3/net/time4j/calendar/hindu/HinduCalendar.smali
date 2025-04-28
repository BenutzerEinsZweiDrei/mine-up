.class public final Lnet/time4j/calendar/hindu/HinduCalendar;
.super Lnet/time4j/engine/CalendarVariant;
.source "HinduCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/hindu/HinduCalendar$Merger;,
        Lnet/time4j/calendar/hindu/HinduCalendar$DayOfMonthElement;,
        Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;,
        Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;,
        Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;,
        Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/CalendarVariant<",
        "Lnet/time4j/calendar/hindu/HinduCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "hindu"
.end annotation


# static fields
.field private static final CALSYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/calendar/hindu/HinduCS;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/hindu/AdjustableTextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/hindu/AdjustableTextElement<",
            "Lnet/time4j/calendar/hindu/HinduDay;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "d"
    .end annotation
.end field

.field public static final DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Weekday;",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "E"
    .end annotation
.end field

.field public static final DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "D"
    .end annotation
.end field

.field private static final DAY_OF_YEAR_INDEX:I = 0x1

.field private static final ENGINE:Lnet/time4j/engine/CalendarFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarFamily<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/hindu/HinduEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation
.end field

.field private static final MAX_YEAR:I = 0x176f

.field private static final MIN_YEAR:I = 0x4b0

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/hindu/AdjustableTextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/hindu/AdjustableTextElement<",
            "Lnet/time4j/calendar/hindu/HinduMonth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "M"
    .end annotation
.end field

.field private static final YEAR_INDEX:I = 0x0

.field public static final YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x38981459b1539b84L


# instance fields
.field private final transient dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

.field private final transient kyYear:I

.field private final transient month:Lnet/time4j/calendar/hindu/HinduMonth;

.field private final transient utcDays:J

.field private final transient variant:Lnet/time4j/calendar/hindu/HinduVariant;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 310
    const-class v0, Lnet/time4j/calendar/hindu/HinduCalendar;

    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/hindu/HinduEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 329
    new-instance v1, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/hindu/HinduCalendar;

    const-string v6, "YEAR_OF_ERA"

    const/4 v8, 0x0

    const/16 v9, 0x1770

    const/16 v10, 0x79

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 359
    sget-object v1, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->SINGLETON:Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;

    sput-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    .line 384
    sget-object v1, Lnet/time4j/calendar/hindu/HinduCalendar$DayOfMonthElement;->SINGLETON:Lnet/time4j/calendar/hindu/HinduCalendar$DayOfMonthElement;

    sput-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    .line 398
    new-instance v1, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v4, Lnet/time4j/calendar/hindu/HinduCalendar;

    const-string v3, "DAY_OF_YEAR"

    const/4 v5, 0x1

    const/16 v6, 0x16d

    const/16 v7, 0x44

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 414
    new-instance v1, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 415
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 421
    new-instance v1, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;-><init>(Lnet/time4j/calendar/hindu/HinduCalendar$1;)V

    .line 422
    invoke-static {}, Lnet/time4j/calendar/hindu/HinduRule;->values()[Lnet/time4j/calendar/hindu/HinduRule;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 423
    invoke-virtual {v7}, Lnet/time4j/calendar/hindu/HinduRule;->variant()Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v7

    invoke-virtual {v1, v7}, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;->accept(Lnet/time4j/calendar/hindu/HinduVariant;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 425
    :cond_0
    sget-object v3, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_SOLAR:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1, v3}, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;->accept(Lnet/time4j/calendar/hindu/HinduVariant;)V

    .line 426
    sget-object v3, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_LUNAR:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1, v3}, Lnet/time4j/calendar/hindu/HinduCalendar$VariantMap;->accept(Lnet/time4j/calendar/hindu/HinduVariant;)V

    .line 427
    sput-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->CALSYS:Ljava/util/Map;

    .line 429
    new-instance v3, Lnet/time4j/calendar/hindu/HinduCalendar$Merger;

    invoke-direct {v3, v2}, Lnet/time4j/calendar/hindu/HinduCalendar$Merger;-><init>(Lnet/time4j/calendar/hindu/HinduCalendar$1;)V

    .line 430
    invoke-static {v0, v3, v1}, Lnet/time4j/engine/CalendarFamily$Builder;->setUp(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    sget-object v3, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v4, Lnet/time4j/calendar/service/RelatedGregorianYearRule;

    sget-object v6, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-direct {v4, v1, v6}, Lnet/time4j/calendar/service/RelatedGregorianYearRule;-><init>(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 434
    invoke-virtual {v0, v3, v4}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;

    invoke-direct {v3, v2}, Lnet/time4j/calendar/hindu/HinduCalendar$EraRule;-><init>(Lnet/time4j/calendar/hindu/HinduCalendar$1;)V

    .line 437
    invoke-virtual {v0, v1, v3}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    new-instance v2, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;

    invoke-direct {v2, v5}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;-><init>(I)V

    .line 440
    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    sget-object v2, Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;->SINGLETON:Lnet/time4j/calendar/hindu/HinduCalendar$MonthElement;

    .line 443
    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    sget-object v2, Lnet/time4j/calendar/hindu/HinduCalendar$DayOfMonthElement;->SINGLETON:Lnet/time4j/calendar/hindu/HinduCalendar$DayOfMonthElement;

    .line 446
    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/time4j/calendar/hindu/HinduCalendar$IntegerRule;-><init>(I)V

    .line 449
    invoke-virtual {v0, v6, v1}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    new-instance v2, Lnet/time4j/calendar/service/WeekdayRule;

    .line 455
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v4, Lnet/time4j/calendar/hindu/HinduCalendar$1;

    invoke-direct {v4}, Lnet/time4j/calendar/hindu/HinduCalendar$1;-><init>()V

    invoke-direct {v2, v3, v4}, Lnet/time4j/calendar/service/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/calendar/service/Java8Function;)V

    .line 452
    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lnet/time4j/engine/CalendarFamily$Builder;->build()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/hindu/HinduCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-void
.end method

.method constructor <init>(Lnet/time4j/calendar/hindu/HinduVariant;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;J)V
    .locals 1

    .line 486
    invoke-direct {p0}, Lnet/time4j/engine/CalendarVariant;-><init>()V

    const-string v0, "Missing variant."

    .line 489
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing month."

    .line 491
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing day of month."

    .line 493
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 496
    iput-object p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 497
    iput p2, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    .line 498
    iput-object p3, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    .line 499
    iput-object p4, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    .line 500
    iput-wide p5, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/CharSequence;IIZLjava/lang/String;CLjava/util/Locale;)I
    .locals 0

    .line 283
    invoke-static/range {p0 .. p6}, Lnet/time4j/calendar/hindu/HinduCalendar;->parseLeadingLeapInfo(Ljava/lang/CharSequence;IIZLjava/lang/String;CLjava/util/Locale;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Ljava/lang/CharSequence;IIZLjava/lang/String;CLjava/util/Locale;)I
    .locals 0

    .line 283
    invoke-static/range {p0 .. p6}, Lnet/time4j/calendar/hindu/HinduCalendar;->parseTrailingLeapInfo(Ljava/lang/CharSequence;IIZLjava/lang/String;CLjava/util/Locale;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lnet/time4j/calendar/hindu/HinduCalendar;I)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withMidOfMonth(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lnet/time4j/calendar/hindu/HinduCalendar;)Z
    .locals 0

    .line 283
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->isChaitra()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lnet/time4j/calendar/hindu/HinduCalendar;ZLnet/time4j/calendar/hindu/HinduDay;)I
    .locals 0

    .line 283
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar;->criticalYear(ZLnet/time4j/calendar/hindu/HinduDay;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500()Lnet/time4j/engine/CalendarFamily;
    .locals 1

    .line 283
    sget-object v0, Lnet/time4j/calendar/hindu/HinduCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method static synthetic access$300(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 0

    .line 283
    iget-object p0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    return-object p0
.end method

.method static synthetic access$400(Lnet/time4j/calendar/hindu/HinduCalendar;)I
    .locals 0

    .line 283
    iget p0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    return p0
.end method

.method static synthetic access$500(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 0

    .line 283
    iget-object p0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    return-object p0
.end method

.method static synthetic access$600(Lnet/time4j/calendar/hindu/HinduCalendar;)Lnet/time4j/calendar/hindu/HinduDay;
    .locals 0

    .line 283
    iget-object p0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    return-object p0
.end method

.method static synthetic access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J
    .locals 2

    .line 283
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    return-wide v0
.end method

.method static synthetic access$800(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withAdjustedDayInMonth(Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 0

    .line 283
    invoke-static {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getVariant(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p0

    return-object p0
.end method

.method private criticalYear(ZLnet/time4j/calendar/hindu/HinduDay;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 1295
    iget-object p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result p1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 1296
    iget p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 1297
    :cond_0
    iget-object p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result p1

    if-ge p1, v0, :cond_1

    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result p1

    if-lt p1, v0, :cond_1

    .line 1298
    iget p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 1302
    :cond_1
    iget p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    return p1
.end method

.method public static family()Lnet/time4j/engine/CalendarFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarFamily<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .line 1147
    sget-object v0, Lnet/time4j/calendar/hindu/HinduCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method private static getVariant(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 2

    .line 1409
    instance-of v0, p0, Lnet/time4j/engine/VariantSource;

    if-eqz v0, :cond_0

    .line 1410
    check-cast p0, Lnet/time4j/engine/VariantSource;

    invoke-interface {p0}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->from(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p0

    return-object p0

    .line 1411
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    sget-object p0, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1, p0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->from(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "<attributes>"

    goto :goto_0

    .line 1414
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1415
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot infer Hindu calendar variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isChaitra()Z
    .locals 2

    .line 1306
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->getValue()Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/IndianMonth;->CHAITRA:Lnet/time4j/calendar/IndianMonth;

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/IndianMonth;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isValid(Lnet/time4j/calendar/hindu/HinduVariant;Lnet/time4j/calendar/hindu/HinduEra;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z
    .locals 2

    .line 751
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant;->with(Lnet/time4j/calendar/hindu/HinduEra;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    .line 752
    sget-object v1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {v1, p1, p2}, Lnet/time4j/calendar/hindu/HinduEra;->yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I

    move-result p1

    .line 754
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isUsingElapsedYears()Z

    move-result p2

    if-nez p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-ltz p1, :cond_2

    .line 758
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x4b0

    if-ge p1, p0, :cond_1

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {v0, p1, p3, p4}, Lnet/time4j/calendar/hindu/HinduCS;->isValid(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static nowInSystemTime(Lnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 1

    .line 524
    invoke-static {}, Lnet/time4j/calendar/hindu/HinduCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/CalendarFamily;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v0

    .line 525
    invoke-static {p0, v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->nowInSystemTime(Lnet/time4j/calendar/hindu/HinduVariant;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static nowInSystemTime(Lnet/time4j/calendar/hindu/HinduVariant;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 2

    .line 556
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/hindu/HinduCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/CalendarFamily;Lnet/time4j/engine/VariantSource;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/hindu/HinduCalendar;

    return-object p0
.end method

.method public static of(Lnet/time4j/calendar/hindu/HinduVariant;Lnet/time4j/calendar/hindu/HinduEra;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 3

    .line 670
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduVariant;->with(Lnet/time4j/calendar/hindu/HinduEra;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    .line 671
    sget-object v1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {v1, p1, p2}, Lnet/time4j/calendar/hindu/HinduEra;->yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I

    move-result v1

    .line 673
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isUsingElapsedYears()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-ltz v1, :cond_4

    .line 679
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduVariant;->isOld()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x4b0

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 680
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Year out of range in modern Hindu calendar: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 683
    :cond_2
    :goto_0
    invoke-virtual {v0, v1, p3, p4}, Lnet/time4j/calendar/hindu/HinduCS;->isValid(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 684
    invoke-virtual {v0, v1, p3, p4}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p0

    return-object p0

    .line 686
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Kali yuga year must not be smaller than 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofOldLunar(ILnet/time4j/calendar/hindu/HinduMonth;I)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 2

    const/16 v0, 0x1e

    if-gt p2, v0, :cond_0

    .line 632
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object p2

    .line 633
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_LUNAR:Lnet/time4j/calendar/hindu/HinduVariant;

    sget-object v1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-static {v0, v1, p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar;->of(Lnet/time4j/calendar/hindu/HinduVariant;Lnet/time4j/calendar/hindu/HinduEra;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p0

    return-object p0

    .line 629
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day-of-month out of range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofOldSolar(III)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 2

    const/16 v0, 0x1f

    if-gt p2, v0, :cond_0

    .line 594
    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduMonth;->ofSolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object p1

    .line 595
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object p2

    .line 596
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->VAR_OLD_SOLAR:Lnet/time4j/calendar/hindu/HinduVariant;

    sget-object v1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-static {v0, v1, p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar;->of(Lnet/time4j/calendar/hindu/HinduVariant;Lnet/time4j/calendar/hindu/HinduEra;ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p0

    return-object p0

    .line 591
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day-of-month out of range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseLeadingLeapInfo(Ljava/lang/CharSequence;IIZLjava/lang/String;CLjava/util/Locale;)I
    .locals 3

    .line 1320
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x1

    if-ge v0, p2, :cond_1

    .line 1324
    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 1327
    invoke-virtual {p4, p6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    .line 1328
    invoke-virtual {v2, p6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1331
    :cond_0
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    if-ge v0, p2, :cond_2

    .line 1335
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 p4, 0x20

    if-ne p2, p4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v0, p1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 1342
    invoke-static {p0, p1, p3, p5}, Lnet/time4j/calendar/hindu/HinduCalendar;->parseLeapIndicator(Ljava/lang/CharSequence;IZC)I

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method private static parseLeapIndicator(Ljava/lang/CharSequence;IZC)I
    .locals 0

    .line 1394
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-eqz p2, :cond_0

    .line 1398
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    .line 1399
    invoke-static {p3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p3

    :cond_0
    if-ne p0, p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private static parseTrailingLeapInfo(Ljava/lang/CharSequence;IIZLjava/lang/String;CLjava/util/Locale;)I
    .locals 3

    .line 1359
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    if-ge v0, p2, :cond_0

    .line 1361
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1368
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 1371
    invoke-virtual {p4, p6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    .line 1372
    invoke-virtual {p2, p6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 1375
    :cond_1
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    move v0, v1

    :goto_1
    if-nez p2, :cond_3

    .line 1382
    invoke-static {p0, p1, p3, p5}, Lnet/time4j/calendar/hindu/HinduCalendar;->parseLeapIndicator(Ljava/lang/CharSequence;IZC)I

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private withAdjustedDayInMonth(Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 9

    .line 1255
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isPurnimanta()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1258
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->isChaitra()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v3

    iget-object v3, v3, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    iget-object v4, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v3, v4}, Lnet/time4j/calendar/hindu/HinduMonth;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    move-object v5, p1

    .line 1261
    :goto_1
    invoke-direct {p0, v3, v5}, Lnet/time4j/calendar/hindu/HinduCalendar;->criticalYear(ZLnet/time4j/calendar/hindu/HinduDay;)I

    move-result v6

    iget-object v7, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v0, v6, v7, v5}, Lnet/time4j/calendar/hindu/HinduCS;->isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1262
    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v7

    if-eqz v1, :cond_1

    const/16 v8, 0x10

    goto :goto_2

    :cond_1
    move v8, v2

    :goto_2
    if-ne v7, v8, :cond_2

    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduDay;->isLeap()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1263
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withFirstDayOfMonth()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez v4, :cond_4

    .line 1265
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v0, v6, v1}, Lnet/time4j/calendar/hindu/HinduCS;->isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1266
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kshaia (lost) month is never valid: kali-yuga-year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1269
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid day found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => (desired day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_4
    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduDay;->isLeap()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1273
    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v5

    invoke-static {v5}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v5

    goto :goto_3

    .line 1275
    :cond_5
    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v5

    sub-int/2addr v5, v2

    if-eqz v1, :cond_6

    if-nez v5, :cond_6

    const/16 v5, 0x1e

    .line 1279
    :cond_6
    invoke-static {v5}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v5

    .line 1280
    iget-object v6, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v6}, Lnet/time4j/calendar/hindu/HinduVariant;->isLunisolar()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1281
    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduDay;->withLeap()Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v5

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    .line 1287
    :cond_8
    iget-object p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v0, v6, p1, v5}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method private withMidOfMonth(I)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 7

    .line 1235
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v0

    .line 1237
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isPurnimanta()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0xf

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0xf

    .line 1245
    :cond_1
    :goto_0
    iget-wide v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    int-to-double v3, p1

    iget-object p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide v5, 0x403e666666666666L    # 30.4

    goto :goto_1

    :cond_2
    const-wide v5, 0x403d800000000000L    # 29.5

    :goto_1
    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0xf

    add-long/2addr v1, v3

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 1246
    iget-object p1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method private withYearChangedBy(I)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 2

    .line 1250
    sget-object v0, Lnet/time4j/calendar/hindu/HinduCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getYear()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    return-object p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1428
    new-instance v0, Lnet/time4j/calendar/hindu/SPX;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/hindu/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .line 1058
    invoke-static {p0, p1}, Lnet/time4j/GeneralTimestamp;->of(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public atTime(II)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lnet/time4j/GeneralTimestamp<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .line 1083
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/hindu/HinduCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1090
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1091
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    .line 1092
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    iget-object v3, p1, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 1093
    invoke-virtual {v1, v3}, Lnet/time4j/calendar/hindu/HinduVariant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    iget v3, p1, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    iget-object v3, p1, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    .line 1095
    invoke-virtual {v1, v3}, Lnet/time4j/calendar/hindu/HinduMonth;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    iget-object v3, p1, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    .line 1096
    invoke-virtual {v1, v3}, Lnet/time4j/calendar/hindu/HinduDay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    iget-wide v5, p1, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method protected getCalendarSystem()Lnet/time4j/engine/CalendarSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/CalendarFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarFamily<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation

    .line 1152
    sget-object v0, Lnet/time4j/calendar/hindu/HinduCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getChronology()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getContext()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()Lnet/time4j/calendar/hindu/HinduDay;
    .locals 1

    .line 895
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    return-object v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 911
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 4

    .line 929
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v2

    iget-wide v2, v2, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getDaysSinceEpochUTC()J
    .locals 2

    .line 1133
    iget-wide v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    return-wide v0
.end method

.method public getEra()Lnet/time4j/calendar/hindu/HinduEra;
    .locals 3

    .line 829
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getDefaultEra()Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v0

    .line 830
    sget-object v1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    iget v2, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduEra;->yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I

    move-result v1

    if-gez v1, :cond_0

    .line 831
    sget-object v0, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    :cond_0
    return-object v0
.end method

.method getExpiredYearOfKaliYuga()I
    .locals 1

    .line 1167
    iget v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    return v0
.end method

.method public getMonth()Lnet/time4j/calendar/hindu/HinduMonth;
    .locals 1

    .line 877
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 806
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 3

    .line 857
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getEra()Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    iget v2, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/hindu/HinduEra;->yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I

    move-result v0

    .line 858
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isUsingElapsedYears()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1106
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 1107
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    .line 1109
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduMonth;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    .line 1110
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduDay;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .locals 5

    .line 785
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withFirstDayOfMonth()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 786
    invoke-direct {p0, v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withMidOfMonth(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withFirstDayOfMonth()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v1

    .line 787
    iget-wide v1, v1, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    iget-wide v3, v0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 801
    sget-object v0, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public nextDay()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 5

    .line 997
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    iget-wide v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/hindu/HinduCalendar;

    return-object v0
.end method

.method public nextMonth()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 5

    const/4 v0, 0x1

    .line 1013
    invoke-direct {p0, v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withMidOfMonth(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    invoke-direct {v0, v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withAdjustedDayInMonth(Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 1014
    iget-wide v1, v0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    iget-object v3, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduCS;->getMaximumSinceUTC()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    return-object v0

    .line 1015
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hindu date out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextYear()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 1

    const/4 v0, 0x1

    .line 1033
    invoke-direct {p0, v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withYearChangedBy(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    return-object v0
.end method

.method public previousDay()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 5

    .line 945
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    iget-wide v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/hindu/HinduCalendar;

    return-object v0
.end method

.method public previousMonth()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 5

    const/4 v0, -0x1

    .line 961
    invoke-direct {p0, v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withMidOfMonth(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    invoke-direct {v0, v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->withAdjustedDayInMonth(Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 962
    iget-wide v1, v0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    iget-object v3, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduCS;->getMinimumSinceUTC()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    return-object v0

    .line 963
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hindu date out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousYear()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 1

    const/4 v0, -0x1

    .line 981
    invoke-direct {p0, v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withYearChangedBy(I)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 1117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1118
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",era="

    .line 1119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getEra()Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",year-of-era="

    .line 1121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",month="

    .line 1123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",day-of-month="

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method withFirstDayOfMonth()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 7

    const/4 v0, 0x1

    .line 1201
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v1

    .line 1202
    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v2

    .line 1203
    iget v3, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    .line 1205
    iget-object v4, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v4}, Lnet/time4j/calendar/hindu/HinduVariant;->isLunisolar()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    .line 1208
    iget-object v5, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v5}, Lnet/time4j/calendar/hindu/HinduVariant;->isPurnimanta()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v1, 0x10

    .line 1209
    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v5

    .line 1210
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->isChaitra()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->dayOfMonth:Lnet/time4j/calendar/hindu/HinduDay;

    invoke-virtual {v6}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v6

    if-ge v6, v1, :cond_0

    .line 1211
    invoke-virtual {p0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v1

    .line 1212
    iget-object v6, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    iget-object v1, v1, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v6, v1}, Lnet/time4j/calendar/hindu/HinduMonth;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    move-object v1, v5

    .line 1218
    :cond_1
    :goto_0
    iget-object v5, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v2, v3, v5, v1}, Lnet/time4j/calendar/hindu/HinduCS;->isExpunged(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    .line 1221
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduDay;->isLeap()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1222
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduDay;->getValue()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v1

    goto :goto_1

    .line 1224
    :cond_2
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduDay;->withLeap()Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v1

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1220
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine first day of month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :cond_4
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->month:Lnet/time4j/calendar/hindu/HinduMonth;

    invoke-virtual {v2, v3, v0, v1}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    return-object v0
.end method

.method withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 7

    .line 1172
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isPurnimanta()Z

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 1174
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->toAmanta()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v0

    iget v3, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    .line 1176
    invoke-static {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    .line 1177
    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v1

    .line 1174
    invoke-virtual {v0, v3, v2, v1}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 1178
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v1

    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    return-object v0

    .line 1181
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 1182
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->isSolar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    invoke-static {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->ofSolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    .line 1184
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getFirstMonthOfYear()I

    move-result v0

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduMonth;->ofLunisolar(I)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v0

    .line 1185
    :goto_0
    iget-object v2, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object v2

    .line 1186
    iget v3, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    invoke-static {v1}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->isLunisolar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1189
    iget-wide v3, v0, Lnet/time4j/calendar/hindu/HinduCalendar;->utcDays:J

    const-wide/16 v5, 0x1e

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v1

    .line 1190
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduCalendar;->getMonth()Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/hindu/HinduMonth;->isLeap()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    iget v3, p0, Lnet/time4j/calendar/hindu/HinduCalendar;->kyYear:I

    if-ne v2, v3, :cond_2

    move-object v0, v1

    .line 1195
    :cond_2
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->withFirstDayOfMonth()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v0

    return-object v0
.end method
