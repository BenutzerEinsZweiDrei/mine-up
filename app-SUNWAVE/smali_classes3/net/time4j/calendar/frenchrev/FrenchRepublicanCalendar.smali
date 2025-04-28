.class public final Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "FrenchRepublicanCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$WeekdayRule;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$EraRule;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$YearOfEraElement;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;,
        Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "frenchrev"
.end annotation


# static fields
.field private static final CALSYS:Lnet/time4j/engine/CalendarSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_DECADE:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/frenchrev/DayOfDecade;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "c"
        dynamic = true
        format = "C"
    .end annotation
.end field

.field private static final DAY_OF_DECADE_ACCESS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "d"
        dynamic = true
        format = "D"
    .end annotation
.end field

.field private static final DAY_OF_MONTH_INDEX:I = 0x2

.field public static final DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/Weekday;",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
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
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_OF_YEAR_INDEX:I = 0x3

.field private static final DECADE_INDEX:I = 0x1

.field public static final DECADE_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ALGORITHM:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanEra;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        dynamic = true
        format = "G"
    .end annotation
.end field

.field static final MAX_YEAR:I = 0x4b2

.field public static final MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "m"
        dynamic = true
        format = "M"
    .end annotation
.end field

.field public static final SANSCULOTTIDES:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/frenchrev/Sansculottides;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "s"
        dynamic = true
        format = "S"
    .end annotation
.end field

.field private static final SANSCULOTTIDES_ACCESS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;

.field private static final YEAR_INDEX:I = 0x0

.field public static final YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "y"
        dynamic = true
        format = "Y"
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5406f3e82b6e9f1fL


# instance fields
.field private final transient fdoy:I

