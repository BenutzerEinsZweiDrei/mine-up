.class Lnet/time4j/PlainTime$ClockUnitRule;
.super Ljava/lang/Object;
.source "PlainTime.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/ClockUnit;


# direct methods
.method private constructor <init>(Lnet/time4j/ClockUnit;)V
    .locals 0

    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2019
    iput-object p1, p0, Lnet/time4j/PlainTime$ClockUnitRule;->unit:Lnet/time4j/ClockUnit;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/ClockUnit;Lnet/time4j/PlainTime$1;)V
    .locals 0

    .line 2007
    invoke-direct {p0, p1}, Lnet/time4j/PlainTime$ClockUnitRule;-><init>(Lnet/time4j/ClockUnit;)V

    return-void
.end method

.method static synthetic access$400(Lnet/time4j/PlainTime;JLnet/time4j/ClockUnit;)Lnet/time4j/DayCycles;
    .locals 0

    .line 2007
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/PlainTime$ClockUnitRule;->addToWithOverflow(Lnet/time4j/PlainTime;JLnet/time4j/ClockUnit;)Lnet/time4j/DayCycles;

    move-result-object p0

    return-object p0
.end method

.method private static addToWithOverflow(Lnet/time4j/PlainTime;JLnet/time4j/ClockUnit;)Lnet/time4j/DayCycles;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2081
    invoke-static {p0}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result v2

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 2082
    new-instance p1, Lnet/time4j/DayCycles;

    invoke-direct {p1, v0, v1, p0}, Lnet/time4j/DayCycles;-><init>(JLnet/time4j/PlainTime;)V

    return-object p1

    .line 2085
    :cond_0
    const-class v0, Lnet/time4j/DayCycles;

    invoke-static {v0, p3, p0, p1, p2}, Lnet/time4j/PlainTime$ClockUnitRule;->doAdd(Ljava/lang/Class;Lnet/time4j/ClockUnit;Lnet/time4j/PlainTime;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/DayCycles;

    return-object p0
.end method

.method private static doAdd(Ljava/lang/Class;Lnet/time4j/ClockUnit;Lnet/time4j/PlainTime;J)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lnet/time4j/ClockUnit;",
            "Lnet/time4j/PlainTime;",
            "J)TR;"
        }
    .end annotation

    .line 2101
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result v0

    .line 2102
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v1

    .line 2103
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result v2

    .line 2105
    sget-object v3, Lnet/time4j/PlainTime$1;->$SwitchMap$net$time4j$ClockUnit:[I

    invoke-virtual {p1}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x3c

    packed-switch v3, :pswitch_data_0

    .line 2162
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2144
    :pswitch_0
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1, p3, p4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 2147
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result p1

    int-to-long v2, p1

    const p1, 0x3b9aca00

    .line 2148
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v5

    .line 2146
    invoke-static {v2, v3, v5, v6}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v2

    .line 2151
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result v5

    int-to-long v5, v5

    .line 2152
    invoke-static {v2, v3, v4}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v7

    .line 2150
    invoke-static {v5, v6, v7, v8}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v5

    .line 2155
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p2

    int-to-long v7, p2

    .line 2156
    invoke-static {v5, v6, v4}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v9

    .line 2154
    invoke-static {v7, v8, v9, v10}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    .line 2157
    invoke-static {v5, v6, v4}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    .line 2158
    invoke-static {v2, v3, v4}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v2

    .line 2159
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    move v0, p2

    move v1, v2

    move v2, p1

    goto :goto_0

    .line 2137
    :pswitch_1
    sget-object p1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    const-wide/16 v0, 0x3e8

    .line 2141
    invoke-static {p3, p4, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p3

    .line 2137
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainTime$ClockUnitRule;->doAdd(Ljava/lang/Class;Lnet/time4j/ClockUnit;Lnet/time4j/PlainTime;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2131
    :pswitch_2
    sget-object p1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    const-wide/32 v0, 0xf4240

    .line 2135
    invoke-static {p3, p4, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p3

    .line 2131
    invoke-static {p0, p1, p2, p3, p4}, Lnet/time4j/PlainTime$ClockUnitRule;->doAdd(Ljava/lang/Class;Lnet/time4j/ClockUnit;Lnet/time4j/PlainTime;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2118
    :pswitch_3
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1, p3, p4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 2121
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p1

    int-to-long v5, p1

    .line 2122
    invoke-static {v0, v1, v4}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v7

    .line 2120
    invoke-static {v5, v6, v7, v8}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v5

    .line 2125
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    int-to-long p1, p1

    .line 2126
    invoke-static {v5, v6, v4}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v7

    .line 2124
    invoke-static {p1, p2, v7, v8}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    .line 2127
    invoke-static {v5, v6, v4}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    .line 2128
    invoke-static {v0, v1, v4}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v1

    move v0, p1

    goto :goto_0

    .line 2110
    :pswitch_4
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p1

    int-to-long v5, p1

    invoke-static {v5, v6, p3, p4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v5

    .line 2113
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    int-to-long p1, p1

    .line 2114
    invoke-static {v5, v6, v4}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v7

    .line 2112
    invoke-static {p1, p2, v7, v8}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    .line 2115
    invoke-static {v5, v6, v4}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    goto :goto_0

    .line 2107
    :pswitch_5
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2, p3, p4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v7

    :goto_0
    const/16 p1, 0x18

    .line 2165
    invoke-static {v7, v8, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p2

    or-int v3, p2, v0

    or-int/2addr v3, v1

    or-int/2addr v3, v2

    if-nez v3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    .line 2169
    const-class p2, Lnet/time4j/PlainTime;

    if-ne p0, p2, :cond_0

    sget-object p2, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    goto :goto_1

    :cond_0
    sget-object p2, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    goto :goto_1

    .line 2174
    :cond_1
    invoke-static {p2, v0, v1, v2}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p2

    .line 2177
    :goto_1
    const-class p3, Lnet/time4j/PlainTime;

    if-ne p0, p3, :cond_2

    .line 2178
    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2180
    :cond_2
    invoke-static {v7, v8, p1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide p3

    .line 2181
    new-instance p1, Lnet/time4j/DayCycles;

    invoke-direct {p1, p3, p4, p2}, Lnet/time4j/DayCycles;-><init>(JLnet/time4j/PlainTime;)V

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 2007
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTime$ClockUnitRule;->addTo(Lnet/time4j/PlainTime;J)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/PlainTime;J)Lnet/time4j/PlainTime;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-object p1

    .line 2035
    :cond_0
    const-class v0, Lnet/time4j/PlainTime;

    iget-object v1, p0, Lnet/time4j/PlainTime$ClockUnitRule;->unit:Lnet/time4j/ClockUnit;

    invoke-static {v0, v1, p1, p2, p3}, Lnet/time4j/PlainTime$ClockUnitRule;->doAdd(Ljava/lang/Class;Lnet/time4j/ClockUnit;Lnet/time4j/PlainTime;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    return-object p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 2007
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$ClockUnitRule;->between(Lnet/time4j/PlainTime;Lnet/time4j/PlainTime;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/PlainTime;Lnet/time4j/PlainTime;)J
    .locals 2

    .line 2045
    invoke-static {p2}, Lnet/time4j/PlainTime;->access$600(Lnet/time4j/PlainTime;)J

    move-result-wide v0

    invoke-static {p1}, Lnet/time4j/PlainTime;->access$600(Lnet/time4j/PlainTime;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 2048
    sget-object p1, Lnet/time4j/PlainTime$1;->$SwitchMap$net$time4j$ClockUnit:[I

    iget-object p2, p0, Lnet/time4j/PlainTime$ClockUnitRule;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {p2}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 2068
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/PlainTime$ClockUnitRule;->unit:Lnet/time4j/ClockUnit;

    invoke-virtual {p2}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide/16 p1, 0x1

    goto :goto_0

    :pswitch_1
    const-wide/16 p1, 0x3e8

    goto :goto_0

    :pswitch_2
    const-wide/32 p1, 0xf4240

    goto :goto_0

    :pswitch_3
    const-wide/32 p1, 0x3b9aca00

    goto :goto_0

    :pswitch_4
    const-wide p1, 0xdf8475800L

    goto :goto_0

    :pswitch_5
    const-wide p1, 0x34630b8a000L

    .line 2071
    :goto_0
    div-long/2addr v0, p1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
