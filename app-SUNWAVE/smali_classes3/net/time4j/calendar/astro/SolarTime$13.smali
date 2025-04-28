.class final Lnet/time4j/calendar/astro/SolarTime$13;
.super Ljava/lang/Object;
.source "SolarTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/astro/SolarTime;->apparentAt(Lnet/time4j/tz/ZonalOffset;Ljava/lang/String;)Lnet/time4j/engine/ChronoFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/Moment;",
        "Lnet/time4j/PlainTimestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$calculator:Ljava/lang/String;

.field final synthetic val$offset:Lnet/time4j/tz/ZonalOffset;


# direct methods
.method constructor <init>(Lnet/time4j/tz/ZonalOffset;Ljava/lang/String;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$13;->val$offset:Lnet/time4j/tz/ZonalOffset;

    iput-object p2, p0, Lnet/time4j/calendar/astro/SolarTime$13;->val$calculator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1163
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/astro/SolarTime$13;->apply(Lnet/time4j/Moment;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/Moment;)Lnet/time4j/PlainTimestamp;
    .locals 7

    .line 1166
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$13;->val$offset:Lnet/time4j/tz/ZonalOffset;

    invoke-static {p1, v0}, Lnet/time4j/calendar/astro/SolarTime;->access$1000(Lnet/time4j/Moment;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 1167
    iget-object v1, p0, Lnet/time4j/calendar/astro/SolarTime$13;->val$calculator:Ljava/lang/String;

    invoke-static {p1, v1}, Lnet/time4j/calendar/astro/SolarTime;->equationOfTime(Lnet/time4j/Moment;Ljava/lang/String;)D

    move-result-wide v1

    .line 1168
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    long-to-double v5, v3

    sub-double/2addr v1, v5

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v1, v5

    double-to-int p1, v1

    .line 1170
    sget-object v1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, v3, v4, v1}, Lnet/time4j/PlainTimestamp;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainTimestamp;

    int-to-long v1, p1

    sget-object p1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, v1, v2, p1}, Lnet/time4j/PlainTimestamp;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    return-object p1
.end method
