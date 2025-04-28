.class public final Lnet/time4j/calendar/HebrewTime;
.super Lnet/time4j/engine/TimePoint;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/Temporal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/HebrewTime$SPX;,
        Lnet/time4j/calendar/HebrewTime$Merger;,
        Lnet/time4j/calendar/HebrewTime$IntegerElementRule;,
        Lnet/time4j/calendar/HebrewTime$CycleRule;,
        Lnet/time4j/calendar/HebrewTime$UnitOperator;,
        Lnet/time4j/calendar/HebrewTime$ClockUnitRule;,
        Lnet/time4j/calendar/HebrewTime$Unit;,
        Lnet/time4j/calendar/HebrewTime$ClockCycle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/TimePoint<",
        "Lnet/time4j/calendar/HebrewTime$Unit;",
        "Lnet/time4j/calendar/HebrewTime;",
        ">;",
        "Lnet/time4j/engine/Temporal<",
        "Lnet/time4j/calendar/HebrewTime;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "hebrew"
.end annotation


# static fields
.field public static final CLOCK_CYCLE:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/calendar/HebrewTime$ClockCycle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLOCK_HOUR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "h"
    .end annotation
.end field

.field public static final DIGITAL_HOUR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "H"
    .end annotation
.end field

.field private static final ENGINE:Lnet/time4j/engine/TimeAxis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/HebrewTime$Unit;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOUR12_INDEX:I = 0x0

.field private static final HOUR23_INDEX:I = 0x1

.field private static final MAX:Lnet/time4j/calendar/HebrewTime;

.field private static final MIN:Lnet/time4j/calendar/HebrewTime;

.field private static final PARTS_IN_HOUR:I = 0x438

.field private static final PART_INDEX:I = 0x2

.field public static final PART_OF_HOUR:Lnet/time4j/calendar/StdCalendarElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/StdCalendarElement<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        dynamic = true
        format = "P"
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x56233f60467cbaa8L


# instance fields
.field private final transient hour23:I

