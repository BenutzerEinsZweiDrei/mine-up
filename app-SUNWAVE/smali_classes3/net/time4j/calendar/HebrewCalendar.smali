.class public final Lnet/time4j/calendar/HebrewCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "HebrewCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/HebrewCalendar$SPX;,
        Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;,
        Lnet/time4j/calendar/HebrewCalendar$Merger;,
        Lnet/time4j/calendar/HebrewCalendar$ParsedMonthElement;,
        Lnet/time4j/calendar/HebrewCalendar$EraRule;,
        Lnet/time4j/calendar/HebrewCalendar$MonthRule;,
        Lnet/time4j/calendar/HebrewCalendar$IntegerRule;,
        Lnet/time4j/calendar/HebrewCalendar$Transformer;,
        Lnet/time4j/calendar/HebrewCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/calendar/HebrewCalendar$Unit;",
        "Lnet/time4j/calendar/HebrewCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "hebrew"
.end annotation


# static fields
.field public static final BOUNDED_WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOUNDED_WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HebrewCalendar;",
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
            "Lnet/time4j/calendar/HebrewCalendar;",
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
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "D"
    .end annotation
.end field

.field private static final DAY_OF_YEAR_INDEX:I = 0x3

.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/HebrewCalendar$Unit;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/HebrewEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation
.end field

.field private static final FIXED_EPOCH:J

.field public static final LOCAL_DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Weekday;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/calendar/HebrewMonth;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation
.end field

.field public static final WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/OrdinalWeekdayElement<",
            "Lnet/time4j/calendar/HebrewCalendar;",
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
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "Lnet/time4j/calendar/HebrewCalendar;",
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
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x3a0d0673c4d6be78L


# instance fields
.field private final transient dom:I

.field private final transient month:Lnet/time4j/calendar/HebrewMonth;

