.class Lnet/time4j/PlainTimestamp$CompositeUnitRule;
.super Ljava/lang/Object;
.source "PlainTimestamp.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/PlainTimestamp;",
        ">;"
    }
.end annotation


# instance fields
.field private final calendarUnit:Lnet/time4j/CalendarUnit;

.field private final clockUnit:Lnet/time4j/ClockUnit;


# direct methods
.method constructor <init>(Lnet/time4j/CalendarUnit;)V
    .locals 0

    .line 1785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1787
    iput-object p1, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->calendarUnit:Lnet/time4j/CalendarUnit;

    const/4 p1, 0x0

    .line 1788
    iput-object p1, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->clockUnit:Lnet/time4j/ClockUnit;

    return-void
.end method

.method constructor <init>(Lnet/time4j/ClockUnit;)V
    .locals 1

    .line 1793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1795
    iput-object v0, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->calendarUnit:Lnet/time4j/CalendarUnit;

    .line 1796
    iput-object p1, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->clockUnit:Lnet/time4j/ClockUnit;

    return-void
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1774
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->addTo(Lnet/time4j/PlainTimestamp;J)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/PlainTimestamp;J)Lnet/time4j/PlainTimestamp;
    .locals 3

    .line 1811
    iget-object v0, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->calendarUnit:Lnet/time4j/CalendarUnit;

    if-eqz v0, :cond_0

    .line 1812
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->calendarUnit:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, p2, p3, v1}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    check-cast p2, Lnet/time4j/PlainDate;

    .line 1813
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p1

    goto :goto_0

    .line 1815
    :cond_0
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->clockUnit:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, p2, p3, v1}, Lnet/time4j/PlainTime;->roll(JLnet/time4j/ClockUnit;)Lnet/time4j/DayCycles;

    move-result-object p2

    .line 1816
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p2}, Lnet/time4j/DayCycles;->getDayOverflow()J

    move-result-wide v0

    sget-object p3, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v0, v1, p3}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1817
    invoke-virtual {p2}, Lnet/time4j/DayCycles;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    .line 1820
    :goto_0
    invoke-static {p2, p1}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1774
    check-cast p1, Lnet/time4j/PlainTimestamp;

    check-cast p2, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->between(Lnet/time4j/PlainTimestamp;Lnet/time4j/PlainTimestamp;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/PlainTimestamp;Lnet/time4j/PlainTimestamp;)J
    .locals 9

    .line 1832
    iget-object v0, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->calendarUnit:Lnet/time4j/CalendarUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_3

    .line 1833
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v5

    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lnet/time4j/CalendarUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_8

    .line 1838
    iget-object v1, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->calendarUnit:Lnet/time4j/CalendarUnit;

    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const/4 v7, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1841
    :cond_0
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->calendarUnit:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1, v5, v6, v2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainDate;

    .line 1842
    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/PlainDate;->compareByTime(Lnet/time4j/engine/CalendarDate;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-eqz v7, :cond_8

    .line 1846
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p1

    .line 1847
    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p2

    if-lez v0, :cond_2

    .line 1849
    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->isAfter(Lnet/time4j/PlainTime;)Z

    move-result v1

    if-eqz v1, :cond_2

    sub-long/2addr v5, v3

    goto/16 :goto_2

    :cond_2
    if-gez v0, :cond_8

    .line 1851
    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->isBefore(Lnet/time4j/PlainTime;)Z

    move-result p1

    if-eqz p1, :cond_8

    add-long/2addr v5, v3

    goto/16 :goto_2

    .line 1856
    :cond_3
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/time4j/PlainDate;->isAfter(Lnet/time4j/engine/CalendarDate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1857
    invoke-virtual {p0, p2, p1}, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->between(Lnet/time4j/PlainTimestamp;Lnet/time4j/PlainTimestamp;)J

    move-result-wide p1

    neg-long v5, p1

    goto/16 :goto_2

    .line 1859
    :cond_4
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object v5

    sget-object v6, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v5, v6}, Lnet/time4j/PlainDate;->until(Lnet/time4j/engine/TimePoint;Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_5

    .line 1862
    iget-object v0, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->clockUnit:Lnet/time4j/ClockUnit;

    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/time4j/ClockUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide p1

    return-wide p1

    .line 1863
    :cond_5
    iget-object v0, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->clockUnit:Lnet/time4j/ClockUnit;

    sget-object v1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, v1}, Lnet/time4j/ClockUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_7

    const-wide/32 v0, 0x15180

    .line 1867
    invoke-static {v5, v6, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 1869
    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object v2

    sget-object v5, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {v2, v5}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    .line 1870
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object v2

    sget-object v7, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {v2, v7}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    .line 1868
    invoke-static {v5, v6, v7, v8}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v5

    .line 1866
    invoke-static {v0, v1, v5, v6}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 1873
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainTime;->getNanosecond()I

    move-result p1

    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/PlainTime;->getNanosecond()I

    move-result p2

    if-le p1, p2, :cond_6

    sub-long/2addr v0, v3

    :cond_6
    move-wide v5, v0

    goto :goto_1

    :cond_7
    const-wide v0, 0x4e94914f0000L

    .line 1880
    invoke-static {v5, v6, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    .line 1882
    invoke-static {p2}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p2

    sget-object v2, Lnet/time4j/PlainTime;->NANO_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p2, v2}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1883
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p1

    sget-object p2, Lnet/time4j/PlainTime;->NANO_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1881
    invoke-static {v2, v3, p1, p2}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p1

    .line 1879
    invoke-static {v0, v1, p1, p2}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    move-wide v5, p1

    .line 1888
    :goto_1
    sget-object p1, Lnet/time4j/PlainTimestamp$1;->$SwitchMap$net$time4j$ClockUnit:[I

    iget-object p2, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->clockUnit:Lnet/time4j/ClockUnit;

    invoke-virtual {p2}, Lnet/time4j/ClockUnit;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 1906
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/PlainTimestamp$CompositeUnitRule;->clockUnit:Lnet/time4j/ClockUnit;

    .line 1907
    invoke-virtual {p2}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide/16 p1, 0x3e8

    .line 1901
    div-long/2addr v5, p1

    goto :goto_2

    :pswitch_1
    const-wide/32 p1, 0xf4240

    .line 1898
    div-long/2addr v5, p1

    goto :goto_2

    :pswitch_2
    const-wide/16 p1, 0x3c

    .line 1893
    div-long/2addr v5, p1

    goto :goto_2

    :pswitch_3
    const-wide/16 p1, 0xe10

    .line 1890
    div-long/2addr v5, p1

    :cond_8
    :goto_2
    :pswitch_4
    return-wide v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
