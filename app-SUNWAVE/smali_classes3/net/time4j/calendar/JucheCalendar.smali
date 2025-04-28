.class public final Lnet/time4j/calendar/JucheCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "JucheCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/JucheCalendar$SPX;,
        Lnet/time4j/calendar/JucheCalendar$Merger;,
        Lnet/time4j/calendar/JucheCalendar$JucheUnitRule;,
        Lnet/time4j/calendar/JucheCalendar$FieldRule;,
        Lnet/time4j/calendar/JucheCalendar$Transformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/CalendarUnit;",
        "Lnet/time4j/calendar/JucheCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "juche"
.end annotation


# static fields
.field private static final CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/EraYearMonthDaySystem<",
            "Lnet/time4j/calendar/JucheCalendar;",
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
            "Lnet/time4j/calendar/JucheCalendar;",
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
            "Lnet/time4j/calendar/JucheCalendar;",
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
            "Lnet/time4j/calendar/JucheCalendar;",
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
            "Lnet/time4j/calendar/JucheCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/JucheEra;",
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
            "Lnet/time4j/calendar/JucheCalendar;",
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
            "Lnet/time4j/calendar/JucheCalendar;",
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
            "Lnet/time4j/calendar/JucheCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/JucheCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final serialVersionUID:J = 0xa83ce5ce44ce1bfL


