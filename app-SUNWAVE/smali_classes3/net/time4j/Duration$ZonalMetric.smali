.class Lnet/time4j/Duration$ZonalMetric;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Lnet/time4j/engine/TimeMetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZonalMetric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeMetric<",
        "Lnet/time4j/IsoUnit;",
        "Lnet/time4j/Duration<",
        "Lnet/time4j/IsoUnit;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final metric:Lnet/time4j/engine/TimeMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/IsoUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tz:Lnet/time4j/tz/Timezone;


# direct methods
.method private varargs constructor <init>(Lnet/time4j/tz/Timezone;[Lnet/time4j/IsoUnit;)V
    .locals 1

    .line 4063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing timezone."

    .line 4066
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4069
    iput-object p1, p0, Lnet/time4j/Duration$ZonalMetric;->tz:Lnet/time4j/tz/Timezone;

    .line 4070
    new-instance p1, Lnet/time4j/Duration$Metric;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lnet/time4j/Duration$Metric;-><init>([Lnet/time4j/IsoUnit;Lnet/time4j/Duration$1;)V

    iput-object p1, p0, Lnet/time4j/Duration$ZonalMetric;->metric:Lnet/time4j/engine/TimeMetric;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/tz/Timezone;[Lnet/time4j/IsoUnit;Lnet/time4j/Duration$1;)V
    .locals 0

    .line 4049
    invoke-direct {p0, p1, p2}, Lnet/time4j/Duration$ZonalMetric;-><init>(Lnet/time4j/tz/Timezone;[Lnet/time4j/IsoUnit;)V

    return-void
.end method

.method private getOffset(Lnet/time4j/engine/ChronoEntity;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)I"
        }
    .end annotation

    .line 4113
    iget-object v0, p0, Lnet/time4j/Duration$ZonalMetric;->tz:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getStrategy()Lnet/time4j/tz/TransitionStrategy;

    move-result-object v0

    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    .line 4114
    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/base/GregorianDate;

    sget-object v2, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    .line 4115
    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/base/WallTime;

    iget-object v2, p0, Lnet/time4j/Duration$ZonalMetric;->tz:Lnet/time4j/tz/Timezone;

    .line 4113
    invoke-interface {v0, v1, p1, v2}, Lnet/time4j/tz/TransitionStrategy;->getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    .line 4117
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;
    .locals 0

    .line 4049
    invoke-virtual {p0, p1, p2}, Lnet/time4j/Duration$ZonalMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method

.method public between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/Duration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-",
            "Lnet/time4j/IsoUnit;",
            "TT;>;>(TT;TT;)",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 4087
    invoke-virtual {p1, p2}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4093
    :goto_0
    invoke-direct {p0, p1}, Lnet/time4j/Duration$ZonalMetric;->getOffset(Lnet/time4j/engine/ChronoEntity;)I

    move-result v1

    .line 4094
    invoke-direct {p0, p2}, Lnet/time4j/Duration$ZonalMetric;->getOffset(Lnet/time4j/engine/ChronoEntity;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 4095
    sget-object v3, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {p2, v1, v2, v3}, Lnet/time4j/engine/TimePoint;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    .line 4096
    iget-object v1, p0, Lnet/time4j/Duration$ZonalMetric;->metric:Lnet/time4j/engine/TimeMetric;

    invoke-interface {v1, p1, p2}, Lnet/time4j/engine/TimeMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Duration;

    if-eqz v0, :cond_1

    .line 4099
    invoke-virtual {p1}, Lnet/time4j/Duration;->inverse()Lnet/time4j/Duration;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public reversible()Lnet/time4j/engine/TimeMetric;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeMetric<",
            "Lnet/time4j/IsoUnit;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoUnit;",
            ">;>;"
        }
    .end annotation

    .line 4108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reversible."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
