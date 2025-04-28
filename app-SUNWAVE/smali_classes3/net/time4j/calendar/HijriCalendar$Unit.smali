.class public final enum Lnet/time4j/calendar/HijriCalendar$Unit;
.super Ljava/lang/Enum;
.source "HijriCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HijriCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/calendar/HijriCalendar$Unit;",
        ">;",
        "Lnet/time4j/engine/ChronoUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/calendar/HijriCalendar$Unit;

.field public static final enum DAYS:Lnet/time4j/calendar/HijriCalendar$Unit;

.field public static final enum MONTHS:Lnet/time4j/calendar/HijriCalendar$Unit;

.field public static final enum WEEKS:Lnet/time4j/calendar/HijriCalendar$Unit;

.field public static final enum YEARS:Lnet/time4j/calendar/HijriCalendar$Unit;


# instance fields
.field private final transient length:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1493
    new-instance v0, Lnet/time4j/calendar/HijriCalendar$Unit;

    const-string v1, "YEARS"

    const/4 v2, 0x0

    const-wide v3, 0x417d32ec00000000L    # 3.061728E7

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/calendar/HijriCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lnet/time4j/calendar/HijriCalendar$Unit;->YEARS:Lnet/time4j/calendar/HijriCalendar$Unit;

    .line 1495
    new-instance v1, Lnet/time4j/calendar/HijriCalendar$Unit;

    const-string v3, "MONTHS"

    const/4 v4, 0x1

    const-wide v5, 0x4143774800000000L    # 2551440.0

    invoke-direct {v1, v3, v4, v5, v6}, Lnet/time4j/calendar/HijriCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v1, Lnet/time4j/calendar/HijriCalendar$Unit;->MONTHS:Lnet/time4j/calendar/HijriCalendar$Unit;

    .line 1497
    new-instance v3, Lnet/time4j/calendar/HijriCalendar$Unit;

    const-string v5, "WEEKS"

    const/4 v6, 0x2

    const-wide v7, 0x4122750000000000L    # 604800.0

    invoke-direct {v3, v5, v6, v7, v8}, Lnet/time4j/calendar/HijriCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v3, Lnet/time4j/calendar/HijriCalendar$Unit;->WEEKS:Lnet/time4j/calendar/HijriCalendar$Unit;

    .line 1499
    new-instance v5, Lnet/time4j/calendar/HijriCalendar$Unit;

    const-string v7, "DAYS"

    const/4 v8, 0x3

    const-wide v9, 0x40f5180000000000L    # 86400.0

    invoke-direct {v5, v7, v8, v9, v10}, Lnet/time4j/calendar/HijriCalendar$Unit;-><init>(Ljava/lang/String;ID)V

    sput-object v5, Lnet/time4j/calendar/HijriCalendar$Unit;->DAYS:Lnet/time4j/calendar/HijriCalendar$Unit;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/calendar/HijriCalendar$Unit;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1488
    sput-object v7, Lnet/time4j/calendar/HijriCalendar$Unit;->$VALUES:[Lnet/time4j/calendar/HijriCalendar$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .line 1507
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1508
    iput-wide p3, p0, Lnet/time4j/calendar/HijriCalendar$Unit;->length:D

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/calendar/HijriCalendar$Unit;
    .locals 1

    .line 1488
    const-class v0, Lnet/time4j/calendar/HijriCalendar$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/calendar/HijriCalendar$Unit;

    return-object p0
.end method

.method public static values()[Lnet/time4j/calendar/HijriCalendar$Unit;
    .locals 1

    .line 1488
    sget-object v0, Lnet/time4j/calendar/HijriCalendar$Unit;->$VALUES:[Lnet/time4j/calendar/HijriCalendar$Unit;

    invoke-virtual {v0}, [Lnet/time4j/calendar/HijriCalendar$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/calendar/HijriCalendar$Unit;

    return-object v0
.end method


# virtual methods
.method addTo(Lnet/time4j/calendar/HijriCalendar;I)Lnet/time4j/calendar/HijriCalendar;
    .locals 4

    .line 1610
    sget-object v0, Lnet/time4j/calendar/HijriCalendar$2;->$SwitchMap$net$time4j$calendar$HijriCalendar$Unit:[I

    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    int-to-long v0, p2

    .line 1623
    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/HijriCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    return-object p1

    .line 1625
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1621
    :cond_1
    sget-object v0, Lnet/time4j/calendar/HijriCalendar$Unit;->DAYS:Lnet/time4j/calendar/HijriCalendar$Unit;

    const/4 v1, 0x7

    invoke-static {p2, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/HijriCalendar$Unit;->addTo(Lnet/time4j/calendar/HijriCalendar;I)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1

    .line 1614
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v0

    const/16 v2, 0xc

    mul-int/2addr v0, v2

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$500(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v3

    sub-int/2addr v3, v1

    add-int/2addr v0, v3

    invoke-static {v0, p2}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p2

    .line 1615
    invoke-static {p2, v2}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    .line 1616
    invoke-static {p2, v2}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p2

    add-int/2addr p2, v1

    .line 1617
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-interface {v1, v2, v0, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v1

    .line 1618
    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1619
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p2, v1}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1

    .line 1612
    :cond_3
    sget-object v0, Lnet/time4j/calendar/HijriCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getYear()I

    move-result v1

    invoke-static {v1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lnet/time4j/calendar/HijriCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    return-object p1
.end method

.method public between(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriCalendar;Ljava/lang/String;)I
    .locals 3

    .line 1551
    sget-object v0, Lnet/time4j/calendar/HijriCalendar$2;->$SwitchMap$net$time4j$calendar$HijriCalendar$Unit:[I

    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    .line 1567
    invoke-static {p1, p2}, Lnet/time4j/engine/CalendarDays;->between(Lnet/time4j/engine/CalendarDate;Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDays;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/CalendarDays;->getAmount()J

    move-result-wide p1

    long-to-int p1, p1

    return p1

    .line 1569
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lnet/time4j/calendar/HijriCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1565
    :cond_1
    sget-object v0, Lnet/time4j/calendar/HijriCalendar$Unit;->DAYS:Lnet/time4j/calendar/HijriCalendar$Unit;

    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/calendar/HijriCalendar$Unit;->between(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriCalendar;Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0x7

    return p1

    .line 1555
    :cond_2
    invoke-virtual {p1, p3}, Lnet/time4j/calendar/HijriCalendar;->withVariant(Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    .line 1556
    invoke-virtual {p2, p3}, Lnet/time4j/calendar/HijriCalendar;->withVariant(Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/HijriCalendar;

    .line 1557
    invoke-static {p2}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p3

    mul-int/lit8 p3, p3, 0xc

    invoke-static {p2}, Lnet/time4j/calendar/HijriCalendar;->access$500(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr p3, v0

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    sub-int/2addr p3, v0

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$500(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    if-lez p3, :cond_3

    .line 1558
    invoke-static {p2}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v1

    if-ge v0, v1, :cond_3

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    if-gez p3, :cond_4

    .line 1560
    invoke-static {p2}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p2

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p1

    if-le p2, p1, :cond_4

    add-int/lit8 p3, p3, 0x1

    :cond_4
    :goto_0
    return p3

    .line 1553
    :cond_5
    sget-object v0, Lnet/time4j/calendar/HijriCalendar$Unit;->MONTHS:Lnet/time4j/calendar/HijriCalendar$Unit;

    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/calendar/HijriCalendar$Unit;->between(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriCalendar;Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0xc

    return p1
.end method

.method public between(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/engine/VariantSource;)I
    .locals 0

    .line 1600
    invoke-interface {p3}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HijriCalendar$Unit;->between(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriCalendar;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLength()D
    .locals 2

    .line 1516
    iget-wide v0, p0, Lnet/time4j/calendar/HijriCalendar$Unit;->length:D

    return-wide v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