.field private final transient part:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 170
    const-class v0, Lnet/time4j/calendar/HebrewTime;

    new-instance v1, Lnet/time4j/calendar/service/StdEnumDateElement;

    const-class v2, Lnet/time4j/calendar/HebrewTime$ClockCycle;

    const-string v3, "CLOCK_CYCLE"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v2, v4}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    sput-object v1, Lnet/time4j/calendar/HebrewTime;->CLOCK_CYCLE:Lnet/time4j/engine/ChronoElement;

    .line 180
    new-instance v2, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v7, Lnet/time4j/calendar/HebrewTime;

    new-instance v11, Lnet/time4j/calendar/HebrewTime$UnitOperator;

    sget-object v3, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v11, v3, v13, v14}, Lnet/time4j/calendar/HebrewTime$UnitOperator;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;ZLnet/time4j/calendar/HebrewTime$1;)V

    new-instance v12, Lnet/time4j/calendar/HebrewTime$UnitOperator;

    sget-object v3, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-direct {v12, v3, v4, v14}, Lnet/time4j/calendar/HebrewTime$UnitOperator;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;ZLnet/time4j/calendar/HebrewTime$1;)V

    const-string v6, "CLOCK_HOUR"

    const/4 v8, 0x1

    const/16 v9, 0xc

    const/16 v10, 0x68

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v2, Lnet/time4j/calendar/HebrewTime;->CLOCK_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    .line 197
    new-instance v3, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v17, Lnet/time4j/calendar/HebrewTime;

    new-instance v5, Lnet/time4j/calendar/HebrewTime$UnitOperator;

    sget-object v6, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-direct {v5, v6, v13, v14}, Lnet/time4j/calendar/HebrewTime$UnitOperator;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;ZLnet/time4j/calendar/HebrewTime$1;)V

    new-instance v6, Lnet/time4j/calendar/HebrewTime$UnitOperator;

    sget-object v7, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-direct {v6, v7, v4, v14}, Lnet/time4j/calendar/HebrewTime$UnitOperator;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;ZLnet/time4j/calendar/HebrewTime$1;)V

    const-string v16, "DIGITAL_HOUR"

    const/16 v18, 0x0

    const/16 v19, 0x17

    const/16 v20, 0x48

    move-object v15, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-direct/range {v15 .. v22}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v3, Lnet/time4j/calendar/HebrewTime;->DIGITAL_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    .line 220
    new-instance v5, Lnet/time4j/calendar/service/StdIntegerDateElement;

    const-class v23, Lnet/time4j/calendar/HebrewTime;

    new-instance v6, Lnet/time4j/calendar/HebrewTime$UnitOperator;

    sget-object v7, Lnet/time4j/calendar/HebrewTime$Unit;->HALAKIM:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-direct {v6, v7, v13, v14}, Lnet/time4j/calendar/HebrewTime$UnitOperator;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;ZLnet/time4j/calendar/HebrewTime$1;)V

    new-instance v7, Lnet/time4j/calendar/HebrewTime$UnitOperator;

    sget-object v8, Lnet/time4j/calendar/HebrewTime$Unit;->HALAKIM:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-direct {v7, v8, v4, v14}, Lnet/time4j/calendar/HebrewTime$UnitOperator;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;ZLnet/time4j/calendar/HebrewTime$1;)V

    const-string v22, "PART_OF_HOUR"

    const/16 v24, 0x0

    const/16 v25, 0x437

    const/16 v26, 0x50

    move-object/from16 v21, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    invoke-direct/range {v21 .. v28}, Lnet/time4j/calendar/service/StdIntegerDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;IICLnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoOperator;)V

    sput-object v5, Lnet/time4j/calendar/HebrewTime;->PART_OF_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    .line 235
    new-instance v6, Lnet/time4j/calendar/HebrewTime;

    invoke-direct {v6, v4, v4}, Lnet/time4j/calendar/HebrewTime;-><init>(II)V

    sput-object v6, Lnet/time4j/calendar/HebrewTime;->MIN:Lnet/time4j/calendar/HebrewTime;

    .line 236
    new-instance v7, Lnet/time4j/calendar/HebrewTime;

    const/16 v8, 0x17

    const/16 v9, 0x437

    invoke-direct {v7, v8, v9}, Lnet/time4j/calendar/HebrewTime;-><init>(II)V

    sput-object v7, Lnet/time4j/calendar/HebrewTime;->MAX:Lnet/time4j/calendar/HebrewTime;

    .line 238
    const-class v8, Lnet/time4j/calendar/HebrewTime$Unit;

    new-instance v9, Lnet/time4j/calendar/HebrewTime$Merger;

    invoke-direct {v9, v14}, Lnet/time4j/calendar/HebrewTime$Merger;-><init>(Lnet/time4j/calendar/HebrewTime$1;)V

    .line 239
    invoke-static {v8, v0, v9, v6, v7}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v6, Lnet/time4j/calendar/HebrewTime$CycleRule;

    invoke-direct {v6, v14}, Lnet/time4j/calendar/HebrewTime$CycleRule;-><init>(Lnet/time4j/calendar/HebrewTime$1;)V

    .line 245
    invoke-virtual {v0, v1, v6}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;

    invoke-direct {v1, v4}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;-><init>(I)V

    sget-object v4, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    .line 248
    invoke-virtual {v0, v2, v1, v4}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;

    invoke-direct {v1, v13}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    .line 252
    invoke-virtual {v0, v3, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/HebrewTime$Unit;->HALAKIM:Lnet/time4j/calendar/HebrewTime$Unit;

    .line 256
    invoke-virtual {v0, v5, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lnet/time4j/calendar/HebrewTime;->registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 261
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/HebrewTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 300
    invoke-direct {p0}, Lnet/time4j/engine/TimePoint;-><init>()V

    .line 302
    iput p1, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    .line 303
    iput p2, p0, Lnet/time4j/calendar/HebrewTime;->part:I

    return-void
.end method

.method synthetic constructor <init>(IILnet/time4j/calendar/HebrewTime$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/HebrewTime;-><init>(II)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/calendar/HebrewTime$ClockCycle;II)V
    .locals 2

    .line 278
    invoke-direct {p0}, Lnet/time4j/engine/TimePoint;-><init>()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v0, 0xc

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    const/16 v1, 0x438

    if-ge p3, v1, :cond_2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 291
    :cond_0
    sget-object v0, Lnet/time4j/calendar/HebrewTime$ClockCycle;->NIGHT:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HebrewTime$ClockCycle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0xc

    :goto_0
    iput p2, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    .line 292
    iput p3, p0, Lnet/time4j/calendar/HebrewTime;->part:I

    return-void

    .line 286
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PART_OF_HOUR out of range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CLOCK_HOUR out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewTime$ClockCycle;IILnet/time4j/calendar/HebrewTime$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewTime;-><init>(Lnet/time4j/calendar/HebrewTime$ClockCycle;II)V

    return-void
.end method

.method static synthetic access$600(Lnet/time4j/calendar/HebrewTime;)I
    .locals 0

    .line 151
    iget p0, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    return p0
.end method

.method static synthetic access$700(Lnet/time4j/calendar/HebrewTime;)I
    .locals 0

    .line 151
    iget p0, p0, Lnet/time4j/calendar/HebrewTime;->part:I

    return p0
.end method

.method static synthetic access$800(Lnet/time4j/calendar/HebrewTime;)I
    .locals 0

    .line 151
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result p0

    return p0
.end method

.method public static at(Lnet/time4j/calendar/astro/SolarTime;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/astro/SolarTime;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;"
        }
    .end annotation

    .line 472
    new-instance v0, Lnet/time4j/calendar/HebrewTime$1;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/HebrewTime$1;-><init>(Lnet/time4j/calendar/astro/SolarTime;)V

    return-object v0
.end method

.method public static at(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;"
        }
    .end annotation

    .line 555
    new-instance v0, Lnet/time4j/calendar/HebrewTime$2;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/HebrewTime$2;-><init>(Lnet/time4j/tz/TZID;)V

    return-object v0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/HebrewTime$Unit;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;"
        }
    .end annotation

    .line 843
    sget-object v0, Lnet/time4j/calendar/HebrewTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method private getTimeOfDay()I
    .locals 2

    .line 863
    iget v0, p0, Lnet/time4j/calendar/HebrewTime;->part:I

    iget v1, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    mul-int/lit16 v1, v1, 0x438

    add-int/2addr v0, v1

    return v0
.end method

.method public static now(Lnet/time4j/calendar/astro/SolarTime;)Lnet/time4j/calendar/HebrewTime;
    .locals 1

    .line 410
    invoke-static {p0}, Lnet/time4j/calendar/HebrewTime;->at(Lnet/time4j/calendar/astro/SolarTime;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p0

    invoke-static {}, Lnet/time4j/SystemClock;->currentMoment()Lnet/time4j/Moment;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HebrewTime;

    return-object p0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/HebrewTime;
    .locals 2

    .line 441
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/HebrewTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HebrewTime;

    return-object v0
.end method

.method public static ofDay(II)Lnet/time4j/calendar/HebrewTime;
    .locals 2

    .line 386
    new-instance v0, Lnet/time4j/calendar/HebrewTime;

    sget-object v1, Lnet/time4j/calendar/HebrewTime$ClockCycle;->DAY:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    invoke-direct {v0, v1, p0, p1}, Lnet/time4j/calendar/HebrewTime;-><init>(Lnet/time4j/calendar/HebrewTime$ClockCycle;II)V

    return-object v0
.end method

.method public static ofDigital(II)Lnet/time4j/calendar/HebrewTime;
    .locals 2

    if-ltz p0, :cond_1

    const/16 v0, 0x17

    if-gt p0, v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x438

    if-ge p1, v0, :cond_0

    .line 338
    new-instance v0, Lnet/time4j/calendar/HebrewTime;

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/HebrewTime;-><init>(II)V

    return-object v0

    .line 334
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PART_OF_HOUR out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIGITAL_HOUR out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ofNight(II)Lnet/time4j/calendar/HebrewTime;
    .locals 2

    .line 362
    new-instance v0, Lnet/time4j/calendar/HebrewTime;

    sget-object v1, Lnet/time4j/calendar/HebrewTime$ClockCycle;->NIGHT:Lnet/time4j/calendar/HebrewTime$ClockCycle;

    invoke-direct {v0, v1, p0, p1}, Lnet/time4j/calendar/HebrewTime;-><init>(Lnet/time4j/calendar/HebrewTime$ClockCycle;II)V

    return-object v0
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

.method private static registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "Lnet/time4j/calendar/HebrewTime$Unit;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;)V"
        }
    .end annotation

    .line 869
    const-class v0, Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 871
    invoke-static {}, Lnet/time4j/calendar/HebrewTime$Unit;->values()[Lnet/time4j/calendar/HebrewTime$Unit;

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v2, v7, v9

    .line 872
    new-instance v3, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;

    const/4 v1, 0x0

    invoke-direct {v3, v2, v1}, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;Lnet/time4j/calendar/HebrewTime$1;)V

    .line 875
    invoke-virtual {v2}, Lnet/time4j/calendar/HebrewTime$Unit;->getLength()D

    move-result-wide v4

    move-object v1, p0

    move-object v6, v0

    .line 872
    invoke-virtual/range {v1 .. v6}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 890
    new-instance v0, Lnet/time4j/calendar/HebrewTime$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/HebrewTime$SPX;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 150
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime;->compareTo(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/calendar/HebrewTime;)I
    .locals 1

    .line 689
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result v0

    invoke-direct {p1}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Lnet/time4j/engine/TimePoint;)I
    .locals 0

    .line 150
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime;->compareTo(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 698
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/HebrewTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 699
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    .line 700
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result v1

    invoke-direct {p1}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result p1

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

    .line 150
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewTime;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/HebrewTime$Unit;",
            "Lnet/time4j/calendar/HebrewTime;",
            ">;"
        }
    .end annotation

    .line 850
    sget-object v0, Lnet/time4j/calendar/HebrewTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public getClockHour()I
    .locals 2

    .line 619
    iget v0, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    .line 621
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewTime;->isDay()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0xc

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0xc

    :cond_1
    return v0
