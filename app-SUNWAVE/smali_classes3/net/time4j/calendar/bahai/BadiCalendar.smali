.class public final Lnet/time4j/calendar/bahai/BadiCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "BadiCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;,
        Lnet/time4j/calendar/bahai/BadiCalendar$Merger;,
        Lnet/time4j/calendar/bahai/BadiCalendar$WeekdayRule;,
        Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;,
        Lnet/time4j/calendar/bahai/BadiCalendar$YOV;,
        Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;,
        Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;,
        Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;,
        Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;,
        Lnet/time4j/calendar/bahai/BadiCalendar$EraRule;,
        Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;,
        Lnet/time4j/calendar/bahai/BadiCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/calendar/bahai/BadiCalendar$Unit;",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "bahai"
.end annotation


# static fields
.field public static final AYYAM_I_HA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/bahai/BadiIntercalaryDays;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        dynamic = true
        format = "A"
    .end annotation
.end field

.field private static final CALSYS:Lnet/time4j/engine/CalendarSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_DIVISION:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "d"
        dynamic = true
        format = "D"
    .end annotation
.end field

.field private static final DAY_OF_DIVISION_INDEX:I = 0x3

.field public static final DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Weekday;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        dynamic = true
        format = "E"
    .end annotation
.end field

.field public static final DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_OF_YEAR_INDEX:I = 0x4

.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/bahai/BadiCalendar$Unit;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/bahai/BadiEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        dynamic = true
        format = "G"
    .end annotation
.end field

.field public static final KULL_I_SHAI:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "k"
        dynamic = true
        format = "K"
    .end annotation
.end field

.field private static final KULL_I_SHAI_INDEX:I = 0x0

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/calendar/bahai/BadiMonth;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "m"
        dynamic = true
        format = "M"
    .end annotation
.end field

