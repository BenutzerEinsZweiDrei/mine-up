.class public final Lnet/time4j/calendar/EthiopianCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "EthiopianCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/EthiopianCalendar$SPX;,
        Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;,
        Lnet/time4j/calendar/EthiopianCalendar$Merger;,
        Lnet/time4j/calendar/EthiopianCalendar$TabotRule;,
        Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;,
        Lnet/time4j/calendar/EthiopianCalendar$EraRule;,
        Lnet/time4j/calendar/EthiopianCalendar$MonthRule;,
        Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;,
        Lnet/time4j/calendar/EthiopianCalendar$Transformer;,
        Lnet/time4j/calendar/EthiopianCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/calendar/EthiopianCalendar$Unit;",
        "Lnet/time4j/calendar/EthiopianCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "ethiopic"
.end annotation


# static fields
.field private static final CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/EthiopianCalendar;",
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
            "Lnet/time4j/calendar/EthiopianCalendar;",
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
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "D"
    .end annotation
.end field

.field private static final DAY_OF_YEAR_INDEX:I = 0x3

.field private static final DELTA_ALEM_MIHRET:I = 0x157c

.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/EthiopianCalendar$Unit;",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/EthiopianEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation
.end field

.field public static final EVANGELIST:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/Evangelist;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIHRET_EPOCH:J

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/calendar/EthiopianMonth;",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation
.end field

.field public static final TABOT:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Lnet/time4j/calendar/Tabot;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/OrdinalWeekdayElement<",
            "Lnet/time4j/calendar/EthiopianCalendar;",
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
            "Lnet/time4j/calendar/EthiopianCalendar;",
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
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x16a607d4b193988fL


# instance fields
.field private final transient edom:I

.field private final transient emonth:I