.end method

.method protected getContext()Lnet/time4j/calendar/HebrewTime;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewTime;->getContext()Lnet/time4j/calendar/HebrewTime;

    move-result-object v0

    return-object v0
.end method

.method public getDigitalHour()I
    .locals 1

    .line 645
    iget v0, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    return v0
.end method

.method public getPart()I
    .locals 1

    .line 661
    iget v0, p0, Lnet/time4j/calendar/HebrewTime;->part:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 710
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isAfter(Ljava/lang/Object;)Z
    .locals 0

    .line 150
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime;->isAfter(Lnet/time4j/calendar/HebrewTime;)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lnet/time4j/calendar/HebrewTime;)Z
    .locals 1

    .line 668
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result v0

    invoke-direct {p1}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result p1

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isBefore(Ljava/lang/Object;)Z
    .locals 0

    .line 150
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime;->isBefore(Lnet/time4j/calendar/HebrewTime;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lnet/time4j/calendar/HebrewTime;)Z
    .locals 1

    .line 675
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result v0

    invoke-direct {p1}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDay()Z
    .locals 2

    .line 599
    iget v0, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNight()Z
    .locals 2

    .line 583
    iget v0, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isSimultaneous(Ljava/lang/Object;)Z
    .locals 0

    .line 150
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime;->isSimultaneous(Lnet/time4j/calendar/HebrewTime;)Z

    move-result p1

    return p1