.field private final transient fyear:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 312
    const-class v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanEra;

    const-string v3, "ERA"

    const/16 v4, 0x47

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    .line 328
    new-instance v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$YearOfEraElement;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$YearOfEraElement;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V

    sput-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 331
    new-instance v4, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;

    invoke-direct {v4}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;-><init>()V

    sput-object v4, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->SANSCULOTTIDES_ACCESS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;

    .line 332
    new-instance v5, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;

    invoke-direct {v5}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;-><init>()V

    sput-object v5, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_DECADE_ACCESS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$DayOfDecadeAccess;

    .line 363
    sput-object v4, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->SANSCULOTTIDES:Lnet/time4j/engine/ChronoElement;

    .line 395
    new-instance v6, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v7, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    const-string v8, "MONTH_OF_YEAR"

    const/16 v9, 0x4d

    invoke-direct {v6, v8, v0, v7, v9}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v6, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 424
    new-instance v7, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v12, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const-string v11, "DECADE_OF_MONTH"

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v7, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DECADE_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 451
    sput-object v5, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_DECADE:Lnet/time4j/engine/ChronoElement;

    .line 476
    new-instance v8, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v20, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const-string v19, "DAY_OF_MONTH"

    const/16 v21, 0x1

    const/16 v22, 0x1e

    const/16 v23, 0x44

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v23}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v8, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 485
    new-instance v15, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v11, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const-string v10, "DAY_OF_YEAR"

    const/4 v12, 0x1

    const/16 v13, 0x16d

    const/4 v14, 0x0

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v15, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 506
    new-instance v9, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 507
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v9, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 511
    sget-object v10, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->EQUINOX:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    sput-object v10, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DEFAULT_ALGORITHM:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    .line 514
    new-instance v10, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;

    invoke-direct {v10, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Transformer;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V

    sput-object v10, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->CALSYS:Lnet/time4j/engine/CalendarSystem;

    .line 516
    const-class v11, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    new-instance v12, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;

    invoke-direct {v12, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V

    .line 517
    invoke-static {v11, v0, v12, v10}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v10, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$EraRule;

    invoke-direct {v10, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$EraRule;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V

    .line 522
    invoke-virtual {v0, v1, v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;-><init>(I)V

    sget-object v10, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->YEARS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 525
    invoke-virtual {v0, v2, v1, v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 529
    invoke-virtual {v0, v4, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;

    invoke-direct {v1, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$MonthRule;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V

    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->MONTHS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 532
    invoke-virtual {v0, v6, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DECADES:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 536
    invoke-virtual {v0, v7, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DAYS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 540
    invoke-virtual {v0, v8, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DAYS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 544
    invoke-virtual {v0, v15, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$WeekdayRule;

    invoke-direct {v1, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$WeekdayRule;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V

    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DAYS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 548
    invoke-virtual {v0, v9, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 552
    invoke-virtual {v0, v5, v5}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->YEARS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    new-instance v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;

    sget-object v3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->YEARS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-direct {v2, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;)V

    sget-object v3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->YEARS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 558
    invoke-virtual {v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->getLength()D

    move-result-wide v3

    .line 555
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;D)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->MONTHS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    new-instance v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;

    sget-object v3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->MONTHS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-direct {v2, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;)V

    sget-object v3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->MONTHS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 562
    invoke-virtual {v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->getLength()D

    move-result-wide v3

    .line 559
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;D)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DECADES:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    new-instance v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;

    sget-object v3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DECADES:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-direct {v2, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;)V

    sget-object v3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DECADES:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 566
    invoke-virtual {v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->getLength()D

    move-result-wide v3

    .line 563
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;D)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v5

    sget-object v6, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->WEEKS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    new-instance v7, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->WEEKS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-direct {v7, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;)V

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->WEEKS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 570
    invoke-virtual {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->getLength()D

    move-result-wide v8

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DAYS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 571
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 567
    invoke-virtual/range {v5 .. v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v11

    sget-object v12, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DAYS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    new-instance v13, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DAYS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-direct {v13, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;)V

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DAYS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 575
    invoke-virtual {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->getLength()D

    move-result-wide v14

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->WEEKS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    .line 576
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    .line 572
    invoke-virtual/range {v11 .. v16}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 594
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 596
    iput p1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    .line 597
    iput p2, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    return-void
.end method

.method static synthetic access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I
    .locals 0

    .line 292
    iget p0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    return p0
.end method

.method static synthetic access$1100()Lnet/time4j/Weekmodel;
    .locals 1

    .line 292
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lnet/time4j/engine/CalendarSystem;
    .locals 1

    .line 292
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->CALSYS:Lnet/time4j/engine/CalendarSystem;

    return-object v0
.end method

.method static synthetic access$700()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 292
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static synthetic access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;
    .locals 1

    .line 292
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DEFAULT_ALGORITHM:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    return-object v0
.end method

.method static synthetic access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I
    .locals 0

    .line 292
    iget p0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    return p0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation

    .line 1260
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method private static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 4

    .line 1294
    sget-object v0, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    sget-object v1, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    sget-object v2, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method private static isAccessible(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)Z"
        }
    .end annotation

    .line 1304
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lnet/time4j/engine/ChronoException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLeapYear(I)Z
    .locals 1

    .line 1024
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DEFAULT_ALGORITHM:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    invoke-virtual {v0, p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->isLeapYear(I)Z

    move-result p0

    return p0
.end method

.method public static isValid(III)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x4b2

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    const/16 p0, 0xc

    if-gt p1, p0, :cond_0

    if-lt p2, v0, :cond_0

    const/16 p0, 0x1e

    if-gt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 2

    .line 716
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    return-object v0
.end method

.method public static of(III)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x4b2

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    const/16 v1, 0xc

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    const/16 v1, 0x1e

    if-gt p2, v1, :cond_0

    .line 660
    new-instance v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    sub-int/2addr p1, v0

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    invoke-direct {v2, p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object v2

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid French republican date: year="

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

.method public static of(ILnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;I)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 0

    .line 627
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(III)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static of(ILnet/time4j/calendar/frenchrev/Sansculottides;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/16 v0, 0x4b2

    if-gt p0, v0, :cond_2

    .line 687
    sget-object v0, Lnet/time4j/calendar/frenchrev/Sansculottides;->LEAP_DAY:Lnet/time4j/calendar/frenchrev/Sansculottides;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Day of Revolution only exists in leap years: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_1
    :goto_0
    new-instance v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/Sansculottides;->getValue()I

    move-result p1

    add-int/lit16 p1, p1, 0x168

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object v0

    .line 686
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Year out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1333
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1321
    new-instance v0, Lnet/time4j/calendar/frenchrev/SPX;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/frenchrev/SPX;-><init>(Ljava/lang/Object;I)V

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
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation

    .line 1110
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
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation

    .line 1135
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

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

    .line 1214
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    if-eq p1, v0, :cond_3

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DECADE_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    if-eq p1, v0, :cond_3

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_DECADE:Lnet/time4j/engine/ChronoElement;

    if-eq p1, v0, :cond_3

    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1221
    :cond_0
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->SANSCULOTTIDES:Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_1

    .line 1222
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result p1

    return p1

    .line 1223
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getRegisteredElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 1228
    :cond_2
    invoke-static {p0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->isAccessible(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    return p1

    .line 1220
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasMonth()Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1168
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1169
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    .line 1170
    iget v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    iget v3, p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    iget p1, p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

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

    .line 291
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
            ">;"
        }
    .end annotation

    .line 1267
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getContext()Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;
    .locals 4

    .line 1079
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DEFAULT_ALGORITHM:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1080
    new-instance p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;

    invoke-direct {p1, p0, v0, v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V

    return-object p1

    .line 1083
    :cond_0
    invoke-virtual {v0, p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v2

    .line 1084
    new-instance v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;

    invoke-virtual {p1, v2, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V

    return-object v0
.end method

.method public getDayOfDecade()Lnet/time4j/calendar/frenchrev/DayOfDecade;
    .locals 3

    .line 860
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/calendar/frenchrev/DayOfDecade;->valueOf(I)Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object v0

    return-object v0

    .line 861
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day of decade does not exist on sansculottides: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDayOfMonth()I
    .locals 3

    .line 831
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    const/16 v1, 0x168

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 836
    rem-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 832
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Complementary days (sansculottides) are not part of any month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 880
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->CALSYS:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v0, p0}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 881
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 897
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    return v0
.end method

.method public getDecade()I
    .locals 3

    .line 802
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    const/16 v1, 0x168

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 807
    rem-int/lit8 v0, v0, 0x1e

    div-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 803
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Complementary days (sansculottides) do not represent any decade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEra()Lnet/time4j/calendar/frenchrev/FrenchRepublicanEra;
    .locals 1

    .line 732
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanEra;->REPUBLICAN:Lnet/time4j/calendar/frenchrev/FrenchRepublicanEra;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;
    .locals 3

    .line 772
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    const/16 v1, 0x168

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 777
    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x1

    .line 778
    invoke-static {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;->valueOf(I)Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object v0

    return-object v0

    .line 773
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Complementary days (sansculottides) do not represent any month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSansculottides()Lnet/time4j/calendar/frenchrev/Sansculottides;
    .locals 3

    .line 919
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 924
    invoke-static {v0}, Lnet/time4j/calendar/frenchrev/Sansculottides;->valueOf(I)Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object v0

    return-object v0

    .line 920
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a sansculottides day: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getYear()I
    .locals 1

    .line 748
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    return v0
.end method

.method public hasMonth()Z
    .locals 2

    .line 990
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    const/16 v1, 0x168

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSansculottides()Z
    .locals 2

    .line 957
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1180
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 1006
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    invoke-static {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->isLeapYear(I)Z

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

    .line 1238
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1240
    :cond_1
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->SANSCULOTTIDES:Lnet/time4j/engine/ChronoElement;

    if-ne p1, v0, :cond_2

    .line 1241
    sget-object p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->SANSCULOTTIDES_ACCESS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;

    const-class v0, Lnet/time4j/calendar/frenchrev/Sansculottides;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/frenchrev/Sansculottides;

    invoke-virtual {p1, p0, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$SansculottidesAccess;->isValid(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/Sansculottides;)Z

    move-result p1

    return p1

    .line 1244
    :cond_2
    invoke-super {p0, p1, p2}, Lnet/time4j/engine/Calendrical;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "French-Republic-"

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    sget-object v1, Lnet/time4j/format/NumberSystem;->ROMAN:Lnet/time4j/format/NumberSystem;

    iget v2, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    invoke-virtual {v1, v2}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1191
    iget v2, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    const/16 v3, 0x168

    if-le v2, v3, :cond_0

    const-string v1, "Sansculottides-"

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    iget v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fdoy:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getMonth()Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;->getValue()I

    move-result v2

    const/16 v3, 0x30

    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    .line 1197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1199
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfMonth()I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 1203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1205
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1207
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEndOfFranciade()Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 3

    .line 1153
    iget v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->fyear:I

    .line 1155
    :goto_0
    invoke-static {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1159
    :cond_0
    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const/16 v2, 0x16e

    invoke-direct {v1, v0, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object v1
.end method
