.class public final Lnet/time4j/calendar/HijriCalendar;
.super Lnet/time4j/engine/CalendarVariant;
.source "HijriCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/HijriCalendar$SPX;,
        Lnet/time4j/calendar/HijriCalendar$Merger;,
        Lnet/time4j/calendar/HijriCalendar$EraRule;,
        Lnet/time4j/calendar/HijriCalendar$MonthRule;,
        Lnet/time4j/calendar/HijriCalendar$IntegerRule;,
        Lnet/time4j/calendar/HijriCalendar$VariantMap;,
        Lnet/time4j/calendar/HijriCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/CalendarVariant<",
        "Lnet/time4j/calendar/HijriCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "islamic"
.end annotation


# static fields
.field public static final BOUNDED_WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOUNDED_WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final CALSYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "d"
    .end annotation
.end field

.field private static final DAY_OF_MONTH_INDEX:I = 0x2

.field public static final DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Weekday;",
            "Lnet/time4j/calendar/HijriCalendar;",
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
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "D"
    .end annotation
.end field

.field private static final DAY_OF_YEAR_INDEX:I = 0x3

.field private static final ENGINE:Lnet/time4j/engine/CalendarFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarFamily<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/HijriEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation
.end field

.field public static final LOCAL_DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Weekday;",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/calendar/HijriMonth;",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation
.end field

.field public static final VARIANT_DIYANET:Ljava/lang/String; = "islamic-diyanet"

.field public static final VARIANT_ICU4J:Ljava/lang/String; = "islamic-icu4j"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VARIANT_UMALQURA:Ljava/lang/String; = "islamic-umalqura"

.field public static final WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/OrdinalWeekdayElement<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "F"
    .end annotation
.end field

.field public static final WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final YEAR_INDEX:I = 0x0

.field public static final YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x40c379ed9655968dL


# instance fields
.field private final transient hdom:I

.field private final transient hmonth:I

.field private final transient hyear:I