.end method

.method public isSimultaneous(Lnet/time4j/calendar/HebrewTime;)Z
    .locals 1

    .line 682
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result v0

    invoke-direct {p1}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public on(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/calendar/astro/SolarTime;)Lnet/time4j/Moment;
    .locals 3

    .line 754
    const-class v0, Lnet/time4j/PlainDate;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HebrewCalendar;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 759
    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewTime;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p2}, Lnet/time4j/calendar/astro/SolarTime;->sunset()Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    sget-object v1, Lnet/time4j/engine/CalendarDays;->ONE:Lnet/time4j/engine/CalendarDays;

    invoke-virtual {p1, v1}, Lnet/time4j/PlainDate;->minus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    .line 762
    invoke-virtual {p2}, Lnet/time4j/calendar/astro/SolarTime;->sunrise()Lnet/time4j/engine/ChronoFunction;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;

    move-object p2, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc

    .line 764
    sget-object v2, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {p0, v0, v1, v2}, Lnet/time4j/calendar/HebrewTime;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HebrewTime;

    .line 765
    invoke-virtual {p2}, Lnet/time4j/calendar/astro/SolarTime;->sunrise()Lnet/time4j/engine/ChronoFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/Moment;

    .line 766
    invoke-virtual {p2}, Lnet/time4j/calendar/astro/SolarTime;->sunset()Lnet/time4j/engine/ChronoFunction;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;

    move-object p2, v0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 770
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1}, Lnet/time4j/Moment;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 771
    invoke-virtual {v0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v2

    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    if-le v2, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 776
    :cond_1
    invoke-direct {p2}, Lnet/time4j/calendar/HebrewTime;->getTimeOfDay()I

    move-result p1

    mul-int/2addr p1, v1

    int-to-double p1, p1

    const-wide v1, 0x40c9500000000000L    # 12960.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-long p1, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 775
    invoke-virtual {v0, p1, p2, v1}, Lnet/time4j/Moment;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public on(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;
    .locals 5

    .line 818
    iget v0, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    const/16 v1, 0x12

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x18

    .line 819
    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Lnet/time4j/calendar/HebrewTime;->part:I

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    .line 820
    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    const/16 v4, 0xf

    .line 821
    invoke-virtual {v2, v4, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    const/16 v4, 0x438

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(I)V

    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 822
    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 823
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 824
    invoke-static {v1}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object v1

    sget-object v2, Lnet/time4j/PlainTime;->DECIMAL_HOUR:Lnet/time4j/ZonalElement;

    invoke-virtual {v1, v2, v0}, Lnet/time4j/PlainTime;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainTime;

    .line 825
    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HebrewCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    sget-object v0, Lnet/time4j/engine/StartOfDay;->EVENING:Lnet/time4j/engine/StartOfDay;

    invoke-virtual {p1, p2, v0}, Lnet/time4j/GeneralTimestamp;->in(Lnet/time4j/tz/Timezone;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    iget v1, p0, Lnet/time4j/calendar/HebrewTime;->hour23:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    iget v1, p0, Lnet/time4j/calendar/HebrewTime;->part:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    .line 721
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