.field private final transient year:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 187
    const-class v0, Lnet/time4j/calendar/HebrewCalendar;

    const/16 v1, -0xeb0

    const/16 v2, 0x9

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v1

    sget-object v2, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v1, v2}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lnet/time4j/calendar/HebrewCalendar;->FIXED_EPOCH:J

    .line 200
    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/HebrewEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/HebrewCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 210
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/HebrewCalendar;

    const-string v6, "YEAR_OF_ERA"

    const/4 v8, 0x1

    const/16 v9, 0x270f

    const/16 v10, 0x79

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v2, Lnet/time4j/calendar/HebrewCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 227
    new-instance v3, Lnet/time4j/calendar/HebrewCalendar$1;

    const-class v4, Lnet/time4j/calendar/HebrewMonth;

    const-string v5, "MONTH_OF_YEAR"

    const/16 v6, 0x4d

    invoke-direct {v3, v5, v0, v4, v6}, Lnet/time4j/calendar/HebrewCalendar$1;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v3, Lnet/time4j/calendar/HebrewCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 273
    new-instance v4, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v9, Lnet/time4j/calendar/HebrewCalendar;

    const-string v8, "DAY_OF_MONTH"

    const/4 v10, 0x1

    const/16 v11, 0x1e

    const/16 v12, 0x64

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v4, Lnet/time4j/calendar/HebrewCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 283
    new-instance v5, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v15, Lnet/time4j/calendar/HebrewCalendar;

    const-string v14, "DAY_OF_YEAR"

    const/16 v16, 0x1

    const/16 v17, 0x163

    const/16 v18, 0x44

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v5, Lnet/time4j/calendar/HebrewCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 305
    new-instance v6, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 306
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v6, Lnet/time4j/calendar/HebrewCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 308
    new-instance v7, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v7, v0, v4, v6}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v7, Lnet/time4j/calendar/HebrewCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 318
    sput-object v7, Lnet/time4j/calendar/HebrewCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 324
    new-instance v8, Lnet/time4j/calendar/HebrewCalendar$Transformer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lnet/time4j/calendar/HebrewCalendar$Transformer;-><init>(Lnet/time4j/calendar/HebrewCalendar$1;)V

    sput-object v8, Lnet/time4j/calendar/HebrewCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    .line 326
    const-class v10, Lnet/time4j/calendar/HebrewCalendar$Unit;

    new-instance v11, Lnet/time4j/calendar/HebrewCalendar$Merger;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/HebrewCalendar$Merger;-><init>(Lnet/time4j/calendar/HebrewCalendar$1;)V

    .line 327
    invoke-static {v10, v0, v11, v8}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v10

    new-instance v11, Lnet/time4j/calendar/HebrewCalendar$EraRule;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/HebrewCalendar$EraRule;-><init>(Lnet/time4j/calendar/HebrewCalendar$1;)V

    .line 332
    invoke-virtual {v10, v1, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v10, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;-><init>(I)V

    sget-object v11, Lnet/time4j/calendar/HebrewCalendar$Unit;->YEARS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 335
    invoke-virtual {v1, v2, v10, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/HebrewCalendar$MonthRule;

    invoke-direct {v2, v9}, Lnet/time4j/calendar/HebrewCalendar$MonthRule;-><init>(Lnet/time4j/calendar/HebrewCalendar$1;)V

    sget-object v9, Lnet/time4j/calendar/HebrewCalendar$Unit;->MONTHS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 339
    invoke-virtual {v1, v3, v2, v9}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 343
    invoke-virtual {v1, v4, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lnet/time4j/calendar/HebrewCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 347
    invoke-virtual {v1, v5, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/WeekdayRule;

    .line 354
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v9, Lnet/time4j/calendar/HebrewCalendar$2;

    invoke-direct {v9}, Lnet/time4j/calendar/HebrewCalendar$2;-><init>()V

    invoke-direct {v2, v3, v9}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    sget-object v3, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 351
    invoke-virtual {v1, v6, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 365
    invoke-static {v7}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v2

    .line 363
    invoke-virtual {v1, v7, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/RelatedGregorianYearRule;

    invoke-direct {v3, v8, v5}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/ChronoElement;)V

    .line 366
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v9

    sget-object v10, Lnet/time4j/calendar/HebrewCalendar$Unit;->YEARS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    new-instance v11, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->YEARS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-direct {v11, v1}, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;-><init>(Lnet/time4j/calendar/HebrewCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->YEARS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 372
    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewCalendar$Unit;->getLength()D

    move-result-wide v12

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->MONTHS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 373
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    .line 369
    invoke-virtual/range {v9 .. v14}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v15

    sget-object v16, Lnet/time4j/calendar/HebrewCalendar$Unit;->MONTHS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    new-instance v1, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;

    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$Unit;->MONTHS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-direct {v1, v2}, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;-><init>(Lnet/time4j/calendar/HebrewCalendar$Unit;)V

    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$Unit;->MONTHS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 377
    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewCalendar$Unit;->getLength()D

    move-result-wide v18

    sget-object v2, Lnet/time4j/calendar/HebrewCalendar$Unit;->YEARS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 378
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v20

    move-object/from16 v17, v1

    .line 374
    invoke-virtual/range {v15 .. v20}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v6

    sget-object v7, Lnet/time4j/calendar/HebrewCalendar$Unit;->WEEKS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    new-instance v8, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->WEEKS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-direct {v8, v1}, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;-><init>(Lnet/time4j/calendar/HebrewCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->WEEKS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 382
    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewCalendar$Unit;->getLength()D

    move-result-wide v9

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 383
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 379
    invoke-virtual/range {v6 .. v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v12

    sget-object v13, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    new-instance v14, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    invoke-direct {v14, v1}, Lnet/time4j/calendar/HebrewCalendar$HebrewUnitRule;-><init>(Lnet/time4j/calendar/HebrewCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->DAYS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 387
    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewCalendar$Unit;->getLength()D

    move-result-wide v15

    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$Unit;->WEEKS:Lnet/time4j/calendar/HebrewCalendar$Unit;

    .line 388
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v17

    .line 384
    invoke-virtual/range {v12 .. v17}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 394
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v4, v5, v3}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 389
    invoke-virtual {v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    .line 415
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->localDayOfWeek(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewCalendar;->LOCAL_DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 434
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->weekOfYear(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewCalendar;->WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 453
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->weekOfMonth(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewCalendar;->WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 472
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->boundedWeekOfYear(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewCalendar;->BOUNDED_WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 491
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->boundedWeekOfMonth(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewCalendar;->BOUNDED_WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-void
.end method

.method private constructor <init>(ILnet/time4j/calendar/HebrewMonth;I)V
    .locals 0

    .line 508
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 510
    iput p1, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    .line 511
    iput-object p2, p0, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    .line 512
    iput p3, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    return-void
.end method

.method synthetic constructor <init>(ILnet/time4j/calendar/HebrewMonth;ILnet/time4j/calendar/HebrewCalendar$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar;-><init>(ILnet/time4j/calendar/HebrewMonth;I)V

    return-void
.end method

.method static synthetic access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 1

    .line 181
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;
    .locals 0

    .line 181
    iget-object p0, p0, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    return-object p0
.end method

.method static synthetic access$1200()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 181
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static synthetic access$500(I)I
    .locals 0

    .line 181
    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfYear(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600()J
    .locals 2

    .line 181
    sget-wide v0, Lnet/time4j/calendar/HebrewCalendar;->FIXED_EPOCH:J

    return-wide v0
.end method

.method static synthetic access$700(I)J
    .locals 2

    .line 181
    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->hcNewYear(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lnet/time4j/calendar/HebrewCalendar;)I
    .locals 0

    .line 181
    iget p0, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    return p0
.end method

.method static synthetic access$900(Lnet/time4j/calendar/HebrewCalendar;)I
    .locals 0

    .line 181
    iget p0, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    return p0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/HebrewCalendar$Unit;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .line 1125
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 4

    .line 1109
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    sget-object v1, Lnet/time4j/Weekday;->FRIDAY:Lnet/time4j/Weekday;

    sget-object v2, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method private static hcDelay1(I)I
    .locals 4

    .line 1190
    sget-object v0, Lnet/time4j/calendar/HebrewMonth;->TISHRI:Lnet/time4j/calendar/HebrewMonth;

    invoke-static {p0, v0}, Lnet/time4j/calendar/HebrewCalendar;->hcMolad(ILnet/time4j/calendar/HebrewMonth;)D

    move-result-wide v0

    sget-wide v2, Lnet/time4j/calendar/HebrewCalendar;->FIXED_EPOCH:J

    long-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 v0, p0, 0x1

    mul-int/lit8 v1, v0, 0x3

    .line 1191
    rem-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method private static hcDelay2(I)I
    .locals 4

    .line 1182
    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->hcDelay1(I)I

    move-result v0

    add-int/lit8 v1, p0, 0x1

    .line 1183
    invoke-static {v1}, Lnet/time4j/calendar/HebrewCalendar;->hcDelay1(I)I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x1

    const/16 v3, 0x164

    if-ne v1, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v2

    .line 1184
    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->hcDelay1(I)I

    move-result p0

    sub-int/2addr v0, p0

    const/16 p0, 0x17e

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static hcMolad(ILnet/time4j/calendar/HebrewMonth;)D
    .locals 4

    .line 1200
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x6

    const/16 v0, 0xd

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0xd

    :cond_0
    const/4 v0, 0x7

    if-ge p1, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    :cond_1
    sub-int/2addr p1, v0

    mul-int/lit16 p0, p0, 0xeb

    add-int/lit16 p0, p0, -0xea

    const/16 v0, 0x13

    .line 1205
    invoke-static {p0, v0}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p0

    add-int/2addr p1, p0

    int-to-long p0, p1

    .line 1206
    sget-wide v0, Lnet/time4j/calendar/HebrewCalendar;->FIXED_EPOCH:J

    long-to-double v0, v0

    const-wide v2, 0x3fa14dbf86a314dcL    # 0.033796296296296297

    sub-double/2addr v0, v2

    long-to-double p0, p0

    const-wide v2, 0x403d87d5046cb893L    # 29.53059413580247

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static hcNewYear(I)J
    .locals 4

    .line 1176
    sget-wide v0, Lnet/time4j/calendar/HebrewCalendar;->FIXED_EPOCH:J

    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->hcDelay1(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->hcDelay2(I)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static isLeapYear(I)Z
    .locals 3

    if-ltz p0, :cond_1

    const/4 v0, 0x7

    mul-int/2addr p0, v0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    .line 845
    rem-int/lit8 p0, p0, 0x13

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 842
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hebrew year is not positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValid(ILnet/time4j/calendar/HebrewMonth;I)Z
    .locals 2

    .line 936
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result p1

    invoke-interface {v0, v1, p0, p1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p0

    return p0
.end method

.method static lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I
    .locals 2

    .line 1150
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth:[I

    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewMonth;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x1e

    const/16 v1, 0x1d

    packed-switch p1, :pswitch_data_0

    return v0

    .line 1161
    :pswitch_0
    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfYear(I)I

    move-result p0

    const/16 p1, 0x161

    if-eq p0, p1, :cond_0

    const/16 p1, 0x17f

    if-ne p0, p1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 1158
    :pswitch_1
    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfYear(I)I

    move-result p0

    const/16 p1, 0x163

    if-eq p0, p1, :cond_3

    const/16 p1, 0x181

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static lengthOfYear(I)I
    .locals 4

    add-int/lit8 v0, p0, 0x1

    .line 1170
    invoke-static {v0}, Lnet/time4j/calendar/HebrewCalendar;->hcNewYear(I)J

    move-result-wide v0

    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->hcNewYear(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/HebrewCalendar;
    .locals 2

    .line 656
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HebrewCalendar;

    return-object v0
.end method

.method public static nowInSystemTime(Lnet/time4j/engine/StartOfDay;)Lnet/time4j/calendar/HebrewCalendar;
    .locals 3

    .line 680
    invoke-static {}, Lnet/time4j/SystemClock;->currentMoment()Lnet/time4j/Moment;

    move-result-object v0

    .line 681
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    .line 682
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v2

    .line 680
    invoke-virtual {v0, v1, v2, p0}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p0

    .line 684
    invoke-virtual {p0}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HebrewCalendar;

    return-object p0
.end method

.method public static of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;
    .locals 3

    .line 542
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v0

    .line 544
    sget-object v1, Lnet/time4j/calendar/HebrewCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v2, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    invoke-interface {v1, v2, p0, v0, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Lnet/time4j/calendar/HebrewCalendar;

    invoke-direct {v0, p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar;-><init>(ILnet/time4j/calendar/HebrewMonth;I)V

    return-object v0

    .line 545
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hebrew date: year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", month="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", day="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofBiblical(III)Lnet/time4j/calendar/HebrewCalendar;
    .locals 1

    .line 610
    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    invoke-static {p1, v0}, Lnet/time4j/calendar/HebrewMonth;->valueOfBiblical(IZ)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    .line 611
    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static ofCivil(III)Lnet/time4j/calendar/HebrewCalendar;
    .locals 1

    .line 579
    invoke-static {p0}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    invoke-static {p1, v0}, Lnet/time4j/calendar/HebrewMonth;->valueOfCivil(IZ)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    .line 580
    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

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

    .line 1231
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1219
    new-instance v0, Lnet/time4j/calendar/HebrewCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/HebrewCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .line 1010
    invoke-static {p0, p1}, Lnet/time4j/GeneralTimestamp;->of(Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public atTime(II)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lnet/time4j/GeneralTimestamp<",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .line 1041
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public barMitzvah()Lnet/time4j/calendar/HebrewCalendar;
    .locals 2

    .line 954
    sget-object v0, Lnet/time4j/calendar/HebrewAnniversary;->BIRTHDAY:Lnet/time4j/calendar/HebrewAnniversary;

    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    add-int/lit8 v1, v1, 0xd

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/HebrewAnniversary;->inHebrewYear(I)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HebrewCalendar;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HebrewCalendar;

    return-object v0
.end method

.method public batMitzvah()Lnet/time4j/calendar/HebrewCalendar;
    .locals 2

    .line 973
    sget-object v0, Lnet/time4j/calendar/HebrewAnniversary;->BIRTHDAY:Lnet/time4j/calendar/HebrewAnniversary;

    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/HebrewAnniversary;->inHebrewYear(I)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HebrewCalendar;->get(Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HebrewCalendar;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1050
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/HebrewCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1051
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    .line 1052
    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    iget v3, p1, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    iget-object v3, p1, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    iget p1, p1, Lnet/time4j/calendar/HebrewCalendar;->year:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/HebrewCalendar$Unit;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .line 1132
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/HebrewCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewCalendar;->getContext()Lnet/time4j/calendar/HebrewCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 748
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 768
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 769
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 785
    sget-object v0, Lnet/time4j/calendar/HebrewCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HebrewCalendar;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    return v0
.end method

.method public getEra()Lnet/time4j/calendar/HebrewEra;
    .locals 1

    .line 700
    sget-object v0, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/calendar/HebrewMonth;
    .locals 1

    .line 732
    iget-object v0, p0, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 716
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1066
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 863
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    invoke-static {v0}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isRoshChodesh()Z
    .locals 3

    .line 908
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    sget-object v2, Lnet/time4j/calendar/HebrewMonth;->TISHRI:Lnet/time4j/calendar/HebrewMonth;

    if-ne v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isSabbaticalYear()Z
    .locals 1

    .line 883
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    rem-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthOfMonth()I
    .locals 2

    .line 801
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    iget-object v1, p0, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    invoke-static {v0, v1}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 817
    iget v0, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    invoke-static {v0}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfYear(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AM-"

    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar;->year:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1076
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/4 v3, 0x4

    const/16 v4, 0x30

    if-ge v2, v3, :cond_0

    .line 1077
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    iget-object v2, p0, Lnet/time4j/calendar/HebrewCalendar;->month:Lnet/time4j/calendar/HebrewMonth;

    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewMonth;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1083
    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 1084
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1086
    :cond_1
    iget v1, p0, Lnet/time4j/calendar/HebrewCalendar;->dom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
