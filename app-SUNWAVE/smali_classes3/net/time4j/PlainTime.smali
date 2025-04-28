.class public final Lnet/time4j/PlainTime;
.super Lnet/time4j/engine/TimePoint;
.source "PlainTime.java"

# interfaces
.implements Lnet/time4j/base/WallTime;
.implements Lnet/time4j/engine/Temporal;
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/PlainTime$Merger;,
        Lnet/time4j/PlainTime$BigDecimalElementRule;,
        Lnet/time4j/PlainTime$LongElementRule;,
        Lnet/time4j/PlainTime$IntegerElementRule;,
        Lnet/time4j/PlainTime$MeridiemRule;,
        Lnet/time4j/PlainTime$PrecisionRule;,
        Lnet/time4j/PlainTime$TimeRule;,
        Lnet/time4j/PlainTime$ClockUnitRule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/TimePoint<",
        "Lnet/time4j/IsoTimeUnit;",
        "Lnet/time4j/PlainTime;",
        ">;",
        "Lnet/time4j/base/WallTime;",
        "Lnet/time4j/engine/Temporal<",
        "Lnet/time4j/PlainTime;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "iso8601"
.end annotation


# static fields
.field public static final AM_PM_OF_DAY:Lnet/time4j/ZonalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ZonalElement<",
            "Lnet/time4j/Meridiem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "a"
    .end annotation
.end field

.field public static final CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "h"
    .end annotation
.end field

.field public static final CLOCK_HOUR_OF_DAY:Lnet/time4j/AdjustableElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/AdjustableElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "k"
    .end annotation
.end field

.field public static final COMPONENT:Lnet/time4j/WallTimeElement;

.field private static final DECIMAL_23_9:Ljava/math/BigDecimal;

.field private static final DECIMAL_24_0:Ljava/math/BigDecimal;

.field private static final DECIMAL_3600:Ljava/math/BigDecimal;

.field private static final DECIMAL_59_9:Ljava/math/BigDecimal;

.field private static final DECIMAL_60:Ljava/math/BigDecimal;

.field public static final DECIMAL_HOUR:Lnet/time4j/ZonalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ZonalElement<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECIMAL_MINUTE:Lnet/time4j/ZonalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ZonalElement<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private static final DECIMAL_MRD:Ljava/math/BigDecimal;

.field public static final DECIMAL_SECOND:Lnet/time4j/ZonalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ZonalElement<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "K"
    .end annotation
.end field

.field public static final DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "H"
    .end annotation
.end field

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
            "Lnet/time4j/IsoTimeUnit;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOURS:[Lnet/time4j/PlainTime;

.field public static final HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final H_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ElementRule<",
            "Lnet/time4j/PlainTime;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field static final ISO_DECIMAL_SEPARATOR:C

.field private static final KILO:I = 0x3e8

.field static final MAX:Lnet/time4j/PlainTime;

.field public static final MICRO_OF_DAY:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Long;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MILLI_OF_DAY:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "A"
    .end annotation
.end field

.field public static final MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field static final MIN:Lnet/time4j/PlainTime;

.field public static final MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "m"
    .end annotation
.end field

.field private static final MIO:I = 0xf4240

.field private static final MRD:I = 0x3b9aca00

.field private static final M_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ElementRule<",
            "Lnet/time4j/PlainTime;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field public static final NANO_OF_DAY:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Long;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final NANO_OF_SECOND:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "S"
    .end annotation
.end field

.field public static final PRECISION:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/ClockUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECOND_OF_DAY:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "s"
    .end annotation
.end field

.field private static final S_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ElementRule<",
            "Lnet/time4j/PlainTime;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field static final WALL_TIME:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2697ad064208f6abL


# instance fields
.field private final transient hour:B

.field private final transient minute:B

.field private final transient nano:I