.field private final transient variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 258
    const-class v0, Lnet/time4j/calendar/HijriCalendar;

    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/HijriEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/HijriCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 269
    new-instance v1, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/HijriCalendar;

    new-instance v11, Lnet/time4j/calendar/HijriMonth$Operator;

    const/16 v2, -0xc

    invoke-direct {v11, v2}, Lnet/time4j/calendar/HijriMonth$Operator;-><init>(I)V

    new-instance v12, Lnet/time4j/calendar/HijriMonth$Operator;

    const/16 v2, 0xc

    invoke-direct {v12, v2}, Lnet/time4j/calendar/HijriMonth$Operator;-><init>(I)V

    const-string v6, "YEAR_OF_ERA"

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/16 v10, 0x79

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v1, Lnet/time4j/calendar/HijriCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 286
    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v15, Lnet/time4j/calendar/HijriCalendar;

    const-class v16, Lnet/time4j/calendar/HijriMonth;

    new-instance v2, Lnet/time4j/calendar/HijriMonth$Operator;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lnet/time4j/calendar/HijriMonth$Operator;-><init>(I)V

    new-instance v3, Lnet/time4j/calendar/HijriMonth$Operator;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lnet/time4j/calendar/HijriMonth$Operator;-><init>(I)V

    const-string v14, "MONTH_OF_YEAR"

    const/16 v17, 0x4d

    move-object v13, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;CLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v1, Lnet/time4j/calendar/HijriCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 302
    new-instance v1, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v6, Lnet/time4j/calendar/HijriCalendar;

    const-string v5, "DAY_OF_MONTH"

    const/4 v7, 0x1

    const/16 v8, 0x1e

    const/16 v9, 0x64

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v1, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 312
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v12, Lnet/time4j/calendar/HijriCalendar;

    const-string v11, "DAY_OF_YEAR"

    const/4 v13, 0x1

    const/16 v14, 0x163

    const/16 v15, 0x44

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v2, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 336
    new-instance v2, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 337
    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v2, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 339
    new-instance v3, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v3, v0, v1, v2}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v3, Lnet/time4j/calendar/HijriCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 369
    sput-object v3, Lnet/time4j/calendar/HijriCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 422
    new-instance v1, Lnet/time4j/calendar/HijriCalendar$VariantMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/time4j/calendar/HijriCalendar$VariantMap;-><init>(Lnet/time4j/calendar/HijriCalendar$1;)V

    .line 423
    sget-object v3, Lnet/time4j/calendar/AstronomicalHijriData;->UMALQURA:Lnet/time4j/calendar/AstronomicalHijriData;

    const-string v4, "islamic-umalqura"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->values()[Lnet/time4j/calendar/HijriAlgorithm;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 425
    invoke-virtual {v7}, Lnet/time4j/calendar/HijriAlgorithm;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5}, Lnet/time4j/calendar/HijriAlgorithm;->getCalendarSystem(I)Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v7

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 427
    :cond_0
    sput-object v1, Lnet/time4j/calendar/HijriCalendar;->CALSYS:Ljava/util/Map;

    .line 429
    new-instance v3, Lnet/time4j/calendar/HijriCalendar$Merger;

    invoke-direct {v3, v2}, Lnet/time4j/calendar/HijriCalendar$Merger;-><init>(Lnet/time4j/calendar/HijriCalendar$1;)V

    .line 430
    invoke-static {v0, v3, v1}, Lnet/time4j/engine/CalendarFamily$Builder;->setUp(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v3

    sget-object v4, Lnet/time4j/calendar/HijriCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    new-instance v6, Lnet/time4j/calendar/HijriCalendar$EraRule;

    invoke-direct {v6, v2}, Lnet/time4j/calendar/HijriCalendar$EraRule;-><init>(Lnet/time4j/calendar/HijriCalendar$1;)V

    .line 434
    invoke-virtual {v3, v4, v6}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v3

    sget-object v4, Lnet/time4j/calendar/HijriCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    new-instance v6, Lnet/time4j/calendar/HijriCalendar$IntegerRule;

    invoke-direct {v6, v5}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;-><init>(I)V

    .line 437
    invoke-virtual {v3, v4, v6}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v3

    sget-object v4, Lnet/time4j/calendar/HijriCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    new-instance v5, Lnet/time4j/calendar/HijriCalendar$MonthRule;

    invoke-direct {v5, v2}, Lnet/time4j/calendar/HijriCalendar$MonthRule;-><init>(Lnet/time4j/calendar/HijriCalendar$1;)V

    .line 440
    invoke-virtual {v3, v4, v5}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v2

    sget-object v3, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v4, Lnet/time4j/calendar/RelatedGregorianYearRule;

    sget-object v5, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-direct {v4, v1, v5}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 443
    invoke-virtual {v2, v3, v4}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    new-instance v3, Lnet/time4j/calendar/HijriCalendar$IntegerRule;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;-><init>(I)V

    .line 446
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v3, Lnet/time4j/calendar/HijriCalendar$IntegerRule;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lnet/time4j/calendar/HijriCalendar$IntegerRule;-><init>(I)V

    .line 449
    invoke-virtual {v1, v5, v3}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    sget-object v3, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    new-instance v4, Lnet/time4j/calendar/WeekdayRule;

    .line 455
    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v6

    new-instance v7, Lnet/time4j/calendar/HijriCalendar$1;

    invoke-direct {v7}, Lnet/time4j/calendar/HijriCalendar$1;-><init>()V

    invoke-direct {v4, v6, v7}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    .line 452
    invoke-virtual {v1, v3, v4}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    sget-object v3, Lnet/time4j/calendar/HijriCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 465
    invoke-static {v3}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v4

    .line 463
    invoke-virtual {v1, v3, v4}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v3, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 471
    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v4

    invoke-direct {v3, v0, v2, v5, v4}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 466
    invoke-virtual {v1, v3}, Lnet/time4j/engine/CalendarFamily$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lnet/time4j/engine/CalendarFamily$Builder;->build()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HijriCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    .line 492
    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->localDayOfWeek(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HijriCalendar;->LOCAL_DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 511
    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->weekOfYear(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HijriCalendar;->WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 530
    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->weekOfMonth(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HijriCalendar;->WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 549
    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->boundedWeekOfYear(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HijriCalendar;->BOUNDED_WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 568
    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->boundedWeekOfMonth(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HijriCalendar;->BOUNDED_WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 587
    invoke-direct {p0}, Lnet/time4j/engine/CalendarVariant;-><init>()V

    .line 589
    iput p1, p0, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    .line 590
    iput p2, p0, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    .line 591
    iput p3, p0, Lnet/time4j/calendar/HijriCalendar;->hdom:I

    .line 592
    iput-object p4, p0, Lnet/time4j/calendar/HijriCalendar;->variant:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Lnet/time4j/calendar/HijriCalendar$1;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/HijriCalendar;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lnet/time4j/calendar/HijriCalendar;)I
    .locals 0

    .line 241
    iget p0, p0, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    return p0
.end method

.method static synthetic access$500(Lnet/time4j/calendar/HijriCalendar;)I
    .locals 0

    .line 241
    iget p0, p0, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    return p0
.end method

.method static synthetic access$600(Lnet/time4j/calendar/HijriCalendar;)I
    .locals 0

    .line 241
    iget p0, p0, Lnet/time4j/calendar/HijriCalendar;->hdom:I

    return p0
.end method

.method static synthetic access$800()Lnet/time4j/engine/CalendarFamily;
    .locals 1

    .line 241
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/Map;
    .locals 1

    .line 241
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->CALSYS:Ljava/util/Map;

    return-object v0
.end method

.method public static family()Lnet/time4j/engine/CalendarFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarFamily<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .line 1341
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method private static getCalendarSystem(Ljava/lang/String;)Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .line 1440
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->CALSYS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/EraYearMonthDaySystem;

    if-eqz v0, :cond_0

    return-object v0

    .line 1443
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported calendar variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 4

    .line 1323
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    sget-object v1, Lnet/time4j/Weekday;->FRIDAY:Lnet/time4j/Weekday;

    sget-object v2, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1402
    invoke-static {p0}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p0

    .line 1404
    instance-of v0, p0, Lnet/time4j/calendar/AstronomicalHijriData;

    if-eqz v0, :cond_0

    .line 1405
    const-class v0, Lnet/time4j/calendar/AstronomicalHijriData;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/AstronomicalHijriData;

    invoke-virtual {p0}, Lnet/time4j/calendar/AstronomicalHijriData;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static isValid(Ljava/lang/String;III)Z
    .locals 1

    .line 1076
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->CALSYS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/EraYearMonthDaySystem;

    if-eqz p0, :cond_0

    .line 1077
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-interface {p0, v0, p1, p2, p3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nowInSystemTime(Ljava/lang/String;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/calendar/HijriCalendar;
    .locals 2

    .line 844
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/CalendarFamily;Ljava/lang/String;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HijriCalendar;

    return-object p0
.end method

.method public static nowInSystemTime(Lnet/time4j/engine/VariantSource;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/calendar/HijriCalendar;
    .locals 2

    .line 881
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HijriCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/CalendarFamily;Lnet/time4j/engine/VariantSource;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HijriCalendar;

    return-object p0
.end method

.method public static of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;
    .locals 2

    .line 664
    invoke-static {p0}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    .line 666
    sget-object v1, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-interface {v0, v1, p1, p2, p3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Lnet/time4j/calendar/HijriCalendar;

    invoke-direct {v0, p1, p2, p3, p0}, Lnet/time4j/calendar/HijriCalendar;-><init>(IIILjava/lang/String;)V

    return-object v0

    .line 667
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid hijri date: year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", month="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", day="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of(Ljava/lang/String;ILnet/time4j/calendar/HijriMonth;I)Lnet/time4j/calendar/HijriCalendar;
    .locals 0

    .line 629
    invoke-virtual {p2}, Lnet/time4j/calendar/HijriMonth;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/time4j/engine/VariantSource;III)Lnet/time4j/calendar/HijriCalendar;
    .locals 0

    .line 741
    invoke-interface {p0}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/time4j/engine/VariantSource;ILnet/time4j/calendar/HijriMonth;I)Lnet/time4j/calendar/HijriCalendar;
    .locals 0

    .line 706
    invoke-interface {p0}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lnet/time4j/calendar/HijriMonth;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static ofUmalqura(III)Lnet/time4j/calendar/HijriCalendar;
    .locals 1

    const-string v0, "islamic-umalqura"

    .line 807
    invoke-static {v0, p0, p1, p2}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static ofUmalqura(ILnet/time4j/calendar/HijriMonth;I)Lnet/time4j/calendar/HijriCalendar;
    .locals 1

    .line 774
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriMonth;->getValue()I

    move-result p1

    const-string v0, "islamic-umalqura"

    invoke-static {v0, p0, p1, p2}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1472
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static register(Lnet/time4j/calendar/HijriData;)V
    .locals 2

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "islamic-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/time4j/calendar/HijriData;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1369
    invoke-interface {p0}, Lnet/time4j/calendar/HijriData;->prepare()V

    .line 1372
    :try_start_0
    new-instance v1, Lnet/time4j/calendar/AstronomicalHijriData;

    invoke-direct {v1, p0}, Lnet/time4j/calendar/AstronomicalHijriData;-><init>(Lnet/time4j/calendar/HijriData;)V

    .line 1373
    sget-object p0, Lnet/time4j/calendar/HijriCalendar;->CALSYS:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Hijri data."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1460
    new-instance v0, Lnet/time4j/calendar/HijriCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/HijriCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .line 1159
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
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .line 1186
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1255
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/HijriCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1256
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    .line 1257
    iget v1, p0, Lnet/time4j/calendar/HijriCalendar;->hdom:I

    iget v3, p1, Lnet/time4j/calendar/HijriCalendar;->hdom:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    iget v3, p1, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    iget v3, p1, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/HijriCalendar;->variant:Ljava/lang/String;

    iget-object p1, p1, Lnet/time4j/calendar/HijriCalendar;->variant:Ljava/lang/String;

    .line 1261
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method protected getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Lnet/time4j/calendar/HijriCalendar;->variant:Ljava/lang/String;

    invoke-static {v0}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCalendarSystem()Lnet/time4j/engine/CalendarSystem;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/CalendarFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarFamily<",
            "Lnet/time4j/calendar/HijriCalendar;",
            ">;"
        }
    .end annotation

    .line 1415
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar;->getChronology()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/HijriCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar;->getContext()Lnet/time4j/calendar/HijriCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 953
    iget v0, p0, Lnet/time4j/calendar/HijriCalendar;->hdom:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 975
    iget-object v0, p0, Lnet/time4j/calendar/HijriCalendar;->variant:Ljava/lang/String;

    invoke-static {v0}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 976
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 994
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HijriCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEra()Lnet/time4j/calendar/HijriEra;
    .locals 1

    .line 899
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/calendar/HijriMonth;
    .locals 1

    .line 935
    iget v0, p0, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    invoke-static {v0}, Lnet/time4j/calendar/HijriMonth;->valueOf(I)Lnet/time4j/calendar/HijriMonth;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 1001
    iget-object v0, p0, Lnet/time4j/calendar/HijriCalendar;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 917
    iget v0, p0, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1272
    iget v0, p0, Lnet/time4j/calendar/HijriCalendar;->hdom:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/time4j/calendar/HijriCalendar;->variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .locals 4

    .line 1019
    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    iget v2, p0, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    iget v3, p0, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    invoke-interface {v0, v1, v2, v3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 3

    .line 1040
    :try_start_0
    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    iget v2, p0, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    invoke-interface {v0, v1, v2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1042
    new-instance v1, Lnet/time4j/engine/ChronoException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public minus(ILnet/time4j/calendar/HijriCalendar$Unit;)Lnet/time4j/calendar/HijriCalendar;
    .locals 0

    .line 1246
    invoke-static {p1}, Lnet/time4j/base/MathUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HijriCalendar;->plus(ILnet/time4j/calendar/HijriCalendar$Unit;)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1
.end method

.method public nextDay()Lnet/time4j/calendar/HijriCalendar;
    .locals 1

    .line 1131
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-interface {v0}, Lnet/time4j/calendar/StdCalendarElement;->incremented()Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HijriCalendar;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HijriCalendar;

    return-object v0
.end method

.method public nextMonth()Lnet/time4j/calendar/HijriCalendar;
    .locals 1

    .line 1113
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-interface {v0}, Lnet/time4j/calendar/StdCalendarElement;->incremented()Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HijriCalendar;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HijriCalendar;

    return-object v0
.end method

.method public nextYear()Lnet/time4j/calendar/HijriCalendar;
    .locals 1

    .line 1095
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-interface {v0}, Lnet/time4j/calendar/StdCalendarElement;->incremented()Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HijriCalendar;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HijriCalendar;

    return-object v0
.end method

.method public plus(ILnet/time4j/calendar/HijriCalendar$Unit;)Lnet/time4j/calendar/HijriCalendar;
    .locals 1

    .line 1214
    :try_start_0
    invoke-virtual {p2, p0, p1}, Lnet/time4j/calendar/HijriCalendar$Unit;->addTo(Lnet/time4j/calendar/HijriCalendar;I)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1216
    new-instance p2, Ljava/lang/ArithmeticException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p2, p1}, Ljava/lang/ArithmeticException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1218
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AH-"

    .line 1280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    iget v1, p0, Lnet/time4j/calendar/HijriCalendar;->hyear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/4 v3, 0x4

    const/16 v4, 0x30

    if-ge v2, v3, :cond_0

    .line 1283
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1285
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 1286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1287
    iget v2, p0, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 1288
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    :cond_1
    iget v2, p0, Lnet/time4j/calendar/HijriCalendar;->hmonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    iget v1, p0, Lnet/time4j/calendar/HijriCalendar;->hdom:I

    if-ge v1, v3, :cond_2

    .line 1293
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1295
    :cond_2
    iget v1, p0, Lnet/time4j/calendar/HijriCalendar;->hdom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 1296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    iget-object v1, p0, Lnet/time4j/calendar/HijriCalendar;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
