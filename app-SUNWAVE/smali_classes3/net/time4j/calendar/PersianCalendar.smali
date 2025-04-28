.class public final Lnet/time4j/calendar/PersianCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "PersianCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/PersianCalendar$SPX;,
        Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;,
        Lnet/time4j/calendar/PersianCalendar$Merger;,
        Lnet/time4j/calendar/PersianCalendar$EraRule;,
        Lnet/time4j/calendar/PersianCalendar$MonthRule;,
        Lnet/time4j/calendar/PersianCalendar$IntegerRule;,
        Lnet/time4j/calendar/PersianCalendar$Transformer;,
        Lnet/time4j/calendar/PersianCalendar$Date;,
        Lnet/time4j/calendar/PersianCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/calendar/PersianCalendar$Unit;",
        "Lnet/time4j/calendar/PersianCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "persian"
.end annotation


# static fields
.field public static final BOUNDED_WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOUNDED_WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/PersianCalendar;",
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
            "Lnet/time4j/calendar/PersianCalendar;",
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
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "D"
    .end annotation
.end field

.field private static final DAY_OF_YEAR_INDEX:I = 0x3

.field private static final DEFAULT_COMPUTATION:Lnet/time4j/calendar/PersianAlgorithm;

.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/PersianCalendar$Unit;",
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/PersianEra;",
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
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/calendar/PersianMonth;",
            "Lnet/time4j/calendar/PersianCalendar;",
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
            "Lnet/time4j/calendar/PersianCalendar;",
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
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "Lnet/time4j/calendar/PersianCalendar;",
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
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5b55f8b25820152L


# instance fields
.field private final transient pdom:I

.field private final transient pmonth:I