.field private final transient mihret:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 179
    const-class v0, Lnet/time4j/calendar/EthiopianCalendar;

    sget-object v1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    sget-object v2, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v3, 0x8

    const/16 v4, 0x1d

    invoke-static {v2, v3, v3, v4}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v1

    .line 180
    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v1, v2}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sput-wide v1, Lnet/time4j/calendar/EthiopianCalendar;->MIHRET_EPOCH:J

    .line 198
    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/EthiopianEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/EthiopianCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 219
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/EthiopianCalendar;

    const-string v6, "YEAR_OF_ERA"

    const/4 v8, 0x1

    const/16 v9, 0x270f

    const/16 v10, 0x79

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v2, Lnet/time4j/calendar/EthiopianCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 236
    new-instance v3, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v4, Lnet/time4j/calendar/EthiopianMonth;

    const-string v5, "MONTH_OF_YEAR"

    const/16 v6, 0x4d

    invoke-direct {v3, v5, v0, v4, v6}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v3, Lnet/time4j/calendar/EthiopianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 250
    new-instance v4, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v9, Lnet/time4j/calendar/EthiopianCalendar;

    const-string v8, "DAY_OF_MONTH"

    const/4 v10, 0x1

    const/16 v11, 0x1e

    const/16 v12, 0x64

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v4, Lnet/time4j/calendar/EthiopianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 260
    new-instance v5, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v15, Lnet/time4j/calendar/EthiopianCalendar;

    const-string v14, "DAY_OF_YEAR"

    const/16 v16, 0x1

    const/16 v17, 0x16d

    const/16 v18, 0x44

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v5, Lnet/time4j/calendar/EthiopianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 282
    new-instance v6, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 283
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v6, Lnet/time4j/calendar/EthiopianCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 285
    new-instance v7, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v7, v0, v4, v6}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v7, Lnet/time4j/calendar/EthiopianCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 295
    sput-object v7, Lnet/time4j/calendar/EthiopianCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 308
    new-instance v14, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v10, Lnet/time4j/calendar/EthiopianCalendar;

    const-class v11, Lnet/time4j/calendar/Evangelist;

    const-string v9, "EVANGELIST"

    const/4 v12, 0x0

    const-string v13, "generic"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;CLjava/lang/String;)V

    sput-object v14, Lnet/time4j/calendar/EthiopianCalendar;->EVANGELIST:Lnet/time4j/engine/ChronoElement;

    .line 344
    sget-object v8, Lnet/time4j/calendar/Tabot$Element;->TABOT:Lnet/time4j/calendar/Tabot$Element;

    sput-object v8, Lnet/time4j/calendar/EthiopianCalendar;->TABOT:Lnet/time4j/format/TextElement;

    .line 350
    new-instance v9, Lnet/time4j/calendar/EthiopianCalendar$Transformer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lnet/time4j/calendar/EthiopianCalendar$Transformer;-><init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V

    sput-object v9, Lnet/time4j/calendar/EthiopianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    .line 352
    const-class v11, Lnet/time4j/calendar/EthiopianCalendar$Unit;

    new-instance v12, Lnet/time4j/calendar/EthiopianCalendar$Merger;

    invoke-direct {v12, v10}, Lnet/time4j/calendar/EthiopianCalendar$Merger;-><init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V

    .line 353
    invoke-static {v11, v0, v12, v9}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v11

    new-instance v12, Lnet/time4j/calendar/EthiopianCalendar$EraRule;

    invoke-direct {v12, v10}, Lnet/time4j/calendar/EthiopianCalendar$EraRule;-><init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V

    .line 358
    invoke-virtual {v11, v1, v12}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v11, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;-><init>(I)V

    sget-object v12, Lnet/time4j/calendar/EthiopianCalendar$Unit;->YEARS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 361
    invoke-virtual {v1, v2, v11, v12}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;

    invoke-direct {v2, v10}, Lnet/time4j/calendar/EthiopianCalendar$MonthRule;-><init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V

    sget-object v11, Lnet/time4j/calendar/EthiopianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 365
    invoke-virtual {v1, v3, v2, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/EthiopianCalendar$Unit;->DAYS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 369
    invoke-virtual {v1, v4, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/EthiopianCalendar$Unit;->DAYS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 373
    invoke-virtual {v1, v5, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/WeekdayRule;

    .line 380
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v11, Lnet/time4j/calendar/EthiopianCalendar$1;

    invoke-direct {v11}, Lnet/time4j/calendar/EthiopianCalendar$1;-><init>()V

    invoke-direct {v2, v3, v11}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    sget-object v3, Lnet/time4j/calendar/EthiopianCalendar$Unit;->DAYS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 377
    invoke-virtual {v1, v6, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 391
    invoke-static {v7}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v2

    .line 389
    invoke-virtual {v1, v7, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/RelatedGregorianYearRule;

    invoke-direct {v3, v9, v5}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/ChronoElement;)V

    .line 392
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;

    invoke-direct {v2, v10}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;-><init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V

    .line 395
    invoke-virtual {v1, v14, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;

    invoke-direct {v2, v10}, Lnet/time4j/calendar/EthiopianCalendar$TabotRule;-><init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V

    .line 398
    invoke-virtual {v1, v8, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v11

    sget-object v12, Lnet/time4j/calendar/EthiopianCalendar$Unit;->YEARS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    new-instance v13, Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->YEARS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    invoke-direct {v13, v1}, Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;-><init>(Lnet/time4j/calendar/EthiopianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->YEARS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 404
    invoke-virtual {v1}, Lnet/time4j/calendar/EthiopianCalendar$Unit;->getLength()D

    move-result-wide v14

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 405
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    .line 401
    invoke-virtual/range {v11 .. v16}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v17

    sget-object v18, Lnet/time4j/calendar/EthiopianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    new-instance v1, Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;

    sget-object v2, Lnet/time4j/calendar/EthiopianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    invoke-direct {v1, v2}, Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;-><init>(Lnet/time4j/calendar/EthiopianCalendar$Unit;)V

    sget-object v2, Lnet/time4j/calendar/EthiopianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 409
    invoke-virtual {v2}, Lnet/time4j/calendar/EthiopianCalendar$Unit;->getLength()D

    move-result-wide v20

    sget-object v2, Lnet/time4j/calendar/EthiopianCalendar$Unit;->YEARS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 410
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v22

    move-object/from16 v19, v1

    .line 406
    invoke-virtual/range {v17 .. v22}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v6

    sget-object v7, Lnet/time4j/calendar/EthiopianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    new-instance v8, Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    invoke-direct {v8, v1}, Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;-><init>(Lnet/time4j/calendar/EthiopianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 414
    invoke-virtual {v1}, Lnet/time4j/calendar/EthiopianCalendar$Unit;->getLength()D

    move-result-wide v9

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->DAYS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 415
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 411
    invoke-virtual/range {v6 .. v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v12

    sget-object v13, Lnet/time4j/calendar/EthiopianCalendar$Unit;->DAYS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    new-instance v14, Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->DAYS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    invoke-direct {v14, v1}, Lnet/time4j/calendar/EthiopianCalendar$EthiopianUnitRule;-><init>(Lnet/time4j/calendar/EthiopianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->DAYS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 419
    invoke-virtual {v1}, Lnet/time4j/calendar/EthiopianCalendar$Unit;->getLength()D

    move-result-wide v15

    sget-object v1, Lnet/time4j/calendar/EthiopianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    .line 420
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v17

    .line 416
    invoke-virtual/range {v12 .. v17}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/service/EthiopianExtension;

    invoke-direct {v2}, Lnet/time4j/calendar/service/EthiopianExtension;-><init>()V

    .line 421
    invoke-virtual {v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 427
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v4, v5, v3}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 422
    invoke-virtual {v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/EthiopianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 448
    iput p1, p0, Lnet/time4j/calendar/EthiopianCalendar;->mihret:I

    .line 449
    iput p2, p0, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    .line 450
    iput p3, p0, Lnet/time4j/calendar/EthiopianCalendar;->edom:I

    return-void
.end method

.method synthetic constructor <init>(IIILnet/time4j/calendar/EthiopianCalendar$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianCalendar;-><init>(III)V

    return-void
.end method

.method static synthetic access$1000(Lnet/time4j/calendar/EthiopianCalendar;)I
    .locals 0

    .line 169
    iget p0, p0, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    return p0
.end method

.method static synthetic access$1100(Lnet/time4j/calendar/EthiopianCalendar;)I
    .locals 0

    .line 169
    iget p0, p0, Lnet/time4j/calendar/EthiopianCalendar;->edom:I

    return p0
.end method

.method static synthetic access$1200()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 169
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static synthetic access$300()Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 1

    .line 169
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    return-object v0
.end method

.method static synthetic access$700()J
    .locals 2

    .line 169
    sget-wide v0, Lnet/time4j/calendar/EthiopianCalendar;->MIHRET_EPOCH:J

    return-wide v0
.end method

.method static synthetic access$900(Lnet/time4j/calendar/EthiopianCalendar;)I
    .locals 0

    .line 169
    iget p0, p0, Lnet/time4j/calendar/EthiopianCalendar;->mihret:I

    return p0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/EthiopianCalendar$Unit;",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ">;"
        }
    .end annotation

    .line 874
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 2

    .line 856
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;I)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method public static isValid(Lnet/time4j/calendar/EthiopianEra;III)Z
    .locals 1

    .line 760
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p0

    return p0
.end method

.method private static mihret(Lnet/time4j/engine/CalendarEra;I)I
    .locals 1

    .line 897
    sget-object v0, Lnet/time4j/calendar/EthiopianEra;->AMETE_ALEM:Lnet/time4j/calendar/EthiopianEra;

    invoke-virtual {v0, p0}, Lnet/time4j/calendar/EthiopianEra;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit16 p1, p1, -0x157c

    :cond_0
    return p1
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/EthiopianCalendar;
    .locals 2

    .line 552
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/EthiopianCalendar;

    return-object v0
.end method

.method public static of(Lnet/time4j/calendar/EthiopianEra;III)Lnet/time4j/calendar/EthiopianCalendar;
    .locals 3

    .line 518
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-static {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar;->mihret(Lnet/time4j/engine/CalendarEra;I)I

    move-result p0

    invoke-direct {v0, p0, p2, p3}, Lnet/time4j/calendar/EthiopianCalendar;-><init>(III)V

    return-object v0

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Ethiopian date: era="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", year="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", month="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", day="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Lnet/time4j/calendar/EthiopianEra;ILnet/time4j/calendar/EthiopianMonth;I)Lnet/time4j/calendar/EthiopianCalendar;
    .locals 0

    .line 485
    invoke-virtual {p2}, Lnet/time4j/calendar/EthiopianMonth;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianCalendar;->of(Lnet/time4j/calendar/EthiopianEra;III)Lnet/time4j/calendar/EthiopianCalendar;

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

    .line 922
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 910
    new-instance v0, Lnet/time4j/calendar/EthiopianCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/EthiopianCalendar$SPX;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public at(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianTime;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ">;"
        }
    .end annotation

    .line 784
    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianTime;->toISO()Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/time4j/GeneralTimestamp;->of(Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 793
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/EthiopianCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 794
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    .line 795
    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar;->edom:I

    iget v3, p1, Lnet/time4j/calendar/EthiopianCalendar;->edom:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    iget v3, p1, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar;->mihret:I

    iget p1, p1, Lnet/time4j/calendar/EthiopianCalendar;->mihret:I

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
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/EthiopianCalendar$Unit;",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ">;"
        }
    .end annotation

    .line 881
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/EthiopianCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianCalendar;->getContext()Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 632
    iget v0, p0, Lnet/time4j/calendar/EthiopianCalendar;->edom:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 654
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 655
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 673
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/EthiopianCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEra()Lnet/time4j/calendar/EthiopianEra;
    .locals 2

    .line 574
    iget v0, p0, Lnet/time4j/calendar/EthiopianCalendar;->mihret:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lnet/time4j/calendar/EthiopianEra;->AMETE_ALEM:Lnet/time4j/calendar/EthiopianEra;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/calendar/EthiopianEra;->AMETE_MIHRET:Lnet/time4j/calendar/EthiopianEra;

    :goto_0
    return-object v0
.end method

.method public getMonth()Lnet/time4j/calendar/EthiopianMonth;
    .locals 1

    .line 614
    iget v0, p0, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    invoke-static {v0}, Lnet/time4j/calendar/EthiopianMonth;->valueOf(I)Lnet/time4j/calendar/EthiopianMonth;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 596
    iget v0, p0, Lnet/time4j/calendar/EthiopianCalendar;->mihret:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/lit16 v0, v0, 0x157c

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 809
    iget v0, p0, Lnet/time4j/calendar/EthiopianCalendar;->edom:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar;->mihret:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear()Z
    .locals 2

    .line 727
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthOfMonth()I
    .locals 4

    .line 691
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object v1

    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result v2

    iget v3, p0, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    invoke-interface {v0, v1, v2, v3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 709
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianCalendar;->isLeapYear()Z

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
    .locals 6

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 817
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    const/4 v4, 0x4

    const/16 v5, 0x30

    if-ge v3, v4, :cond_0

    .line 821
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 823
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    iget v2, p0, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 826
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    :cond_1
    iget v2, p0, Lnet/time4j/calendar/EthiopianCalendar;->emonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 830
    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar;->edom:I

    if-ge v1, v3, :cond_2

    .line 831
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    :cond_2
    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar;->edom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
