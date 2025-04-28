.class public final Lnet/time4j/calendar/IndianCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "IndianCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/IndianCalendar$SPX;,
        Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;,
        Lnet/time4j/calendar/IndianCalendar$Merger;,
        Lnet/time4j/calendar/IndianCalendar$EraRule;,
        Lnet/time4j/calendar/IndianCalendar$MonthRule;,
        Lnet/time4j/calendar/IndianCalendar$IntegerRule;,
        Lnet/time4j/calendar/IndianCalendar$Transformer;,
        Lnet/time4j/calendar/IndianCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/calendar/IndianCalendar$Unit;",
        "Lnet/time4j/calendar/IndianCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "indian"
.end annotation


# static fields
.field private static final CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/IndianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/IndianCalendar;",
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
            "Lnet/time4j/calendar/IndianCalendar;",
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
            "Lnet/time4j/calendar/IndianCalendar;",
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
            "Lnet/time4j/calendar/IndianCalendar$Unit;",
            "Lnet/time4j/calendar/IndianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/IndianEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation
.end field

.field private static final MAX_YEAR:I = 0x3b9ac9b1

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/calendar/IndianMonth;",
            "Lnet/time4j/calendar/IndianCalendar;",
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
            "Lnet/time4j/calendar/IndianCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "F"
    .end annotation
.end field

.field private static final WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "Lnet/time4j/calendar/IndianCalendar;",
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
            "Lnet/time4j/calendar/IndianCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x67d6229224cd4deeL


# instance fields
.field private final transient idom:I

.field private final transient imonth:I