.field private static final NEWROZ:[I

.field private static final TEHERAN:Lnet/time4j/calendar/astro/SolarTime;

.field public static final TEXT_CONTENT_ATTRIBUTE:Lnet/time4j/engine/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AttributeKey<",
            "Lnet/time4j/calendar/bahai/FormattedContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final VAHID:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "v"
        dynamic = true
        format = "V"
    .end annotation
.end field

.field private static final VAHID_INDEX:I = 0x1

.field private static final YEAR_INDEX:I = 0x2

.field public static final YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "y"
        dynamic = true
        format = "Y"
    .end annotation
.end field

.field public static final YEAR_OF_VAHID:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "x"
        dynamic = true
        format = "X"
    .end annotation
.end field

.field private static final YOE_INDEX:I = 0x5

.field private static final serialVersionUID:J = 0x626b94718cdad623L


# instance fields
.field private final transient cycle:I

.field private final transient day:I

.field private final transient division:I

.field private final transient major:I

.field private final transient year:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 319
    const-class v0, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-class v1, Lnet/time4j/calendar/bahai/FormattedContent;

    const-string v2, "FORMATTED_CONTENT"

    .line 320
    invoke-static {v2, v1}, Lnet/time4j/format/Attributes;->createKey(Ljava/lang/String;Ljava/lang/Class;)Lnet/time4j/engine/AttributeKey;

    move-result-object v1

    sput-object v1, Lnet/time4j/calendar/bahai/BadiCalendar;->TEXT_CONTENT_ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    .line 323
    invoke-static {}, Lnet/time4j/calendar/astro/SolarTime;->ofLocation()Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v1

    const/16 v2, 0x33

    const/16 v3, 0x19

    const-wide/16 v4, 0x0

    .line 324
    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/time4j/calendar/astro/SolarTime$Builder;->easternLongitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v1

    const/16 v2, 0x23

    const/16 v3, 0x2a

    .line 325
    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/time4j/calendar/astro/SolarTime$Builder;->northernLatitude(IID)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/astro/StdSolarCalculator;->TIME4J:Lnet/time4j/calendar/astro/StdSolarCalculator;

    .line 326
    invoke-virtual {v1, v2}, Lnet/time4j/calendar/astro/SolarTime$Builder;->usingCalculator(Lnet/time4j/calendar/astro/SolarTime$Calculator;)Lnet/time4j/calendar/astro/SolarTime$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lnet/time4j/calendar/astro/SolarTime$Builder;->build()Lnet/time4j/calendar/astro/SolarTime;

    move-result-object v1

    sput-object v1, Lnet/time4j/calendar/bahai/BadiCalendar;->TEHERAN:Lnet/time4j/calendar/astro/SolarTime;

    const/16 v1, 0x391

    new-array v1, v1, [I

    .line 336
    fill-array-data v1, :array_0

    sput-object v1, Lnet/time4j/calendar/bahai/BadiCalendar;->NEWROZ:[I

    .line 438
    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$1;

    const-class v2, Lnet/time4j/calendar/bahai/BadiEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/bahai/BadiCalendar$1;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/bahai/BadiCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 466
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-string v6, "YEAR_OF_ERA"

    const/4 v8, 0x1

    const/16 v9, 0x43b

    const/16 v10, 0x59

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v2, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 483
    new-instance v3, Lnet/time4j/calendar/bahai/BadiCalendar$2;

    const-class v13, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-string v12, "KULL_I_SHAI"

    const/4 v14, 0x1

    const/4 v15, 0x3

    const/16 v16, 0x4b

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lnet/time4j/calendar/bahai/BadiCalendar$2;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v3, Lnet/time4j/calendar/bahai/BadiCalendar;->KULL_I_SHAI:Lnet/time4j/engine/ChronoElement;

    .line 498
    new-instance v10, Lnet/time4j/calendar/bahai/BadiCalendar$3;

    const-class v6, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-string v5, "VAHID"

    const/4 v7, 0x1

    const/16 v8, 0x13

    const/16 v9, 0x56

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lnet/time4j/calendar/bahai/BadiCalendar$3;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v10, Lnet/time4j/calendar/bahai/BadiCalendar;->VAHID:Lnet/time4j/calendar/StdCalendarElement;

    .line 519
    sget-object v4, Lnet/time4j/calendar/bahai/BadiCalendar$YOV;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$YOV;

    sput-object v4, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_VAHID:Lnet/time4j/format/TextElement;

    .line 551
    sget-object v5, Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$MonthElement;

    sput-object v5, Lnet/time4j/calendar/bahai/BadiCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 582
    sget-object v6, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;

    sput-object v6, Lnet/time4j/calendar/bahai/BadiCalendar;->AYYAM_I_HA:Lnet/time4j/engine/ChronoElement;

    .line 591
    new-instance v7, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v13, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-string v12, "DAY_OF_DIVISION"

    const/16 v15, 0x13

    const/16 v16, 0x44

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v7, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_DIVISION:Lnet/time4j/calendar/StdCalendarElement;

    .line 601
    new-instance v8, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v19, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-string v18, "DAY_OF_YEAR"

    const/16 v20, 0x1

    const/16 v21, 0x16d

    const/16 v22, 0x0

    move-object/from16 v17, v8

    invoke-direct/range {v17 .. v22}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v8, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 618
    sget-object v9, Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$DowElement;

    sput-object v9, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 624
    new-instance v11, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lnet/time4j/calendar/bahai/BadiCalendar$Transformer;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$1;)V

    sput-object v11, Lnet/time4j/calendar/bahai/BadiCalendar;->CALSYS:Lnet/time4j/engine/CalendarSystem;

    .line 626
    const-class v13, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    new-instance v14, Lnet/time4j/calendar/bahai/BadiCalendar$Merger;

    invoke-direct {v14, v12}, Lnet/time4j/calendar/bahai/BadiCalendar$Merger;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$1;)V

    .line 627
    invoke-static {v13, v0, v14, v11}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v11, Lnet/time4j/calendar/bahai/BadiCalendar$EraRule;

    invoke-direct {v11, v12}, Lnet/time4j/calendar/bahai/BadiCalendar$EraRule;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$1;)V

    .line 632
    invoke-virtual {v0, v1, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;

    const/4 v11, 0x5

    invoke-direct {v1, v11}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;-><init>(I)V

    sget-object v11, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->YEARS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 635
    invoke-virtual {v0, v2, v1, v11}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;-><init>(I)V

    .line 639
    invoke-virtual {v0, v3, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->VAHID_CYCLES:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 642
    invoke-virtual {v0, v10, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->YEARS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 646
    invoke-virtual {v0, v4, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;

    invoke-direct {v1, v12}, Lnet/time4j/calendar/bahai/BadiCalendar$MonthRule;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$1;)V

    sget-object v2, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->MONTHS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 650
    invoke-virtual {v0, v5, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;->SINGLETON:Lnet/time4j/calendar/bahai/BadiCalendar$IntercalaryAccess;

    .line 654
    invoke-virtual {v0, v6, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->DAYS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 657
    invoke-virtual {v0, v7, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lnet/time4j/calendar/bahai/BadiCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->DAYS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 661
    invoke-virtual {v0, v8, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/bahai/BadiCalendar$WeekdayRule;

    invoke-direct {v1, v12}, Lnet/time4j/calendar/bahai/BadiCalendar$WeekdayRule;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$1;)V

    sget-object v2, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->DAYS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 665
    invoke-virtual {v0, v9, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v3

    sget-object v4, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->VAHID_CYCLES:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    new-instance v5, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->VAHID_CYCLES:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-direct {v5, v0}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$Unit;)V

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->VAHID_CYCLES:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 672
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->getLength()D

    move-result-wide v6

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->YEARS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 673
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 669
    invoke-virtual/range {v3 .. v8}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v9

    sget-object v10, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->YEARS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    new-instance v11, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->YEARS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-direct {v11, v0}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$Unit;)V

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->YEARS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 677
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->getLength()D

    move-result-wide v12

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->VAHID_CYCLES:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 678
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    .line 674
    invoke-virtual/range {v9 .. v14}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->MONTHS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    new-instance v2, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;

    sget-object v3, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->MONTHS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-direct {v2, v3}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$Unit;)V

    sget-object v3, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->MONTHS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 682
    invoke-virtual {v3}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->getLength()D

    move-result-wide v3

    .line 679
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;D)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v5

    sget-object v6, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->WEEKS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    new-instance v7, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->WEEKS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-direct {v7, v0}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$Unit;)V

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->WEEKS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 686
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->getLength()D

    move-result-wide v8

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->DAYS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 687
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 683
    invoke-virtual/range {v5 .. v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v11

    sget-object v12, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->DAYS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    new-instance v13, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->DAYS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-direct {v13, v0}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/bahai/BadiCalendar$Unit;)V

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->DAYS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 691
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->getLength()D

    move-result-wide v14

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->WEEKS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    .line 692
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    .line 688
    invoke-virtual/range {v11 .. v16}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void

    nop

    :array_0
    .array-data 4
        0x3da9
        0x3f16
        0x4083
        0x41f1
        0x435e
        0x44cb
        0x4638
        0x47a6
        0x4913
        0x4a80
        0x4bed
        0x4d5b
        0x4ec8
        0x5035
        0x51a2
        0x530f
        0x547d
        0x55ea
        0x5757
        0x58c4
        0x5a32
        0x5b9f
        0x5d0c
        0x5e79
        0x5fe7
        0x6154
        0x62c1
        0x642e
        0x659c
        0x6709
        0x6876
        0x69e3
        0x6b51
        0x6cbe
        0x6e2b
        0x6f98
        0x7106
        0x7273
        0x73e0
        0x754d
        0x76bb
        0x7828
        0x7995
        0x7b02
        0x7c6f
        0x7ddd
        0x7f4a
        0x80b7
        0x8224
        0x8392
        0x84ff
        0x866c
        0x87d9
        0x8947
        0x8ab4
        0x8c21
        0x8d8e
        0x8efc
        0x9069
        0x91d6
        0x9343
        0x94b1
        0x961e
        0x978b
        0x98f8
        0x9a66
        0x9bd3
        0x9d40
        0x9ead
        0xa01b
        0xa188
        0xa2f5
        0xa462
        0xa5d0
        0xa73d    # 5.9994E-41f
        0xa8aa
        0xaa17
        0xab84
        0xacf2
        0xae5f
        0xafcc
        0xb139
        0xb2a7
        0xb414
        0xb581
        0xb6ee
        0xb85c
        0xb9c9
        0xbb36
        0xbca3
        0xbe11
        0xbf7e
        0xc0eb
        0xc258
        0xc3c6
        0xc533
        0xc6a0
        0xc80d
        0xc97b
        0xcae8
        0xcc55
        0xcdc2
        0xcf30
        0xd09d
        0xd20a
        0xd377
        0xd4e5
        0xd652
        0xd7bf
        0xd92c
        0xda99
        0xdc07
        0xdd74
        0xdee1
        0xe04e
        0xe1bc
        0xe329
        0xe496
        0xe603
        0xe771
        0xe8de
        0xea4b
        0xebb8
        0xed26
        0xee93
        0xf000
        0xf16d
        0xf2db
        0xf448
        0xf5b5
        0xf722
        0xf890
        0xf9fd
        0xfb6a
        0xfcd7
        0xfe45
        0xffb2
        0x1011f
        0x1028c
        0x103fa
        0x10567
        0x106d4
        0x10841
        0x109ae
        0x10b1c
        0x10c89
        0x10df6
        0x10f63
        0x110d1
        0x1123e
        0x113ab
        0x11518
        0x11686
        0x117f3
        0x11960
        0x11acd
        0x11c3b
        0x11da8
        0x11f15
        0x12082
        0x121f0
        0x1235d
        0x124ca
        0x12637
        0x127a5
        0x12912
        0x12a7f
        0x12bec
        0x12d5a
        0x12ec7
        0x13034
        0x131a1
        0x1330f
        0x1347c
        0x135e9
        0x13756
        0x138c3
        0x13a31
        0x13b9e
        0x13d0b
        0x13e78
        0x13fe6
        0x14153
        0x142c0
        0x1442d
        0x1459b
        0x14708
        0x14875
        0x149e2
        0x14b50
        0x14cbd
        0x14e2a
        0x14f97
        0x15105
        0x15272
        0x153df
        0x1554c
        0x156ba
        0x15827
        0x15994
        0x15b01
        0x15c6f
        0x15ddc
        0x15f49
        0x160b6
        0x16224
        0x16391
        0x164fe
        0x1666b
        0x167d8
        0x16946
        0x16ab3
        0x16c20
        0x16d8d
        0x16efb
        0x17068
        0x171d5
        0x17342
        0x174b0
        0x1761d
        0x1778a
        0x178f7
        0x17a65
        0x17bd2
        0x17d3f
        0x17eac
        0x1801a
        0x18187
        0x182f4
        0x18461
        0x185cf
        0x1873c
        0x188a9
        0x18a16
        0x18b84
        0x18cf1
        0x18e5e
        0x18fcb
        0x19139
        0x192a6
        0x19413
        0x19580
        0x196ed
        0x1985b
        0x199c8
        0x19b35
        0x19ca2
        0x19e10
        0x19f7d
        0x1a0ea
        0x1a257
        0x1a3c5
        0x1a532
        0x1a69f
        0x1a80c
        0x1a97a
        0x1aae7
        0x1ac54
        0x1adc1
        0x1af2f
        0x1b09c
        0x1b209
        0x1b376
        0x1b4e4
        0x1b651
        0x1b7be
        0x1b92b
        0x1ba99
        0x1bc06
        0x1bd73
        0x1bee0
        0x1c04e
        0x1c1bb
        0x1c328
        0x1c495
        0x1c602
        0x1c770
        0x1c8dd
        0x1ca4a
        0x1cbb7
        0x1cd25
        0x1ce92
        0x1cfff
        0x1d16c
        0x1d2da
        0x1d447
        0x1d5b4
        0x1d721
        0x1d88f
        0x1d9fc
        0x1db69
        0x1dcd6
        0x1de44
        0x1dfb1
        0x1e11e
        0x1e28b
        0x1e3f9
        0x1e566
        0x1e6d3
        0x1e840
        0x1e9ae
        0x1eb1b
        0x1ec88
        0x1edf5
        0x1ef63
        0x1f0d0
        0x1f23d
        0x1f3aa
        0x1f517
        0x1f685
        0x1f7f2
        0x1f95f
        0x1facc
        0x1fc3a
        0x1fda7
        0x1ff14
        0x20081
        0x201ef
        0x2035c
        0x204c9
        0x20636
        0x207a4
        0x20911
        0x20a7e
        0x20beb
        0x20d59
        0x20ec6
        0x21033
        0x211a0    # 1.89994E-40f
        0x2130e
        0x2147b
        0x215e8
        0x21755
        0x218c3
        0x21a30
        0x21b9d
        0x21d0a
        0x21e78
        0x21fe5
        0x22152
        0x222bf
        0x2242c
        0x2259a
        0x22707
        0x22874
        0x229e1
        0x22b4f
        0x22cbc
        0x22e29
        0x22f96
        0x23104
        0x23271
        0x233de
        0x2354b
        0x236b9
        0x23826
        0x23993
        0x23b00
        0x23c6e
        0x23ddb
        0x23f48
        0x240b5
        0x24223
        0x24390
        0x244fd
        0x2466a
        0x247d8
        0x24945
        0x24ab2
        0x24c1f
        0x24d8c
        0x24efa
        0x25067
        0x251d4
        0x25341
        0x254af
        0x2561c
        0x25789
        0x258f6
        0x25a64
        0x25bd1
        0x25d3e
        0x25eab
        0x26019
        0x26186
        0x262f3
        0x26460
        0x265ce
        0x2673b
        0x268a8
        0x26a15
        0x26b83
        0x26cf0
        0x26e5d
        0x26fca
        0x27138
        0x272a5
        0x27412
        0x2757f
        0x276ed
        0x2785a
        0x279c7
        0x27b34
        0x27ca2
        0x27e0f
        0x27f7c
        0x280e9
        0x28256
        0x283c4
        0x28531
        0x2869e
        0x2880b
        0x28979
        0x28ae6
        0x28c53
        0x28dc0
        0x28f2e
        0x2909b
        0x29208
        0x29375
        0x294e3
        0x29650
        0x297bd
        0x2992a
        0x29a98
        0x29c05
        0x29d72
        0x29edf
        0x2a04d
        0x2a1ba
        0x2a327
        0x2a494
        0x2a602
        0x2a76f
        0x2a8dc
        0x2aa49
        0x2abb7
        0x2ad24
        0x2ae91
        0x2affe
        0x2b16b
        0x2b2d9
        0x2b446
        0x2b5b3
        0x2b720
        0x2b88e
        0x2b9fb
        0x2bb68
        0x2bcd5
        0x2be43
        0x2bfb0
        0x2c11d
        0x2c28a
        0x2c3f8
        0x2c565
        0x2c6d2
        0x2c83f
        0x2c9ad
        0x2cb1a
        0x2cc87
        0x2cdf4
        0x2cf62
        0x2d0cf
        0x2d23c
        0x2d3a9
        0x2d517
        0x2d684
        0x2d7f1
        0x2d95e
        0x2dacc
        0x2dc39
        0x2dda6
        0x2df13
        0x2e080
        0x2e1ee
        0x2e35b
        0x2e4c8
        0x2e635
        0x2e7a3
        0x2e910
        0x2ea7d
        0x2ebea
        0x2ed58
        0x2eec5
        0x2f032
        0x2f19f
        0x2f30d
        0x2f47a
        0x2f5e7
        0x2f754
        0x2f8c2
        0x2fa2f
        0x2fb9c
        0x2fd09
        0x2fe77
        0x2ffe4
        0x30151
        0x302be
        0x3042c
        0x30599
        0x30706
        0x30873
        0x309e0
        0x30b4e
        0x30cbb
        0x30e28
        0x30f95
        0x31103
        0x31270
        0x313dd
        0x3154a
        0x316b8
        0x31825
        0x31992
        0x31aff
        0x31c6d
        0x31dda
        0x31f47
        0x320b4
        0x32222
        0x3238f
        0x324fc
        0x32669
        0x327d7
        0x32944
        0x32ab1
        0x32c1e
        0x32d8c
        0x32ef9
        0x33066
        0x331d3
        0x33341
        0x334ae
        0x3361b
        0x33788
        0x338f5
        0x33a63
        0x33bd0
        0x33d3d
        0x33eaa
        0x34018
        0x34185
        0x342f2
        0x3445f    # 3.00033E-40f
        0x345cd
        0x3473a
        0x348a7
        0x34a14
        0x34b82
        0x34cef
        0x34e5c
        0x34fc9
        0x35137
        0x352a4
        0x35411
        0x3557e
        0x356ec
        0x35859
        0x359c6
        0x35b33
        0x35ca1
        0x35e0e
        0x35f7b
        0x360e8
        0x36256
        0x363c3
        0x36530
        0x3669d
        0x3680a
        0x36978
        0x36ae5
        0x36c52
        0x36dbf
        0x36f2d
        0x3709a
        0x37207
        0x37374
        0x374e2
        0x3764f
        0x377bc
        0x37929
        0x37a97
        0x37c04    # 3.19995E-40f
        0x37d71
        0x37ede
        0x3804c
        0x381b9
        0x38326
        0x38493
        0x38601
        0x3876e
        0x388db
        0x38a48
        0x38bb6
        0x38d23
        0x38e90
        0x38ffd
        0x3916b
        0x392d8
        0x39445
        0x395b2
        0x3971f
        0x3988d
        0x399fa
        0x39b67
        0x39cd4
        0x39e42
        0x39faf
        0x3a11c
        0x3a289
        0x3a3f7
        0x3a564
        0x3a6d1
        0x3a83e
        0x3a9ac
        0x3ab19
        0x3ac86
        0x3adf3
        0x3af61
        0x3b0ce
        0x3b23b
        0x3b3a8
        0x3b516
        0x3b683
        0x3b7f0
        0x3b95d
        0x3bacb
        0x3bc38
        0x3bda5
        0x3bf12
        0x3c080
        0x3c1ed
        0x3c35a
        0x3c4c7
        0x3c634
        0x3c7a2
        0x3c90f
        0x3ca7c
        0x3cbe9
        0x3cd57
        0x3cec4
        0x3d031
        0x3d19e
        0x3d30c
        0x3d479
        0x3d5e6
        0x3d753
        0x3d8c1
        0x3da2e
        0x3db9b
        0x3dd08
        0x3de76
        0x3dfe3
        0x3e150
        0x3e2bd
        0x3e42b
        0x3e598
        0x3e705
        0x3e872
        0x3e9e0
        0x3eb4d
        0x3ecba
        0x3ee27
        0x3ef95
        0x3f102
        0x3f26f
        0x3f3dc
        0x3f549
        0x3f6b7
        0x3f824
        0x3f991
        0x3fafe
        0x3fc6c
        0x3fdd9
        0x3ff46
        0x400b3
        0x40221
        0x4038e
        0x404fb
        0x40668
        0x407d6
        0x40943
        0x40ab0
        0x40c1d
        0x40d8b
        0x40ef8
        0x41065
        0x411d2
        0x41340
        0x414ad
        0x4161a
        0x41787
        0x418f5
        0x41a62
        0x41bcf
        0x41d3c
        0x41eaa
        0x42017
        0x42184
        0x422f1
        0x4245e
        0x425cc
        0x42739
        0x428a6
        0x42a13
        0x42b81
        0x42cee
        0x42e5b
        0x42fc8
        0x43136
        0x432a3
        0x43410
        0x4357d
        0x436eb
        0x43858
        0x439c5
        0x43b32
        0x43ca0
        0x43e0d
        0x43f7a
        0x440e7
        0x44255
        0x443c2
        0x4452f
        0x4469c
        0x4480a
        0x44977
        0x44ae4
        0x44c51
        0x44dbf
        0x44f2c
        0x45099
        0x45206
        0x45373
        0x454e1
        0x4564e
        0x457bb
        0x45928
        0x45a96
        0x45c03
        0x45d70
        0x45edd
        0x4604b
        0x461b8
        0x46325
        0x46492
        0x46600
        0x4676d
        0x468da
        0x46a47
        0x46bb5
        0x46d22
        0x46e8f
        0x46ffc
        0x4716a
        0x472d7
        0x47444
        0x475b1
        0x4771f
        0x4788c
        0x479f9
        0x47b66
        0x47cd4
        0x47e41
        0x47fae
        0x4811b
        0x48288
        0x483f6
        0x48563
        0x486d0
        0x4883d
        0x489ab
        0x48b18
        0x48c85
        0x48df2
        0x48f60
        0x490cd
        0x4923a
        0x493a7
        0x49515
        0x49682
        0x497ef
        0x4995c
        0x49aca
        0x49c37
        0x49da4
        0x49f11
        0x4a07f
        0x4a1ec
        0x4a359
        0x4a4c6
        0x4a634
        0x4a7a1
        0x4a90e
        0x4aa7b
        0x4abe9
        0x4ad56
        0x4aec3
        0x4b030
        0x4b19d
        0x4b30b
        0x4b478
        0x4b5e5
        0x4b752
        0x4b8c0
        0x4ba2d
        0x4bb9a
        0x4bd07
        0x4be75
        0x4bfe2
        0x4c14f
        0x4c2bc
        0x4c42a
        0x4c597
        0x4c704
        0x4c871
        0x4c9df
        0x4cb4c
        0x4ccb9
        0x4ce26
        0x4cf94
        0x4d101
        0x4d26e
        0x4d3db
        0x4d549
        0x4d6b6
        0x4d823
        0x4d990
        0x4dafe
        0x4dc6b
        0x4ddd8
        0x4df45
        0x4e0b2
        0x4e220
        0x4e38d
        0x4e4fa
        0x4e667    # 4.49995E-40f
        0x4e7d5
        0x4e942
        0x4eaaf
        0x4ec1c
        0x4ed8a
        0x4eef7
        0x4f064
        0x4f1d1
        0x4f33f
        0x4f4ac
        0x4f619
        0x4f786
        0x4f8f4
        0x4fa61
        0x4fbce
        0x4fd3b
        0x4fea9
        0x50016
        0x50183
        0x502f0
        0x5045e
        0x505cb
        0x50738
        0x508a5
        0x50a13
        0x50b80
        0x50ced
        0x50e5a
        0x50fc7
        0x51135
        0x512a2
        0x5140f
        0x5157c
        0x516ea
        0x51857
        0x519c4
        0x51b31
        0x51c9f
        0x51e0c
        0x51f79
        0x520e6
        0x52254
        0x523c1
        0x5252e
        0x5269b
        0x52809
        0x52976
        0x52ae3
        0x52c50
        0x52dbe
        0x52f2b
        0x53098
        0x53205
        0x53373
        0x534e0
        0x5364d
        0x537ba
        0x53928
        0x53a95
        0x53c02
        0x53d6f
        0x53edc
        0x5404a
        0x541b7
        0x54324
        0x54491
        0x545ff
        0x5476c
        0x548d9
        0x54a46
        0x54bb4
        0x54d21
        0x54e8e
        0x54ffb
        0x55169
        0x552d6
    .end array-data
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    .line 715
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 717
    iput p1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    .line 718
    iput p2, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    .line 719
    iput p3, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    .line 720
    iput p4, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    .line 721
    iput p5, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V
    .locals 0

    .line 266
    invoke-direct/range {p0 .. p5}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIII)V

    return-void
.end method

.method static synthetic access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 0

    .line 266
    iget p0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    return p0
.end method

.method static synthetic access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 0

    .line 266
    iget p0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    return p0
.end method

.method static synthetic access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 0

    .line 266
    iget p0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    return p0
.end method

.method static synthetic access$1300(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 0

    .line 266
    iget p0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    return p0
.end method

.method static synthetic access$1400(Lnet/time4j/engine/AttributeQuery;)Ljava/util/Locale;
    .locals 0

    .line 266
    invoke-static {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getLocale(Lnet/time4j/engine/AttributeQuery;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/FormattedContent;
    .locals 0

    .line 266
    invoke-static {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getFormattedContent(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/FormattedContent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600()Lnet/time4j/Weekmodel;
    .locals 1

    .line 266
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 266
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static synthetic access$1800()Lnet/time4j/calendar/astro/SolarTime;
    .locals 1

    .line 266
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->TEHERAN:Lnet/time4j/calendar/astro/SolarTime;

    return-object v0
.end method

.method static synthetic access$1900()Lnet/time4j/engine/CalendarSystem;
    .locals 1

    .line 266
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->CALSYS:Lnet/time4j/engine/CalendarSystem;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .line 266
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->NEWROZ:[I

    return-object v0
.end method

.method static synthetic access$700(Lnet/time4j/calendar/bahai/BadiCalendar;I)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->withDayOfYear(I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 0

    .line 266
    invoke-direct {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getRelatedGregorianYear()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 0

    .line 266
    iget p0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    return p0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/bahai/BadiCalendar$Unit;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .line 1433
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method private static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 4

    .line 1459
    sget-object v0, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    sget-object v1, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    sget-object v2, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method private static getFormattedContent(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/FormattedContent;
    .locals 2

    .line 1520
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->TEXT_CONTENT_ATTRIBUTE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/calendar/bahai/FormattedContent;->TRANSCRIPTION:Lnet/time4j/calendar/bahai/FormattedContent;

    invoke-interface {p0, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/bahai/FormattedContent;

    return-object p0
.end method

.method private static getLocale(Lnet/time4j/engine/AttributeQuery;)Ljava/util/Locale;
    .locals 2

    .line 1514
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p0, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    return-object p0
.end method

.method private getRelatedGregorianYear()I
    .locals 3

    .line 1465
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    iget v2, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    invoke-static {v0, v1, v2}, Lnet/time4j/calendar/bahai/BadiCalendar;->getRelatedGregorianYear(III)I

    move-result v0

    return v0
.end method

.method private static getRelatedGregorianYear(III)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x169

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x13

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    add-int/lit16 p0, p0, 0x733

    return p0
.end method

.method private static isAccessible(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)Z"
        }
    .end annotation

    .line 1505
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/bahai/BadiCalendar;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lnet/time4j/engine/ChronoException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLeapYear(III)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_4

    const/4 v1, 0x3

    if-gt p0, v1, :cond_4

    if-lt p1, v0, :cond_3

    const/16 v1, 0x13

    if-gt p1, v1, :cond_3

    if-lt p2, v0, :cond_2

    if-gt p2, v1, :cond_2

    .line 1233
    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->getRelatedGregorianYear(III)I

    move-result p0

    const/16 p1, 0x7df

    if-ge p0, p1, :cond_0

    add-int/2addr p0, v0

    .line 1236
    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p0

    return p0

    :cond_0
    sub-int/2addr p0, p1

    .line 1239
    sget-object p1, Lnet/time4j/calendar/bahai/BadiCalendar;->NEWROZ:[I

    add-int/lit8 p2, p0, 0x1

    aget p2, p1, p2

    aget p0, p1, p0

    sub-int/2addr p2, p0

    const/16 p0, 0x16e

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1230
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Year out of range 1-19: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1228
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vahid cycle out of range 1-19: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1226
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Major cycle (kull-i-shai) out of range 1-3: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isValid(IIILnet/time4j/calendar/bahai/BadiDivision;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_6

    const/4 v2, 0x3

    if-le p0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-lt p1, v1, :cond_6

    const/16 v2, 0x13

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, v1, :cond_6

    if-le p2, v2, :cond_2

    goto :goto_1

    .line 1282
    :cond_2
    instance-of v3, p3, Lnet/time4j/calendar/bahai/BadiMonth;

    if-eqz v3, :cond_4

    if-lt p4, v1, :cond_3

    if-gt p4, v2, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 1284
    :cond_4
    sget-object v2, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    if-ne p3, v2, :cond_6

    if-lt p4, v1, :cond_6

    .line 1285
    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    goto :goto_0

    :cond_5
    const/4 p0, 0x4

    :goto_0
    if-gt p4, p0, :cond_6

    move v0, v1

    :cond_6
    :goto_1
    return v0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 2

    .line 954
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/bahai/BadiCalendar;

    return-object v0
.end method

.method public static of(IIII)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 1

    .line 901
    invoke-static {p2}, Lnet/time4j/calendar/bahai/BadiMonth;->valueOf(I)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar;->ofComplete(IIILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static of(IILnet/time4j/calendar/bahai/BadiMonth;I)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 1

    const/4 v0, 0x1

    .line 870
    invoke-static {v0, p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar;->ofComplete(IIILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static ofComplete(IIILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 9

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x3

    if-gt p0, v1, :cond_7

    if-lt p1, v0, :cond_6

    const/16 v1, 0x13

    if-gt p1, v1, :cond_6

    if-lt p2, v0, :cond_5

    if-gt p2, v1, :cond_5

    .line 763
    instance-of v2, p3, Lnet/time4j/calendar/bahai/BadiMonth;

    if-eqz v2, :cond_1

    if-lt p4, v0, :cond_0

    if-gt p4, v1, :cond_0

    .line 767
    new-instance v0, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-class v1, Lnet/time4j/calendar/bahai/BadiMonth;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/calendar/bahai/BadiMonth;

    invoke-virtual {p3}, Lnet/time4j/calendar/bahai/BadiMonth;->getValue()I

    move-result v7

    move-object v3, v0

    move v4, p0

    move v5, p1

    move v6, p2

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIII)V

    return-object v0

    .line 765
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Day out of range 1-19: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 769
    :cond_1
    sget-object v1, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    if-ne p3, v1, :cond_4

    .line 770
    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x5

    goto :goto_0

    :cond_2
    const/4 p3, 0x4

    :goto_0
    if-lt p4, v0, :cond_3

    if-gt p4, p3, :cond_3

    .line 774
    new-instance p3, Lnet/time4j/calendar/bahai/BadiCalendar;

    const/4 v5, 0x0

    move-object v1, p3

    move v2, p0

    move v3, p1

    move v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIII)V

    return-object p3

    .line 772
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Day out of range 1-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "Missing Badi month or Ayyam-i-Ha."

    .line 777
    invoke-static {p3, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 779
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid implementation of Badi division: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 762
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Year of vahid out of range 1-19: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 760
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vahid cycle out of range 1-19: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 758
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Major cycle (kull-i-shai) out of range 1-3: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ofComplete(Lnet/time4j/calendar/bahai/BadiEra;ILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 6

    const-string v0, "Missing Bahai era."

    .line 812
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x1

    if-lt p1, p0, :cond_5

    const/16 v0, 0x43b

    if-gt p1, v0, :cond_5

    .line 817
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/bahai/BadiCalendar;

    sget-object v1, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {v0, v1, p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    .line 818
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getKullishai()I

    move-result v1

    .line 819
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getVahid()I

    move-result v2

    .line 820
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getYearOfVahid()I

    move-result v3

    .line 822
    instance-of p1, p2, Lnet/time4j/calendar/bahai/BadiMonth;

    if-eqz p1, :cond_1

    if-lt p3, p0, :cond_0

    const/16 p0, 0x13

    if-gt p3, p0, :cond_0

    .line 826
    new-instance p0, Lnet/time4j/calendar/bahai/BadiCalendar;

    const-class p1, Lnet/time4j/calendar/bahai/BadiMonth;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/bahai/BadiMonth;

    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiMonth;->getValue()I

    move-result v4

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIII)V

    return-object p0

    .line 824
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Day out of range 1-19: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 828
    :cond_1
    sget-object p1, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    if-ne p2, p1, :cond_4

    .line 829
    invoke-static {v1, v2, v3}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    :goto_0
    if-lt p3, p0, :cond_3

    if-gt p3, p1, :cond_3

    .line 833
    new-instance p0, Lnet/time4j/calendar/bahai/BadiCalendar;

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIII)V

    return-object p0

    .line 831
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day out of range 1-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "Missing Badi month or Ayyam-i-Ha."

    .line 836
    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 838
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid implementation of Badi division: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 814
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Year of era out of range 1-1083: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofIntercalary(III)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 2

    .line 929
    sget-object v0, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    const/4 v1, 0x1

    invoke-static {v1, p0, p1, v0, p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->ofComplete(IIILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;

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

    .line 1546
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private withDayOfYear(I)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 7

    const/16 v0, 0x13

    const/16 v1, 0x156

    if-gt p1, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1485
    div-int/lit8 v1, p1, 0x13

    add-int/lit8 v1, v1, 0x1

    .line 1486
    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    move v6, p1

    move v5, v1

    goto :goto_3

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    add-int/2addr v2, v1

    if-gt p1, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    sub-int/2addr p1, v1

    move v6, p1

    move v5, v0

    goto :goto_3

    .line 1492
    :cond_2
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    sub-int/2addr p1, v3

    goto :goto_1

    .line 1495
    :goto_3
    new-instance p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    iget v2, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    iget v3, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    iget v4, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIII)V

    return-object p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1534
    new-instance v0, Lnet/time4j/calendar/bahai/SPX;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/bahai/SPX;-><init>(Ljava/lang/Object;I)V

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
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .line 1314
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
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .line 1339
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public contains(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 1394
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_0

    .line 1395
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->hasMonth()Z

    move-result p1

    return p1

    .line 1396
    :cond_0
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->AYYAM_I_HA:Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_1

    .line 1397
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result p1

    return p1

    .line 1398
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getRegisteredElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 1403
    :cond_2
    invoke-static {p0, p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isAccessible(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1348
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1349
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    .line 1350
    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    iget v3, p1, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    iget v3, p1, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    iget v3, p1, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    iget v3, p1, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    iget p1, p1, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

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

    .line 265
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/bahai/BadiCalendar$Unit;",
            "Lnet/time4j/calendar/bahai/BadiCalendar;",
            ">;"
        }
    .end annotation

    .line 1440
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getContext()Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfDivision()I
    .locals 1

    .line 1089
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 1107
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->CALSYS:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v0, p0}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 1108
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 2

    .line 1126
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    if-eqz v0, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v1

    .line 1132
    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    add-int/2addr v0, v1

    return v0

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    add-int/lit16 v0, v0, 0x156

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    add-int/2addr v0, v1

    return v0

    .line 1128
    :cond_2
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    add-int/lit16 v0, v0, 0x156

    return v0
.end method

.method public getDivision()Lnet/time4j/calendar/bahai/BadiDivision;
    .locals 1

    .line 1071
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getMonth()Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object v0

    :goto_0
    check-cast v0, Lnet/time4j/calendar/bahai/BadiDivision;

    return-object v0
.end method

.method public getKullishai()I
    .locals 1

    .line 972
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    return v0
.end method

.method public getMonth()Lnet/time4j/calendar/bahai/BadiMonth;
    .locals 3

    .line 1050
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    if-eqz v0, :cond_0

    .line 1055
    invoke-static {v0}, Lnet/time4j/calendar/bahai/BadiMonth;->valueOf(I)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object v0

    return-object v0

    .line 1051
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intercalary days (Ayyam-i-Ha) do not represent any month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVahid()I
    .locals 1

    .line 990
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    return v0
.end method

.method public getYearOfEra()I
    .locals 1

    .line 1026
    invoke-direct {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getRelatedGregorianYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x733

    return v0
.end method

.method public getYearOfVahid()I
    .locals 1

    .line 1008
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    return v0
.end method

.method public hasMonth()Z
    .locals 1

    .line 1181
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1365
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    mul-int/lit16 v0, v0, 0x169

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x200

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isIntercalaryDay()Z
    .locals 1

    .line 1158
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeapYear()Z
    .locals 3

    .line 1197
    iget v0, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    iget v2, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    invoke-static {v0, v1, v2}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result v0

    return v0
.end method

.method public isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)Z"
        }
    .end annotation

    .line 1413
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->AYYAM_I_HA:Lnet/time4j/engine/ChronoElement;

    if-eq p1, v0, :cond_1

    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1417
    :cond_0
    invoke-super {p0, p1, p2}, Lnet/time4j/engine/Calendrical;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Bahai-"

    .line 1373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1376
    iget v2, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->cycle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1378
    iget v2, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->year:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1380
    iget v2, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->division:I

    if-nez v2, :cond_0

    const-string v1, "Ayyam-i-Ha-"

    .line 1381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1383
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1386
    :goto_0
    iget v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
