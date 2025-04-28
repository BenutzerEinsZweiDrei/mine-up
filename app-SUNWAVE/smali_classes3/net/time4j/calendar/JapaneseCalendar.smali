.class public final Lnet/time4j/calendar/JapaneseCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "JapaneseCalendar.java"

# interfaces
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/JapaneseCalendar$SPX;,
        Lnet/time4j/calendar/JapaneseCalendar$Merger;,
        Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;,
        Lnet/time4j/calendar/JapaneseCalendar$YearOfNengoElement;,
        Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;,
        Lnet/time4j/calendar/JapaneseCalendar$NengoRule;,
        Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;,
        Lnet/time4j/calendar/JapaneseCalendar$Transformer;,
        Lnet/time4j/calendar/JapaneseCalendar$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/calendar/JapaneseCalendar$Unit;",
        "Lnet/time4j/calendar/JapaneseCalendar;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "japanese"
.end annotation


# static fields
.field private static final CALSYS:Lnet/time4j/calendar/JapaneseCalendar$Transformer;

.field public static final DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/JapaneseCalendar;",
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
            "Lnet/time4j/calendar/JapaneseCalendar;",
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
            "Lnet/time4j/calendar/JapaneseCalendar;",
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
            "Lnet/time4j/calendar/JapaneseCalendar$Unit;",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final EPOCH_1873:J = -0x8d3eL

.field public static final ERA:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Lnet/time4j/calendar/Nengo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "G"
    .end annotation
.end field

.field private static final KOKI_INDEX:I = 0x5

