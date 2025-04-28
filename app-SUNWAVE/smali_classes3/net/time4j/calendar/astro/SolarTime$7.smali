.class Lnet/time4j/calendar/astro/SolarTime$7;
.super Ljava/lang/Object;
.source "SolarTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/astro/SolarTime;->midnightSun()Lnet/time4j/engine/ChronoCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoCondition<",
        "Lnet/time4j/engine/CalendarDate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/calendar/astro/SolarTime;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/astro/SolarTime;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 860
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/astro/SolarTime$7;->test(Lnet/time4j/engine/CalendarDate;)Z

    move-result p1

    return p1
.end method

.method public test(Lnet/time4j/engine/CalendarDate;)Z
    .locals 14

    .line 863
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {v0}, Lnet/time4j/calendar/astro/SolarTime;->access$200(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4050800000000000L    # 66.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 866
    :cond_0
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {v0, p1}, Lnet/time4j/calendar/astro/SolarTime;->access$100(Lnet/time4j/calendar/astro/SolarTime;Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDate;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/astro/SolarTime;->toGregorian(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 867
    iget-object v2, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-virtual {v2}, Lnet/time4j/calendar/astro/SolarTime;->getCalculator()Lnet/time4j/calendar/astro/SolarTime$Calculator;

    move-result-object v2

    .line 868
    iget-object v3, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {v3}, Lnet/time4j/calendar/astro/SolarTime;->access$400(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v11

    .line 869
    iget-object v3, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {v3}, Lnet/time4j/calendar/astro/SolarTime;->access$200(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v5

    iget-object v3, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {v3}, Lnet/time4j/calendar/astro/SolarTime;->access$300(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v7

    move-object v3, v2

    move-object v4, p1

    move-wide v9, v11

    invoke-interface/range {v3 .. v10}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->sunrise(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

    move-result-object v13

    .line 870
    iget-object v3, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {v3}, Lnet/time4j/calendar/astro/SolarTime;->access$200(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v5

    iget-object v3, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {v3}, Lnet/time4j/calendar/astro/SolarTime;->access$300(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v7

    move-object v3, v2

    invoke-interface/range {v3 .. v10}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->sunset(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

    move-result-object p1

    if-nez v13, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 874
    :cond_1
    iget-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$7;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/astro/SolarTime;->getHighestElevationOfSun(Lnet/time4j/PlainDate;)D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    sub-double/2addr v4, v11

    .line 875
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
