.class Lnet/time4j/calendar/HebrewTime$ClockUnitRule;
.super Ljava/lang/Object;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/HebrewTime;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/calendar/HebrewTime$Unit;


# direct methods
.method private constructor <init>(Lnet/time4j/calendar/HebrewTime$Unit;)V
    .locals 0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;->unit:Lnet/time4j/calendar/HebrewTime$Unit;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewTime$Unit;Lnet/time4j/calendar/HebrewTime$1;)V
    .locals 0

    .line 996
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 996
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;->addTo(Lnet/time4j/calendar/HebrewTime;J)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/HebrewTime;J)Lnet/time4j/calendar/HebrewTime;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-object p1

    .line 1027
    :cond_0
    sget-object v0, Lnet/time4j/calendar/HebrewTime$3;->$SwitchMap$net$time4j$calendar$HebrewTime$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;->unit:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewTime$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1033
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$700(Lnet/time4j/calendar/HebrewTime;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    const/16 v0, 0x438

    .line 1034
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v1

    .line 1035
    invoke-static {p2, p3, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide p2

    .line 1036
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$600(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    int-to-long v3, p1

    invoke-static {v3, v4, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    invoke-static {p1, p2, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    goto :goto_0

    .line 1039
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;->unit:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/HebrewTime$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$600(Lnet/time4j/calendar/HebrewTime;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    invoke-static {p2, p3, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    .line 1030
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$700(Lnet/time4j/calendar/HebrewTime;)I

    move-result v1

    move p1, p2

    .line 1042
    :goto_0
    new-instance p2, Lnet/time4j/calendar/HebrewTime;

    const/4 p3, 0x0

    invoke-direct {p2, p1, v1, p3}, Lnet/time4j/calendar/HebrewTime;-><init>(IILnet/time4j/calendar/HebrewTime$1;)V

    return-object p2
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 996
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    check-cast p2, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;->between(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/calendar/HebrewTime;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/HebrewTime;Lnet/time4j/calendar/HebrewTime;)J
    .locals 2

    .line 1052
    invoke-static {p2}, Lnet/time4j/calendar/HebrewTime;->access$800(Lnet/time4j/calendar/HebrewTime;)I

    move-result p2

    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$800(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-long p1, p2

    .line 1054
    sget-object v0, Lnet/time4j/calendar/HebrewTime$3;->$SwitchMap$net$time4j$calendar$HebrewTime$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;->unit:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewTime$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-wide p1

    .line 1060
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/HebrewTime$ClockUnitRule;->unit:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/HebrewTime$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, 0x438

    .line 1056
    div-long/2addr p1, v0

    return-wide p1
.end method
