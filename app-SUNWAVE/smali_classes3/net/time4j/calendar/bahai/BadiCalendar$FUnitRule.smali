.class Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;
.super Ljava/lang/Object;
.source "BadiCalendar.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/bahai/BadiCalendar$Unit;)V
    .locals 0

    .line 2758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2760
    iput-object p1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->unit:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    return-void
.end method

.method private static elapsedMonths(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 1

    .line 2845
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getMonth()Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiMonth;->getValue()I

    move-result v0

    .line 2846
    :goto_0
    invoke-static {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->elapsedYears(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x13

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static elapsedYears(Lnet/time4j/calendar/bahai/BadiCalendar;)I
    .locals 2

    .line 2841
    invoke-static {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$900(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x13

    invoke-static {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1000(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x13

    invoke-static {p0}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1100(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 2748
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->addTo(Lnet/time4j/calendar/bahai/BadiCalendar;J)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/bahai/BadiCalendar;J)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 8

    .line 2769
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$4;->$SwitchMap$net$time4j$calendar$bahai$BadiCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->unit:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/16 v3, 0x169

    const/16 v4, 0x13

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5

    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2801
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->unit:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, 0x7

    .line 2795
    invoke-static {p2, p3, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 2798
    :goto_0
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1900()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 2799
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1900()Lnet/time4j/engine/CalendarSystem;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    return-object p1

    .line 2785
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->elapsedMonths(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    const/16 v0, 0x1acb

    .line 2786
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v1

    add-int/2addr v1, v5

    .line 2787
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    .line 2788
    invoke-static {p2, v3}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p3

    add-int/2addr p3, v5

    .line 2789
    invoke-static {p2, v3}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p2

    .line 2790
    invoke-static {p2, v4}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    add-int/2addr v0, v5

    .line 2791
    invoke-static {p2, v4}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p2

    add-int/2addr p2, v5

    .line 2792
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v4

    .line 2793
    :goto_1
    invoke-static {p2}, Lnet/time4j/calendar/bahai/BadiMonth;->valueOf(I)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object p1

    invoke-static {v1, p3, v0, p1, v4}, Lnet/time4j/calendar/bahai/BadiCalendar;->ofComplete(IIILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1

    :cond_4
    const-wide/16 v6, 0x13

    .line 2771
    invoke-static {p2, p3, v6, v7}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p2

    .line 2774
    :cond_5
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->elapsedYears(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    .line 2775
    invoke-static {p2, p3, v3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v6

    invoke-static {v6, v7}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v0

    add-int/2addr v0, v5

    .line 2776
    invoke-static {p2, p3, v3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    .line 2777
    invoke-static {p2, v4}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p3

    add-int/2addr p3, v5

    .line 2778
    invoke-static {p2, v4}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p2

    add-int/2addr p2, v5

    .line 2779
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v3

    .line 2780
    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v4

    if-ne v4, v1, :cond_6

    invoke-static {v0, p3, p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    .line 2783
    :goto_2
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDivision()Lnet/time4j/calendar/bahai/BadiDivision;

    move-result-object p1

    invoke-static {v0, p3, p2, p1, v2}, Lnet/time4j/calendar/bahai/BadiCalendar;->ofComplete(IIILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 2748
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    check-cast p2, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->between(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiCalendar;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiCalendar;)J
    .locals 5

    .line 2809
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$4;->$SwitchMap$net$time4j$calendar$bahai$BadiCalendar$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->unit:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2833
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1900()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0, p2}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1900()Lnet/time4j/engine/CalendarSystem;

    move-result-object p2

    invoke-interface {p2, p1}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    .line 2835
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->unit:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2831
    :cond_1
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->DAYS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->between(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiCalendar;)J

    move-result-wide p1

    const-wide/16 v0, 0x7

    div-long/2addr p1, v0

    return-wide p1

    .line 2821
    :cond_2
    invoke-static {p2}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->elapsedMonths(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->elapsedMonths(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 2822
    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p1

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, 0x13

    .line 2823
    :cond_3
    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->isIntercalaryDay()Z

    move-result v2

    invoke-static {p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1200(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result p2

    if-eqz v2, :cond_4

    add-int/lit8 p2, p2, 0x13

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-lez v2, :cond_5

    if-ge p2, p1, :cond_5

    sub-long/2addr v0, v3

    goto :goto_0

    :cond_5
    if-gez v2, :cond_6

    if-le p2, p1, :cond_6

    add-long/2addr v0, v3

    :cond_6
    :goto_0
    return-wide v0

    .line 2813
    :cond_7
    invoke-static {p2}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->elapsedYears(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/bahai/BadiCalendar$FUnitRule;->elapsedYears(Lnet/time4j/calendar/bahai/BadiCalendar;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_8

    .line 2814
    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDayOfYear()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDayOfYear()I

    move-result v2

    if-ge v1, v2, :cond_8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_8
    if-gez v0, :cond_9

    .line 2816
    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDayOfYear()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDayOfYear()I

    move-result p1

    if-le p2, p1, :cond_9

    add-int/lit8 v0, v0, 0x1

    :cond_9
    :goto_1
    int-to-long p1, v0

    return-wide p1

    .line 2811
    :cond_a
    sget-object v0, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->YEARS:Lnet/time4j/calendar/bahai/BadiCalendar$Unit;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$Unit;->between(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/calendar/bahai/BadiCalendar;)J

    move-result-wide p1

    const-wide/16 v0, 0x13

    div-long/2addr p1, v0

    return-wide p1
.end method