# instance fields
.field private final iso:Lnet/time4j/PlainDate;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 141
    const-class v0, Lnet/time4j/calendar/JucheCalendar;

    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/JucheEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/JucheCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 151
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/JucheCalendar;

    const-string v6, "YEAR_OF_ERA"

    const/4 v8, 0x1

    const v9, 0x3b9ac288

    const/16 v10, 0x79

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v2, Lnet/time4j/calendar/JucheCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 168
    new-instance v3, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v4, Lnet/time4j/Month;

    const-string v5, "MONTH_OF_YEAR"

    const/16 v6, 0x4d

    invoke-direct {v3, v5, v0, v4, v6}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v3, Lnet/time4j/calendar/JucheCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 182
    new-instance v4, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v9, Lnet/time4j/calendar/JucheCalendar;

    const-string v8, "DAY_OF_MONTH"

    const/4 v10, 0x1

    const/16 v11, 0x1f

    const/16 v12, 0x64

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v4, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 192
    new-instance v5, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v15, Lnet/time4j/calendar/JucheCalendar;

    const-string v14, "DAY_OF_YEAR"

    const/16 v16, 0x1

    const/16 v17, 0x16d

    const/16 v18, 0x44

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v5, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 214
    new-instance v6, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 215
    invoke-static {}, Lnet/time4j/calendar/JucheCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v6, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 217
    new-instance v7, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v7, v0, v4, v6}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v7, Lnet/time4j/calendar/JucheCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 227
    sput-object v7, Lnet/time4j/calendar/JucheCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 234
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lnet/time4j/calendar/JucheCalendar;->CHILDREN:Ljava/util/Map;

    .line 240
    new-instance v8, Lnet/time4j/calendar/JucheCalendar$Transformer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lnet/time4j/calendar/JucheCalendar$Transformer;-><init>(Lnet/time4j/calendar/JucheCalendar$1;)V

    sput-object v8, Lnet/time4j/calendar/JucheCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    .line 242
    const-class v10, Lnet/time4j/CalendarUnit;

    new-instance v11, Lnet/time4j/calendar/JucheCalendar$Merger;

    invoke-direct {v11, v9}, Lnet/time4j/calendar/JucheCalendar$Merger;-><init>(Lnet/time4j/calendar/JucheCalendar$1;)V

    .line 243
    invoke-static {v10, v0, v11, v8}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v9

    .line 250
    invoke-static {v1}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/JucheCalendar$FieldRule;

    move-result-object v10

    .line 248
    invoke-virtual {v9, v1, v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 253
    invoke-static {v2}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/JucheCalendar$FieldRule;

    move-result-object v9

    sget-object v10, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    .line 251
    invoke-virtual {v1, v2, v9, v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 257
    invoke-static {v3}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/JucheCalendar$FieldRule;

    move-result-object v2

    sget-object v9, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 255
    invoke-virtual {v1, v3, v2, v9}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v3, Lnet/time4j/calendar/RelatedGregorianYearRule;

    invoke-direct {v3, v8, v5}, Lnet/time4j/calendar/RelatedGregorianYearRule;-><init>(Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/ChronoElement;)V

    .line 259
    invoke-virtual {v1, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 264
    invoke-static {v4}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/JucheCalendar$FieldRule;

    move-result-object v2

    sget-object v3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 262
    invoke-virtual {v1, v4, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 268
    invoke-static {v5}, Lnet/time4j/calendar/JucheCalendar$FieldRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/calendar/JucheCalendar$FieldRule;

    move-result-object v2

    sget-object v3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 266
    invoke-virtual {v1, v5, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/WeekdayRule;

    .line 273
    invoke-static {}, Lnet/time4j/calendar/JucheCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    new-instance v8, Lnet/time4j/calendar/JucheCalendar$1;

    invoke-direct {v8}, Lnet/time4j/calendar/JucheCalendar$1;-><init>()V

    invoke-direct {v2, v3, v8}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    sget-object v3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 270
    invoke-virtual {v1, v6, v2, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    .line 284
    invoke-static {v7}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v2

    .line 282
    invoke-virtual {v1, v7, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v2, Lnet/time4j/calendar/CommonElements$Weekengine;

    .line 290
    invoke-static {}, Lnet/time4j/calendar/JucheCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-direct {v2, v0, v4, v5, v3}, Lnet/time4j/calendar/CommonElements$Weekengine;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;Lnet/time4j/Weekmodel;)V

    .line 285
    invoke-virtual {v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lnet/time4j/calendar/JucheCalendar;->registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 292
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/JucheCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method constructor <init>(Lnet/time4j/PlainDate;)V
    .locals 2

    .line 305
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 307
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    const/16 v1, 0x778

    if-lt v0, v1, :cond_0

    .line 311
    iput-object p1, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    return-void

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Juche calendar not valid before gregorian year 1912."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;
    .locals 1

    .line 128
    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    return-object v0
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 128
    invoke-static {p0}, Lnet/time4j/calendar/JucheCalendar;->toProlepticYear(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lnet/time4j/calendar/JucheCalendar;)Lnet/time4j/PlainDate;
    .locals 0

    .line 128
    iget-object p0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .line 128
    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->CHILDREN:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 128
    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/CalendarUnit;",
            "Lnet/time4j/calendar/JucheCalendar;",
            ">;"
        }
    .end annotation

    .line 698
    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 3

    .line 682
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ko"

    const-string v2, "KP"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method public static isValid(III)Z
    .locals 2

    .line 567
    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->CALSYS:Lnet/time4j/calendar/EraYearMonthDaySystem;

    sget-object v1, Lnet/time4j/calendar/JucheEra;->JUCHE:Lnet/time4j/calendar/JucheEra;

    invoke-interface {v0, v1, p0, p1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p0

    return p0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/JucheCalendar;
    .locals 2

    .line 395
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/JucheCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/JucheCalendar;

    return-object v0
.end method

.method public static of(III)Lnet/time4j/calendar/JucheCalendar;
    .locals 0

    .line 369
    invoke-static {p0}, Lnet/time4j/calendar/JucheCalendar;->toProlepticYear(I)I

    move-result p0

    .line 370
    invoke-static {p0, p1, p2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p0

    .line 371
    new-instance p1, Lnet/time4j/calendar/JucheCalendar;

    invoke-direct {p1, p0}, Lnet/time4j/calendar/JucheCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-object p1
.end method

.method public static of(ILnet/time4j/Month;I)Lnet/time4j/calendar/JucheCalendar;
    .locals 0

    .line 341
    invoke-virtual {p1}, Lnet/time4j/Month;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/JucheCalendar;->of(III)Lnet/time4j/calendar/JucheCalendar;

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

    .line 767
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
            "Lnet/time4j/calendar/JucheCalendar;",
            ">;)V"
        }
    .end annotation

    .line 731
    sget-object v0, Lnet/time4j/CalendarUnit;->MILLENNIA:Lnet/time4j/CalendarUnit;

    sget-object v1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 732
    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 733
    sget-object v1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 734
    invoke-static {v1, v2}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 736
    invoke-static {}, Lnet/time4j/CalendarUnit;->values()[Lnet/time4j/CalendarUnit;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    .line 737
    new-instance v7, Lnet/time4j/calendar/JucheCalendar$JucheUnitRule;

    invoke-direct {v7, v6}, Lnet/time4j/calendar/JucheCalendar$JucheUnitRule;-><init>(Lnet/time4j/CalendarUnit;)V

    .line 740
    invoke-virtual {v6}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v8

    sget-object v5, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    .line 741
    invoke-virtual {v6, v5}, Lnet/time4j/CalendarUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_0

    move-object v10, v0

    goto :goto_1

    :cond_0
    move-object v10, v1

    :goto_1
    move-object v5, p0

    .line 737
    invoke-virtual/range {v5 .. v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static toProlepticYear(I)I
    .locals 1

    const/16 v0, 0x777

    .line 725
    invoke-static {p0, v0}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p0

    return p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 755
    new-instance v0, Lnet/time4j/calendar/JucheCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/JucheCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/JucheCalendar;",
            ">;"
        }
    .end annotation

    .line 593
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
            "Lnet/time4j/calendar/JucheCalendar;",
            ">;"
        }
    .end annotation

    .line 618
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JucheCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 627
    :cond_0
    instance-of v0, p1, Lnet/time4j/calendar/JucheCalendar;

    if-eqz v0, :cond_1

    .line 628
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    .line 629
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    iget-object p1, p1, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lnet/time4j/calendar/JucheCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

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
            "Lnet/time4j/calendar/JucheCalendar;",
            ">;"
        }
    .end annotation

    .line 705
    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/JucheCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lnet/time4j/calendar/JucheCalendar;->getContext()Lnet/time4j/calendar/JucheCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 459
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 2

    .line 475
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Weekday;

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 2

    .line 491
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    sget-object v1, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    return v0
.end method

.method public getEra()Lnet/time4j/calendar/JucheEra;
    .locals 1

    .line 411
    sget-object v0, Lnet/time4j/calendar/JucheEra;->JUCHE:Lnet/time4j/calendar/JucheEra;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/Month;
    .locals 1

    .line 443
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v0

    invoke-static {v0}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 427
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x777

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 639
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->isLeapYear()Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .line 507
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 523
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->lengthOfYear()I

    move-result v0

    return v0
.end method

.method toISO()Lnet/time4j/PlainDate;
    .locals 1

    .line 719
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar;->iso:Lnet/time4j/PlainDate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 647
    invoke-virtual {p0}, Lnet/time4j/calendar/JucheCalendar;->getEra()Lnet/time4j/calendar/JucheEra;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {p0}, Lnet/time4j/calendar/JucheCalendar;->getYear()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0}, Lnet/time4j/calendar/JucheCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/Month;->getValue()I

    move-result v2

    const/16 v3, 0x30

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 653
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p0}, Lnet/time4j/calendar/JucheCalendar;->getDayOfMonth()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 659
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