.field private final transient second:B


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const-string v0, "net.time4j.format.iso.decimal.dot"

    .line 155
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    sput-char v0, Lnet/time4j/PlainTime;->ISO_DECIMAL_SEPARATOR:C

    .line 164
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lnet/time4j/PlainTime;->DECIMAL_60:Ljava/math/BigDecimal;

    .line 165
    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0xe10

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lnet/time4j/PlainTime;->DECIMAL_3600:Ljava/math/BigDecimal;

    .line 166
    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x3b9aca00

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lnet/time4j/PlainTime;->DECIMAL_MRD:Ljava/math/BigDecimal;

    .line 168
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "24"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/PlainTime;->DECIMAL_24_0:Ljava/math/BigDecimal;

    .line 170
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "23.999999999999999"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/PlainTime;->DECIMAL_23_9:Ljava/math/BigDecimal;

    .line 172
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "59.999999999999999"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/time4j/PlainTime;->DECIMAL_59_9:Ljava/math/BigDecimal;

    const/16 v0, 0x19

    new-array v0, v0, [Lnet/time4j/PlainTime;

    .line 175
    sput-object v0, Lnet/time4j/PlainTime;->HOURS:[Lnet/time4j/PlainTime;

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    const/16 v1, 0x18

    if-gt v7, v1, :cond_1

    .line 180
    sget-object v8, Lnet/time4j/PlainTime;->HOURS:[Lnet/time4j/PlainTime;

    new-instance v9, Lnet/time4j/PlainTime;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move v2, v7

    invoke-direct/range {v1 .. v6}, Lnet/time4j/PlainTime;-><init>(IIIIZ)V

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 185
    :cond_1
    sget-object v2, Lnet/time4j/PlainTime;->HOURS:[Lnet/time4j/PlainTime;

    aget-object v3, v2, v0

    sput-object v3, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    .line 188
    aget-object v2, v2, v1

    sput-object v2, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    .line 191
    sget-object v4, Lnet/time4j/TimeElement;->INSTANCE:Lnet/time4j/TimeElement;

    sput-object v4, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    .line 235
    sget-object v5, Lnet/time4j/TimeElement;->INSTANCE:Lnet/time4j/TimeElement;

    sput-object v5, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    .line 306
    sget-object v5, Lnet/time4j/AmPmElement;->AM_PM_OF_DAY:Lnet/time4j/AmPmElement;

    sput-object v5, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    const-string v6, "CLOCK_HOUR_OF_AMPM"

    .line 362
    invoke-static {v6, v0}, Lnet/time4j/IntegerTimeElement;->createClockElement(Ljava/lang/String;Z)Lnet/time4j/IntegerTimeElement;

    move-result-object v6

    sput-object v6, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_AMPM:Lnet/time4j/AdjustableElement;

    const-string v7, "CLOCK_HOUR_OF_DAY"

    const/4 v8, 0x1

    .line 416
    invoke-static {v7, v8}, Lnet/time4j/IntegerTimeElement;->createClockElement(Ljava/lang/String;Z)Lnet/time4j/IntegerTimeElement;

    move-result-object v7

    sput-object v7, Lnet/time4j/PlainTime;->CLOCK_HOUR_OF_DAY:Lnet/time4j/AdjustableElement;

    const/4 v9, 0x3

    const/16 v10, 0x4b

    const-string v11, "DIGITAL_HOUR_OF_AMPM"

    const/16 v12, 0xb

    .line 470
    invoke-static {v11, v9, v0, v12, v10}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v9

    sput-object v9, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    const/4 v10, 0x4

    const-string v11, "DIGITAL_HOUR_OF_DAY"

    const/16 v13, 0x17

    const/16 v14, 0x48

    .line 528
    invoke-static {v11, v10, v0, v13, v14}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v10

    sput-object v10, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    const/4 v11, 0x5

    const-string v15, "HOUR_FROM_0_TO_24"

    .line 556
    invoke-static {v15, v11, v0, v13, v14}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v11

    sput-object v11, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    const/4 v14, 0x6

    const/16 v15, 0x6d

    const-string v13, "MINUTE_OF_HOUR"

    const/16 v1, 0x3b

    .line 575
    invoke-static {v13, v14, v0, v1, v15}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v13

    sput-object v13, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    const/4 v14, 0x7

    const/16 v15, 0x59f

    const-string v8, "MINUTE_OF_DAY"

    .line 597
    invoke-static {v8, v14, v0, v15, v0}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v8

    sput-object v8, Lnet/time4j/PlainTime;->MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;

    const/16 v14, 0x8

    const/16 v15, 0x73

    const-string v12, "SECOND_OF_MINUTE"

    .line 628
    invoke-static {v12, v14, v0, v1, v15}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v12

    sput-object v12, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    const/16 v14, 0x9

    const v15, 0x1517f

    const-string v1, "SECOND_OF_DAY"

    .line 654
    invoke-static {v1, v14, v0, v15, v0}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v1

    sput-object v1, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    const/16 v14, 0xa

    const-string v15, "MILLI_OF_SECOND"

    move-object/from16 v16, v2

    const/16 v2, 0x3e7

    .line 669
    invoke-static {v15, v14, v0, v2, v0}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v14

    sput-object v14, Lnet/time4j/PlainTime;->MILLI_OF_SECOND:Lnet/time4j/ProportionalElement;

    const-string v15, "MICRO_OF_SECOND"

    const v2, 0xf423f

    move-object/from16 v17, v3

    const/16 v3, 0xb

    .line 684
    invoke-static {v15, v3, v0, v2, v0}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v15

    sput-object v15, Lnet/time4j/PlainTime;->MICRO_OF_SECOND:Lnet/time4j/ProportionalElement;

    const/16 v3, 0x53

    const-string v2, "NANO_OF_SECOND"

    move-object/from16 v18, v15

    const/16 v15, 0xc

    move-object/from16 v19, v14

    const v14, 0x3b9ac9ff

    .line 701
    invoke-static {v2, v15, v0, v14, v3}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v2

    sput-object v2, Lnet/time4j/PlainTime;->NANO_OF_SECOND:Lnet/time4j/ProportionalElement;

    const/16 v3, 0xd

    const v14, 0x5265bff

    const/16 v15, 0x41

    move-object/from16 v20, v2

    const-string v2, "MILLI_OF_DAY"

    .line 729
    invoke-static {v2, v3, v0, v14, v15}, Lnet/time4j/IntegerTimeElement;->createTimeElement(Ljava/lang/String;IIIC)Lnet/time4j/IntegerTimeElement;

    move-result-object v2

    sput-object v2, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    const-wide v14, 0x141dd75fffL

    const-string v3, "MICRO_OF_DAY"

    move-object/from16 v21, v1

    const-wide/16 v0, 0x0

    .line 756
    invoke-static {v3, v0, v1, v14, v15}, Lnet/time4j/LongElement;->create(Ljava/lang/String;JJ)Lnet/time4j/LongElement;

    move-result-object v3

    sput-object v3, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    const-wide v14, 0x4e94914effffL

    move-object/from16 v28, v3

    const-string v3, "NANO_OF_DAY"

    .line 808
    invoke-static {v3, v0, v1, v14, v15}, Lnet/time4j/LongElement;->create(Ljava/lang/String;JJ)Lnet/time4j/LongElement;

    move-result-object v0

    sput-object v0, Lnet/time4j/PlainTime;->NANO_OF_DAY:Lnet/time4j/ProportionalElement;

    .line 822
    new-instance v1, Lnet/time4j/DecimalTimeElement;

    sget-object v3, Lnet/time4j/PlainTime;->DECIMAL_23_9:Ljava/math/BigDecimal;

    const-string v14, "DECIMAL_HOUR"

    invoke-direct {v1, v14, v3}, Lnet/time4j/DecimalTimeElement;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    sput-object v1, Lnet/time4j/PlainTime;->DECIMAL_HOUR:Lnet/time4j/ZonalElement;

    .line 837
    new-instance v3, Lnet/time4j/DecimalTimeElement;

    sget-object v14, Lnet/time4j/PlainTime;->DECIMAL_59_9:Ljava/math/BigDecimal;

    const-string v15, "DECIMAL_MINUTE"

    invoke-direct {v3, v15, v14}, Lnet/time4j/DecimalTimeElement;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    sput-object v3, Lnet/time4j/PlainTime;->DECIMAL_MINUTE:Lnet/time4j/ZonalElement;

    .line 852
    new-instance v15, Lnet/time4j/DecimalTimeElement;

    move-object/from16 v29, v3

    const-string v3, "DECIMAL_SECOND"

    invoke-direct {v15, v3, v14}, Lnet/time4j/DecimalTimeElement;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;)V

    sput-object v15, Lnet/time4j/PlainTime;->DECIMAL_SECOND:Lnet/time4j/ZonalElement;

    .line 896
    sget-object v3, Lnet/time4j/PrecisionElement;->CLOCK_PRECISION:Lnet/time4j/engine/ChronoElement;

    sput-object v3, Lnet/time4j/PlainTime;->PRECISION:Lnet/time4j/engine/ChronoElement;

    move-object/from16 v30, v3

    .line 902
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 903
    invoke-static {v3, v4}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 904
    invoke-static {v3, v5}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 905
    invoke-static {v3, v6}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 906
    invoke-static {v3, v7}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 907
    invoke-static {v3, v9}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 908
    invoke-static {v3, v10}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 909
    invoke-static {v3, v11}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 910
    invoke-static {v3, v13}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 911
    invoke-static {v3, v8}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 912
    invoke-static {v3, v12}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    move-object/from16 v22, v12

    move-object/from16 v12, v21

    .line 913
    invoke-static {v3, v12}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    move-object/from16 v12, v19

    .line 914
    invoke-static {v3, v12}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    move-object/from16 v12, v18

    .line 915
    invoke-static {v3, v12}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    move-object/from16 v12, v20

    .line 916
    invoke-static {v3, v12}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 917
    invoke-static {v3, v2}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    move-object/from16 v20, v2

    move-object/from16 v2, v28

    .line 918
    invoke-static {v3, v2}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 919
    invoke-static {v3, v0}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 920
    invoke-static {v3, v1}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    move-object/from16 v28, v0

    move-object/from16 v0, v29

    .line 921
    invoke-static {v3, v0}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 922
    invoke-static {v3, v15}, Lnet/time4j/PlainTime;->fill(Ljava/util/Map;Lnet/time4j/engine/ChronoElement;)V

    .line 923
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lnet/time4j/PlainTime;->ELEMENTS:Ljava/util/Map;

    .line 926
    new-instance v3, Lnet/time4j/PlainTime$BigDecimalElementRule;

    move-object/from16 v29, v2

    sget-object v2, Lnet/time4j/PlainTime;->DECIMAL_24_0:Ljava/math/BigDecimal;

    invoke-direct {v3, v1, v2}, Lnet/time4j/PlainTime$BigDecimalElementRule;-><init>(Lnet/time4j/engine/ChronoElement;Ljava/math/BigDecimal;)V

    sput-object v3, Lnet/time4j/PlainTime;->H_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;

    .line 928
    new-instance v2, Lnet/time4j/PlainTime$BigDecimalElementRule;

    invoke-direct {v2, v0, v14}, Lnet/time4j/PlainTime$BigDecimalElementRule;-><init>(Lnet/time4j/engine/ChronoElement;Ljava/math/BigDecimal;)V

    sput-object v2, Lnet/time4j/PlainTime;->M_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;

    move-object/from16 v31, v0

    .line 930
    new-instance v0, Lnet/time4j/PlainTime$BigDecimalElementRule;

    invoke-direct {v0, v15, v14}, Lnet/time4j/PlainTime$BigDecimalElementRule;-><init>(Lnet/time4j/engine/ChronoElement;Ljava/math/BigDecimal;)V

    sput-object v0, Lnet/time4j/PlainTime;->S_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;

    .line 936
    const-class v14, Lnet/time4j/IsoTimeUnit;

    move-object/from16 v32, v0

    const-class v0, Lnet/time4j/PlainTime;

    move-object/from16 v33, v15

    new-instance v15, Lnet/time4j/PlainTime$Merger;

    move-object/from16 v34, v2

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Lnet/time4j/PlainTime$Merger;-><init>(Lnet/time4j/PlainTime$1;)V

    move-object/from16 v2, v17

    move-object/from16 v35, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v35

    .line 937
    invoke-static {v14, v0, v15, v2, v1}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$TimeRule;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/time4j/PlainTime$TimeRule;-><init>(Lnet/time4j/PlainTime$1;)V

    .line 943
    invoke-virtual {v0, v4, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$MeridiemRule;

    invoke-direct {v1, v2}, Lnet/time4j/PlainTime$MeridiemRule;-><init>(Lnet/time4j/PlainTime$1;)V

    .line 946
    invoke-virtual {v0, v5, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const/16 v2, 0xc

    const/4 v4, 0x1

    invoke-direct {v1, v6, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    .line 949
    invoke-virtual {v0, v6, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const/16 v2, 0x18

    invoke-direct {v1, v7, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    .line 953
    invoke-virtual {v0, v7, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const/16 v2, 0xb

    const/4 v4, 0x0

    invoke-direct {v1, v9, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    .line 957
    invoke-virtual {v0, v9, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const/16 v2, 0x17

    invoke-direct {v1, v10, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    .line 961
    invoke-virtual {v0, v10, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const/16 v2, 0x18

    invoke-direct {v1, v11, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    .line 965
    invoke-virtual {v0, v11, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const/16 v2, 0x3b

    invoke-direct {v1, v13, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v5, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    .line 969
    invoke-virtual {v0, v13, v1, v5}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const/16 v5, 0x5a0

    invoke-direct {v1, v8, v4, v5}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v5, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    .line 973
    invoke-virtual {v0, v8, v1, v5}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    move-object/from16 v5, v22

    invoke-direct {v1, v5, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    .line 977
    invoke-virtual {v0, v5, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const v2, 0x15180

    move-object/from16 v5, v21

    invoke-direct {v1, v5, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    .line 981
    invoke-virtual {v0, v5, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    move-object/from16 v2, v19

    const/16 v5, 0x3e7

    invoke-direct {v1, v2, v4, v5}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v5, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    .line 985
    invoke-virtual {v0, v2, v1, v5}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    move-object/from16 v2, v18

    const v5, 0xf423f

    invoke-direct {v1, v2, v4, v5}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v5, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    .line 989
    invoke-virtual {v0, v2, v1, v5}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const v2, 0x3b9ac9ff

    invoke-direct {v1, v12, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    .line 993
    invoke-virtual {v0, v12, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$IntegerElementRule;

    const v2, 0x5265c00

    move-object/from16 v5, v20

    invoke-direct {v1, v5, v4, v2}, Lnet/time4j/PlainTime$IntegerElementRule;-><init>(Lnet/time4j/engine/ChronoElement;II)V

    sget-object v2, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    .line 997
    invoke-virtual {v0, v5, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$LongElementRule;

    const-wide/16 v24, 0x0

    const-wide v26, 0x141dd76000L

    move-object/from16 v22, v1

    move-object/from16 v23, v29

    invoke-direct/range {v22 .. v27}, Lnet/time4j/PlainTime$LongElementRule;-><init>(Lnet/time4j/engine/ChronoElement;JJ)V

    sget-object v2, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    move-object/from16 v4, v29

    .line 1001
    invoke-virtual {v0, v4, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$LongElementRule;

    const-wide v26, 0x4e94914f0000L

    move-object/from16 v22, v1

    move-object/from16 v23, v28

    invoke-direct/range {v22 .. v27}, Lnet/time4j/PlainTime$LongElementRule;-><init>(Lnet/time4j/engine/ChronoElement;JJ)V

    sget-object v2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    move-object/from16 v4, v28

    .line 1005
    invoke-virtual {v0, v4, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    move-object/from16 v1, v16

    .line 1009
    invoke-virtual {v0, v1, v3}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    move-object/from16 v1, v31

    move-object/from16 v2, v34

    .line 1012
    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    move-object/from16 v2, v32

    move-object/from16 v1, v33

    .line 1015
    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/PlainTime$PrecisionRule;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/time4j/PlainTime$PrecisionRule;-><init>(Lnet/time4j/PlainTime$1;)V

    move-object/from16 v2, v30

    .line 1018
    invoke-virtual {v0, v2, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 1021
    invoke-static {v0}, Lnet/time4j/PlainTime;->registerExtensions(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 1022
    invoke-static {v0}, Lnet/time4j/PlainTime;->registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 1023
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/PlainTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method private constructor <init>(IIIIZ)V
    .locals 2

    .line 1042
    invoke-direct {p0}, Lnet/time4j/engine/TimePoint;-><init>()V

    if-eqz p5, :cond_1

    int-to-long v0, p1

    .line 1045
    invoke-static {v0, v1}, Lnet/time4j/PlainTime;->checkHour(J)V

    int-to-long v0, p2

    .line 1046
    invoke-static {v0, v1}, Lnet/time4j/PlainTime;->checkMinute(J)V

    int-to-long v0, p3

    .line 1047
    invoke-static {v0, v1}, Lnet/time4j/PlainTime;->checkSecond(J)V

    .line 1048
    invoke-static {p4}, Lnet/time4j/PlainTime;->checkNano(I)V

    const/16 p5, 0x18

    if-ne p1, p5, :cond_1

    or-int p5, p2, p3

    or-int/2addr p5, p4

    if-nez p5, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "T24:00:00 exceeded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    int-to-byte p1, p1

    .line 1058
    iput-byte p1, p0, Lnet/time4j/PlainTime;->hour:B

    int-to-byte p1, p2

    .line 1059
    iput-byte p1, p0, Lnet/time4j/PlainTime;->minute:B

    int-to-byte p1, p3

    .line 1060
    iput-byte p1, p0, Lnet/time4j/PlainTime;->second:B

    .line 1061
    iput p4, p0, Lnet/time4j/PlainTime;->nano:I

    return-void
.end method

.method static synthetic access$1000(Lnet/time4j/PlainTime;)I
    .locals 0

    .line 145
    iget p0, p0, Lnet/time4j/PlainTime;->nano:I

    return p0
.end method

.method static synthetic access$1100(II)Lnet/time4j/PlainTime;
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lnet/time4j/PlainTime;->createFromMillis(II)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lnet/time4j/PlainTime;)Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lnet/time4j/PlainTime;->isFullHour()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lnet/time4j/PlainTime;)Z
    .locals 0

    .line 145
    invoke-direct {p0}, Lnet/time4j/PlainTime;->isFullMinute()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(JI)Lnet/time4j/PlainTime;
    .locals 0

    .line 145
    invoke-static {p0, p1, p2}, Lnet/time4j/PlainTime;->createFromMicros(JI)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(J)Lnet/time4j/PlainTime;
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lnet/time4j/PlainTime;->createFromNanos(J)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(JJ)J
    .locals 0

    .line 145
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/PlainTime;->floorMod(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1700()Ljava/math/BigDecimal;
    .locals 1

    .line 145
    sget-object v0, Lnet/time4j/PlainTime;->DECIMAL_24_0:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/math/BigDecimal;
    .locals 1

    .line 145
    sget-object v0, Lnet/time4j/PlainTime;->DECIMAL_MRD:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/math/BigDecimal;
    .locals 1

    .line 145
    sget-object v0, Lnet/time4j/PlainTime;->DECIMAL_3600:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/math/BigDecimal;
    .locals 1

    .line 145
    sget-object v0, Lnet/time4j/PlainTime;->DECIMAL_60:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$2100(J)V
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lnet/time4j/PlainTime;->checkMinute(J)V

    return-void
.end method

.method static synthetic access$2200(J)V
    .locals 0

    .line 145
    invoke-static {p0, p1}, Lnet/time4j/PlainTime;->checkSecond(J)V

    return-void
.end method

.method static synthetic access$2300()Lnet/time4j/engine/ElementRule;
    .locals 1

    .line 145
    sget-object v0, Lnet/time4j/PlainTime;->M_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;

    return-object v0
.end method

.method static synthetic access$2400()Lnet/time4j/engine/ElementRule;
    .locals 1

    .line 145
    sget-object v0, Lnet/time4j/PlainTime;->S_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;

    return-object v0
.end method

.method static synthetic access$2500(JJ)J
    .locals 0

    .line 145
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/PlainTime;->floorDiv(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2600(IIIIZ)Lnet/time4j/PlainTime;
    .locals 0

    .line 145
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainTime;->of(IIIIZ)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lnet/time4j/PlainTime;)J
    .locals 2

    .line 145
    invoke-direct {p0}, Lnet/time4j/PlainTime;->getNanoOfDay()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lnet/time4j/PlainTime;)B
    .locals 0

    .line 145
    iget-byte p0, p0, Lnet/time4j/PlainTime;->hour:B

    return p0
.end method

.method static synthetic access$800(Lnet/time4j/PlainTime;)B
    .locals 0

    .line 145
    iget-byte p0, p0, Lnet/time4j/PlainTime;->minute:B

    return p0
.end method

.method static synthetic access$900(Lnet/time4j/PlainTime;)B
    .locals 0

    .line 145
    iget-byte p0, p0, Lnet/time4j/PlainTime;->second:B

    return p0
.end method

.method private static append2Digits(ILjava/lang/StringBuilder;)V
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/16 v0, 0x30

    .line 1784
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1787
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
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
            "Lnet/time4j/PlainTime;",
            ">;)",
            "Lnet/time4j/engine/Chronology<",
            "TS;>;"
        }
    .end annotation

    .line 1633
    new-instance v0, Lnet/time4j/engine/BridgeChronology;

    sget-object v1, Lnet/time4j/PlainTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    invoke-direct {v0, p0, v1}, Lnet/time4j/engine/BridgeChronology;-><init>(Lnet/time4j/engine/Converter;Lnet/time4j/engine/Chronology;)V

    return-object v0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/IsoTimeUnit;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 1611
    sget-object v0, Lnet/time4j/PlainTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method private static checkHour(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x18

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    .line 1794
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HOUR_OF_DAY out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMinute(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3b

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    .line 1803
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MINUTE_OF_HOUR out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkNano(I)V
    .locals 3

    if-ltz p0, :cond_0

    const v0, 0x3b9aca00

    if-ge p0, v0, :cond_0

    return-void

    .line 1821
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NANO_OF_SECOND out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSecond(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3b

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    .line 1812
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SECOND_OF_MINUTE out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createFromMicros(JI)Lnet/time4j/PlainTime;
    .locals 4

    const-wide/32 v0, 0xf4240

    .line 1848
    rem-long v2, p0, v0

    long-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, p2

    .line 1849
    div-long/2addr p0, v0

    long-to-int p0, p0

    .line 1850
    rem-int/lit8 p1, p0, 0x3c

    .line 1851
    div-int/lit8 p0, p0, 0x3c

    .line 1852
    rem-int/lit8 p2, p0, 0x3c

    .line 1853
    div-int/lit8 p0, p0, 0x3c

    .line 1855
    invoke-static {p0, p2, p1, v2}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method private static createFromMillis(II)Lnet/time4j/PlainTime;
    .locals 2

    .line 1832
    rem-int/lit16 v0, p0, 0x3e8

    const v1, 0xf4240

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 1833
    div-int/lit16 p0, p0, 0x3e8

    .line 1834
    rem-int/lit8 p1, p0, 0x3c

    .line 1835
    div-int/lit8 p0, p0, 0x3c

    .line 1836
    rem-int/lit8 v1, p0, 0x3c

    .line 1837
    div-int/lit8 p0, p0, 0x3c

    .line 1839
    invoke-static {p0, v1, p1, v0}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method private static createFromNanos(J)Lnet/time4j/PlainTime;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    .line 1861
    rem-long v2, p0, v0

    long-to-int v2, v2

    .line 1862
    div-long/2addr p0, v0

    long-to-int p0, p0

    .line 1863
    rem-int/lit8 p1, p0, 0x3c

    .line 1864
    div-int/lit8 p0, p0, 0x3c

    .line 1865
    rem-int/lit8 v0, p0, 0x3c

    .line 1866
    div-int/lit8 p0, p0, 0x3c

    .line 1868
    invoke-static {p0, v0, p1, v2}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
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

    .line 1774
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static floorDiv(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 1940
    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 1942
    div-long/2addr p0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private static floorMod(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 1926
    div-long v0, p0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long v2, p0, v0

    div-long/2addr v2, p2

    sub-long v0, v2, v0

    .line 1930
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->signum(J)I

    mul-long/2addr p2, v0

    sub-long/2addr p0, p2

    return-wide p0
.end method

.method static from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTime;
    .locals 4

    .line 1691
    invoke-interface {p0}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1692
    invoke-interface {p0}, Lnet/time4j/base/UnixTime;->getNanosecond()I

    move-result p0

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result p1

    add-int/2addr p0, p1

    const-wide/16 v2, 0x1

    const p1, 0x3b9aca00

    if-gez p0, :cond_0

    add-int/2addr p0, p1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    if-lt p0, p1, :cond_1

    sub-int/2addr p0, p1

    add-long/2addr v0, v2

    :cond_1
    :goto_0
    const p1, 0x15180

    .line 1702
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    .line 1703
    rem-int/lit8 v0, p1, 0x3c

    .line 1704
    div-int/lit8 p1, p1, 0x3c

    .line 1705
    rem-int/lit8 v1, p1, 0x3c

    .line 1706
    div-int/lit8 p1, p1, 0x3c

    .line 1708
    invoke-static {p1, v1, v0, p0}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lnet/time4j/base/WallTime;)Lnet/time4j/PlainTime;
    .locals 3

    .line 1324
    instance-of v0, p0, Lnet/time4j/PlainTime;

    if-eqz v0, :cond_0

    .line 1325
    check-cast p0, Lnet/time4j/PlainTime;

    return-object p0

    .line 1326
    :cond_0
    instance-of v0, p0, Lnet/time4j/PlainTimestamp;

    if-eqz v0, :cond_1

    .line 1327
    check-cast p0, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0

    .line 1330
    :cond_1
    invoke-interface {p0}, Lnet/time4j/base/WallTime;->getHour()I

    move-result v0

    .line 1331
    invoke-interface {p0}, Lnet/time4j/base/WallTime;->getMinute()I

    move-result v1

    .line 1332
    invoke-interface {p0}, Lnet/time4j/base/WallTime;->getSecond()I

    move-result v2

    .line 1333
    invoke-interface {p0}, Lnet/time4j/base/WallTime;->getNanosecond()I

    move-result p0

    .line 1329
    invoke-static {v0, v1, v2, p0}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method private getNanoOfDay()J
    .locals 8

    .line 1874
    iget v0, p0, Lnet/time4j/PlainTime;->nano:I

    int-to-long v0, v0

    iget-byte v2, p0, Lnet/time4j/PlainTime;->second:B

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-byte v2, p0, Lnet/time4j/PlainTime;->minute:B

    int-to-long v2, v2

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-byte v2, p0, Lnet/time4j/PlainTime;->hour:B

    int-to-long v2, v2

    const-wide/16 v6, 0xe10

    mul-long/2addr v2, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private isFullHour()Z
    .locals 2

    .line 1885
    iget-byte v0, p0, Lnet/time4j/PlainTime;->minute:B

    iget-byte v1, p0, Lnet/time4j/PlainTime;->second:B

    or-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/PlainTime;->nano:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFullMinute()Z
    .locals 2

    .line 1891
    iget-byte v0, p0, Lnet/time4j/PlainTime;->second:B

    iget v1, p0, Lnet/time4j/PlainTime;->nano:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static lookupElement(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1726
    sget-object v0, Lnet/time4j/PlainTime;->ELEMENTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static midnightAtEndOfDay()Lnet/time4j/PlainTime;
    .locals 1

    .line 1129
    sget-object v0, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    return-object v0
.end method

.method public static midnightAtStartOfDay()Lnet/time4j/PlainTime;
    .locals 1

    .line 1109
    sget-object v0, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    return-object v0
.end method

.method public static nowInSystemTime()Lnet/time4j/PlainTime;
    .locals 1

    .line 1306
    invoke-static {}, Lnet/time4j/ZonalClock;->ofSystem()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/ZonalClock;->now()Lnet/time4j/PlainTimestamp;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->toTime()Lnet/time4j/PlainTime;

    move-result-object v0

    return-object v0
.end method

.method public static of(I)Lnet/time4j/PlainTime;
    .locals 2

    int-to-long v0, p0

    .line 1149
    invoke-static {v0, v1}, Lnet/time4j/PlainTime;->checkHour(J)V

    .line 1150
    sget-object v0, Lnet/time4j/PlainTime;->HOURS:[Lnet/time4j/PlainTime;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static of(II)Lnet/time4j/PlainTime;
    .locals 7

    if-nez p1, :cond_0

    .line 1178
    invoke-static {p0}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0

    .line 1181
    :cond_0
    new-instance v6, Lnet/time4j/PlainTime;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lnet/time4j/PlainTime;-><init>(IIIIZ)V

    return-object v6
.end method

.method public static of(III)Lnet/time4j/PlainTime;
    .locals 7

    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 1212
    invoke-static {p0}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0

    .line 1215
    :cond_0
    new-instance v6, Lnet/time4j/PlainTime;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lnet/time4j/PlainTime;-><init>(IIIIZ)V

    return-object v6
.end method

.method public static of(IIII)Lnet/time4j/PlainTime;
    .locals 1

    const/4 v0, 0x1

    .line 1257
    invoke-static {p0, p1, p2, p3, v0}, Lnet/time4j/PlainTime;->of(IIIIZ)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0
.end method

.method private static of(IIIIZ)Lnet/time4j/PlainTime;
    .locals 7

    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 1759
    invoke-static {p0}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object p0

    return-object p0

    .line 1761
    :cond_0
    sget-object p1, Lnet/time4j/PlainTime;->HOURS:[Lnet/time4j/PlainTime;

    aget-object p0, p1, p0

    return-object p0

    .line 1765
    :cond_1
    new-instance v6, Lnet/time4j/PlainTime;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/time4j/PlainTime;-><init>(IIIIZ)V

    return-object v6
.end method

.method public static of(Ljava/math/BigDecimal;)Lnet/time4j/PlainTime;
    .locals 3

    .line 1280
    sget-object v0, Lnet/time4j/PlainTime;->H_DECIMAL_RULE:Lnet/time4j/engine/ElementRule;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lnet/time4j/engine/ElementRule;->withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainTime;

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lnet/time4j/format/TemporalFormatter;)Lnet/time4j/PlainTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;)",
            "Lnet/time4j/PlainTime;"
        }
    .end annotation

    .line 1411
    :try_start_0
    invoke-interface {p1, p0}, Lnet/time4j/format/TemporalFormatter;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/PlainTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1413
    new-instance p1, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method static printNanos(Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1657
    sget-char v0, Lnet/time4j/PlainTime;->ISO_DECIMAL_SEPARATOR:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1658
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0xf4240

    .line 1661
    rem-int v1, p1, v1

    const/16 v2, 0x9

    if-nez v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 1663
    :cond_0
    rem-int/lit16 p1, p1, 0x3e8

    if-nez p1, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    move p1, v2

    .line 1669
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-ge v1, v2, :cond_2

    const/16 v3, 0x30

    .line 1670
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1673
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p1, v3

    sub-int/2addr p1, v2

    :goto_2
    if-ge v1, p1, :cond_3

    .line 1674
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2001
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
            "Lnet/time4j/IsoTimeUnit;",
            "Lnet/time4j/PlainTime;",
            ">;)V"
        }
    .end annotation

    .line 1897
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

    .line 1898
    const-class v2, Lnet/time4j/PlainTime;

    invoke-interface {v1, v2}, Lnet/time4j/engine/ChronoExtension;->accept(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1899
    invoke-virtual {p0, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    goto :goto_0

    .line 1903
    :cond_1
    new-instance v0, Lnet/time4j/DayPeriod$Extension;

    invoke-direct {v0}, Lnet/time4j/DayPeriod$Extension;-><init>()V

    invoke-virtual {p0, v0}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    return-void
.end method

.method private static registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "Lnet/time4j/IsoTimeUnit;",
            "Lnet/time4j/PlainTime;",
            ">;)V"
        }
    .end annotation

    .line 1909
    const-class v0, Lnet/time4j/ClockUnit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1911
    invoke-static {}, Lnet/time4j/ClockUnit;->values()[Lnet/time4j/ClockUnit;

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v2, v7, v9

    .line 1912
    new-instance v3, Lnet/time4j/PlainTime$ClockUnitRule;

    const/4 v1, 0x0

    invoke-direct {v3, v2, v1}, Lnet/time4j/PlainTime$ClockUnitRule;-><init>(Lnet/time4j/ClockUnit;Lnet/time4j/PlainTime$1;)V

    .line 1915
    invoke-virtual {v2}, Lnet/time4j/ClockUnit;->getLength()D

    move-result-wide v4

    move-object v1, p0

    move-object v6, v0

    .line 1912
    invoke-virtual/range {v1 .. v6}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1989
    new-instance v0, Lnet/time4j/SPX;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lnet/time4j/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 144
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime;->compareTo(Lnet/time4j/PlainTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/PlainTime;)I
    .locals 2

    .line 1517
    iget-byte v0, p0, Lnet/time4j/PlainTime;->hour:B

    iget-byte v1, p1, Lnet/time4j/PlainTime;->hour:B

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1520
    iget-byte v0, p0, Lnet/time4j/PlainTime;->minute:B

    iget-byte v1, p1, Lnet/time4j/PlainTime;->minute:B

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1522
    iget-byte v0, p0, Lnet/time4j/PlainTime;->second:B

    iget-byte v1, p1, Lnet/time4j/PlainTime;->second:B

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1524
    iget v0, p0, Lnet/time4j/PlainTime;->nano:I

    iget p1, p1, Lnet/time4j/PlainTime;->nano:I

    sub-int/2addr v0, p1

    :cond_0
    if-gez v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Lnet/time4j/engine/TimePoint;)I
    .locals 0

    .line 144
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime;->compareTo(Lnet/time4j/PlainTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1431
    :cond_0
    instance-of v1, p1, Lnet/time4j/PlainTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1432
    check-cast p1, Lnet/time4j/PlainTime;

    .line 1433
    iget-byte v1, p0, Lnet/time4j/PlainTime;->hour:B

    iget-byte v3, p1, Lnet/time4j/PlainTime;->hour:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lnet/time4j/PlainTime;->minute:B

    iget-byte v3, p1, Lnet/time4j/PlainTime;->minute:B

    if-ne v1, v3, :cond_1

    iget-byte v1, p0, Lnet/time4j/PlainTime;->second:B

    iget-byte v3, p1, Lnet/time4j/PlainTime;->second:B

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/PlainTime;->nano:I

    iget p1, p1, Lnet/time4j/PlainTime;->nano:I

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

    .line 144
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/IsoTimeUnit;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 1640
    sget-object v0, Lnet/time4j/PlainTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/PlainTime;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getContext()Lnet/time4j/PlainTime;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .line 1070
    iget-byte v0, p0, Lnet/time4j/PlainTime;->hour:B

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 1077
    iget-byte v0, p0, Lnet/time4j/PlainTime;->minute:B

    return v0
.end method

.method public getNanosecond()I
    .locals 1

    .line 1091
    iget v0, p0, Lnet/time4j/PlainTime;->nano:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 1084
    iget-byte v0, p0, Lnet/time4j/PlainTime;->second:B

    return v0
.end method

.method hasReducedRange(Lnet/time4j/engine/ChronoElement;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 1739
    sget-object v0, Lnet/time4j/PlainTime;->MILLI_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lnet/time4j/PlainTime;->nano:I

    const v1, 0xf4240

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    :cond_0
    sget-object v0, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_1

    .line 1741
    invoke-direct {p0}, Lnet/time4j/PlainTime;->isFullHour()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sget-object v0, Lnet/time4j/PlainTime;->MINUTE_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_2

    .line 1742
    invoke-direct {p0}, Lnet/time4j/PlainTime;->isFullMinute()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lnet/time4j/PlainTime;->nano:I

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lnet/time4j/PlainTime;->MICRO_OF_DAY:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_5

    iget p1, p0, Lnet/time4j/PlainTime;->nano:I

    rem-int/lit16 p1, p1, 0x3e8

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1451
    iget-byte v0, p0, Lnet/time4j/PlainTime;->hour:B

    iget-byte v1, p0, Lnet/time4j/PlainTime;->minute:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget-byte v1, p0, Lnet/time4j/PlainTime;->second:B

    mul-int/lit16 v1, v1, 0xe10

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/PlainTime;->nano:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic isAfter(Ljava/lang/Object;)Z
    .locals 0

    .line 144
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime;->isAfter(Lnet/time4j/PlainTime;)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lnet/time4j/PlainTime;)Z
    .locals 0

    .line 1469
    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime;->compareTo(Lnet/time4j/PlainTime;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isBefore(Ljava/lang/Object;)Z
    .locals 0

    .line 144
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime;->isBefore(Lnet/time4j/PlainTime;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lnet/time4j/PlainTime;)Z
    .locals 0

    .line 1462
    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime;->compareTo(Lnet/time4j/PlainTime;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMidnight()Z
    .locals 1

    .line 1492
    invoke-direct {p0}, Lnet/time4j/PlainTime;->isFullHour()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lnet/time4j/PlainTime;->hour:B

    rem-int/lit8 v0, v0, 0x18

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isSimultaneous(Ljava/lang/Object;)Z
    .locals 0

    .line 144
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime;->isSimultaneous(Lnet/time4j/PlainTime;)Z

    move-result p1

    return p1
.end method

.method public isSimultaneous(Lnet/time4j/PlainTime;)Z
    .locals 0

    .line 1476
    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime;->compareTo(Lnet/time4j/PlainTime;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public print(Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1381
    invoke-interface {p1, p0}, Lnet/time4j/format/TemporalFormatter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public roll(JLnet/time4j/ClockUnit;)Lnet/time4j/DayCycles;
    .locals 0

    .line 1361
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/PlainTime$ClockUnitRule;->access$400(Lnet/time4j/PlainTime;JLnet/time4j/ClockUnit;)Lnet/time4j/DayCycles;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x54

    .line 1576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1577
    iget-byte v1, p0, Lnet/time4j/PlainTime;->hour:B

    invoke-static {v1, v0}, Lnet/time4j/PlainTime;->append2Digits(ILjava/lang/StringBuilder;)V

    .line 1579
    iget-byte v1, p0, Lnet/time4j/PlainTime;->minute:B

    iget-byte v2, p0, Lnet/time4j/PlainTime;->second:B

    or-int/2addr v1, v2

    iget v2, p0, Lnet/time4j/PlainTime;->nano:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/16 v1, 0x3a

    .line 1580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1581
    iget-byte v2, p0, Lnet/time4j/PlainTime;->minute:B

    invoke-static {v2, v0}, Lnet/time4j/PlainTime;->append2Digits(ILjava/lang/StringBuilder;)V

    .line 1583
    iget-byte v2, p0, Lnet/time4j/PlainTime;->second:B

    iget v3, p0, Lnet/time4j/PlainTime;->nano:I

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1585
    iget-byte v1, p0, Lnet/time4j/PlainTime;->second:B

    invoke-static {v1, v0}, Lnet/time4j/PlainTime;->append2Digits(ILjava/lang/StringBuilder;)V

    .line 1587
    iget v1, p0, Lnet/time4j/PlainTime;->nano:I

    if-eqz v1, :cond_0

    .line 1588
    invoke-static {v0, v1}, Lnet/time4j/PlainTime;->printNanos(Ljava/lang/StringBuilder;I)V

    .line 1593
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
