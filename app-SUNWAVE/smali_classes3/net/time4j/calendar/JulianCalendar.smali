.class public final Lnet/time4j/calendar/JulianCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "JulianCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/JulianCalendar$SPX;,
        Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;,
        Lnet/time4j/calendar/JulianCalendar$Merger;,
        Lnet/time4j/calendar/JulianCalendar$DateRule;,
        Lnet/time4j/calendar/JulianCalendar$EraRule;,
        Lnet/time4j/calendar/JulianCalendar$MonthRule;,
        Lnet/time4j/calendar/JulianCalendar$IntegerRule;,
        Lnet/time4j/calendar/JulianCalendar$Transformer;,
        Lnet/time4j/calendar/JulianCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/calendar/JulianCalendar$Unit;",
        "Lnet/time4j/calendar/JulianCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "julian"
.end annotation


# static fields
.field private static final CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/JulianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATE:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/history/HistoricDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "d"
    .end annotation
.end field

.field private static final DAY_OF_MONTH_INDEX:I = 0x2

.field public static final DAY_OF_WEEK:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "E"
    .end annotation
.end field

.field public static final DAY_OF_YEAR:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
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
            "Lnet/time4j/calendar/JulianCalendar$Unit;",
            "Lnet/time4j/calendar/JulianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/history/HistoricEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation
.end field

.field public static final MONTH_OF_YEAR:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation
.end field

.field private static final OFFSET:I = 0xafd48

.field public static final WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/OrdinalWeekdayElement<",
            "Lnet/time4j/calendar/JulianCalendar;",
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
            "Lnet/time4j/calendar/JulianCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final YEAR_INDEX:I = 0x0

.field public static final YEAR_OF_ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final YMAX:I = 0x3b9ac9ff

.field private static final serialVersionUID:J = 0x2a2c480a72adc1d0L


# instance fields
.field private final transient dom:I

.field private final transient month:I

