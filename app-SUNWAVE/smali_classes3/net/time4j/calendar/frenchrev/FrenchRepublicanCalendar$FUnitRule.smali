.class Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;
.super Ljava/lang/Object;
.source "FrenchRepublicanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;)V
    .locals 0

    .line 2625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2627
    iput-object p1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->unit:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    return-void
.end method

.method private static decValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I
    .locals 2

    .line 2722
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDecade()I

    move-result v0

    .line 2723
    :goto_0
    invoke-static {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->ymValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p0

    mul-int/2addr p0, v1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static ymValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I
    .locals 2

    .line 2715
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getMonth()Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;->getValue()I

    move-result v0

    .line 2716
    :goto_0
    invoke-static {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p0

    mul-int/2addr p0, v1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 2615
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->addTo(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 6

    .line 2636
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;->$SwitchMap$net$time4j$calendar$frenchrev$FrenchRepublicanCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->unit:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/16 v3, 0x1e

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2666
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->unit:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, 0x7

    .line 2660
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 2663
    :goto_0
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1200()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 2664
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1200()Lnet/time4j/engine/CalendarSystem;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    return-object p1

    .line 2651
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->decValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    const/16 v0, 0x24

    .line 2652
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v4

    .line 2653
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    .line 2654
    invoke-static {p2, v2}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p3

    add-int/2addr p3, v1

    .line 2655
    invoke-static {p2, v2}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p2

    .line 2656
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfMonth()I

    move-result v3

    :goto_1
    sub-int/2addr v3, v1

    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v1

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p2, v3

    .line 2658
    invoke-static {v4, p3, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(III)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    .line 2645
    :cond_4
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->ymValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    const/16 v0, 0xc

    .line 2646
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v2

    .line 2647
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    add-int/2addr p2, v1

    .line 2648
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfMonth()I

    move-result v3

    .line 2649
    :goto_2
    invoke-static {v2, p2, v3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(III)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    .line 2638
    :cond_6
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    invoke-static {p2, p3}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p2

    if-lt p2, v1, :cond_8

    const/16 p3, 0x4b2

    if-gt p2, p3, :cond_8

    .line 2642
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    invoke-static {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->isLeapYear(I)Z

    move-result p3

    if-eqz p3, :cond_7

    const/16 p3, 0x16e

    goto :goto_3

    :cond_7
    const/16 p3, 0x16d

    :goto_3
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2643
    new-instance p3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-direct {p3, p2, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object p3

    .line 2640
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resulting year out of bounds: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 2615
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    check-cast p2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->between(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J
    .locals 7

    .line 2674
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;->$SwitchMap$net$time4j$calendar$frenchrev$FrenchRepublicanCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->unit:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2706
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1200()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1200()Lnet/time4j/engine/CalendarSystem;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 2708
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->unit:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2704
    :cond_1
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->DAYS:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Unit;->between(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide p1

    const-wide/16 v0, 0x7

    div-long/2addr p1, v0

    return-wide p1

    .line 2694
    :cond_2
    invoke-static {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->decValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->decValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 2695
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    add-int/lit16 p1, p1, -0x15e

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfDecade()Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/DayOfDecade;->getValue()I

    move-result p1

    .line 2696
    :goto_0
    invoke-virtual {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p2

    add-int/lit16 p2, p2, -0x15e

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfDecade()Lnet/time4j/calendar/frenchrev/DayOfDecade;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/calendar/frenchrev/DayOfDecade;->getValue()I

    move-result p2

    :goto_1
    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    if-ge p2, p1, :cond_5

    sub-long/2addr v0, v4

    goto :goto_2

    :cond_5
    if-gez v2, :cond_6

    if-le p2, p1, :cond_6

    add-long/2addr v0, v4

    :cond_6
    :goto_2
    return-wide v0

    .line 2684
    :cond_7
    invoke-static {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->ymValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$FUnitRule;->ymValue(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 2685
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    add-int/lit16 p1, p1, -0x14a

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfMonth()I

    move-result p1

    .line 2686
    :goto_3
    invoke-virtual {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hasSansculottides()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p2

    add-int/lit16 p2, p2, -0x14a

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfMonth()I

    move-result p2

    :goto_4
    cmp-long v2, v0, v2

    if-lez v2, :cond_a

    if-ge p2, p1, :cond_a

    sub-long/2addr v0, v4

    goto :goto_5

    :cond_a
    if-gez v2, :cond_b

    if-le p2, p1, :cond_b

    add-long/2addr v0, v4

    :cond_b
    :goto_5
    return-wide v0

    .line 2676
    :cond_c
    invoke-static {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$900(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_d

    .line 2677
    invoke-static {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result v2

    if-ge v1, v2, :cond_d

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_d
    if-gez v0, :cond_e

    .line 2679
    invoke-static {p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p2

    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$1000(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)I

    move-result p1

    if-le p2, p1, :cond_e

    add-int/lit8 v0, v0, 0x1

    :cond_e
    :goto_6
    int-to-long p1, v0

    return-wide p1
.end method
