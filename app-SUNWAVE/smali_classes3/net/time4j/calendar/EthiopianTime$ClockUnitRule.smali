.class Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;
.super Ljava/lang/Object;
.source "EthiopianTime.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/EthiopianTime;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/calendar/EthiopianTime$Unit;


# direct methods
.method private constructor <init>(Lnet/time4j/calendar/EthiopianTime$Unit;)V
    .locals 0

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    iput-object p1, p0, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;->unit:Lnet/time4j/calendar/EthiopianTime$Unit;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/EthiopianTime$Unit;Lnet/time4j/calendar/EthiopianTime$1;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;-><init>(Lnet/time4j/calendar/EthiopianTime$Unit;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1110
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;->addTo(Lnet/time4j/calendar/EthiopianTime;J)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/EthiopianTime;J)Lnet/time4j/calendar/EthiopianTime;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-object p1

    .line 1142
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v0

    .line 1143
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$500(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v1

    .line 1145
    sget-object v2, Lnet/time4j/calendar/EthiopianTime$1;->$SwitchMap$net$time4j$calendar$EthiopianTime$Unit:[I

    iget-object v3, p0, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;->unit:Lnet/time4j/calendar/EthiopianTime$Unit;

    invoke-virtual {v3}, Lnet/time4j/calendar/EthiopianTime$Unit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v0, 0x2

    const/16 v3, 0x3c

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    .line 1158
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$500(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    .line 1161
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v0

    int-to-long v0, v0

    .line 1162
    invoke-static {p2, p3, v3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    .line 1160
    invoke-static {v0, v1, v4, v5}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 1165
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$600(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    int-to-long v4, p1

    .line 1166
    invoke-static {v0, v1, v3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v6

    .line 1164
    invoke-static {v4, v5, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    .line 1167
    invoke-static {v0, v1, v3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    .line 1168
    invoke-static {p2, p3, v3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v1

    goto :goto_0

    .line 1171
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;->unit:Lnet/time4j/calendar/EthiopianTime$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/EthiopianTime$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1150
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p2

    .line 1153
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$600(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    int-to-long v4, p1

    .line 1154
    invoke-static {p2, p3, v3}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v6

    .line 1152
    invoke-static {v4, v5, v6, v7}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    .line 1155
    invoke-static {p2, p3, v3}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    goto :goto_0

    .line 1147
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$600(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3, p2, p3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v4

    :goto_0
    const/16 p1, 0x18

    .line 1174
    invoke-static {v4, v5, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    .line 1175
    new-instance p2, Lnet/time4j/calendar/EthiopianTime;

    const/4 p3, 0x0

    invoke-direct {p2, p1, v0, v1, p3}, Lnet/time4j/calendar/EthiopianTime;-><init>(IIILnet/time4j/calendar/EthiopianTime$1;)V

    return-object p2
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1110
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    check-cast p2, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;->between(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/calendar/EthiopianTime;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/calendar/EthiopianTime;)J
    .locals 2

    .line 1185
    invoke-static {p2}, Lnet/time4j/calendar/EthiopianTime;->access$800(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p2

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$800(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-long p1, p2

    .line 1188
    sget-object v0, Lnet/time4j/calendar/EthiopianTime$1;->$SwitchMap$net$time4j$calendar$EthiopianTime$Unit:[I

    iget-object v1, p0, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;->unit:Lnet/time4j/calendar/EthiopianTime$Unit;

    invoke-virtual {v1}, Lnet/time4j/calendar/EthiopianTime$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    .line 1199
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/calendar/EthiopianTime$ClockUnitRule;->unit:Lnet/time4j/calendar/EthiopianTime$Unit;

    invoke-virtual {p2}, Lnet/time4j/calendar/EthiopianTime$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, 0x3c

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0xe10

    .line 1202
    :goto_0
    div-long/2addr p1, v0

    return-wide p1
.end method
