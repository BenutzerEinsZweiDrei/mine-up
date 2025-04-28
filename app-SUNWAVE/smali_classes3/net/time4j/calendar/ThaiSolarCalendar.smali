.class public final Lnet/time4j/calendar/ThaiSolarCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "ThaiSolarCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/ThaiSolarCalendar$SPX;,
        Lnet/time4j/calendar/ThaiSolarCalendar$Merger;,
        Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;,
        Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;,
        Lnet/time4j/calendar/ThaiSolarCalendar$Transformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/CalendarUnit;",
        "Lnet/time4j/calendar/ThaiSolarCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "buddhist"
.end annotation


# static fields
.field private static final CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHILDREN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
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
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
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
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "D"
    .end annotation
.end field

.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/ThaiSolarEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation
.end field

.field private static final MIN_ISO:Lnet/time4j/PlainDate;

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Month;",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
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
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
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
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5bfc0fcc27089a3aL


# instance fields
.field private final iso:Lnet/time4j/PlainDate;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 164
    const-class v0, Lnet/time4j/calendar/ThaiSolarCalendar;

    const/16 v1, -0x21e

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v1

    sput-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->MIN_ISO:Lnet/time4j/PlainDate;

    .line 173
    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/ThaiSolarEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 184
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/ThaiSolarCalendar;

    const-string v6, "YEAR_OF_ERA"

    const/4 v8, 0x1

    const v9, 0x3b9acc1e

    const/16 v10, 0x79

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v2, Lnet/time4j/calendar/ThaiSolarCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 201
    new-instance v3, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v4, Lnet/time4j/Month;

    const-string v5, "MONTH_OF_YEAR"

    const/16 v6, 0x4d

    invoke-direct {v3, v5, v0, v4, v6}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v3, Lnet/time4j/calendar/ThaiSolarCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 215
    new-instance v4, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v9, Lnet/time4j/calendar/ThaiSolarCalendar;

    const-string v8, "DAY_OF_MONTH"

    const/4 v10, 0x1

    const/16 v11, 0x1f

    const/16 v12, 0x64

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v4, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 225
    new-instance v5, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v15, Lnet/time4j/calendar/ThaiSolarCalendar;

    const-string v14, "DAY_OF_YEAR"

    const/16 v16, 0x1

    const/16 v17, 0x16d

    const/16 v18, 0x44

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v5, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 247
    new-instance v6, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 248
    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v6, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 250
    new-instance v7, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v7, v0, v4, v6}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v7, Lnet/time4j/calendar/ThaiSolarCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 260
    sput-object v7, Lnet/time4j/calendar/ThaiSolarCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 267
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 268
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lnet/time4j/calendar/ThaiSolarCalendar;->CHILDREN:Ljava/util/Map;

    .line 273
    new-instance v8, Lnet/time4j/calendar/ThaiSolarCalendar$Transformer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lnet/time4j/calendar/ThaiSolarCalendar$Transformer;-><init>(Lnet/time4j/calendar/ThaiSolarCalendar$1;)V

    sput-object v8, Lnet/time4j/calendar/ThaiSolarCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    .line 275
    const-class v10, Lnet/time4j/CalendarUnit;

    new-instance v11, Lnet/time4j/calendar/ThaiSolarCalendar$Merger;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/ThaiSolarCalendar$Merger;-><init>(Lnet/time4j/calendar/ThaiSolarCalendar$1;)V

    .line 276
    invoke-static {v10, v0, v11, v8}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v9

    .line 283
    invoke-static {v1}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;

    move-result-object v10

    .line 281
    invoke-virtual {v9, v1, v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 286
    invoke-static {v2}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;

    move-result-object v9

    sget-object v10, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    .line 284
    invoke-virtual {v1, v2, v9, v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 290
    invoke-static {v3}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;

    move-result-object v2

    sget-object v9, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 288
    invoke-virtual {v1, v3, v2, v9}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/RelatedGregorianYearRule;

    invoke-direct {v3, v8, v5}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/ChronoElement;)V

    .line 292
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 297
    invoke-static {v4}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;

    move-result-object v2

    sget-object v3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 295
    invoke-virtual {v1, v4, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 301
    invoke-static {v5}, Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/ThaiSolarCalendar$FieldRule;

    move-result-object v2

    sget-object v3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 299
    invoke-virtual {v1, v5, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/WeekdayRule;

    .line 306
    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v8, Lnet/time4j/calendar/ThaiSolarCalendar$1;

    invoke-direct {v8}, Lnet/time4j/calendar/ThaiSolarCalendar$1;-><init>()V

    invoke-direct {v2, v3, v8}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    sget-object v3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 303
    invoke-virtual {v1, v6, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 317
    invoke-static {v7}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v2

    .line 315
    invoke-virtual {v1, v7, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 323
    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v4, v5, v3}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 318
    invoke-virtual {v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lnet/time4j/calendar/ThaiSolarCalendar;->registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 325
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/PlainDate;)V
    .locals 3

    .line 337
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 339
    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->MIN_ISO:Lnet/time4j/PlainDate;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->isBefore(Lnet/time4j/engine/CalendarDate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iput-object p1, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before buddhist era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/ThaiSolarCalendar$1;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-void
.end method

.method static synthetic access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 1

    .line 158
    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    return-object v0
.end method

.method static synthetic access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;
    .locals 0

    .line 158
    iget-object p0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    return-object p0
.end method

.method static synthetic access$500()Lnet/time4j/PlainDate;
    .locals 1

    .line 158
    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->MIN_ISO:Lnet/time4j/PlainDate;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .line 158
    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->CHILDREN:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 158
    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation

    .line 830
    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 2

    .line 812
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;I)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method public static isValid(Lnet/time4j/calendar/ThaiSolarEra;III)Z
    .locals 1

    .line 691
    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p0

    return p0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 2

    .line 466
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/ThaiSolarCalendar;

    return-object v0
.end method

.method public static of(Lnet/time4j/calendar/ThaiSolarEra;III)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 0

    .line 438
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarEra;->toIsoYear(II)I

    move-result p0

    .line 439
    invoke-static {p0, p2, p3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p0

    .line 440
    new-instance p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-direct {p1, p0}, Lnet/time4j/calendar/ThaiSolarCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-object p1
.end method

.method public static ofBuddhist(III)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 1

    .line 405
    sget-object v0, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    invoke-static {v0, p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar;->of(Lnet/time4j/calendar/ThaiSolarEra;III)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static ofBuddhist(ILnet/time4j/Month;I)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 1

    .line 375
    sget-object v0, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    invoke-virtual {p1}, Lnet/time4j/Month;->getValue()I

    move-result p1

    invoke-static {v0, p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar;->of(Lnet/time4j/calendar/ThaiSolarEra;III)Lnet/time4j/calendar/ThaiSolarCalendar;

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

    .line 893
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;)V"
        }
    .end annotation

    .line 857
    sget-object v0, Lnet/time4j/CalendarUnit;->MILLENNIA:Lnet/time4j/CalendarUnit;

    sget-object v1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 858
    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 859
    sget-object v1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 860
    invoke-static {v1, v2}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 862
    invoke-static {}, Lnet/time4j/CalendarUnit;->values()[Lnet/time4j/CalendarUnit;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    .line 863
    new-instance v7, Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;

    invoke-direct {v7, v6}, Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;-><init>(Lnet/time4j/CalendarUnit;)V

    .line 866
    invoke-virtual {v6}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v8

    sget-object v5, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    .line 867
    invoke-virtual {v6, v5}, Lnet/time4j/CalendarUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_0

    move-object v10, v0

    goto :goto_1

    :cond_0
    move-object v10, v1

    :goto_1
    move-object v5, p0

    .line 863
    invoke-virtual/range {v5 .. v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 881
    new-instance v0, Lnet/time4j/calendar/ThaiSolarCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/ThaiSolarCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation

    .line 719
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
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation

    .line 746
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 755
    :cond_0
    instance-of v0, p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    if-eqz v0, :cond_1

    .line 756
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    .line 757
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    iget-object p1, p1, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lnet/time4j/calendar/ThaiSolarCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/calendar/ThaiSolarCalendar;",
            ">;"
        }
    .end annotation

    .line 837
    sget-object v0, Lnet/time4j/calendar/ThaiSolarCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lnet/time4j/calendar/ThaiSolarCalendar;->getContext()Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 546
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 1

    .line 564
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 3

    .line 582
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 584
    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    const/16 v2, 0x795

    if-ge v1, v2, :cond_2

    .line 585
    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 586
    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v1}, Lnet/time4j/PlainDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5b

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    add-int/lit16 v0, v0, 0x113

    :cond_2
    :goto_1
    return v0
.end method

.method public getEra()Lnet/time4j/calendar/ThaiSolarEra;
    .locals 1

    .line 484
    sget-object v0, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/Month;
    .locals 1

    .line 528
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v0

    invoke-static {v0}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 3

    .line 504
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    const/16 v1, 0x795

    if-ge v0, v1, :cond_1

    .line 506
    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x21e

    return v0

    :cond_1
    :goto_0
    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 767
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLeapYear()Z
    .locals 2

    .line 658
    invoke-virtual {p0}, Lnet/time4j/calendar/ThaiSolarCalendar;->lengthOfYear()I

    move-result v0

    const/16 v1, 0x16e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .line 610
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 5

    .line 628
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    const/16 v1, 0x795

    if-lt v0, v1, :cond_0

    .line 631
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->lengthOfYear()I

    move-result v0

    return v0

    .line 632
    :cond_0
    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v1}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x16e

    const/16 v4, 0x16d

    if-lt v1, v2, :cond_3

    const/16 v1, 0x794

    if-ne v0, v1, :cond_1

    const/16 v0, 0x113

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 636
    invoke-static {v0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    return v3

    .line 639
    :cond_3
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    return v3
.end method

.method toISO()Lnet/time4j/PlainDate;
    .locals 1

    .line 851
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar;->iso:Lnet/time4j/PlainDate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 775
    invoke-virtual {p0}, Lnet/time4j/calendar/ThaiSolarCalendar;->getEra()Lnet/time4j/calendar/ThaiSolarEra;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p0}, Lnet/time4j/calendar/ThaiSolarCalendar;->getYear()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p0}, Lnet/time4j/calendar/ThaiSolarCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/Month;->getValue()I

    move-result v2

    const/16 v3, 0x30

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 781
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {p0}, Lnet/time4j/calendar/ThaiSolarCalendar;->getDayOfMonth()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 787
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
