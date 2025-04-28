.class public final Lnet/time4j/PlainDate;
.super Lnet/time4j/engine/Calendrical;
.source "PlainDate.java"

# interfaces
.implements Lnet/time4j/base/GregorianDate;
.implements Lnet/time4j/engine/Normalizer;
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/PlainDate$EnumElementRule;,
        Lnet/time4j/PlainDate$IntegerElementRule;,
        Lnet/time4j/PlainDate$DateElementRule;,
        Lnet/time4j/PlainDate$Transformer;,
        Lnet/time4j/PlainDate$Merger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/Calendrical<",
        "Lnet/time4j/IsoDateUnit;",
        "Lnet/time4j/PlainDate;",
        ">;",
        "Lnet/time4j/base/GregorianDate;",
        "Lnet/time4j/engine/Normalizer<",
        "Lnet/time4j/CalendarUnit;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "iso8601"
.end annotation


# static fields
.field static final CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPONENT:Lnet/time4j/CalendarDateElement;

.field private static final DAY_OF_LEAP_YEAR_PER_MONTH:[I

.field public static final DAY_OF_MONTH:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "d"
    .end annotation
.end field

.field public static final DAY_OF_QUARTER:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAY_OF_WEEK:Lnet/time4j/NavigableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/NavigableElement<",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "E"
    .end annotation
.end field

.field public static final DAY_OF_YEAR:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "D"
    .end annotation
.end field

.field private static final DAY_OF_YEAR_PER_MONTH:[I

.field private static final ELEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/IsoDateUnit;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEAP_YEAR_LEN:Ljava/lang/Integer;

.field static final MAX:Lnet/time4j/PlainDate;

.field static final MAX_YEAR:Ljava/lang/Integer;

.field static final MIN:Lnet/time4j/PlainDate;

.field static final MIN_YEAR:Ljava/lang/Integer;

.field public static final MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "M"
    .end annotation
.end field

.field public static final MONTH_OF_YEAR:Lnet/time4j/NavigableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/NavigableElement<",
            "Lnet/time4j/Month;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation
.end field

.field public static final QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/NavigableElement<",
            "Lnet/time4j/Quarter;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "q"
        format = "Q"
    .end annotation
.end field

.field private static final STD_YEAR_LEN:Ljava/lang/Integer;

.field private static final TRANSFORMER:Lnet/time4j/engine/CalendarSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_1:Ljava/lang/Integer;

.field private static final VALUE_12:Ljava/lang/Integer;

.field public static final WEEKDAY_IN_MONTH:Lnet/time4j/OrdinalWeekdayElement;
    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "F"
    .end annotation
.end field

.field private static final WIM_INDEX:I = 0x13

.field public static final YEAR:Lnet/time4j/AdjustableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "u"
    .end annotation
.end field

.field public static final YEAR_OF_WEEKDATE:Lnet/time4j/AdjustableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "Y"
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x5cf59bea75133238L


# instance fields
.field private final transient dayOfMonth:B

.field private final transient month:B

.field private final transient year:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 172
    const-class v0, Lnet/time4j/PlainDate;

    new-instance v1, Lnet/time4j/PlainDate;

    const v2, -0x3b9ac9ff

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/time4j/PlainDate;-><init>(III)V

    sput-object v1, Lnet/time4j/PlainDate;->MIN:Lnet/time4j/PlainDate;

    .line 176
    new-instance v1, Lnet/time4j/PlainDate;

    const v4, 0x3b9ac9ff

    const/16 v5, 0xc

    const/16 v6, 0x1f

    invoke-direct {v1, v4, v5, v6}, Lnet/time4j/PlainDate;-><init>(III)V

    sput-object v1, Lnet/time4j/PlainDate;->MAX:Lnet/time4j/PlainDate;

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lnet/time4j/PlainDate;->MIN_YEAR:Ljava/lang/Integer;

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lnet/time4j/PlainDate;->MAX_YEAR:Ljava/lang/Integer;

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lnet/time4j/PlainDate;->VALUE_1:Ljava/lang/Integer;

    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lnet/time4j/PlainDate;->VALUE_12:Ljava/lang/Integer;

    const/16 v1, 0x16d

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lnet/time4j/PlainDate;->STD_YEAR_LEN:Ljava/lang/Integer;

    const/16 v7, 0x16e

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sput-object v8, Lnet/time4j/PlainDate;->LEAP_YEAR_LEN:Ljava/lang/Integer;

    new-array v8, v5, [I

    .line 191
    sput-object v8, Lnet/time4j/PlainDate;->DAY_OF_YEAR_PER_MONTH:[I

    new-array v9, v5, [I

    .line 192
    sput-object v9, Lnet/time4j/PlainDate;->DAY_OF_LEAP_YEAR_PER_MONTH:[I

    const/4 v10, 0x0

    aput v6, v8, v10

    const/16 v11, 0x3b

    aput v11, v8, v3

    const/16 v11, 0x5a

    const/4 v12, 0x2

    aput v11, v8, v12

    const/16 v11, 0x78

    const/4 v13, 0x3

    aput v11, v8, v13

    const/16 v11, 0x97

    const/4 v14, 0x4

    aput v11, v8, v14

    const/16 v11, 0xb5

    const/4 v15, 0x5

    aput v11, v8, v15

    const/16 v11, 0xd4

    const/16 v16, 0x6

    aput v11, v8, v16

    const/16 v11, 0xf3

    const/16 v17, 0x7

    aput v11, v8, v17

    const/16 v11, 0x111

    const/16 v18, 0x8

    aput v11, v8, v18

    const/16 v11, 0x130

    const/16 v19, 0x9

    aput v11, v8, v19

    const/16 v11, 0x14e

    const/16 v20, 0xa

    aput v11, v8, v20

    const/16 v11, 0xb

    aput v1, v8, v11

    aput v6, v9, v10

    const/16 v8, 0x3c

    aput v8, v9, v3

    const/16 v8, 0x5b

    aput v8, v9, v12

    const/16 v8, 0x79

    aput v8, v9, v13

    const/16 v8, 0x98

    aput v8, v9, v14

    const/16 v8, 0xb6

    aput v8, v9, v15

    const/16 v8, 0xd5

    aput v8, v9, v16

    const/16 v8, 0xf4

    aput v8, v9, v17

    const/16 v8, 0x112

    aput v8, v9, v18

    const/16 v8, 0x131

    aput v8, v9, v19

    const/16 v8, 0x14f

    aput v8, v9, v20

    aput v7, v9, v11

    .line 223
    sget-object v7, Lnet/time4j/DateElement;->INSTANCE:Lnet/time4j/DateElement;

    sput-object v7, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    .line 253
    sget-object v8, Lnet/time4j/DateElement;->INSTANCE:Lnet/time4j/DateElement;

    sput-object v8, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    const-string v8, "YEAR"

    const/16 v9, 0xe

    const/16 v11, 0x75

    .line 321
    invoke-static {v8, v9, v2, v4, v11}, Lnet/time4j/IntegerDateElement;->create(Ljava/lang/String;IIIC)Lnet/time4j/IntegerDateElement;

    move-result-object v2

    sput-object v2, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    .line 381
    sget-object v4, Lnet/time4j/YOWElement;->INSTANCE:Lnet/time4j/YOWElement;

    sput-object v4, Lnet/time4j/PlainDate;->YEAR_OF_WEEKDATE:Lnet/time4j/AdjustableElement;

    .line 392
    new-instance v8, Lnet/time4j/EnumElement;

    const-class v13, Lnet/time4j/Quarter;

    sget-object v14, Lnet/time4j/Quarter;->Q1:Lnet/time4j/Quarter;

    sget-object v15, Lnet/time4j/Quarter;->Q4:Lnet/time4j/Quarter;

    const-string v12, "QUARTER_OF_YEAR"

    const/16 v16, 0x67

    const/16 v17, 0x51

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Lnet/time4j/EnumElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/Enum;IC)V

    sput-object v8, Lnet/time4j/PlainDate;->QUARTER_OF_YEAR:Lnet/time4j/NavigableElement;

    .line 466
    new-instance v9, Lnet/time4j/EnumElement;

    const-class v20, Lnet/time4j/Month;

    sget-object v21, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    sget-object v22, Lnet/time4j/Month;->DECEMBER:Lnet/time4j/Month;

    const-string v19, "MONTH_OF_YEAR"

    const/16 v23, 0x65

    const/16 v24, 0x4d

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v24}, Lnet/time4j/EnumElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/Enum;IC)V

    sput-object v9, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    const-string v11, "MONTH_AS_NUMBER"

    const/16 v12, 0xf

    const/16 v13, 0x4d

    .line 515
    invoke-static {v11, v12, v3, v5, v13}, Lnet/time4j/IntegerDateElement;->create(Ljava/lang/String;IIIC)Lnet/time4j/IntegerDateElement;

    move-result-object v5

    sput-object v5, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    const-string v11, "DAY_OF_MONTH"

    const/16 v12, 0x10

    const/16 v13, 0x64

    .line 532
    invoke-static {v11, v12, v3, v6, v13}, Lnet/time4j/IntegerDateElement;->create(Ljava/lang/String;IIIC)Lnet/time4j/IntegerDateElement;

    move-result-object v6

    sput-object v6, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    .line 561
    new-instance v15, Lnet/time4j/EnumElement;

    const-class v13, Lnet/time4j/Weekday;

    sget-object v14, Lnet/time4j/Weekday;->MONDAY:Lnet/time4j/Weekday;

    sget-object v16, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    const-string v12, "DAY_OF_WEEK"

    const/16 v17, 0x66

    const/16 v18, 0x45

    move-object v11, v15

    move-object v10, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v11 .. v17}, Lnet/time4j/EnumElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;Ljava/lang/Enum;IC)V

    sput-object v10, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    const-string v11, "DAY_OF_YEAR"

    const/16 v12, 0x11

    const/16 v13, 0x44

    .line 579
    invoke-static {v11, v12, v3, v1, v13}, Lnet/time4j/IntegerDateElement;->create(Ljava/lang/String;IIIC)Lnet/time4j/IntegerDateElement;

    move-result-object v1

    sput-object v1, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    const-string v11, "DAY_OF_QUARTER"

    const/16 v12, 0x12

    const/16 v13, 0x5c

    const/4 v14, 0x0

    .line 595
    invoke-static {v11, v12, v3, v13, v14}, Lnet/time4j/IntegerDateElement;->create(Ljava/lang/String;IIIC)Lnet/time4j/IntegerDateElement;

    move-result-object v3

    sput-object v3, Lnet/time4j/PlainDate;->DAY_OF_QUARTER:Lnet/time4j/ProportionalElement;

    .line 633
    sget-object v11, Lnet/time4j/WeekdayInMonthElement;->INSTANCE:Lnet/time4j/WeekdayInMonthElement;

    sput-object v11, Lnet/time4j/PlainDate;->WEEKDAY_IN_MONTH:Lnet/time4j/OrdinalWeekdayElement;

    .line 644
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 645
    invoke-static {v12, v7}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 646
    invoke-static {v12, v2}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 647
    invoke-static {v12, v4}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 648
    invoke-static {v12, v8}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 649
    invoke-static {v12, v9}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 650
    invoke-static {v12, v5}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 651
    invoke-static {v12, v6}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 652
    invoke-static {v12, v10}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 653
    invoke-static {v12, v1}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 654
    invoke-static {v12, v3}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 655
    invoke-static {v12, v11}, Lnet/time4j/PlainDate;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 656
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    sput-object v12, Lnet/time4j/PlainDate;->ELEMENTS:Ljava/util/Map;

    .line 658
    new-instance v12, Lnet/time4j/PlainDate$Transformer;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lnet/time4j/PlainDate$Transformer;-><init>(Lnet/time4j/PlainDate$1;)V

    sput-object v12, Lnet/time4j/PlainDate;->TRANSFORMER:Lnet/time4j/engine/CalendarSystem;

    .line 660
    const-class v14, Lnet/time4j/IsoDateUnit;

    new-instance v15, Lnet/time4j/PlainDate$Merger;

    invoke-direct {v15, v13}, Lnet/time4j/PlainDate$Merger;-><init>(Lnet/time4j/PlainDate$1;)V

    .line 661
    invoke-static {v14, v0, v15, v12}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v12

    new-instance v14, Lnet/time4j/PlainDate$DateElementRule;

    invoke-direct {v14, v13}, Lnet/time4j/PlainDate$DateElementRule;-><init>(Lnet/time4j/PlainDate$1;)V

    sget-object v13, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 666
    invoke-virtual {v12, v7, v14, v13}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v7

    new-instance v12, Lnet/time4j/PlainDate$IntegerElementRule;

    invoke-direct {v12, v2}, Lnet/time4j/PlainDate$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    sget-object v13, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    .line 670
    invoke-virtual {v7, v2, v12, v13}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v2

    .line 676
    invoke-static {v0}, Lnet/time4j/YOWElement;->elementRule(Ljava/lang/Class;)Lnet/time4j/engine/ElementRule;

    move-result-object v0

    sget-object v7, Lnet/time4j/Weekcycle;->YEARS:Lnet/time4j/Weekcycle;

    .line 674
    invoke-virtual {v2, v4, v0, v7}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 680
    invoke-static {v8}, Lnet/time4j/PlainDate$EnumElementRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/PlainDate$EnumElementRule;

    move-result-object v2

    sget-object v4, Lnet/time4j/CalendarUnit;->QUARTERS:Lnet/time4j/CalendarUnit;

    .line 678
    invoke-virtual {v0, v8, v2, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 684
    invoke-static {v9}, Lnet/time4j/PlainDate$EnumElementRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/PlainDate$EnumElementRule;

    move-result-object v2

    sget-object v4, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 682
    invoke-virtual {v0, v9, v2, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v2, Lnet/time4j/PlainDate$IntegerElementRule;

    invoke-direct {v2, v5}, Lnet/time4j/PlainDate$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    sget-object v4, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 686
    invoke-virtual {v0, v5, v2, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v2, Lnet/time4j/PlainDate$IntegerElementRule;

    invoke-direct {v2, v6}, Lnet/time4j/PlainDate$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    sget-object v4, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 690
    invoke-virtual {v0, v6, v2, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 696
    invoke-static {v10}, Lnet/time4j/PlainDate$EnumElementRule;->of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/PlainDate$EnumElementRule;

    move-result-object v2

    sget-object v4, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 694
    invoke-virtual {v0, v10, v2, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v2, Lnet/time4j/PlainDate$IntegerElementRule;

    invoke-direct {v2, v1}, Lnet/time4j/PlainDate$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    sget-object v4, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 698
    invoke-virtual {v0, v1, v2, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainDate$IntegerElementRule;

    invoke-direct {v1, v3}, Lnet/time4j/PlainDate$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 702
    invoke-virtual {v0, v3, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainDate$IntegerElementRule;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v11}, Lnet/time4j/PlainDate$IntegerElementRule;-><init>(ILnet/time4j/engine/ChronoElement;)V

    sget-object v2, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    .line 706
    invoke-virtual {v0, v11, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 710
    invoke-static {v0}, Lnet/time4j/PlainDate;->registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 711
    invoke-static {v0}, Lnet/time4j/PlainDate;->registerExtensions(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 712
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/PlainDate;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 728
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 730
    iput p1, p0, Lnet/time4j/PlainDate;->year:I

    int-to-byte p1, p2

    .line 731
    iput-byte p1, p0, Lnet/time4j/PlainDate;->month:B

    int-to-byte p1, p3

    .line 732
    iput-byte p1, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    return-void
.end method

.method static synthetic access$1000(Lnet/time4j/PlainDate;)B
    .locals 0

    .line 162
    iget-byte p0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    return p0
.end method

.method static synthetic access$1100(Lnet/time4j/PlainDate;)I
    .locals 0

    .line 162
    invoke-direct {p0}, Lnet/time4j/PlainDate;->getDayOfQuarter()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200()Lnet/time4j/engine/TimeAxis;
    .locals 1

    .line 162
    sget-object v0, Lnet/time4j/PlainDate;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->withYear(I)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->withMonth(I)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->withDayOfMonth(I)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lnet/time4j/PlainDate;I)Lnet/time4j/PlainDate;
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->withDayOfYear(I)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700()Ljava/lang/Integer;
    .locals 1

    .line 162
    sget-object v0, Lnet/time4j/PlainDate;->VALUE_1:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/Integer;
    .locals 1

    .line 162
    sget-object v0, Lnet/time4j/PlainDate;->VALUE_12:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/Integer;
    .locals 1

    .line 162
    sget-object v0, Lnet/time4j/PlainDate;->LEAP_YEAR_LEN:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/Integer;
    .locals 1

    .line 162
    sget-object v0, Lnet/time4j/PlainDate;->STD_YEAR_LEN:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2100(Lnet/time4j/PlainDate;Lnet/time4j/Weekday;)Lnet/time4j/PlainDate;
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->withDayOfWeek(Lnet/time4j/Weekday;)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(IIIZ)Lnet/time4j/PlainDate;
    .locals 0

    .line 162
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/PlainDate;->of(IIIZ)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(I)Ljava/lang/String;
    .locals 0

    .line 162
    invoke-static {p0}, Lnet/time4j/PlainDate;->yowFailed(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(IILnet/time4j/Weekday;Z)Lnet/time4j/PlainDate;
    .locals 0

    .line 162
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/PlainDate;->of(IILnet/time4j/Weekday;Z)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 0

    .line 162
    invoke-static {p0}, Lnet/time4j/PlainDate;->woyFailed(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Lnet/time4j/engine/CalendarSystem;
    .locals 1

    .line 162
    sget-object v0, Lnet/time4j/PlainDate;->TRANSFORMER:Lnet/time4j/engine/CalendarSystem;

    return-object v0
.end method

.method static synthetic access$800(Lnet/time4j/PlainDate;)I
    .locals 0

    .line 162
    iget p0, p0, Lnet/time4j/PlainDate;->year:I

    return p0
.end method

.method static synthetic access$900(Lnet/time4j/PlainDate;)B
    .locals 0

    .line 162
    iget-byte p0, p0, Lnet/time4j/PlainDate;->month:B

    return p0
.end method

.method private static addDays(Lnet/time4j/PlainDate;J)Lnet/time4j/PlainDate;
    .locals 6

    .line 1957
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x1c

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 1960
    iget p1, p0, Lnet/time4j/PlainDate;->year:I

    iget-byte p0, p0, Lnet/time4j/PlainDate;->month:B

    long-to-int p2, v0

    invoke-static {p1, p0, p2}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1963
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x16d

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1966
    iget p0, p0, Lnet/time4j/PlainDate;->year:I

    long-to-int p1, v0

    invoke-static {p0, p1}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1970
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDaysSinceUTC()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p0

    .line 1971
    sget-object p2, Lnet/time4j/PlainDate;->TRANSFORMER:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {p2, p0, p1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainDate;

    return-object p0
.end method

.method private atFirstMoment(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;
    .locals 2

    .line 1768
    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1776
    sget-object v1, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    .line 1777
    invoke-interface {v0, p0, v1}, Lnet/time4j/tz/TransitionHistory;->getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1779
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1780
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v0

    sget-object p1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {v0, v1, p1}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 1783
    :cond_0
    sget-object v0, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    invoke-virtual {p0, v0}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 1771
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timezone repository does not expose its transition history: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    invoke-static {}, Lnet/time4j/tz/Timezone;->getProviderInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private atStartOfDay(Lnet/time4j/tz/TransitionHistory;)Lnet/time4j/PlainTimestamp;
    .locals 5

    if-eqz p1, :cond_1

    .line 1743
    sget-object v0, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    .line 1744
    invoke-interface {p1, p0, v0}, Lnet/time4j/tz/TransitionHistory;->getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1746
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    const p1, 0x15180

    .line 1751
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v2

    sget-object v4, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 1750
    invoke-static {v2, v3, v4}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v2

    .line 1753
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    .line 1754
    rem-int/lit8 v0, p1, 0x3c

    .line 1755
    div-int/lit8 p1, p1, 0x3c

    .line 1756
    rem-int/lit8 v1, p1, 0x3c

    .line 1757
    div-int/lit8 p1, p1, 0x3c

    .line 1758
    invoke-static {p1, v1, v0}, Lnet/time4j/PlainTime;->of(III)Lnet/time4j/PlainTime;

    move-result-object p1

    .line 1759
    invoke-static {v2, p1}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 1762
    :cond_0
    sget-object p1, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 1738
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timezone repository does not expose its transition history: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    invoke-static {}, Lnet/time4j/tz/Timezone;->getProviderInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static axis(Lnet/time4j/engine/Converter;)Lnet/time4j/engine/Chronology;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/Converter<",
            "TS;",
            "Lnet/time4j/PlainDate;",
            ">;)",
            "Lnet/time4j/engine/Chronology<",
            "TS;>;"
        }
    .end annotation

    .line 1527
    new-instance v0, Lnet/time4j/engine/BridgeChronology;

    sget-object v1, Lnet/time4j/PlainDate;->ENGINE:Lnet/time4j/engine/TimeAxis;

    invoke-direct {v0, p0, v1}, Lnet/time4j/engine/BridgeChronology;-><init>(Lnet/time4j/engine/Converter;Lnet/time4j/engine/Chronology;)V

    return-object v0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/IsoDateUnit;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 1505
    sget-object v0, Lnet/time4j/PlainDate;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method static doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;
    .locals 2

    .line 1654
    sget-object v0, Lnet/time4j/PlainDate$1;->$SwitchMap$net$time4j$CalendarUnit:[I

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1702
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/CalendarUnit;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1700
    :pswitch_0
    invoke-static {p1, p2, p3}, Lnet/time4j/PlainDate;->addDays(Lnet/time4j/PlainDate;J)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1694
    :pswitch_1
    sget-object p0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const-wide/16 v0, 0x7

    .line 1697
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1694
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1687
    :pswitch_2
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getEpochMonths()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    .line 1688
    iget-byte p0, p1, Lnet/time4j/PlainDate;->dayOfMonth:B

    invoke-static {p1, p2, p3, p0, p4}, Lnet/time4j/PlainDate;->fromEpochMonths(Lnet/time4j/PlainDate;JII)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1680
    :pswitch_3
    sget-object p0, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    const-wide/16 v0, 0x3

    .line 1683
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1680
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1674
    :pswitch_4
    sget-object p0, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    const-wide/16 v0, 0xc

    .line 1677
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1674
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1668
    :pswitch_5
    sget-object p0, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    const-wide/16 v0, 0x78

    .line 1671
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1668
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1662
    :pswitch_6
    sget-object p0, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    const-wide/16 v0, 0x4b0

    .line 1665
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1662
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1656
    :pswitch_7
    sget-object p0, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    const-wide/16 v0, 0x2ee0

    .line 1659
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 1656
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    .line 1980
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static format2Digits(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0x2d

    .line 2019
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/16 v0, 0x30

    .line 2022
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2025
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static formatYear(Ljava/lang/StringBuilder;I)V
    .locals 2

    if-gez p1, :cond_0

    const/16 v0, 0x2d

    .line 1992
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1993
    invoke-static {p1}, Lnet/time4j/base/MathUtils;->safeNegate(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    if-lez p1, :cond_2

    const/16 p1, 0x2b

    .line 1998
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 p1, 0x3e8

    if-ge v0, p1, :cond_2

    const/16 p1, 0x30

    .line 2001
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 2003
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 2005
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2010
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static from(Lnet/time4j/base/GregorianDate;)Lnet/time4j/PlainDate;
    .locals 2

    .line 942
    instance-of v0, p0, Lnet/time4j/PlainDate;

    if-eqz v0, :cond_0

    .line 943
    check-cast p0, Lnet/time4j/PlainDate;

    return-object p0

    .line 946
    :cond_0
    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v0

    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v1

    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result p0

    .line 945
    invoke-static {v0, v1, p0}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method static from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainDate;
    .locals 4

    .line 1602
    invoke-interface {p0}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1603
    invoke-interface {p0}, Lnet/time4j/base/UnixTime;->getNanosecond()I

    move-result p0

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result p1

    add-int/2addr p0, p1

    const-wide/16 v2, 0x1

    if-gez p0, :cond_0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const p1, 0x3b9aca00

    if-lt p0, p1, :cond_1

    add-long/2addr v0, v2

    .line 1611
    :cond_1
    :goto_0
    sget-object p0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    const p1, 0x15180

    .line 1613
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    sget-object p1, Lnet/time4j/engine/EpochDays;->UNIX:Lnet/time4j/engine/EpochDays;

    .line 1612
    invoke-virtual {p0, v0, v1, p1}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide p0

    .line 1615
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->toPackedDate(J)J

    move-result-wide p0

    .line 1618
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->readYear(J)I

    move-result v0

    .line 1619
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->readMonth(J)I

    move-result v1

    .line 1620
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->readDayOfMonth(J)I

    move-result p0

    .line 1617
    invoke-static {v0, v1, p0}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method private static fromEpochMonths(Lnet/time4j/PlainDate;JII)Lnet/time4j/PlainDate;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x5

    if-ne p4, v1, :cond_0

    .line 1892
    iget-byte v1, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    .line 1894
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->lengthOfMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    move p4, v0

    :cond_0
    const/16 v1, 0xc

    .line 1902
    invoke-static {p1, p2, v1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x7b2

    .line 1901
    invoke-static {v2, v3, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    .line 1900
    invoke-static {v2, v3}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v2

    .line 1906
    invoke-static {p1, p2, v1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 1907
    invoke-static {v2, v1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v4

    if-le p3, v4, :cond_1

    const-wide/16 v5, 0x1

    packed-switch p4, :pswitch_data_0

    .line 1938
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Overflow policy not implemented: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1931
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Day of month out of range: "

    .line 1932
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    invoke-static {p0, v2}, Lnet/time4j/PlainDate;->formatYear(Ljava/lang/StringBuilder;I)V

    .line 1934
    invoke-static {p0, v1}, Lnet/time4j/PlainDate;->format2Digits(Ljava/lang/StringBuilder;I)V

    .line 1935
    invoke-static {p0, p3}, Lnet/time4j/PlainDate;->format2Digits(Ljava/lang/StringBuilder;I)V

    .line 1936
    new-instance p1, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1927
    :pswitch_1
    invoke-static {p1, p2, v5, v6}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    sub-int/2addr p3, v4

    .line 1925
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainDate;->fromEpochMonths(Lnet/time4j/PlainDate;JII)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 1921
    :pswitch_2
    invoke-static {p1, p2, v5, v6}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 1919
    invoke-static {p0, p1, p2, v3, p4}, Lnet/time4j/PlainDate;->fromEpochMonths(Lnet/time4j/PlainDate;JII)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    :cond_1
    if-ge p3, v4, :cond_2

    if-ne p4, v0, :cond_2

    :pswitch_3
    move p3, v4

    .line 1948
    :cond_2
    invoke-static {v2, v1, p3}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getDayOfQuarter()I
    .locals 3

    .line 1789
    iget-byte v0, p0, Lnet/time4j/PlainDate;->month:B

    packed-switch v0, :pswitch_data_0

    .line 1811
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lnet/time4j/PlainDate;->month:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1809
    :pswitch_0
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    add-int/lit8 v0, v0, 0x3e

    return v0

    .line 1807
    :pswitch_1
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    add-int/lit8 v0, v0, 0x3d

    return v0

    .line 1804
    :pswitch_2
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    add-int/lit8 v0, v0, 0x1e

    return v0

    .line 1800
    :pswitch_3
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    .line 1801
    invoke-static {v0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    iget-byte v1, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    add-int/2addr v0, v1

    return v0

    .line 1798
    :pswitch_4
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    add-int/lit8 v0, v0, 0x1f

    return v0

    .line 1794
    :pswitch_5
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static isValid(III)Z
    .locals 0

    .line 1349
    invoke-static {p0, p1, p2}, Lnet/time4j/base/GregorianMath;->isValid(III)Z

    move-result p0

    return p0
.end method

.method static lookupElement(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1634
    sget-object v0, Lnet/time4j/PlainDate;->ELEMENTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nowInSystemTime()Lnet/time4j/PlainDate;
    .locals 1

    .line 923
    invoke-static {}, Lnet/time4j/ZonalClock;->ofSystem()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/ZonalClock;->today()Lnet/time4j/PlainDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Lnet/time4j/PlainDate;
    .locals 5

    const-string v0, "Day of year out of range: "

    const/4 v1, 0x1

    if-lt p1, v1, :cond_5

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_0

    .line 827
    invoke-static {p0, v1, p1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    .line 831
    :cond_0
    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_LEAP_YEAR_PER_MONTH:[I

    goto :goto_0

    :cond_1
    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_YEAR_PER_MONTH:[I

    :goto_0
    const/4 v3, 0x6

    .line 835
    aget v3, v2, v3

    if-le p1, v3, :cond_2

    const/4 v3, 0x7

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const/16 v4, 0xc

    if-ge v3, v4, :cond_4

    .line 836
    aget v4, v2, v3

    if-gt p1, v4, :cond_3

    add-int/lit8 v0, v3, -0x1

    .line 837
    aget v0, v2, v0

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    const/4 v0, 0x0

    .line 838
    invoke-static {p0, v3, p1, v0}, Lnet/time4j/PlainDate;->of(IIIZ)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 842
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 824
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of(III)Lnet/time4j/PlainDate;
    .locals 1

    const/4 v0, 0x1

    .line 768
    invoke-static {p0, p1, p2, v0}, Lnet/time4j/PlainDate;->of(IIIZ)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method private static of(IIIZ)Lnet/time4j/PlainDate;
    .locals 0

    if-eqz p3, :cond_0

    .line 2143
    invoke-static {p0, p1, p2}, Lnet/time4j/base/GregorianMath;->checkDate(III)V

    .line 2147
    :cond_0
    new-instance p3, Lnet/time4j/PlainDate;

    invoke-direct {p3, p0, p1, p2}, Lnet/time4j/PlainDate;-><init>(III)V

    return-object p3
.end method

.method public static of(IILnet/time4j/Weekday;)Lnet/time4j/PlainDate;
    .locals 1

    const/4 v0, 0x1

    .line 871
    invoke-static {p0, p1, p2, v0}, Lnet/time4j/PlainDate;->of(IILnet/time4j/Weekday;Z)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method private static of(IILnet/time4j/Weekday;Z)Lnet/time4j/PlainDate;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_a

    const/16 v2, 0x35

    if-le p1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p3, :cond_2

    .line 2077
    sget-object v3, Lnet/time4j/PlainDate;->MIN_YEAR:Ljava/lang/Integer;

    .line 2079
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p0, v3, :cond_1

    sget-object v3, Lnet/time4j/PlainDate;->MAX_YEAR:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p0, v3, :cond_1

    goto :goto_0

    .line 2081
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lnet/time4j/PlainDate;->yowFailed(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2085
    :cond_2
    :goto_0
    invoke-static {p0, v1, v1}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result v3

    invoke-static {v3}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v3

    .line 2086
    invoke-virtual {v3}, Lnet/time4j/Weekday;->getValue()I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_3

    rsub-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    rsub-int/lit8 v3, v3, 0x9

    :goto_1
    add-int/lit8 v4, p1, -0x1

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v3, v4

    .line 2090
    invoke-virtual {p2}, Lnet/time4j/Weekday;->getValue()I

    move-result p2

    add-int/2addr v3, p2

    sub-int/2addr v3, v1

    const/16 p2, 0x16e

    const/16 v1, 0x16d

    if-gtz v3, :cond_5

    add-int/lit8 p0, p0, -0x1

    .line 2096
    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    add-int/2addr v3, p2

    goto :goto_4

    .line 2099
    :cond_5
    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move p2, v1

    :goto_3
    if-le v3, p2, :cond_7

    sub-int/2addr v3, p2

    add-int/lit8 p0, p0, 0x1

    .line 2106
    :cond_7
    :goto_4
    invoke-static {p0, v3}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object p0

    if-ne p1, v2, :cond_9

    .line 2110
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getWeekOfYear()I

    move-result p2

    if-eq p2, v2, :cond_9

    if-nez p3, :cond_8

    return-object v0

    .line 2113
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lnet/time4j/PlainDate;->woyFailed(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return-object p0

    :cond_a
    :goto_5
    if-nez p3, :cond_b

    return-object v0

    .line 2071
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lnet/time4j/PlainDate;->woyFailed(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of(ILnet/time4j/Month;I)Lnet/time4j/PlainDate;
    .locals 1

    .line 798
    invoke-virtual {p1}, Lnet/time4j/Month;->getValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnet/time4j/PlainDate;->of(IIIZ)Lnet/time4j/PlainDate;

    move-result-object p0

    return-object p0
.end method

.method public static of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;
    .locals 2

    .line 897
    sget-object v0, Lnet/time4j/PlainDate;->TRANSFORMER:Lnet/time4j/engine/CalendarSystem;

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v1, p0, p1, p2}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainDate;

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lnet/time4j/format/TemporalFormatter;)Lnet/time4j/PlainDate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;)",
            "Lnet/time4j/PlainDate;"
        }
    .end annotation

    .line 1399
    :try_start_0
    invoke-interface {p1, p0}, Lnet/time4j/format/TemporalFormatter;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainDate;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1401
    new-instance p1, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2213
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static registerExtensions(Lnet/time4j/engine/TimeAxis$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "Lnet/time4j/IsoDateUnit;",
            "Lnet/time4j/PlainDate;",
            ">;)V"
        }
    .end annotation

    .line 2031
    invoke-static {}, Lnet/time4j/base/ResourceLoader;->getInstance()Lnet/time4j/base/ResourceLoader;

    move-result-object v0

    const-class v1, Lnet/time4j/engine/ChronoExtension;

    invoke-virtual {v0, v1}, Lnet/time4j/base/ResourceLoader;->services(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoExtension;

    .line 2032
    const-class v2, Lnet/time4j/PlainDate;

    invoke-interface {v1, v2}, Lnet/time4j/engine/ChronoExtension;->accept(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2033
    invoke-virtual {p0, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    goto :goto_0

    .line 2037
    :cond_1
    new-instance v0, Lnet/time4j/WeekExtension;

    invoke-direct {v0}, Lnet/time4j/WeekExtension;-><init>()V

    invoke-virtual {p0, v0}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    return-void
.end method

.method private static registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "Lnet/time4j/IsoDateUnit;",
            "Lnet/time4j/PlainDate;",
            ">;)V"
        }
    .end annotation

    .line 2043
    sget-object v0, Lnet/time4j/CalendarUnit;->MILLENNIA:Lnet/time4j/CalendarUnit;

    sget-object v1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    .line 2044
    invoke-static {v0, v1}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2045
    sget-object v1, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    .line 2046
    invoke-static {v1, v2}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 2048
    invoke-static {}, Lnet/time4j/CalendarUnit;->values()[Lnet/time4j/CalendarUnit;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    .line 2049
    new-instance v7, Lnet/time4j/CalendarUnit$Rule;

    invoke-direct {v7, v6}, Lnet/time4j/CalendarUnit$Rule;-><init>(Lnet/time4j/CalendarUnit;)V

    .line 2052
    invoke-virtual {v6}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v8

    sget-object v5, Lnet/time4j/CalendarUnit;->WEEKS:Lnet/time4j/CalendarUnit;

    .line 2053
    invoke-virtual {v6, v5}, Lnet/time4j/CalendarUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_0

    move-object v10, v0

    goto :goto_1

    :cond_0
    move-object v10, v1

    :goto_1
    move-object v5, p0

    .line 2049
    invoke-virtual/range {v5 .. v10}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private withDayOfMonth(I)Lnet/time4j/PlainDate;
    .locals 2

    .line 1850
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1854
    :cond_0
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    iget-byte v1, p0, Lnet/time4j/PlainDate;->month:B

    invoke-static {v0, v1, p1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method private withDayOfWeek(Lnet/time4j/Weekday;)Lnet/time4j/PlainDate;
    .locals 6

    .line 1860
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1866
    :cond_0
    sget-object v1, Lnet/time4j/PlainDate;->TRANSFORMER:Lnet/time4j/engine/CalendarSystem;

    .line 1868
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDaysSinceUTC()J

    move-result-wide v2

    .line 1869
    invoke-virtual {p1}, Lnet/time4j/Weekday;->getValue()I

    move-result p1

    invoke-virtual {v0}, Lnet/time4j/Weekday;->getValue()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-long v4, p1

    .line 1867
    invoke-static {v2, v3, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    .line 1866
    invoke-interface {v1, v2, v3}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method

.method private withDayOfYear(I)Lnet/time4j/PlainDate;
    .locals 1

    .line 1877
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1881
    :cond_0
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    invoke-static {v0, p1}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method private withMonth(I)Lnet/time4j/PlainDate;
    .locals 3

    .line 1834
    iget-byte v0, p0, Lnet/time4j/PlainDate;->month:B

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1838
    :cond_0
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    invoke-static {v0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v0

    .line 1840
    iget v1, p0, Lnet/time4j/PlainDate;->year:I

    iget-byte v2, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    .line 1843
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1840
    invoke-static {v1, p1, v0}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method private withYear(I)Lnet/time4j/PlainDate;
    .locals 3

    .line 1818
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    if-ne v0, p1, :cond_0

    return-object p0

    .line 1822
    :cond_0
    iget-byte v0, p0, Lnet/time4j/PlainDate;->month:B

    invoke-static {p1, v0}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v0

    .line 1824
    iget-byte v1, p0, Lnet/time4j/PlainDate;->month:B

    iget-byte v2, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    .line 1827
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1824
    invoke-static {p1, v1, v0}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method private static woyFailed(I)Ljava/lang/String;
    .locals 2

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WEEK_OF_YEAR (ISO) out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 2201
    new-instance v0, Lnet/time4j/SPX;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lnet/time4j/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static yowFailed(I)Ljava/lang/String;
    .locals 2

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YEAR_OF_WEEKDATE (ISO) out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 1119
    invoke-static {p0, p1}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public atFirstMoment(Ljava/lang/String;)Lnet/time4j/Moment;
    .locals 0

    .line 1092
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public atFirstMoment(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;
    .locals 0

    .line 1062
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->atFirstMoment(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public atStartOfDay()Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 967
    sget-object v0, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    invoke-virtual {p0, v0}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay(Ljava/lang/String;)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 1032
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->atStartOfDay(Lnet/time4j/tz/TransitionHistory;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public atStartOfDay(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 999
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/PlainDate;->atStartOfDay(Lnet/time4j/tz/TransitionHistory;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public atTime(II)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 1144
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public atTime(III)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 1172
    invoke-static {p1, p2, p3}, Lnet/time4j/PlainTime;->of(III)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method protected compareByTime(Lnet/time4j/engine/CalendarDate;)I
    .locals 2

    .line 1548
    instance-of v0, p1, Lnet/time4j/PlainDate;

    if-eqz v0, :cond_1

    .line 1550
    check-cast p1, Lnet/time4j/PlainDate;

    .line 1552
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    iget v1, p1, Lnet/time4j/PlainDate;->year:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1554
    iget-byte v0, p0, Lnet/time4j/PlainDate;->month:B

    iget-byte v1, p1, Lnet/time4j/PlainDate;->month:B

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1556
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    iget-byte p1, p1, Lnet/time4j/PlainDate;->dayOfMonth:B

    sub-int/2addr v0, p1

    :cond_0
    return v0

    .line 1563
    :cond_1
    invoke-super {p0, p1}, Lnet/time4j/engine/Calendrical;->compareByTime(Lnet/time4j/engine/CalendarDate;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1411
    :cond_0
    instance-of v1, p1, Lnet/time4j/PlainDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1412
    check-cast p1, Lnet/time4j/PlainDate;

    .line 1413
    iget-byte v1, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    iget-byte v3, p1, Lnet/time4j/PlainDate;->dayOfMonth:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lnet/time4j/PlainDate;->month:B

    iget-byte v3, p1, Lnet/time4j/PlainDate;->month:B

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/PlainDate;->year:I

    iget p1, p1, Lnet/time4j/PlainDate;->year:I

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

    .line 161
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/IsoDateUnit;",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 1534
    sget-object v0, Lnet/time4j/PlainDate;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/PlainDate;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getContext()Lnet/time4j/PlainDate;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1193
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 3

    .line 1211
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    iget-byte v1, p0, Lnet/time4j/PlainDate;->month:B

    iget-byte v2, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    .line 1212
    invoke-static {v0, v1, v2}, Lnet/time4j/base/GregorianMath;->getDayOfWeek(III)I

    move-result v0

    .line 1211
    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 3

    .line 1235
    iget-byte v0, p0, Lnet/time4j/PlainDate;->month:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1241
    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_YEAR_PER_MONTH:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    iget-byte v1, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/PlainDate;->year:I

    .line 1244
    invoke-static {v1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1239
    :cond_0
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    add-int/lit8 v0, v0, 0x1f

    return v0

    .line 1237
    :cond_1
    iget-byte v0, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    return v0
.end method

.method getDaysSinceUTC()J
    .locals 2

    .line 1574
    sget-object v0, Lnet/time4j/PlainDate;->TRANSFORMER:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v0, p0}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method getEpochMonths()J
    .locals 4

    .line 1714
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    add-int/lit16 v0, v0, -0x7b2

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-byte v2, p0, Lnet/time4j/PlainDate;->month:B

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .line 1186
    iget-byte v0, p0, Lnet/time4j/PlainDate;->month:B

    return v0
.end method

.method getWeekOfYear()I
    .locals 1

    .line 1731
    sget-object v0, Lnet/time4j/Weekmodel;->ISO:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 1179
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1423
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    and-int/lit16 v1, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    .line 1424
    iget-byte v2, p0, Lnet/time4j/PlainDate;->month:B

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    iget-byte v2, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    add-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 1293
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    invoke-static {v0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isWeekend(Ljava/util/Locale;)Z
    .locals 0

    .line 1315
    invoke-static {p1}, Lnet/time4j/Weekmodel;->of(Ljava/util/Locale;)Lnet/time4j/Weekmodel;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/Weekmodel;->weekend()Lnet/time4j/engine/ChronoCondition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate;->matches(Lnet/time4j/engine/ChronoCondition;)Z

    move-result p1

    return p1
.end method

.method public lengthOfMonth()I
    .locals 2

    .line 1261
    iget v0, p0, Lnet/time4j/PlainDate;->year:I

    iget-byte v1, p0, Lnet/time4j/PlainDate;->month:B

    invoke-static {v0, v1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .line 1277
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "+",
            "Lnet/time4j/CalendarUnit;",
            ">;)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/CalendarUnit;",
            ">;"
        }
    .end annotation

    .line 1487
    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate;->plus(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    invoke-static {}, Lnet/time4j/Duration;->inYearsMonthsDays()Lnet/time4j/engine/TimeMetric;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/time4j/PlainDate;->until(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimeMetric;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Duration;

    return-object p1
.end method

.method public bridge synthetic normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/engine/TimeSpan;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate;->normalize(Lnet/time4j/engine/TimeSpan;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1369
    invoke-interface {p1, p0}, Lnet/time4j/format/TemporalFormatter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1444
    iget v1, p0, Lnet/time4j/PlainDate;->year:I

    invoke-static {v0, v1}, Lnet/time4j/PlainDate;->formatYear(Ljava/lang/StringBuilder;I)V

    .line 1445
    iget-byte v1, p0, Lnet/time4j/PlainDate;->month:B

    invoke-static {v0, v1}, Lnet/time4j/PlainDate;->format2Digits(Ljava/lang/StringBuilder;I)V

    .line 1446
    iget-byte v1, p0, Lnet/time4j/PlainDate;->dayOfMonth:B

    invoke-static {v0, v1}, Lnet/time4j/PlainDate;->format2Digits(Ljava/lang/StringBuilder;I)V

    .line 1447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method withDaysSinceUTC(J)Lnet/time4j/PlainDate;
    .locals 1

    .line 1586
    sget-object v0, Lnet/time4j/PlainDate;->TRANSFORMER:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v0, p1, p2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    return-object p1
.end method
