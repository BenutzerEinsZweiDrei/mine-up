.class public final Lnet/time4j/calendar/HistoricCalendar;
.super Lnet/time4j/engine/CalendarVariant;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/HistoricCalendar$SPX;,
        Lnet/time4j/calendar/HistoricCalendar$Merger;,
        Lnet/time4j/calendar/HistoricCalendar$MonthOperator;,
        Lnet/time4j/calendar/HistoricCalendar$YearElement;,
        Lnet/time4j/calendar/HistoricCalendar$SimpleElement;,
        Lnet/time4j/calendar/HistoricCalendar$EraElement;,
        Lnet/time4j/calendar/HistoricCalendar$EraRule;,
        Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;,
        Lnet/time4j/calendar/HistoricCalendar$MonthRule;,
        Lnet/time4j/calendar/HistoricCalendar$IntegerRule;,
        Lnet/time4j/calendar/HistoricCalendar$VariantMap;,
        Lnet/time4j/calendar/HistoricCalendar$Transformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/CalendarVariant<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "historic"
.end annotation


# static fields
.field private static final CALSYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final CENTURY_INDEX:I = 0x4

.field public static final CENTURY_OF_ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTINUOUS_DOM:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTINUOUS_DOM_INDEX:I = 0x5

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HistoricCalendar;",
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
            "Lnet/time4j/calendar/HistoricCalendar;",
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
            "Lnet/time4j/calendar/HistoricCalendar;",
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
            "Lnet/time4j/calendar/HistoricCalendar;",
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

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Month;",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation
.end field

.field public static final RELATED_STANDARD_YEAR:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field public static final WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/OrdinalWeekdayElement<",
            "Lnet/time4j/calendar/HistoricCalendar;",
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
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final YEAR_INDEX:I = 0x0

.field private static final serialVersionUID:J = 0x6b2fe2ea422da031L


# instance fields
.field private final transient date:Lnet/time4j/history/HistoricDate;

.field private final gregorian:Lnet/time4j/PlainDate;

