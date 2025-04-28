.class public final Lnet/time4j/calendar/EthiopianTime;
.super Lnet/time4j/engine/TimePoint;
.source "EthiopianTime.java"

# interfaces
.implements Lnet/time4j/engine/Temporal;
.implements Lnet/time4j/format/LocalizedPatternSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/EthiopianTime$SPX;,
        Lnet/time4j/calendar/EthiopianTime$Merger;,
        Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;,
        Lnet/time4j/calendar/EthiopianTime$GeneralHourRule;,
        Lnet/time4j/calendar/EthiopianTime$MeridiemRule;,
        Lnet/time4j/calendar/EthiopianTime$TimeRule;,
        Lnet/time4j/calendar/EthiopianTime$EthiopianHour;,
        Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;,
        Lnet/time4j/calendar/EthiopianTime$Unit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/TimePoint<",
        "Lnet/time4j/calendar/EthiopianTime$Unit;",
        "Lnet/time4j/calendar/EthiopianTime;",
        ">;",
        "Lnet/time4j/engine/Temporal<",
        "Lnet/time4j/calendar/EthiopianTime;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "ethiopic"
.end annotation


# static fields
.field public static final AM_PM_OF_DAY:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/Meridiem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "a"
    .end annotation
.end field

.field private static final DIGITAL_HOUR_INDEX:I = 0x1

.field public static final DIGITAL_HOUR_OF_DAY:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
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
            "Lnet/time4j/calendar/EthiopianTime$Unit;",
            "Lnet/time4j/calendar/EthiopianTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETHIOPIAN_HOUR:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "h"
    .end annotation
.end field

.field private static final ETHIOPIAN_HOUR_INDEX:I = 0x0

.field public static final ISO_TIME:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX:Lnet/time4j/calendar/EthiopianTime;

.field private static final MIN:Lnet/time4j/calendar/EthiopianTime;

.field private static final MINUTE_INDEX:I = 0x2

.field public static final MINUTE_OF_HOUR:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "m"
    .end annotation
.end field

.field private static final SECOND_INDEX:I = 0x3

.field public static final SECOND_OF_MINUTE:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "s"
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x31a0f0184ed71379L


# instance fields
.field private final transient hour24:I

.field private final transient minute:I