.field private final transient iyear:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 188
    const-class v0, Lnet/time4j/calendar/IndianCalendar;

    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/IndianEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/IndianCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 198
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/IndianCalendar;

    const-string v6, "YEAR_OF_ERA"

    const/4 v8, 0x1

    const v9, 0x3b9ac9b1

    const/16 v10, 0x79

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v2, Lnet/time4j/calendar/IndianCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 215
    new-instance v3, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v4, Lnet/time4j/calendar/IndianMonth;

    const-string v5, "MONTH_OF_YEAR"

    const/16 v6, 0x4d

    invoke-direct {v3, v5, v0, v4, v6}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v3, Lnet/time4j/calendar/IndianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 229
    new-instance v4, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v9, Lnet/time4j/calendar/IndianCalendar;

    const-string v8, "DAY_OF_MONTH"

    const/4 v10, 0x1

    const/16 v11, 0x1f

    const/16 v12, 0x64

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v4, Lnet/time4j/calendar/IndianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 239
    new-instance v5, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v15, Lnet/time4j/calendar/IndianCalendar;

    const-string v14, "DAY_OF_YEAR"

    const/16 v16, 0x1

    const/16 v17, 0x16d

    const/16 v18, 0x44

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v5, Lnet/time4j/calendar/IndianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 261
    new-instance v6, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 262
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v6, Lnet/time4j/calendar/IndianCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 264
    new-instance v7, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v7, v0, v4, v6}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v7, Lnet/time4j/calendar/IndianCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 274
    sput-object v7, Lnet/time4j/calendar/IndianCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 280
    new-instance v8, Lnet/time4j/calendar/IndianCalendar$Transformer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lnet/time4j/calendar/IndianCalendar$Transformer;-><init>(Lnet/time4j/calendar/IndianCalendar$1;)V

    sput-object v8, Lnet/time4j/calendar/IndianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    .line 282
    const-class v10, Lnet/time4j/calendar/IndianCalendar$Unit;

    new-instance v11, Lnet/time4j/calendar/IndianCalendar$Merger;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/IndianCalendar$Merger;-><init>(Lnet/time4j/calendar/IndianCalendar$1;)V

    .line 283
    invoke-static {v10, v0, v11, v8}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v10

    new-instance v11, Lnet/time4j/calendar/IndianCalendar$EraRule;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/IndianCalendar$EraRule;-><init>(Lnet/time4j/calendar/IndianCalendar$1;)V

    .line 288
    invoke-virtual {v10, v1, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v10, Lnet/time4j/calendar/IndianCalendar$IntegerRule;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;-><init>(I)V

    sget-object v11, Lnet/time4j/calendar/IndianCalendar$Unit;->YEARS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 291
    invoke-virtual {v1, v2, v10, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/IndianCalendar$MonthRule;

    invoke-direct {v2, v9}, Lnet/time4j/calendar/IndianCalendar$MonthRule;-><init>(Lnet/time4j/calendar/IndianCalendar$1;)V

    sget-object v9, Lnet/time4j/calendar/IndianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 295
    invoke-virtual {v1, v3, v2, v9}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/IndianCalendar$IntegerRule;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/IndianCalendar$Unit;->DAYS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 299
    invoke-virtual {v1, v4, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/IndianCalendar$IntegerRule;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/IndianCalendar$Unit;->DAYS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 303
    invoke-virtual {v1, v5, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/WeekdayRule;

    .line 310
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v9, Lnet/time4j/calendar/IndianCalendar$1;

    invoke-direct {v9}, Lnet/time4j/calendar/IndianCalendar$1;-><init>()V

    invoke-direct {v2, v3, v9}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    sget-object v3, Lnet/time4j/calendar/IndianCalendar$Unit;->DAYS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 307
    invoke-virtual {v1, v6, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 321
    invoke-static {v7}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v2

    .line 319
    invoke-virtual {v1, v7, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/RelatedGregorianYearRule;

    invoke-direct {v3, v8, v5}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/ChronoElement;)V

    .line 322
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v9

    sget-object v10, Lnet/time4j/calendar/IndianCalendar$Unit;->YEARS:Lnet/time4j/calendar/IndianCalendar$Unit;

    new-instance v11, Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->YEARS:Lnet/time4j/calendar/IndianCalendar$Unit;

    invoke-direct {v11, v1}, Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;-><init>(Lnet/time4j/calendar/IndianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->YEARS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 328
    invoke-virtual {v1}, Lnet/time4j/calendar/IndianCalendar$Unit;->getLength()D

    move-result-wide v12

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 329
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    .line 325
    invoke-virtual/range {v9 .. v14}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v15

    sget-object v16, Lnet/time4j/calendar/IndianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/IndianCalendar$Unit;

    new-instance v1, Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;

    sget-object v2, Lnet/time4j/calendar/IndianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/IndianCalendar$Unit;

    invoke-direct {v1, v2}, Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;-><init>(Lnet/time4j/calendar/IndianCalendar$Unit;)V

    sget-object v2, Lnet/time4j/calendar/IndianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 333
    invoke-virtual {v2}, Lnet/time4j/calendar/IndianCalendar$Unit;->getLength()D

    move-result-wide v18

    sget-object v2, Lnet/time4j/calendar/IndianCalendar$Unit;->YEARS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 334
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v20

    move-object/from16 v17, v1

    .line 330
    invoke-virtual/range {v15 .. v20}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v6

    sget-object v7, Lnet/time4j/calendar/IndianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/IndianCalendar$Unit;

    new-instance v8, Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/IndianCalendar$Unit;

    invoke-direct {v8, v1}, Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;-><init>(Lnet/time4j/calendar/IndianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 338
    invoke-virtual {v1}, Lnet/time4j/calendar/IndianCalendar$Unit;->getLength()D

    move-result-wide v9

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->DAYS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 339
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 335
    invoke-virtual/range {v6 .. v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v12

    sget-object v13, Lnet/time4j/calendar/IndianCalendar$Unit;->DAYS:Lnet/time4j/calendar/IndianCalendar$Unit;

    new-instance v14, Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->DAYS:Lnet/time4j/calendar/IndianCalendar$Unit;

    invoke-direct {v14, v1}, Lnet/time4j/calendar/IndianCalendar$IndianUnitRule;-><init>(Lnet/time4j/calendar/IndianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->DAYS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 343
    invoke-virtual {v1}, Lnet/time4j/calendar/IndianCalendar$Unit;->getLength()D

    move-result-wide v15

    sget-object v1, Lnet/time4j/calendar/IndianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/IndianCalendar$Unit;

    .line 344
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v17

    .line 340
    invoke-virtual/range {v12 .. v17}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 350
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v4, v5, v3}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 345
    invoke-virtual {v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/IndianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 369
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 371
    iput p1, p0, Lnet/time4j/calendar/IndianCalendar;->iyear:I

    .line 372
    iput p2, p0, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    .line 373
    iput p3, p0, Lnet/time4j/calendar/IndianCalendar;->idom:I

    return-void
.end method

.method synthetic constructor <init>(IIILnet/time4j/calendar/IndianCalendar$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/IndianCalendar;-><init>(III)V

    return-void
.end method

.method static synthetic access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 1

    .line 169
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    return-object v0
.end method

.method static synthetic access$500(Lnet/time4j/calendar/IndianCalendar;)I
    .locals 0

    .line 169
    iget p0, p0, Lnet/time4j/calendar/IndianCalendar;->iyear:I

    return p0
.end method

.method static synthetic access$600(Lnet/time4j/calendar/IndianCalendar;)I
    .locals 0

    .line 169
    iget p0, p0, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    return p0
.end method

.method static synthetic access$700(Lnet/time4j/calendar/IndianCalendar;)I
    .locals 0

    .line 169
    iget p0, p0, Lnet/time4j/calendar/IndianCalendar;->idom:I

    return p0
.end method

.method static synthetic access$900()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 169
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/IndianCalendar$Unit;",
            "Lnet/time4j/calendar/IndianCalendar;",
            ">;"
        }
    .end annotation

    .line 775
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 4

    .line 759
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    sget-object v1, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    sget-object v2, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method public static isValid(III)Z
    .locals 2

    .line 639
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    invoke-interface {v0, v1, p0, p1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p0

    return p0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/IndianCalendar;
    .locals 2

    .line 460
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/IndianCalendar;

    return-object v0
.end method

.method public static of(III)Lnet/time4j/calendar/IndianCalendar;
    .locals 3

    .line 431
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    invoke-interface {v0, v1, p0, p1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Lnet/time4j/calendar/IndianCalendar;

    invoke-direct {v0, p0, p1, p2}, Lnet/time4j/calendar/IndianCalendar;-><init>(III)V

    return-object v0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Indian date: year="

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

.method public static of(ILnet/time4j/calendar/IndianMonth;I)Lnet/time4j/calendar/IndianCalendar;
    .locals 0

    .line 403
    invoke-virtual {p1}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/IndianCalendar;->of(III)Lnet/time4j/calendar/IndianCalendar;

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

    .line 814
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 802
    new-instance v0, Lnet/time4j/calendar/IndianCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/IndianCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/IndianCalendar;",
            ">;"
        }
    .end annotation

    .line 665
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
            "Lnet/time4j/calendar/IndianCalendar;",
            ">;"
        }
    .end annotation

    .line 690
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 699
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/IndianCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 700
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    .line 701
    iget v1, p0, Lnet/time4j/calendar/IndianCalendar;->idom:I

    iget v3, p1, Lnet/time4j/calendar/IndianCalendar;->idom:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    iget v3, p1, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/IndianCalendar;->iyear:I

    iget p1, p1, Lnet/time4j/calendar/IndianCalendar;->iyear:I

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

    .line 168
    invoke-virtual {p0}, Lnet/time4j/calendar/IndianCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/IndianCalendar$Unit;",
            "Lnet/time4j/calendar/IndianCalendar;",
            ">;"
        }
    .end annotation

    .line 782
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/IndianCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lnet/time4j/calendar/IndianCalendar;->getContext()Lnet/time4j/calendar/IndianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 524
    iget v0, p0, Lnet/time4j/calendar/IndianCalendar;->idom:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 544
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 545
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 561
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/IndianCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEra()Lnet/time4j/calendar/IndianEra;
    .locals 1

    .line 476
    sget-object v0, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/calendar/IndianMonth;
    .locals 1

    .line 508
    iget v0, p0, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    invoke-static {v0}, Lnet/time4j/calendar/IndianMonth;->valueOf(I)Lnet/time4j/calendar/IndianMonth;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 492
    iget v0, p0, Lnet/time4j/calendar/IndianCalendar;->iyear:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 715
    iget v0, p0, Lnet/time4j/calendar/IndianCalendar;->idom:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/IndianCalendar;->iyear:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 609
    iget v0, p0, Lnet/time4j/calendar/IndianCalendar;->iyear:I

    add-int/lit8 v0, v0, 0x4e

    invoke-static {v0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .locals 4

    .line 577
    sget-object v0, Lnet/time4j/calendar/IndianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    iget v2, p0, Lnet/time4j/calendar/IndianCalendar;->iyear:I

    iget v3, p0, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    invoke-interface {v0, v1, v2, v3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 593
    invoke-virtual {p0}, Lnet/time4j/calendar/IndianCalendar;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Saka-"

    .line 723
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget v1, p0, Lnet/time4j/calendar/IndianCalendar;->iyear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/4 v3, 0x4

    const/16 v4, 0x30

    if-ge v2, v3, :cond_0

    .line 726
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    iget v2, p0, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 731
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 733
    :cond_1
    iget v2, p0, Lnet/time4j/calendar/IndianCalendar;->imonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    iget v1, p0, Lnet/time4j/calendar/IndianCalendar;->idom:I

    if-ge v1, v3, :cond_2

    .line 736
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    :cond_2
    iget v1, p0, Lnet/time4j/calendar/IndianCalendar;->idom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