.field private final transient pyear:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 185
    const-class v0, Lnet/time4j/calendar/PersianCalendar;

    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/PersianEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/PersianCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 196
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/PersianCalendar;

    const-string v6, "YEAR_OF_ERA"

    const/4 v8, 0x1

    const/16 v9, 0xbb8

    const/16 v10, 0x79

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v2, Lnet/time4j/calendar/PersianCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 213
    new-instance v3, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v4, Lnet/time4j/calendar/PersianMonth;

    const-string v5, "MONTH_OF_YEAR"

    const/16 v6, 0x4d

    invoke-direct {v3, v5, v0, v4, v6}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v3, Lnet/time4j/calendar/PersianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 227
    new-instance v4, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v9, Lnet/time4j/calendar/PersianCalendar;

    const-string v8, "DAY_OF_MONTH"

    const/4 v10, 0x1

    const/16 v11, 0x1f

    const/16 v12, 0x64

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v4, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 237
    new-instance v5, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v15, Lnet/time4j/calendar/PersianCalendar;

    const-string v14, "DAY_OF_YEAR"

    const/16 v16, 0x1

    const/16 v17, 0x16d

    const/16 v18, 0x44

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v5, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 259
    new-instance v6, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 260
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v6, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 262
    new-instance v7, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v7, v0, v4, v6}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v7, Lnet/time4j/calendar/PersianCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 272
    sput-object v7, Lnet/time4j/calendar/PersianCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 274
    sget-object v8, Lnet/time4j/calendar/PersianAlgorithm;->BORKOWSKI:Lnet/time4j/calendar/PersianAlgorithm;

    sput-object v8, Lnet/time4j/calendar/PersianCalendar;->DEFAULT_COMPUTATION:Lnet/time4j/calendar/PersianAlgorithm;

    .line 279
    new-instance v8, Lnet/time4j/calendar/PersianCalendar$Transformer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lnet/time4j/calendar/PersianCalendar$Transformer;-><init>(Lnet/time4j/calendar/PersianCalendar$1;)V

    sput-object v8, Lnet/time4j/calendar/PersianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    .line 281
    const-class v10, Lnet/time4j/calendar/PersianCalendar$Unit;

    new-instance v11, Lnet/time4j/calendar/PersianCalendar$Merger;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/PersianCalendar$Merger;-><init>(Lnet/time4j/calendar/PersianCalendar$1;)V

    .line 282
    invoke-static {v10, v0, v11, v8}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v10

    new-instance v11, Lnet/time4j/calendar/PersianCalendar$EraRule;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/PersianCalendar$EraRule;-><init>(Lnet/time4j/calendar/PersianCalendar$1;)V

    .line 287
    invoke-virtual {v10, v1, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v10, Lnet/time4j/calendar/PersianCalendar$IntegerRule;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lnet/time4j/calendar/PersianCalendar$IntegerRule;-><init>(I)V

    sget-object v11, Lnet/time4j/calendar/PersianCalendar$Unit;->YEARS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 290
    invoke-virtual {v1, v2, v10, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/PersianCalendar$MonthRule;

    invoke-direct {v2, v9}, Lnet/time4j/calendar/PersianCalendar$MonthRule;-><init>(Lnet/time4j/calendar/PersianCalendar$1;)V

    sget-object v9, Lnet/time4j/calendar/PersianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 294
    invoke-virtual {v1, v3, v2, v9}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/PersianCalendar$IntegerRule;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lnet/time4j/calendar/PersianCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/PersianCalendar$Unit;->DAYS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 298
    invoke-virtual {v1, v4, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/PersianCalendar$IntegerRule;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lnet/time4j/calendar/PersianCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/PersianCalendar$Unit;->DAYS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 302
    invoke-virtual {v1, v5, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/WeekdayRule;

    .line 309
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v9, Lnet/time4j/calendar/PersianCalendar$1;

    invoke-direct {v9}, Lnet/time4j/calendar/PersianCalendar$1;-><init>()V

    invoke-direct {v2, v3, v9}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    sget-object v3, Lnet/time4j/calendar/PersianCalendar$Unit;->DAYS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 306
    invoke-virtual {v1, v6, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 320
    invoke-static {v7}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v2

    .line 318
    invoke-virtual {v1, v7, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/RelatedGregorianYearRule;

    invoke-direct {v3, v8, v5}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/ChronoElement;)V

    .line 321
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v9

    sget-object v10, Lnet/time4j/calendar/PersianCalendar$Unit;->YEARS:Lnet/time4j/calendar/PersianCalendar$Unit;

    new-instance v11, Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->YEARS:Lnet/time4j/calendar/PersianCalendar$Unit;

    invoke-direct {v11, v1}, Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;-><init>(Lnet/time4j/calendar/PersianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->YEARS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 327
    invoke-virtual {v1}, Lnet/time4j/calendar/PersianCalendar$Unit;->getLength()D

    move-result-wide v12

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 328
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    .line 324
    invoke-virtual/range {v9 .. v14}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v15

    sget-object v16, Lnet/time4j/calendar/PersianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/PersianCalendar$Unit;

    new-instance v1, Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;

    sget-object v2, Lnet/time4j/calendar/PersianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/PersianCalendar$Unit;

    invoke-direct {v1, v2}, Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;-><init>(Lnet/time4j/calendar/PersianCalendar$Unit;)V

    sget-object v2, Lnet/time4j/calendar/PersianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 332
    invoke-virtual {v2}, Lnet/time4j/calendar/PersianCalendar$Unit;->getLength()D

    move-result-wide v18

    sget-object v2, Lnet/time4j/calendar/PersianCalendar$Unit;->YEARS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 333
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v20

    move-object/from16 v17, v1

    .line 329
    invoke-virtual/range {v15 .. v20}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v6

    sget-object v7, Lnet/time4j/calendar/PersianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/PersianCalendar$Unit;

    new-instance v8, Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/PersianCalendar$Unit;

    invoke-direct {v8, v1}, Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;-><init>(Lnet/time4j/calendar/PersianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 337
    invoke-virtual {v1}, Lnet/time4j/calendar/PersianCalendar$Unit;->getLength()D

    move-result-wide v9

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->DAYS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 338
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 334
    invoke-virtual/range {v6 .. v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v12

    sget-object v13, Lnet/time4j/calendar/PersianCalendar$Unit;->DAYS:Lnet/time4j/calendar/PersianCalendar$Unit;

    new-instance v14, Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->DAYS:Lnet/time4j/calendar/PersianCalendar$Unit;

    invoke-direct {v14, v1}, Lnet/time4j/calendar/PersianCalendar$PersianUnitRule;-><init>(Lnet/time4j/calendar/PersianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->DAYS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 342
    invoke-virtual {v1}, Lnet/time4j/calendar/PersianCalendar$Unit;->getLength()D

    move-result-wide v15

    sget-object v1, Lnet/time4j/calendar/PersianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/PersianCalendar$Unit;

    .line 343
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v17

    .line 339
    invoke-virtual/range {v12 .. v17}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 349
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v4, v5, v3}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 344
    invoke-virtual {v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/PersianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    .line 372
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->localDayOfWeek(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/PersianCalendar;->LOCAL_DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 391
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->weekOfYear(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/PersianCalendar;->WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 410
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->weekOfMonth(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/PersianCalendar;->WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 429
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->boundedWeekOfYear(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/PersianCalendar;->BOUNDED_WEEK_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 448
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->boundedWeekOfMonth(Lnet/time4j/engine/Chronology;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/StdCalendarElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/PersianCalendar;->BOUNDED_WEEK_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .line 466
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 468
    iput p1, p0, Lnet/time4j/calendar/PersianCalendar;->pyear:I

    .line 469
    iput p2, p0, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    .line 470
    iput p3, p0, Lnet/time4j/calendar/PersianCalendar;->pdom:I

    return-void
.end method

.method static synthetic access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 1

    .line 168
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    return-object v0
.end method

.method static synthetic access$1000()Lnet/time4j/calendar/PersianAlgorithm;
    .locals 1

    .line 168
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->DEFAULT_COMPUTATION:Lnet/time4j/calendar/PersianAlgorithm;

    return-object v0
.end method

.method static synthetic access$600()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 168
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static synthetic access$700(Lnet/time4j/calendar/PersianCalendar;)I
    .locals 0

    .line 168
    iget p0, p0, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    return p0
.end method

.method static synthetic access$800(Lnet/time4j/calendar/PersianCalendar;)I
    .locals 0

    .line 168
    iget p0, p0, Lnet/time4j/calendar/PersianCalendar;->pdom:I

    return p0
.end method

.method static synthetic access$900(Lnet/time4j/calendar/PersianCalendar;)I
    .locals 0

    .line 168
    iget p0, p0, Lnet/time4j/calendar/PersianCalendar;->pyear:I

    return p0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/PersianCalendar$Unit;",
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation

    .line 965
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 4

    .line 947
    sget-object v0, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    sget-object v1, Lnet/time4j/Weekday;->FRIDAY:Lnet/time4j/Weekday;

    sget-object v2, Lnet/time4j/Weekday;->FRIDAY:Lnet/time4j/Weekday;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method public static isValid(III)Z
    .locals 2

    .line 821
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    invoke-interface {v0, v1, p0, p1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p0

    return p0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/PersianCalendar;
    .locals 2

    .line 563
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/PersianCalendar;

    return-object v0
.end method

.method public static of(III)Lnet/time4j/calendar/PersianCalendar;
    .locals 3

    .line 532
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    invoke-interface {v0, v1, p0, p1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    new-instance v0, Lnet/time4j/calendar/PersianCalendar;

    invoke-direct {v0, p0, p1, p2}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    return-object v0

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Persian date: year="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", month="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", day="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(ILnet/time4j/calendar/PersianMonth;I)Lnet/time4j/calendar/PersianCalendar;
    .locals 0

    .line 502
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianMonth;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/PersianCalendar;->of(III)Lnet/time4j/calendar/PersianCalendar;

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

    .line 1004
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 992
    new-instance v0, Lnet/time4j/calendar/PersianCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/PersianCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation

    .line 849
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
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation

    .line 876
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 885
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/PersianCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 886
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    .line 887
    iget v1, p0, Lnet/time4j/calendar/PersianCalendar;->pdom:I

    iget v3, p1, Lnet/time4j/calendar/PersianCalendar;->pdom:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    iget v3, p1, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/PersianCalendar;->pyear:I

    iget p1, p1, Lnet/time4j/calendar/PersianCalendar;->pyear:I

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

    .line 167
    invoke-virtual {p0}, Lnet/time4j/calendar/PersianCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/PersianCalendar$Unit;",
            "Lnet/time4j/calendar/PersianCalendar;",
            ">;"
        }
    .end annotation

    .line 972
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/PersianCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lnet/time4j/calendar/PersianCalendar;->getContext()Lnet/time4j/calendar/PersianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Lnet/time4j/calendar/PersianAlgorithm;)Lnet/time4j/calendar/PersianCalendar$Date;
    .locals 5

    .line 698
    sget-object v0, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    .line 700
    sget-object v1, Lnet/time4j/calendar/PersianCalendar;->DEFAULT_COMPUTATION:Lnet/time4j/calendar/PersianAlgorithm;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 701
    new-instance p1, Lnet/time4j/calendar/PersianCalendar$Date;

    invoke-direct {p1, p0, v1, v0, v2}, Lnet/time4j/calendar/PersianCalendar$Date;-><init>(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianAlgorithm;Lnet/time4j/tz/ZonalOffset;Lnet/time4j/calendar/PersianCalendar$1;)V

    return-object p1

    .line 704
    :cond_0
    invoke-virtual {v1, p0, v0}, Lnet/time4j/calendar/PersianAlgorithm;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide v3

    .line 705
    new-instance v1, Lnet/time4j/calendar/PersianCalendar$Date;

    invoke-virtual {p1, v3, v4, v0}, Lnet/time4j/calendar/PersianAlgorithm;->transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;

    move-result-object v3

    invoke-direct {v1, v3, p1, v0, v2}, Lnet/time4j/calendar/PersianCalendar$Date;-><init>(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianAlgorithm;Lnet/time4j/tz/ZonalOffset;Lnet/time4j/calendar/PersianCalendar$1;)V

    return-object v1
.end method

.method public getDate(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar$Date;
    .locals 4

    const-string v0, "Missing timezone offset."

    .line 732
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lnet/time4j/calendar/PersianAlgorithm;->ASTRONOMICAL:Lnet/time4j/calendar/PersianAlgorithm;

    .line 736
    sget-object v1, Lnet/time4j/calendar/PersianCalendar;->DEFAULT_COMPUTATION:Lnet/time4j/calendar/PersianAlgorithm;

    sget-object v2, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v1, p0, v2}, Lnet/time4j/calendar/PersianAlgorithm;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide v1

    .line 737
    new-instance v3, Lnet/time4j/calendar/PersianCalendar$Date;

    invoke-virtual {v0, v1, v2, p1}, Lnet/time4j/calendar/PersianAlgorithm;->transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v3, v1, v0, p1, v2}, Lnet/time4j/calendar/PersianCalendar$Date;-><init>(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianAlgorithm;Lnet/time4j/tz/ZonalOffset;Lnet/time4j/calendar/PersianCalendar$1;)V

    return-object v3
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 635
    iget v0, p0, Lnet/time4j/calendar/PersianCalendar;->pdom:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 657
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 658
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 676
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/PersianCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEra()Lnet/time4j/calendar/PersianEra;
    .locals 1

    .line 581
    sget-object v0, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/calendar/PersianMonth;
    .locals 1

    .line 617
    iget v0, p0, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    invoke-static {v0}, Lnet/time4j/calendar/PersianMonth;->valueOf(I)Lnet/time4j/calendar/PersianMonth;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 599
    iget v0, p0, Lnet/time4j/calendar/PersianCalendar;->pyear:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 901
    iget v0, p0, Lnet/time4j/calendar/PersianCalendar;->pdom:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/PersianCalendar;->pyear:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear()Z
    .locals 2

    .line 791
    invoke-virtual {p0}, Lnet/time4j/calendar/PersianCalendar;->lengthOfYear()I

    move-result v0

    const/16 v1, 0x16d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthOfMonth()I
    .locals 4

    .line 755
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    iget v2, p0, Lnet/time4j/calendar/PersianCalendar;->pyear:I

    iget v3, p0, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    invoke-interface {v0, v1, v2, v3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 3

    .line 773
    sget-object v0, Lnet/time4j/calendar/PersianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    iget v2, p0, Lnet/time4j/calendar/PersianCalendar;->pyear:I

    invoke-interface {v0, v1, v2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AP-"

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    iget v1, p0, Lnet/time4j/calendar/PersianCalendar;->pyear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/4 v3, 0x4

    const/16 v4, 0x30

    if-ge v2, v3, :cond_0

    .line 912
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 914
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 916
    iget v2, p0, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 917
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 919
    :cond_1
    iget v2, p0, Lnet/time4j/calendar/PersianCalendar;->pmonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    iget v1, p0, Lnet/time4j/calendar/PersianCalendar;->pdom:I

    if-ge v1, v3, :cond_2

    .line 922
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    :cond_2
    iget v1, p0, Lnet/time4j/calendar/PersianCalendar;->pdom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