.field private final transient second:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 428
    sget-object v0, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    sput-object v0, Lnet/time4j/calendar/EthiopianTime;->ISO_TIME:Lnet/time4j/engine/ChronoElement;

    .line 437
    sget-object v1, Lnet/time4j/PlainTime;->AM_PM_OF_DAY:Lnet/time4j/ZonalElement;

    sput-object v1, Lnet/time4j/calendar/EthiopianTime;->AM_PM_OF_DAY:Lnet/time4j/engine/ChronoElement;

    .line 446
    sget-object v2, Lnet/time4j/calendar/EthiopianTime$EthiopianHour;->ELEMENT:Lnet/time4j/calendar/EthiopianTime$EthiopianHour;

    sput-object v2, Lnet/time4j/calendar/EthiopianTime;->ETHIOPIAN_HOUR:Lnet/time4j/engine/ChronoElement;

    .line 455
    sget-object v3, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    sput-object v3, Lnet/time4j/calendar/EthiopianTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/engine/ChronoElement;

    .line 464
    sget-object v4, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    sput-object v4, Lnet/time4j/calendar/EthiopianTime;->MINUTE_OF_HOUR:Lnet/time4j/engine/ChronoElement;

    .line 473
    sget-object v5, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    sput-object v5, Lnet/time4j/calendar/EthiopianTime;->SECOND_OF_MINUTE:Lnet/time4j/engine/ChronoElement;

    .line 480
    new-instance v6, Lnet/time4j/calendar/EthiopianTime;

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, v8}, Lnet/time4j/calendar/EthiopianTime;-><init>(III)V

    sput-object v6, Lnet/time4j/calendar/EthiopianTime;->MIN:Lnet/time4j/calendar/EthiopianTime;

    .line 481
    new-instance v7, Lnet/time4j/calendar/EthiopianTime;

    const/4 v9, 0x5

    const/16 v10, 0x3b

    invoke-direct {v7, v9, v10, v10}, Lnet/time4j/calendar/EthiopianTime;-><init>(III)V

    sput-object v7, Lnet/time4j/calendar/EthiopianTime;->MAX:Lnet/time4j/calendar/EthiopianTime;

    .line 483
    const-class v9, Lnet/time4j/calendar/EthiopianTime$Unit;

    const-class v10, Lnet/time4j/calendar/EthiopianTime;

    new-instance v11, Lnet/time4j/calendar/EthiopianTime$Merger;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lnet/time4j/calendar/EthiopianTime$Merger;-><init>(Lnet/time4j/calendar/EthiopianTime$1;)V

    .line 484
    invoke-static {v9, v10, v11, v6, v7}, Lnet/time4j/engine/TimeAxis$Builder;->setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v6

    new-instance v7, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;

    invoke-direct {v7, v12}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;-><init>(Lnet/time4j/calendar/EthiopianTime$1;)V

    .line 490
    invoke-virtual {v6, v1, v7}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v1

    new-instance v6, Lnet/time4j/calendar/EthiopianTime$TimeRule;

    invoke-direct {v6, v12}, Lnet/time4j/calendar/EthiopianTime$TimeRule;-><init>(Lnet/time4j/calendar/EthiopianTime$1;)V

    .line 493
    invoke-virtual {v1, v0, v6}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;

    invoke-direct {v1, v8}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;-><init>(I)V

    sget-object v6, Lnet/time4j/calendar/EthiopianTime$Unit;->HOURS:Lnet/time4j/calendar/EthiopianTime$Unit;

    .line 496
    invoke-virtual {v0, v2, v1, v6}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/EthiopianTime$Unit;->HOURS:Lnet/time4j/calendar/EthiopianTime$Unit;

    .line 500
    invoke-virtual {v0, v3, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/EthiopianTime$Unit;->MINUTES:Lnet/time4j/calendar/EthiopianTime$Unit;

    .line 504
    invoke-virtual {v0, v4, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    new-instance v1, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;-><init>(I)V

    sget-object v2, Lnet/time4j/calendar/EthiopianTime$Unit;->SECONDS:Lnet/time4j/calendar/EthiopianTime$Unit;

    .line 508
    invoke-virtual {v0, v5, v1, v2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object v0

    .line 512
    invoke-static {v0}, Lnet/time4j/calendar/EthiopianTime;->registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 513
    invoke-static {v0}, Lnet/time4j/calendar/EthiopianTime;->registerExtensions(Lnet/time4j/engine/TimeAxis$Builder;)V

    .line 514
    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    sput-object v0, Lnet/time4j/calendar/EthiopianTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1

    .line 532
    invoke-direct {p0}, Lnet/time4j/engine/TimePoint;-><init>()V

    if-ltz p1, :cond_2

    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_0

    if-gt p3, v0, :cond_0

    .line 549
    iput p1, p0, Lnet/time4j/calendar/EthiopianTime;->hour24:I

    .line 550
    iput p2, p0, Lnet/time4j/calendar/EthiopianTime;->minute:I

    .line 551
    iput p3, p0, Lnet/time4j/calendar/EthiopianTime;->second:I

    return-void

    .line 545
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SECOND_OF_MINUTE out of range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MINUTE_OF_HOUR out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 535
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HOUR_OF_DAY out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method synthetic constructor <init>(IIILnet/time4j/calendar/EthiopianTime$1;)V
    .locals 0

    .line 407
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianTime;-><init>(III)V

    return-void
.end method

.method static synthetic access$400(Lnet/time4j/calendar/EthiopianTime;)I
    .locals 0

    .line 407
    iget p0, p0, Lnet/time4j/calendar/EthiopianTime;->minute:I

    return p0
.end method

.method static synthetic access$500(Lnet/time4j/calendar/EthiopianTime;)I
    .locals 0

    .line 407
    iget p0, p0, Lnet/time4j/calendar/EthiopianTime;->second:I

    return p0
.end method

.method static synthetic access$600(Lnet/time4j/calendar/EthiopianTime;)I
    .locals 0

    .line 407
    iget p0, p0, Lnet/time4j/calendar/EthiopianTime;->hour24:I

    return p0
.end method

.method static synthetic access$800(Lnet/time4j/calendar/EthiopianTime;)I
    .locals 0

    .line 407
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result p0

    return p0
.end method

.method public static axis()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/EthiopianTime$Unit;",
            "Lnet/time4j/calendar/EthiopianTime;",
            ">;"
        }
    .end annotation

    .line 923
    sget-object v0, Lnet/time4j/calendar/EthiopianTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method public static from(Lnet/time4j/PlainTime;)Lnet/time4j/calendar/EthiopianTime;
    .locals 3

    .line 904
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    .line 905
    new-instance v1, Lnet/time4j/calendar/EthiopianTime;

    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getMinute()I

    move-result v2

    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getSecond()I

    move-result p0

    invoke-direct {v1, v0, v2, p0}, Lnet/time4j/calendar/EthiopianTime;-><init>(III)V

    return-object v1
.end method

.method private getTimeOfDay()I
    .locals 3

    .line 968
    iget v0, p0, Lnet/time4j/calendar/EthiopianTime;->second:I

    iget v1, p0, Lnet/time4j/calendar/EthiopianTime;->minute:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/calendar/EthiopianTime;->hour24:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x18

    :cond_0
    mul-int/lit16 v1, v1, 0xe10

    add-int/2addr v0, v1

    return v0
.end method

.method public static nowInSystemTime()Lnet/time4j/calendar/EthiopianTime;
    .locals 1

    .line 689
    invoke-static {}, Lnet/time4j/PlainTime;->nowInSystemTime()Lnet/time4j/PlainTime;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/EthiopianTime;->from(Lnet/time4j/PlainTime;)Lnet/time4j/calendar/EthiopianTime;

    move-result-object v0

    return-object v0
.end method

.method private static of(ZIII)Lnet/time4j/calendar/EthiopianTime;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v0, 0xc

    if-gt p1, v0, :cond_2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    add-int/lit8 p1, p1, 0x6

    if-eqz p0, :cond_1

    add-int/lit8 p1, p1, 0xc

    const/16 p0, 0x18

    if-lt p1, p0, :cond_1

    add-int/lit8 p1, p1, -0x18

    .line 962
    :cond_1
    new-instance p0, Lnet/time4j/calendar/EthiopianTime;

    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianTime;-><init>(III)V

    return-object p0

    .line 949
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hour out of range 1-12: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofDay(II)Lnet/time4j/calendar/EthiopianTime;
    .locals 1

    const/4 v0, 0x0

    .line 578
    invoke-static {v0, p0, p1, v0}, Lnet/time4j/calendar/EthiopianTime;->of(ZIII)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofDay(III)Lnet/time4j/calendar/EthiopianTime;
    .locals 1

    const/4 v0, 0x0

    .line 608
    invoke-static {v0, p0, p1, p2}, Lnet/time4j/calendar/EthiopianTime;->of(ZIII)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofNight(II)Lnet/time4j/calendar/EthiopianTime;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 633
    invoke-static {v0, p0, p1, v1}, Lnet/time4j/calendar/EthiopianTime;->of(ZIII)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p0

    return-object p0
.end method

.method public static ofNight(III)Lnet/time4j/calendar/EthiopianTime;
    .locals 1

    const/4 v0, 0x1

    .line 663
    invoke-static {v0, p0, p1, p2}, Lnet/time4j/calendar/EthiopianTime;->of(ZIII)Lnet/time4j/calendar/EthiopianTime;

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

    .line 1030
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static registerExtensions(Lnet/time4j/engine/TimeAxis$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "Lnet/time4j/calendar/EthiopianTime$Unit;",
            "Lnet/time4j/calendar/EthiopianTime;",
            ">;)V"
        }
    .end annotation

    .line 992
    new-instance v0, Lnet/time4j/calendar/service/EthiopianExtension;

    invoke-direct {v0}, Lnet/time4j/calendar/service/EthiopianExtension;-><init>()V

    invoke-virtual {p0, v0}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    .line 994
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoExtension;

    .line 995
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {}, Lnet/time4j/format/Attributes;->empty()Lnet/time4j/format/Attributes;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lnet/time4j/engine/ChronoExtension;->getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    move-result-object v2

    .line 997
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 998
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/ChronoElement;

    .line 999
    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_DAY_PERIOD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1000
    invoke-virtual {p0, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    :cond_2
    return-void
.end method

.method private static registerUnits(Lnet/time4j/engine/TimeAxis$Builder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "Lnet/time4j/calendar/EthiopianTime$Unit;",
            "Lnet/time4j/calendar/EthiopianTime;",
            ">;)V"
        }
    .end annotation

    .line 978
    const-class v0, Lnet/time4j/calendar/EthiopianTime$Unit;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 980
    invoke-static {}, Lnet/time4j/calendar/EthiopianTime$Unit;->values()[Lnet/time4j/calendar/EthiopianTime$Unit;

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v2, v7, v9

    .line 981
    new-instance v3, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;

    const/4 v1, 0x0

    invoke-direct {v3, v2, v1}, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;-><init>(Lnet/time4j/calendar/EthiopianTime$Unit;Lnet/time4j/calendar/EthiopianTime$1;)V

    .line 984
    invoke-virtual {v2}, Lnet/time4j/calendar/EthiopianTime$Unit;->getLength()D

    move-result-wide v4

    move-object v1, p0

    move-object v6, v0

    .line 981
    invoke-virtual/range {v1 .. v6}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1018
    new-instance v0, Lnet/time4j/calendar/EthiopianTime$SPX;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/EthiopianTime$SPX;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 406
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime;->compareTo(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/calendar/EthiopianTime;)I
    .locals 1

    .line 819
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result v0

    invoke-direct {p1}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Lnet/time4j/engine/TimePoint;)I
    .locals 0

    .line 406
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime;->compareTo(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 828
    :cond_0
    instance-of v1, p1, Lnet/time4j/calendar/EthiopianTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 829
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    .line 830
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result v1

    invoke-direct {p1}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

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

    .line 406
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianTime;->getChronology()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lnet/time4j/engine/TimeAxis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "Lnet/time4j/calendar/EthiopianTime$Unit;",
            "Lnet/time4j/calendar/EthiopianTime;",
            ">;"
        }
    .end annotation

    .line 930
    sget-object v0, Lnet/time4j/calendar/EthiopianTime;->ENGINE:Lnet/time4j/engine/TimeAxis;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/calendar/EthiopianTime;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianTime;->getContext()Lnet/time4j/calendar/EthiopianTime;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 2

    .line 747
    iget v0, p0, Lnet/time4j/calendar/EthiopianTime;->hour24:I

    add-int/lit8 v0, v0, -0x6

    const/16 v1, 0xc

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0xc

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public getMinute()I
    .locals 1

    .line 773
    iget v0, p0, Lnet/time4j/calendar/EthiopianTime;->minute:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 791
    iget v0, p0, Lnet/time4j/calendar/EthiopianTime;->second:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 840
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isAfter(Ljava/lang/Object;)Z
    .locals 0

    .line 406
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime;->isAfter(Lnet/time4j/calendar/EthiopianTime;)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lnet/time4j/calendar/EthiopianTime;)Z
    .locals 1

    .line 798
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result v0

    invoke-direct {p1}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

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

    .line 406
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime;->isBefore(Lnet/time4j/calendar/EthiopianTime;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lnet/time4j/calendar/EthiopianTime;)Z
    .locals 1

    .line 805
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result v0

    invoke-direct {p1}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

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

    .line 707
    iget v0, p0, Lnet/time4j/calendar/EthiopianTime;->hour24:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNight()Z
    .locals 1

    .line 725
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianTime;->isDay()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic isSimultaneous(Ljava/lang/Object;)Z
    .locals 0

    .line 406
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime;->isSimultaneous(Lnet/time4j/calendar/EthiopianTime;)Z

    move-result p1

    return p1
.end method

.method public isSimultaneous(Lnet/time4j/calendar/EthiopianTime;)Z
    .locals 1

    .line 812
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result v0

    invoke-direct {p1}, Lnet/time4j/calendar/EthiopianTime;->getTimeOfDay()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toISO()Lnet/time4j/PlainTime;
    .locals 3

    .line 879
    iget v0, p0, Lnet/time4j/calendar/EthiopianTime;->hour24:I

    iget v1, p0, Lnet/time4j/calendar/EthiopianTime;->minute:I

    iget v2, p0, Lnet/time4j/calendar/EthiopianTime;->second:I

    invoke-static {v0, v1, v2}, Lnet/time4j/PlainTime;->of(III)Lnet/time4j/PlainTime;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ethiopic-"

    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianTime;->isDay()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "day-"

    goto :goto_0

    :cond_0
    const-string v1, "night-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {p0}, Lnet/time4j/calendar/EthiopianTime;->getHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 852
    iget v2, p0, Lnet/time4j/calendar/EthiopianTime;->minute:I

    const/16 v3, 0x30

    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    .line 853
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 855
    :cond_1
    iget v2, p0, Lnet/time4j/calendar/EthiopianTime;->minute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 857
    iget v1, p0, Lnet/time4j/calendar/EthiopianTime;->second:I

    if-ge v1, v4, :cond_2

    .line 858
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    :cond_2
    iget v1, p0, Lnet/time4j/calendar/EthiopianTime;->second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