.field private final history:Lnet/time4j/history/ChronoHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 204
    const-class v0, Lnet/time4j/calendar/HistoricCalendar;

    new-instance v1, Lnet/time4j/calendar/HistoricCalendar$EraElement;

    invoke-direct {v1}, Lnet/time4j/calendar/HistoricCalendar$EraElement;-><init>()V

    sput-object v1, Lnet/time4j/calendar/HistoricCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 212
    new-instance v2, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;

    .line 215
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/history/ChronoHistory;->centuryOfEra()Lnet/time4j/engine/ChronoElement;

    move-result-object v3

    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 216
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v4

    invoke-virtual {v4}, Lnet/time4j/history/ChronoHistory;->centuryOfEra()Lnet/time4j/engine/ChronoElement;

    move-result-object v4

    invoke-interface {v4}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "CENTURY_OF_ERA"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v4, v6}, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;-><init>(Ljava/lang/String;IILnet/time4j/calendar/HistoricCalendar$1;)V

    sput-object v2, Lnet/time4j/calendar/HistoricCalendar;->CENTURY_OF_ERA:Lnet/time4j/engine/ChronoElement;

    .line 241
    new-instance v3, Lnet/time4j/calendar/HistoricCalendar$YearElement;

    invoke-direct {v3, v6}, Lnet/time4j/calendar/HistoricCalendar$YearElement;-><init>(Lnet/time4j/calendar/HistoricCalendar$1;)V

    sput-object v3, Lnet/time4j/calendar/HistoricCalendar;->RELATED_STANDARD_YEAR:Lnet/time4j/format/TextElement;

    .line 290
    new-instance v4, Lnet/time4j/calendar/HistoricCalendar$1;

    const-class v9, Lnet/time4j/calendar/HistoricCalendar;

    const-class v10, Lnet/time4j/Month;

    new-instance v12, Lnet/time4j/calendar/HistoricCalendar$MonthOperator;

    const/4 v5, 0x1

    invoke-direct {v12, v5}, Lnet/time4j/calendar/HistoricCalendar$MonthOperator;-><init>(Z)V

    new-instance v13, Lnet/time4j/calendar/HistoricCalendar$MonthOperator;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lnet/time4j/calendar/HistoricCalendar$MonthOperator;-><init>(Z)V

    const-string v8, "MONTH_OF_YEAR"

    const/16 v11, 0x4d

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lnet/time4j/calendar/HistoricCalendar$1;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;CLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v4, Lnet/time4j/calendar/HistoricCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 312
    new-instance v7, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v17, Lnet/time4j/calendar/HistoricCalendar;

    const-string v16, "DAY_OF_MONTH"

    const/16 v18, 0x1

    const/16 v19, 0x1f

    const/16 v20, 0x64

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v7, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 322
    new-instance v15, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v10, Lnet/time4j/calendar/HistoricCalendar;

    const-string v9, "DAY_OF_YEAR"

    const/4 v11, 0x1

    const/16 v12, 0x16d

    const/16 v13, 0x44

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v15, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 344
    new-instance v8, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 345
    invoke-static {}, Lnet/time4j/calendar/HistoricCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v8, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 347
    new-instance v9, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;

    const-string v10, "HC_CONTINUOUS_DOM"

    const/16 v11, 0x1f

    invoke-direct {v9, v10, v5, v11, v6}, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;-><init>(Ljava/lang/String;IILnet/time4j/calendar/HistoricCalendar$1;)V

    sput-object v9, Lnet/time4j/calendar/HistoricCalendar;->CONTINUOUS_DOM:Lnet/time4j/engine/ChronoElement;

    .line 349
    new-instance v5, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v5, v0, v9, v8}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v5, Lnet/time4j/calendar/HistoricCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 359
    sput-object v5, Lnet/time4j/calendar/HistoricCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 365
    new-instance v10, Lnet/time4j/calendar/HistoricCalendar$VariantMap;

    invoke-direct {v10, v6}, Lnet/time4j/calendar/HistoricCalendar$VariantMap;-><init>(Lnet/time4j/calendar/HistoricCalendar$1;)V

    .line 366
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object v11

    .line 367
    invoke-virtual {v11}, Lnet/time4j/history/ChronoHistory;->getVariant()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lnet/time4j/calendar/HistoricCalendar$Transformer;

    invoke-direct {v13, v11}, Lnet/time4j/calendar/HistoricCalendar$Transformer;-><init>(Lnet/time4j/history/ChronoHistory;)V

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sput-object v10, Lnet/time4j/calendar/HistoricCalendar;->CALSYS:Ljava/util/Map;

    .line 370
    new-instance v11, Lnet/time4j/calendar/HistoricCalendar$Merger;

    invoke-direct {v11, v6}, Lnet/time4j/calendar/HistoricCalendar$Merger;-><init>(Lnet/time4j/calendar/HistoricCalendar$1;)V

    .line 371
    invoke-static {v0, v11, v10}, Lnet/time4j/engine/CalendarFamily$Builder;->setUp(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v11

    sget-object v12, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    new-instance v13, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;

    invoke-direct {v13, v6}, Lnet/time4j/calendar/HistoricCalendar$GregorianDateRule;-><init>(Lnet/time4j/calendar/HistoricCalendar$1;)V

    .line 375
    invoke-virtual {v11, v12, v13}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v11

    new-instance v12, Lnet/time4j/calendar/HistoricCalendar$EraRule;

    invoke-direct {v12, v6}, Lnet/time4j/calendar/HistoricCalendar$EraRule;-><init>(Lnet/time4j/calendar/HistoricCalendar$1;)V

    .line 378
    invoke-virtual {v11, v1, v12}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v11, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;-><init>(I)V

    .line 381
    invoke-virtual {v1, v2, v11}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;

    invoke-direct {v2, v14}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;-><init>(I)V

    .line 384
    invoke-virtual {v1, v3, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/HistoricCalendar$MonthRule;

    invoke-direct {v2, v6}, Lnet/time4j/calendar/HistoricCalendar$MonthRule;-><init>(Lnet/time4j/calendar/HistoricCalendar$1;)V

    .line 387
    invoke-virtual {v1, v4, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/RelatedGregorianYearRule;

    invoke-direct {v3, v10, v15}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 390
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;-><init>(I)V

    .line 393
    invoke-virtual {v1, v9, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;-><init>(I)V

    .line 396
    invoke-virtual {v1, v7, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;-><init>(I)V

    .line 399
    invoke-virtual {v1, v15, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/WeekdayRule;

    .line 405
    invoke-static {}, Lnet/time4j/calendar/HistoricCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v4, Lnet/time4j/calendar/HistoricCalendar$2;

    invoke-direct {v4}, Lnet/time4j/calendar/HistoricCalendar$2;-><init>()V

    invoke-direct {v2, v3, v4}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    .line 402
    invoke-virtual {v1, v8, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    .line 415
    invoke-static {v5}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v2

    .line 413
    invoke-virtual {v1, v5, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 421
    invoke-static {}, Lnet/time4j/calendar/HistoricCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v7, v15, v3}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 416
    invoke-virtual {v1, v2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lnet/time4j/engine/CalendarFamily$Builder;->build()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HistoricCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/PlainDate;)V
    .locals 1

    .line 459
    invoke-direct {p0}, Lnet/time4j/engine/CalendarVariant;-><init>()V

    .line 461
    invoke-virtual {p1, p2}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    .line 462
    iput-object p2, p0, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    .line 463
    iput-object p1, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/PlainDate;Lnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar;-><init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/PlainDate;)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricDate;)V
    .locals 1

    .line 447
    invoke-direct {p0}, Lnet/time4j/engine/CalendarVariant;-><init>()V

    .line 449
    invoke-virtual {p1, p2}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    .line 450
    iput-object p2, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    .line 451
    iput-object p1, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricDate;Lnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar;-><init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricDate;)V

    return-void
.end method

.method static synthetic access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;
    .locals 0

    .line 179
    iget-object p0, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    return-object p0
.end method

.method static synthetic access$1100(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/ChronoHistory;
    .locals 0

    .line 179
    invoke-static {p0}, Lnet/time4j/calendar/HistoricCalendar;->getHistory(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/ChronoHistory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200()Lnet/time4j/engine/ChronoElement;
    .locals 1

    .line 179
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->CONTINUOUS_DOM:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method static synthetic access$1400()Lnet/time4j/engine/CalendarFamily;
    .locals 1

    .line 179
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method static synthetic access$800(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;
    .locals 0

    .line 179
    iget-object p0, p0, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    return-object p0
.end method

.method static synthetic access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;
    .locals 0

    .line 179
    iget-object p0, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    return-object p0
.end method

.method public static family()Lnet/time4j/engine/CalendarFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarFamily<",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;"
        }
    .end annotation

    .line 931
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 2

    .line 915
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;I)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method private static getHistory(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/ChronoHistory;
    .locals 2

    .line 965
    sget-object v0, Lnet/time4j/history/internal/HistoricAttribute;->CALENDAR_HISTORY:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p0, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    sget-object v0, Lnet/time4j/history/internal/HistoricAttribute;->CALENDAR_HISTORY:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p0, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/history/ChronoHistory;

    return-object p0

    .line 967
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_TYPE:Lnet/time4j/engine/AttributeKey;

    const-string v1, "iso8601"

    .line 968
    invoke-interface {p0, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "historic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    .line 969
    invoke-interface {p0, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p0, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lnet/time4j/history/ChronoHistory;->from(Ljava/lang/String;)Lnet/time4j/history/ChronoHistory;

    move-result-object p0

    return-object p0

    .line 972
    :cond_1
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p0, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v0

    if-nez v0, :cond_2

    .line 973
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p0, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    invoke-static {p0}, Lnet/time4j/history/ChronoHistory;->of(Ljava/util/Locale;)Lnet/time4j/history/ChronoHistory;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static nowInSystemTime(Lnet/time4j/history/ChronoHistory;)Lnet/time4j/calendar/HistoricCalendar;
    .locals 3

    .line 576
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HistoricCalendar;->family()Lnet/time4j/engine/CalendarFamily;

    move-result-object v1

    sget-object v2, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    invoke-virtual {v0, v1, p0, v2}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/CalendarFamily;Lnet/time4j/engine/VariantSource;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HistoricCalendar;

    return-object p0
.end method

.method private static of(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricDate;)Lnet/time4j/calendar/HistoricCalendar;
    .locals 3

    .line 954
    invoke-virtual {p0, p1}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    new-instance v0, Lnet/time4j/calendar/HistoricCalendar;

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/HistoricCalendar;-><init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricDate;)V

    return-object v0

    .line 957
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Historic date \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" invalid in history: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/HistoricCalendar;
    .locals 6

    .line 507
    sget-object v3, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lnet/time4j/calendar/HistoricCalendar;->of(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricEra;ILnet/time4j/history/YearDefinition;II)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricEra;ILnet/time4j/history/YearDefinition;II)Lnet/time4j/calendar/HistoricCalendar;
    .locals 6

    .line 549
    invoke-virtual {p0}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v5

    move-object v0, p1

    move v1, p2

    move v2, p4

    move v3, p5

    move-object v4, p3

    .line 548
    invoke-static/range {v0 .. v5}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;IIILnet/time4j/history/YearDefinition;Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 550
    invoke-static {p0, p1}, Lnet/time4j/calendar/HistoricCalendar;->of(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricDate;)Lnet/time4j/calendar/HistoricCalendar;

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

    .line 1001
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 989
    new-instance v0, Lnet/time4j/calendar/HistoricCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/HistoricCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;"
        }
    .end annotation

    .line 834
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
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;"
        }
    .end annotation

    .line 859
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 868
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/HistoricCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 869
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    .line 870
    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    iget-object v3, p1, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    .line 871
    invoke-virtual {v1, v3}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    iget-object v3, p1, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    .line 872
    invoke-virtual {v1, v3}, Lnet/time4j/history/ChronoHistory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    iget-object p1, p1, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    .line 873
    invoke-virtual {v1, p1}, Lnet/time4j/history/HistoricDate;->equals(Ljava/lang/Object;)Z

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

.method public getCentury()I
    .locals 1

    .line 624
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->centuryOfEra()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HistoricCalendar;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    return v0
.end method

.method protected getChronology()Lnet/time4j/engine/CalendarFamily;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarFamily<",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;"
        }
    .end annotation

    .line 938
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->ENGINE:Lnet/time4j/engine/CalendarFamily;

    return-object v0
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar;->getChronology()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/HistoricCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar;->getContext()Lnet/time4j/calendar/HistoricCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 685
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 707
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 708
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 724
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HistoricCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEra()Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 608
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    return-object v0
.end method

.method public getHistory()Lnet/time4j/history/ChronoHistory;
    .locals 1

    .line 592
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/Month;
    .locals 1

    .line 669
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v0

    invoke-static {v0}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 731
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 653
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/history/HistoricDate;->getYearOfEra(Lnet/time4j/history/NewYearStrategy;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 883
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .locals 3

    .line 748
    :try_start_0
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HistoricCalendar;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/time4j/calendar/HistoricCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    check-cast v1, Lnet/time4j/calendar/HistoricCalendar;

    iget-object v1, v1, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    .line 749
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HistoricCalendar;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lnet/time4j/calendar/HistoricCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HistoricCalendar;

    iget-object v0, v0, Lnet/time4j/calendar/HistoricCalendar;->gregorian:Lnet/time4j/PlainDate;

    .line 750
    invoke-static {v1, v0}, Lnet/time4j/engine/CalendarDays;->between(Lnet/time4j/engine/CalendarDate;Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDays;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/CalendarDays;->getAmount()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public lengthOfYear()I
    .locals 3

    .line 769
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v1

    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/time4j/history/ChronoHistory;->getLengthOfYear(Lnet/time4j/history/HistoricEra;I)I

    move-result v0

    return v0
.end method

.method public nextDay()Lnet/time4j/calendar/HistoricCalendar;
    .locals 1

    .line 808
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-interface {v0}, Lnet/time4j/calendar/StdCalendarElement;->incremented()Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HistoricCalendar;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HistoricCalendar;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 891
    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar;->date:Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withNewYear()Lnet/time4j/calendar/HistoricCalendar;
    .locals 3

    .line 785
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v1

    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/time4j/history/ChronoHistory;->getBeginOfYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    .line 786
    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar;->history:Lnet/time4j/history/ChronoHistory;

    invoke-static {v1, v0}, Lnet/time4j/calendar/HistoricCalendar;->of(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricDate;)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object v0

    return-object v0
.end method