.field private final transient prolepticYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 178
    const-class v0, Lnet/time4j/calendar/JulianCalendar;

    sget-object v1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->date()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    sput-object v1, Lnet/time4j/calendar/JulianCalendar;->DATE:Lnet/time4j/engine/ChronoElement;

    .line 195
    sget-object v2, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v2}, Lnet/time4j/history/ChronoHistory;->era()Lnet/time4j/engine/ChronoElement;

    move-result-object v2

    sput-object v2, Lnet/time4j/calendar/JulianCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 208
    sget-object v3, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v3}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v3

    sput-object v3, Lnet/time4j/calendar/JulianCalendar;->YEAR_OF_ERA:Lnet/time4j/engine/ChronoElement;

    .line 221
    sget-object v4, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v4}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v4

    sput-object v4, Lnet/time4j/calendar/JulianCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    .line 234
    sget-object v5, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v5}, Lnet/time4j/history/ChronoHistory;->dayOfMonth()Lnet/time4j/engine/ChronoElement;

    move-result-object v5

    sput-object v5, Lnet/time4j/calendar/JulianCalendar;->DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;

    .line 243
    new-instance v12, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v8, Lnet/time4j/calendar/JulianCalendar;

    const-string v7, "DAY_OF_YEAR"

    const/4 v9, 0x1

    const/16 v10, 0x16d

    const/16 v11, 0x44

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v12, Lnet/time4j/calendar/JulianCalendar;->DAY_OF_YEAR:Lnet/time4j/engine/ChronoElement;

    .line 265
    new-instance v6, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 266
    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v6, Lnet/time4j/calendar/JulianCalendar;->DAY_OF_WEEK:Lnet/time4j/engine/ChronoElement;

    .line 268
    new-instance v7, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v7, v0, v5, v6}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v7, Lnet/time4j/calendar/JulianCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 278
    sput-object v7, Lnet/time4j/calendar/JulianCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 284
    new-instance v8, Lnet/time4j/calendar/JulianCalendar$Transformer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lnet/time4j/calendar/JulianCalendar$Transformer;-><init>(Lnet/time4j/calendar/JulianCalendar$1;)V

    sput-object v8, Lnet/time4j/calendar/JulianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    .line 286
    const-class v10, Lnet/time4j/calendar/JulianCalendar$Unit;

    new-instance v11, Lnet/time4j/calendar/JulianCalendar$Merger;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/JulianCalendar$Merger;-><init>(Lnet/time4j/calendar/JulianCalendar$1;)V

    .line 287
    invoke-static {v10, v0, v11, v8}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v10

    new-instance v11, Lnet/time4j/calendar/JulianCalendar$DateRule;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/JulianCalendar$DateRule;-><init>(Lnet/time4j/calendar/JulianCalendar$1;)V

    .line 292
    invoke-virtual {v10, v1, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v10, Lnet/time4j/calendar/JulianCalendar$EraRule;

    invoke-direct {v10, v9}, Lnet/time4j/calendar/JulianCalendar$EraRule;-><init>(Lnet/time4j/calendar/JulianCalendar$1;)V

    .line 295
    invoke-virtual {v1, v2, v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/JulianCalendar$IntegerRule;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;-><init>(I)V

    sget-object v10, Lnet/time4j/calendar/JulianCalendar$Unit;->YEARS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 298
    invoke-virtual {v1, v3, v2, v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/JulianCalendar$MonthRule;

    invoke-direct {v2, v9}, Lnet/time4j/calendar/JulianCalendar$MonthRule;-><init>(Lnet/time4j/calendar/JulianCalendar$1;)V

    sget-object v3, Lnet/time4j/calendar/JulianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 302
    invoke-virtual {v1, v4, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/JulianCalendar$IntegerRule;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 306
    invoke-virtual {v1, v5, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/JulianCalendar$IntegerRule;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 310
    invoke-virtual {v1, v12, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/WeekdayRule;

    .line 317
    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v4, Lnet/time4j/calendar/JulianCalendar$1;

    invoke-direct {v4}, Lnet/time4j/calendar/JulianCalendar$1;-><init>()V

    invoke-direct {v2, v3, v4}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    sget-object v3, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 314
    invoke-virtual {v1, v6, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 328
    invoke-static {v7}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v2

    .line 326
    invoke-virtual {v1, v7, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/RelatedGregorianYearRule;

    invoke-direct {v3, v8, v12}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/ChronoElement;)V

    .line 329
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v13

    sget-object v14, Lnet/time4j/calendar/JulianCalendar$Unit;->YEARS:Lnet/time4j/calendar/JulianCalendar$Unit;

    new-instance v15, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->YEARS:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-direct {v15, v1}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;-><init>(Lnet/time4j/calendar/JulianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->YEARS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 335
    invoke-virtual {v1}, Lnet/time4j/calendar/JulianCalendar$Unit;->getLength()D

    move-result-wide v16

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 336
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v18

    .line 332
    invoke-virtual/range {v13 .. v18}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v6

    sget-object v7, Lnet/time4j/calendar/JulianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JulianCalendar$Unit;

    new-instance v8, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-direct {v8, v1}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;-><init>(Lnet/time4j/calendar/JulianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 340
    invoke-virtual {v1}, Lnet/time4j/calendar/JulianCalendar$Unit;->getLength()D

    move-result-wide v9

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->YEARS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 341
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 337
    invoke-virtual/range {v6 .. v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v13

    sget-object v14, Lnet/time4j/calendar/JulianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JulianCalendar$Unit;

    new-instance v15, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-direct {v15, v1}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;-><init>(Lnet/time4j/calendar/JulianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 345
    invoke-virtual {v1}, Lnet/time4j/calendar/JulianCalendar$Unit;->getLength()D

    move-result-wide v16

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 346
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v18

    .line 342
    invoke-virtual/range {v13 .. v18}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v6

    sget-object v7, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    new-instance v8, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    invoke-direct {v8, v1}, Lnet/time4j/calendar/JulianCalendar$JulianUnitRule;-><init>(Lnet/time4j/calendar/JulianCalendar$Unit;)V

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->DAYS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 350
    invoke-virtual {v1}, Lnet/time4j/calendar/JulianCalendar$Unit;->getLength()D

    move-result-wide v9

    sget-object v1, Lnet/time4j/calendar/JulianCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JulianCalendar$Unit;

    .line 351
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 347
    invoke-virtual/range {v6 .. v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 357
    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v5, v12, v3}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 352
    invoke-virtual {v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/JulianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 376
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 378
    iput p1, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    .line 379
    iput p2, p0, Lnet/time4j/calendar/JulianCalendar;->month:I

    .line 380
    iput p3, p0, Lnet/time4j/calendar/JulianCalendar;->dom:I

    return-void
.end method

.method synthetic constructor <init>(IIILnet/time4j/calendar/JulianCalendar$1;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar;-><init>(III)V

    return-void
.end method

.method static synthetic access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 1

    .line 152
    sget-object v0, Lnet/time4j/calendar/JulianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    return-object v0
.end method

.method static synthetic access$1100()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 152
    sget-object v0, Lnet/time4j/calendar/JulianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static synthetic access$600(II)I
    .locals 0

    .line 152
    invoke-static {p0, p1}, Lnet/time4j/calendar/JulianCalendar;->lengthOfMonth(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lnet/time4j/calendar/JulianCalendar;)I
    .locals 0

    .line 152
    iget p0, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    return p0
.end method

.method static synthetic access$800(Lnet/time4j/calendar/JulianCalendar;)I
    .locals 0

    .line 152
    iget p0, p0, Lnet/time4j/calendar/JulianCalendar;->month:I

    return p0
.end method

.method static synthetic access$900(Lnet/time4j/calendar/JulianCalendar;)I
    .locals 0

    .line 152
    iget p0, p0, Lnet/time4j/calendar/JulianCalendar;->dom:I

    return p0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/JulianCalendar$Unit;",
            "Lnet/time4j/calendar/JulianCalendar;",
            ">;"
        }
    .end annotation

    .line 807
    sget-object v0, Lnet/time4j/calendar/JulianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 2

    .line 789
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;I)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method public static isValid(Lnet/time4j/history/HistoricEra;III)Z
    .locals 1

    .line 680
    sget-object v0, Lnet/time4j/calendar/JulianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p0

    return p0
.end method

.method private static lengthOfMonth(II)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/16 p0, 0x9

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_0

    const/16 p0, 0x1f

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    .line 874
    :cond_1
    rem-int/2addr p0, v1

    if-nez p0, :cond_2

    const/16 p0, 0x1d

    goto :goto_0

    :cond_2
    const/16 p0, 0x1c

    :goto_0
    return p0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/JulianCalendar;
    .locals 2

    .line 484
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/JulianCalendar;

    return-object v0
.end method

.method public static of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/JulianCalendar;
    .locals 3

    const-string v0, "Missing Julian era."

    .line 416
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lnet/time4j/calendar/JulianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    if-ne p0, v0, :cond_0

    .line 422
    new-instance p0, Lnet/time4j/calendar/JulianCalendar;

    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar;-><init>(III)V

    return-object p0

    .line 424
    :cond_0
    new-instance p0, Lnet/time4j/calendar/JulianCalendar;

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar;-><init>(III)V

    return-object p0

    .line 418
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar;->toString(Lnet/time4j/engine/CalendarEra;III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Lnet/time4j/history/HistoricEra;ILnet/time4j/Month;I)Lnet/time4j/calendar/JulianCalendar;
    .locals 0

    .line 458
    invoke-virtual {p2}, Lnet/time4j/Month;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/JulianCalendar;

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

    .line 902
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static toString(Lnet/time4j/engine/CalendarEra;III)Ljava/lang/String;
    .locals 4

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "JULIAN-"

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-interface {p0}, Lnet/time4j/engine/CalendarEra;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    .line 842
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x4

    const/16 v3, 0x30

    if-ge v1, v2, :cond_0

    .line 845
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    if-ge p2, p1, :cond_1

    .line 850
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p3, p1, :cond_2

    .line 855
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 857
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 890
    new-instance v0, Lnet/time4j/calendar/JulianCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/JulianCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/JulianCalendar;",
            ">;"
        }
    .end annotation

    .line 708
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
            "Lnet/time4j/calendar/JulianCalendar;",
            ">;"
        }
    .end annotation

    .line 735
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 744
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/JulianCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 745
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    .line 746
    iget v1, p0, Lnet/time4j/calendar/JulianCalendar;->dom:I

    iget v3, p1, Lnet/time4j/calendar/JulianCalendar;->dom:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/JulianCalendar;->month:I

    iget v3, p1, Lnet/time4j/calendar/JulianCalendar;->month:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    iget p1, p1, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

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

    .line 151
    invoke-virtual {p0}, Lnet/time4j/calendar/JulianCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/JulianCalendar$Unit;",
            "Lnet/time4j/calendar/JulianCalendar;",
            ">;"
        }
    .end annotation

    .line 814
    sget-object v0, Lnet/time4j/calendar/JulianCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/JulianCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lnet/time4j/calendar/JulianCalendar;->getContext()Lnet/time4j/calendar/JulianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 556
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar;->dom:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 574
    sget-object v0, Lnet/time4j/calendar/JulianCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0}, Lnet/time4j/calendar/EraYearMonthDaySystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 575
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 593
    sget-object v0, Lnet/time4j/calendar/JulianCalendar;->DAY_OF_YEAR:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/JulianCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEra()Lnet/time4j/history/HistoricEra;
    .locals 2

    .line 502
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    :goto_0
    return-object v0
.end method

.method public getMonth()Lnet/time4j/Month;
    .locals 1

    .line 538
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar;->month:I

    invoke-static {v0}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v0

    return-object v0
.end method

.method getProlepticYear()I
    .locals 1

    .line 828
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 520
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 760
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar;->dom:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lnet/time4j/calendar/JulianCalendar;->month:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 647
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    rem-int/lit8 v0, v0, 0x4

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

    .line 611
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar;->prolepticYear:I

    iget v1, p0, Lnet/time4j/calendar/JulianCalendar;->month:I

    invoke-static {v0, v1}, Lnet/time4j/calendar/JulianCalendar;->lengthOfMonth(II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 629
    invoke-virtual {p0}, Lnet/time4j/calendar/JulianCalendar;->isLeapYear()Z

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
    .locals 4

    .line 767
    invoke-virtual {p0}, Lnet/time4j/calendar/JulianCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/JulianCalendar;->getYear()I

    move-result v1

    iget v2, p0, Lnet/time4j/calendar/JulianCalendar;->month:I

    iget v3, p0, Lnet/time4j/calendar/JulianCalendar;->dom:I

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/calendar/JulianCalendar;->toString(Lnet/time4j/engine/CalendarEra;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