.field public static final KOKI_YEAR:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEAP_INDICATORS:[B

.field private static final LUNISOLAR_MONTHS:[I

.field public static final MONTH_AS_ORDINAL:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private static final MONTH_AS_ORDINAL_INDEX:I = 0x1

.field public static final MONTH_OF_YEAR:Lnet/time4j/format/TextElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TextElement<",
            "Lnet/time4j/calendar/EastAsianMonth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation
.end field

.field private static final MRD:I = 0x3b9aca00

.field private static final RELATED_GREGORIAN_YEAR_INDEX:I = 0x4

.field private static final START_OF_YEAR:[J

.field public static final WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/OrdinalWeekdayElement<",
            "Lnet/time4j/calendar/JapaneseCalendar;",
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
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "y"
    .end annotation
.end field

.field private static final YEAR_OF_NENGO_INDEX:I = 0x0

.field private static final serialVersionUID:J = -0x221ce31c4634cbaL


# instance fields
.field private final transient dayOfMonth:I

.field private final transient dayOfYear:I

.field private final transient month:Lnet/time4j/calendar/EastAsianMonth;

.field private final transient nengo:Lnet/time4j/calendar/Nengo;

.field private final transient relgregyear:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 265
    const-class v1, Lnet/time4j/calendar/JapaneseCalendar;

    .line 266
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    const-string v2, "calendar"

    const-string v3, "data/tsuchihashi.data"

    invoke-virtual {v0, v2, v1, v3}, Lnet/time4j/base/ResourceLoader;->locate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 267
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lnet/time4j/base/ResourceLoader;->load(Ljava/net/URI;Z)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 271
    :try_start_0
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Lnet/time4j/base/ResourceLoader;->load(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v2

    .line 274
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/32 v5, -0x71530

    const/16 v3, 0x494

    new-array v7, v3, [B

    new-array v8, v3, [I

    new-array v9, v3, [J

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v3, :cond_4

    .line 282
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    .line 283
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v13

    .line 284
    aput-byte v12, v7, v11

    .line 285
    aput v13, v8, v11

    .line 286
    aput-wide v5, v9, v11

    move v14, v4

    move v15, v10

    :goto_1
    if-nez v12, :cond_1

    const/16 v16, 0xc

    goto :goto_2

    :cond_1
    const/16 v16, 0xd

    :goto_2
    move/from16 v3, v16

    if-gt v14, v3, :cond_3

    and-int/lit8 v3, v13, 0x1

    if-ne v3, v4, :cond_2

    const/16 v3, 0x1e

    goto :goto_3

    :cond_2
    const/16 v3, 0x1d

    :goto_3
    add-int/2addr v15, v3

    ushr-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0x494

    goto :goto_1

    :cond_3
    int-to-long v12, v15

    add-long/2addr v5, v12

    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0x494

    goto :goto_0

    .line 295
    :cond_4
    sput-object v7, Lnet/time4j/calendar/JapaneseCalendar;->LEAP_INDICATORS:[B

    .line 296
    sput-object v8, Lnet/time4j/calendar/JapaneseCalendar;->LUNISOLAR_MONTHS:[I

    .line 297
    sput-object v9, Lnet/time4j/calendar/JapaneseCalendar;->START_OF_YEAR:[J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 303
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 306
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 318
    :cond_5
    :goto_4
    sget-object v0, Lnet/time4j/calendar/Nengo$Element;->SINGLETON:Lnet/time4j/calendar/Nengo$Element;

    sput-object v0, Lnet/time4j/calendar/JapaneseCalendar;->ERA:Lnet/time4j/format/TextElement;

    .line 331
    new-instance v2, Lnet/time4j/calendar/JapaneseCalendar$YearOfNengoElement;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lnet/time4j/calendar/JapaneseCalendar$YearOfNengoElement;-><init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V

    sput-object v2, Lnet/time4j/calendar/JapaneseCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    .line 348
    new-instance v5, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v13, Lnet/time4j/calendar/JapaneseCalendar;

    const/16 v14, 0x551

    const v15, 0x3b9acc93

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v12, "KOKI_YEAR"

    move-object v11, v5

    invoke-direct/range {v11 .. v18}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v5, Lnet/time4j/calendar/JapaneseCalendar;->KOKI_YEAR:Lnet/time4j/engine/ChronoElement;

    .line 382
    new-instance v6, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;

    invoke-direct {v6, v3}, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;-><init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V

    sput-object v6, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    .line 484
    new-instance v7, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v13, Lnet/time4j/calendar/JapaneseCalendar;

    const/4 v14, 0x1

    const/16 v15, 0xc

    const-string v12, "MONTH_AS_ORDINAL"

    move-object v11, v7

    invoke-direct/range {v11 .. v18}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v7, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_AS_ORDINAL:Lnet/time4j/calendar/StdCalendarElement;

    .line 495
    new-instance v8, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v21, Lnet/time4j/calendar/JapaneseCalendar;

    const/16 v22, 0x1

    const/16 v23, 0x1f

    const/16 v24, 0x64

    const-string v20, "DAY_OF_MONTH"

    move-object/from16 v19, v8

    invoke-direct/range {v19 .. v24}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v8, Lnet/time4j/calendar/JapaneseCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    .line 505
    new-instance v9, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v13, Lnet/time4j/calendar/JapaneseCalendar;

    const/16 v15, 0x16d

    const/16 v16, 0x44

    const-string v12, "DAY_OF_YEAR"

    move-object v11, v9

    invoke-direct/range {v11 .. v16}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IIC)V

    sput-object v9, Lnet/time4j/calendar/JapaneseCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    .line 527
    new-instance v11, Lnet/time4j/calendar/service/StdWeekdayElement;

    .line 528
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v12

    invoke-direct {v11, v1, v12}, Lnet/time4j/calendar/service/StdWeekdayElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    sput-object v11, Lnet/time4j/calendar/JapaneseCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    .line 530
    new-instance v12, Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-direct {v12, v1, v8, v11}, Lnet/time4j/calendar/WeekdayInMonthElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoElement;)V

    sput-object v12, Lnet/time4j/calendar/JapaneseCalendar;->WIM_ELEMENT:Lnet/time4j/calendar/WeekdayInMonthElement;

    .line 540
    sput-object v12, Lnet/time4j/calendar/JapaneseCalendar;->WEEKDAY_IN_MONTH:Lnet/time4j/calendar/OrdinalWeekdayElement;

    .line 546
    new-instance v13, Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    invoke-direct {v13, v3}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;-><init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V

    sput-object v13, Lnet/time4j/calendar/JapaneseCalendar;->CALSYS:Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    .line 548
    const-class v14, Lnet/time4j/calendar/JapaneseCalendar$Unit;

    new-instance v15, Lnet/time4j/calendar/JapaneseCalendar$Merger;

    invoke-direct {v15, v3}, Lnet/time4j/calendar/JapaneseCalendar$Merger;-><init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V

    .line 549
    invoke-static {v14, v1, v15, v13}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v13, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;

    invoke-direct {v13, v3}, Lnet/time4j/calendar/JapaneseCalendar$NengoRule;-><init>(Lnet/time4j/calendar/JapaneseCalendar$1;)V

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ERAS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 554
    invoke-virtual {v1, v0, v13, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;

    invoke-direct {v1, v10}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;-><init>(I)V

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->YEARS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 558
    invoke-virtual {v0, v2, v1, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;->SINGLETON_JP:Lnet/time4j/calendar/JapaneseCalendar$MonthPrimitiveElement;

    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 562
    invoke-virtual {v0, v6, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;

    invoke-direct {v1, v4}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 566
    invoke-virtual {v0, v7, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 570
    invoke-virtual {v0, v8, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 574
    invoke-virtual {v0, v9, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/WeekdayRule;

    .line 581
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->getDefaultWeekmodel()Lnet/time4j/Weekmodel;

    move-result-object v2

    new-instance v3, Lnet/time4j/calendar/JapaneseCalendar$1;

    invoke-direct {v3}, Lnet/time4j/calendar/JapaneseCalendar$1;-><init>()V

    invoke-direct {v1, v2, v3}, Lnet/time4j/calendar/WeekdayRule;-><init>(Lnet/time4j/Weekmodel;Lnet/time4j/engine/ChronoFunction;)V

    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 578
    invoke-virtual {v0, v11, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 592
    invoke-static {v12}, Lnet/time4j/calendar/WeekdayInMonthElement;->getRule(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ElementRule;

    move-result-object v1

    .line 590
    invoke-virtual {v0, v12, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$Unit;->YEARS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 593
    invoke-virtual {v0, v5, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    new-instance v2, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;-><init>(I)V

    .line 597
    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ERAS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    new-instance v2, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ERAS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-direct {v2, v3}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;-><init>(Lnet/time4j/calendar/JapaneseCalendar$Unit;)V

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->ERAS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 603
    invoke-virtual {v3}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->getLength()D

    move-result-wide v3

    .line 600
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;D)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar$Unit;->YEARS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    new-instance v2, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->YEARS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-direct {v2, v3}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;-><init>(Lnet/time4j/calendar/JapaneseCalendar$Unit;)V

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->YEARS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 607
    invoke-virtual {v3}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->getLength()D

    move-result-wide v3

    .line 604
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;D)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    new-instance v2, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-direct {v2, v3}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;-><init>(Lnet/time4j/calendar/JapaneseCalendar$Unit;)V

    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar$Unit;->MONTHS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 611
    invoke-virtual {v3}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->getLength()D

    move-result-wide v3

    .line 608
    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;D)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v5

    sget-object v6, Lnet/time4j/calendar/JapaneseCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    new-instance v7, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;

    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-direct {v7, v0}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;-><init>(Lnet/time4j/calendar/JapaneseCalendar$Unit;)V

    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 615
    invoke-virtual {v0}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->getLength()D

    move-result-wide v8

    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 616
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    .line 612
    invoke-virtual/range {v5 .. v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v11

    sget-object v12, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    new-instance v13, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;

    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    invoke-direct {v13, v0}, Lnet/time4j/calendar/JapaneseCalendar$JapaneseUnitRule;-><init>(Lnet/time4j/calendar/JapaneseCalendar$Unit;)V

    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$Unit;->DAYS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 620
    invoke-virtual {v0}, Lnet/time4j/calendar/JapaneseCalendar$Unit;->getLength()D

    move-result-wide v14

    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar$Unit;->WEEKS:Lnet/time4j/calendar/JapaneseCalendar$Unit;

    .line 621
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    .line 617
    invoke-virtual/range {v11 .. v16}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/JapaneseCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 299
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    if-eqz v2, :cond_6

    .line 303
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 306
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 307
    :cond_6
    :goto_6
    throw v1
.end method

.method private constructor <init>(Lnet/time4j/calendar/Nengo;II)V
    .locals 6

    .line 647
    invoke-static {p2, p3}, Lnet/time4j/calendar/JapaneseCalendar;->getMonth(II)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v4

    invoke-static {p2, p3}, Lnet/time4j/calendar/JapaneseCalendar;->getDayOfMonth(II)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/EastAsianMonth;I)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/EastAsianMonth;I)V
    .locals 0

    .line 658
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 660
    iput-object p1, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    .line 661
    iput p2, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    .line 662
    iput p3, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    .line 663
    iput-object p4, p0, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    .line 664
    iput p5, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfMonth:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/calendar/JapaneseCalendar$1;)V
    .locals 0

    .line 244
    invoke-direct/range {p0 .. p5}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/EastAsianMonth;I)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/JapaneseCalendar$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;II)V

    return-void
.end method

.method static synthetic access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I
    .locals 0

    .line 244
    iget p0, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    return p0
.end method

.method static synthetic access$1200(Lnet/time4j/calendar/JapaneseCalendar;)I
    .locals 0

    .line 244
    iget p0, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    return p0
.end method

.method static synthetic access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;
    .locals 0

    .line 244
    iget-object p0, p0, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    return-object p0
.end method

.method static synthetic access$1400()[B
    .locals 1

    .line 244
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->LEAP_INDICATORS:[B

    return-object v0
.end method

.method static synthetic access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I
    .locals 0

    .line 244
    iget p0, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfMonth:I

    return p0
.end method

.method static synthetic access$1600(ILnet/time4j/calendar/EastAsianMonth;)I
    .locals 0

    .line 244
    invoke-static {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->getLengthOfMonth(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lnet/time4j/calendar/JapaneseCalendar;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 0

    .line 244
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar;->create(Lnet/time4j/calendar/JapaneseCalendar;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(ILnet/time4j/calendar/EastAsianMonth;)I
    .locals 0

    .line 244
    invoke-static {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->getMonthIndex(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;
    .locals 0

    .line 244
    iget-object p0, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    return-object p0
.end method

.method static synthetic access$2000(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 0

    .line 244
    invoke-direct {p0}, Lnet/time4j/calendar/JapaneseCalendar;->tryWithNorthernCourt()Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(I)I
    .locals 0

    .line 244
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->getLengthOfYear(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 244
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static synthetic access$2300(II)Lnet/time4j/calendar/EastAsianMonth;
    .locals 0

    .line 244
    invoke-static {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->getMonth(II)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(II)I
    .locals 0

    .line 244
    invoke-static {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->getDayOfMonth(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$300()Lnet/time4j/calendar/JapaneseCalendar$Transformer;
    .locals 1

    .line 244
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->CALSYS:Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    return-object v0
.end method

.method static synthetic access$600(ZIJ)Lnet/time4j/calendar/Nengo;
    .locals 0

    .line 244
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar;->findBestNengo(ZIJ)Lnet/time4j/calendar/Nengo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(J)I
    .locals 0

    .line 244
    invoke-static {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->getArrayIndex(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$900()[J
    .locals 1

    .line 244
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->START_OF_YEAR:[J

    return-object v0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/JapaneseCalendar$Unit;",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ">;"
        }
    .end annotation

    .line 1296
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method private static create(Lnet/time4j/calendar/JapaneseCalendar;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 2

    .line 1549
    invoke-static {p1}, Lnet/time4j/calendar/Nengo;->ofRelatedGregorianYear(I)Lnet/time4j/calendar/Nengo;

    move-result-object v0

    .line 1554
    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 1552
    invoke-static {v0, p1, p2, p3, v1}, Lnet/time4j/calendar/JapaneseCalendar;->of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/format/Leniency;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    .line 1559
    iget-object p0, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    sget-object p2, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-virtual {p0, p2}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1560
    invoke-direct {p1}, Lnet/time4j/calendar/JapaneseCalendar;->tryWithNorthernCourt()Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static findBestNengo(ZIJ)Lnet/time4j/calendar/Nengo;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x534

    if-lt p1, p0, :cond_0

    const/16 p0, 0x572

    if-ge p1, p0, :cond_0

    .line 1364
    sget-object p0, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-static {p1, p0}, Lnet/time4j/calendar/Nengo;->ofRelatedGregorianYear(ILnet/time4j/calendar/Nengo$Selector;)Lnet/time4j/calendar/Nengo;

    move-result-object p0

    goto :goto_0

    .line 1366
    :cond_0
    sget-object p0, Lnet/time4j/calendar/Nengo$Selector;->OFFICIAL:Lnet/time4j/calendar/Nengo$Selector;

    invoke-static {p1, p0}, Lnet/time4j/calendar/Nengo;->ofRelatedGregorianYear(ILnet/time4j/calendar/Nengo$Selector;)Lnet/time4j/calendar/Nengo;

    move-result-object p0

    .line 1369
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->getStartAsDaysSinceEpochUTC()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-lez p1, :cond_1

    .line 1370
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->findPrevious()Lnet/time4j/calendar/Nengo;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object p0, p1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static getArrayIndex(J)I
    .locals 6

    .line 1513
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->START_OF_YEAR:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 1517
    sget-object v3, Lnet/time4j/calendar/JapaneseCalendar;->START_OF_YEAR:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, p0

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private static getDayOfMonth(II)I
    .locals 4

    .line 1491
    invoke-static {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->getMonth(II)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x751

    if-lt p0, v2, :cond_0

    .line 1494
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1495
    invoke-static {p0, v1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v2

    sub-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1498
    :cond_0
    invoke-static {p0, v0}, Lnet/time4j/calendar/JapaneseCalendar;->getMonthIndex(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v0

    .line 1499
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar;->LUNISOLAR_MONTHS:[I

    add-int/lit16 p0, p0, -0x2bd

    aget p0, v2, p0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    and-int/lit8 v3, p0, 0x1

    if-ne v3, v1, :cond_1

    const/16 v3, 0x1e

    goto :goto_2

    :cond_1
    const/16 v3, 0x1d

    :goto_2
    sub-int/2addr p1, v3

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return p1
.end method

.method public static getDefaultWeekmodel()Lnet/time4j/Weekmodel;
    .locals 1

    .line 1280
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object v0

    return-object v0
.end method

.method private static getLengthOfMonth(ILnet/time4j/calendar/EastAsianMonth;)I
    .locals 2

    const/16 v0, 0x751

    if-lt p0, v0, :cond_0

    .line 1428
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p1

    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x750

    if-ne p0, v0, :cond_1

    .line 1429
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const/4 p0, 0x2

    return p0

    .line 1432
    :cond_1
    invoke-static {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->getMonthIndex(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result p1

    .line 1433
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->LUNISOLAR_MONTHS:[I

    add-int/lit16 p0, p0, -0x2bd

    aget p0, v0, p0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-gt v1, p1, :cond_4

    if-ne v1, p1, :cond_3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_2

    const/16 p0, 0x1e

    goto :goto_1

    :cond_2
    const/16 p0, 0x1d

    :goto_1
    return p0

    :cond_3
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1440
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static getLengthOfYear(I)I
    .locals 5

    const/16 v0, 0x751

    if-lt p0, v0, :cond_1

    .line 1448
    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16e

    goto :goto_0

    :cond_0
    const/16 p0, 0x16d

    :goto_0
    return p0

    :cond_1
    const/16 v0, 0x750

    if-ne p0, v0, :cond_2

    const-wide/32 v0, -0x8d3e

    .line 1450
    sget-object p0, Lnet/time4j/calendar/JapaneseCalendar;->START_OF_YEAR:[J

    const/16 v2, 0x493

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_2
    add-int/lit16 p0, p0, -0x2bd

    .line 1453
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->LUNISOLAR_MONTHS:[I

    aget v0, v0, p0

    const/4 v1, 0x0

    .line 1455
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar;->LEAP_INDICATORS:[B

    aget-byte p0, v2, p0

    if-nez p0, :cond_3

    const/16 p0, 0xc

    goto :goto_1

    :cond_3
    const/16 p0, 0xd

    :goto_1
    const/4 v2, 0x1

    move v3, v2

    :goto_2
    if-gt v3, p0, :cond_5

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v2, :cond_4

    const/16 v4, 0x1e

    goto :goto_3

    :cond_4
    const/16 v4, 0x1d

    :goto_3
    add-int/2addr v1, v4

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method private static getMonth(II)Lnet/time4j/calendar/EastAsianMonth;
    .locals 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v1, 0x751

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-lt p0, v1, :cond_1

    :goto_0
    if-gt v0, v2, :cond_7

    .line 1392
    invoke-static {p0, v0}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v1

    add-int/2addr v3, v1

    if-lt v3, p1, :cond_0

    .line 1394
    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1398
    :cond_1
    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar;->LEAP_INDICATORS:[B

    add-int/lit16 p0, p0, -0x2bd

    aget-byte v1, v1, p0

    .line 1399
    sget-object v4, Lnet/time4j/calendar/JapaneseCalendar;->LUNISOLAR_MONTHS:[I

    aget p0, v4, p0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0xd

    :goto_1
    move v4, v0

    :goto_2
    if-gt v4, v2, :cond_7

    and-int/lit8 v5, p0, 0x1

    if-ne v5, v0, :cond_3

    const/16 v5, 0x1e

    goto :goto_3

    :cond_3
    const/16 v5, 0x1d

    :goto_3
    add-int/2addr v3, v5

    ushr-int/lit8 p0, p0, 0x1

    if-lt v3, p1, :cond_6

    if-lez v1, :cond_4

    if-gt v1, v4, :cond_4

    add-int/lit8 p0, v4, -0x1

    goto :goto_4

    :cond_4
    move p0, v4

    .line 1408
    :goto_4
    invoke-static {p0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p0

    if-ne v4, v1, :cond_5

    .line 1410
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p0

    :cond_5
    return-object p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1418
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Day of year out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMonthIndex(ILnet/time4j/calendar/EastAsianMonth;)I
    .locals 2

    .line 1469
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v0

    const/16 v1, 0x751

    if-lt p0, v1, :cond_0

    return v0

    .line 1475
    :cond_0
    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar;->LEAP_INDICATORS:[B

    add-int/lit16 p0, p0, -0x2bd

    aget-byte p0, v1, p0

    .line 1477
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p0, :cond_1

    if-lt v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/JapaneseCalendar;
    .locals 2

    .line 936
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/JapaneseCalendar;

    return-object v0
.end method

.method public static of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 1

    .line 743
    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-static {p0, p1, p2, p3, v0}, Lnet/time4j/calendar/JapaneseCalendar;->of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/format/Leniency;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/format/Leniency;)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 8

    const/4 v0, 0x1

    if-lt p1, v0, :cond_12

    if-lt p3, v0, :cond_11

    .line 846
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v4, v1, -0x1

    .line 847
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->findNext()Lnet/time4j/calendar/Nengo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 849
    invoke-virtual {v1}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v1

    if-lt v1, v4, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Year of nengo out of range: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/16 v1, 0x751

    const-string v2, "Day of month out of range: "

    if-lt v4, v1, :cond_5

    .line 856
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    if-nez v1, :cond_4

    .line 858
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-static {v4, v1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v1

    if-gt p3, v1, :cond_3

    .line 861
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 862
    invoke-static {v4, v2}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v3

    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr p1, p3

    goto/16 :goto_6

    .line 859
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 857
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Lunisolar leap month not valid in modern times: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 866
    :cond_5
    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar;->LUNISOLAR_MONTHS:[I

    add-int/lit16 v3, v4, -0x2bd

    aget v1, v1, v3

    .line 867
    invoke-static {v4, p2}, Lnet/time4j/calendar/JapaneseCalendar;->getMonthIndex(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v5

    .line 868
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lnet/time4j/calendar/JapaneseCalendar;->LEAP_INDICATORS:[B

    aget-byte v3, v6, v3

    if-ne v5, v3, :cond_6

    goto :goto_2

    .line 869
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid leap month: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    move v3, v0

    :goto_3
    if-gt v3, v5, :cond_b

    and-int/lit8 v6, v1, 0x1

    if-ne v6, v0, :cond_8

    const/16 v6, 0x1e

    goto :goto_4

    :cond_8
    const/16 v6, 0x1d

    :goto_4
    if-ne v3, v5, :cond_a

    if-gt p3, v6, :cond_9

    add-int/2addr p1, p3

    goto :goto_5

    .line 875
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    add-int/2addr p1, v6

    ushr-int/lit8 v1, v1, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    :goto_6
    move v5, p1

    const/16 p1, 0x750

    const/4 v1, 0x2

    if-ne v4, p1, :cond_d

    .line 886
    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result p1

    const/16 v2, 0xc

    if-ne p1, v2, :cond_d

    const/4 p1, 0x3

    if-lt p3, p1, :cond_d

    .line 887
    invoke-virtual {p4}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result p0

    if-nez p0, :cond_c

    add-int/lit8 v7, p3, -0x2

    .line 891
    new-instance p0, Lnet/time4j/calendar/JapaneseCalendar;

    sget-object v3, Lnet/time4j/calendar/Nengo;->MEIJI:Lnet/time4j/calendar/Nengo;

    const/16 v4, 0x751

    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v6

    move-object v2, p0

    move v5, v7

    invoke-direct/range {v2 .. v7}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/EastAsianMonth;I)V

    return-object p0

    .line 888
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Last month of lunisolar calendar had only 2 days."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 895
    :cond_d
    invoke-static {v4, v5}, Lnet/time4j/calendar/JapaneseCalendar;->transform(II)J

    move-result-wide v2

    .line 896
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->CALSYS:Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    invoke-virtual {p1, v2, v3}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->check(J)V

    .line 897
    sget-object p1, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result p1

    invoke-static {p1, v4, v2, v3}, Lnet/time4j/calendar/JapaneseCalendar;->findBestNengo(ZIJ)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    .line 899
    sget-object v2, Lnet/time4j/calendar/JapaneseCalendar$2;->$SwitchMap$net$time4j$format$Leniency:[I

    invoke-virtual {p4}, Lnet/time4j/format/Leniency;->ordinal()I

    move-result p4

    aget p4, v2, p4

    if-eq p4, v0, :cond_f

    if-eq p4, v1, :cond_e

    goto :goto_7

    :cond_e
    move-object v3, p1

    goto :goto_8

    :cond_f
    if-ne p1, p0, :cond_10

    :goto_7
    move-object v3, p0

    .line 912
    :goto_8
    new-instance p0, Lnet/time4j/calendar/JapaneseCalendar;

    move-object v2, p0

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/EastAsianMonth;I)V

    return-object p0

    .line 902
    :cond_10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Nengo should be: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 843
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Day of month smaller than 1: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 841
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Year of nengo smaller than 1: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofGregorian(Lnet/time4j/calendar/Nengo;III)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 1

    .line 706
    invoke-virtual {p0}, Lnet/time4j/calendar/Nengo;->isModern()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/time4j/calendar/Nengo;->MEIJI:Lnet/time4j/calendar/Nengo;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    .line 710
    :cond_0
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-static {p0, p1, p2, p3, v0}, Lnet/time4j/calendar/JapaneseCalendar;->of(Lnet/time4j/calendar/Nengo;ILnet/time4j/calendar/EastAsianMonth;ILnet/time4j/format/Leniency;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p0

    return-object p0

    .line 707
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create modern calendar with lunisolar calendar year."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1589
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static transform(II)J
    .locals 3

    const/16 v0, 0x751

    if-lt p0, v0, :cond_0

    .line 1535
    invoke-static {p0, p1}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide p0

    return-wide p0

    .line 1537
    :cond_0
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->START_OF_YEAR:[J

    add-int/lit16 p0, p0, -0x2bd

    aget-wide v1, v0, p0

    int-to-long p0, p1

    add-long/2addr v1, p0

    const-wide/16 p0, 0x1

    sub-long/2addr v1, p0

    return-wide v1
.end method

.method private tryWithNorthernCourt()Lnet/time4j/calendar/JapaneseCalendar;
    .locals 7

    .line 1341
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    const/16 v1, 0x534

    if-lt v0, v1, :cond_1

    const/16 v1, 0x572

    if-ge v0, v1, :cond_1

    .line 1342
    sget-object v1, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-static {v0, v1}, Lnet/time4j/calendar/Nengo;->ofRelatedGregorianYear(ILnet/time4j/calendar/Nengo$Selector;)Lnet/time4j/calendar/Nengo;

    move-result-object v0

    move-object v2, v0

    .line 1344
    :goto_0
    invoke-virtual {v2}, Lnet/time4j/calendar/Nengo;->getStartAsDaysSinceEpochUTC()J

    move-result-wide v0

    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 1345
    invoke-virtual {v2}, Lnet/time4j/calendar/Nengo;->findPrevious()Lnet/time4j/calendar/Nengo;

    move-result-object v2

    goto :goto_0

    .line 1348
    :cond_0
    new-instance v0, Lnet/time4j/calendar/JapaneseCalendar;

    iget v3, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    iget v4, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    iget-object v5, p0, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    iget v6, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfMonth:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/EastAsianMonth;I)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1577
    new-instance v0, Lnet/time4j/calendar/JapaneseCalendar$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/JapaneseCalendar$SPX;-><init>(Ljava/lang/Object;)V

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
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ">;"
        }
    .end annotation

    .line 1133
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
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ">;"
        }
    .end annotation

    .line 1158
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method protected compareByTime(Lnet/time4j/engine/CalendarDate;)I
    .locals 4

    .line 1319
    instance-of v0, p1, Lnet/time4j/calendar/JapaneseCalendar;

    if-eqz v0, :cond_0

    .line 1320
    const-class v0, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    goto :goto_0

    .line 1322
    :cond_0
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->CALSYS:Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    invoke-interface {p1}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->transform(J)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    .line 1325
    :goto_0
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    iget v1, p1, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    if-le v0, v1, :cond_2

    return v3

    .line 1329
    :cond_2
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    iget p1, p1, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    if-ge v0, p1, :cond_3

    return v2

    :cond_3
    if-le v0, p1, :cond_4

    return v3

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 243
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->compareTo(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/calendar/JapaneseCalendar;)I
    .locals 2

    .line 1194
    invoke-super {p0, p1}, Lnet/time4j/engine/Calendrical;->compareTo(Lnet/time4j/engine/Calendrical;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1197
    iget-object v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getValue()I

    move-result v0

    iget-object v1, p1, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    invoke-virtual {v1}, Lnet/time4j/calendar/Nengo;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1199
    iget-object v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    sget-object v1, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result v0

    .line 1200
    iget-object p1, p1, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    sget-object v1, Lnet/time4j/calendar/Nengo$Selector;->NORTHERN_COURT:Lnet/time4j/calendar/Nengo$Selector;

    invoke-virtual {p1, v1}, Lnet/time4j/calendar/Nengo;->matches(Lnet/time4j/calendar/Nengo$Selector;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Lnet/time4j/engine/Calendrical;)I
    .locals 0

    .line 243
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->compareTo(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Lnet/time4j/engine/TimePoint;)I
    .locals 0

    .line 243
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->compareTo(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1214
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/JapaneseCalendar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1215
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    .line 1216
    iget v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    iget v3, p1, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    iget v3, p1, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    iget-object v3, p1, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfMonth:I

    iget v3, p1, Lnet/time4j/calendar/JapaneseCalendar;->dayOfMonth:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    iget-object p1, p1, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    .line 1221
    invoke-virtual {v1, p1}, Lnet/time4j/calendar/EastAsianMonth;->equals(Ljava/lang/Object;)Z

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

.method protected bridge synthetic getChronology()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/JapaneseCalendar$Unit;",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ">;"
        }
    .end annotation

    .line 1303
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/JapaneseCalendar;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar;->getContext()Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1008
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfMonth:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 1030
    sget-object v0, Lnet/time4j/calendar/JapaneseCalendar;->CALSYS:Lnet/time4j/calendar/JapaneseCalendar$Transformer;

    invoke-virtual {v0, p0}, Lnet/time4j/calendar/JapaneseCalendar$Transformer;->transform(Lnet/time4j/calendar/JapaneseCalendar;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    .line 1031
    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 1049
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    return v0
.end method

.method public getEra()Lnet/time4j/calendar/Nengo;
    .locals 1

    .line 954
    iget-object v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    return-object v0
.end method

.method public getMonth()Lnet/time4j/calendar/EastAsianMonth;
    .locals 1

    .line 990
    iget-object v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 972
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    iget-object v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    invoke-virtual {v1}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1232
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->dayOfYear:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear()Z
    .locals 2

    .line 1103
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    const/16 v1, 0x751

    if-lt v0, v1, :cond_0

    .line 1104
    invoke-static {v0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v0

    return v0

    .line 1106
    :cond_0
    sget-object v1, Lnet/time4j/calendar/JapaneseCalendar;->LEAP_INDICATORS:[B

    add-int/lit16 v0, v0, -0x2bd

    aget-byte v0, v1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthOfMonth()I
    .locals 2

    .line 1065
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    iget-object v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    invoke-static {v0, v1}, Lnet/time4j/calendar/JapaneseCalendar;->getLengthOfMonth(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 1081
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    invoke-static {v0}, Lnet/time4j/calendar/JapaneseCalendar;->getLengthOfYear(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1240
    iget-object v1, p0, Lnet/time4j/calendar/JapaneseCalendar;->nengo:Lnet/time4j/calendar/Nengo;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lnet/time4j/calendar/Nengo;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 1241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar;->getYear()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    .line 1243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1244
    iget v2, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")-"

    .line 1245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    iget-object v2, p0, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2a

    .line 1247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    :cond_0
    iget-object v2, p0, Lnet/time4j/calendar/JapaneseCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v2

    .line 1250
    iget v3, p0, Lnet/time4j/calendar/JapaneseCalendar;->relgregyear:I

    const/16 v4, 0x751

    const/16 v5, 0x30

    const/16 v6, 0xa

    if-lt v3, v4, :cond_1

    if-ge v2, v6, :cond_1

    .line 1251
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1253
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar;->getDayOfMonth()I

    move-result v1

    if-ge v1, v6, :cond_2

    .line 1257
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1259
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
