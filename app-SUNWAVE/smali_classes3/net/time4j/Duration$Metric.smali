.class Lnet/time4j/Duration$Metric;
.super Lnet/time4j/engine/AbstractMetric;
.source "Duration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Metric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lnet/time4j/IsoUnit;",
        ">",
        "Lnet/time4j/engine/AbstractMetric<",
        "TU;",
        "Lnet/time4j/Duration<",
        "TU;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TU;>;)V"
        }
    .end annotation

    .line 4589
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, p1}, Lnet/time4j/engine/AbstractMetric;-><init>(ZLjava/util/Collection;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lnet/time4j/Duration$1;)V
    .locals 0

    .line 4578
    invoke-direct {p0, p1}, Lnet/time4j/Duration$Metric;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private varargs constructor <init>([Lnet/time4j/IsoUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TU;)V"
        }
    .end annotation

    .line 4584
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, p1}, Lnet/time4j/engine/AbstractMetric;-><init>(Z[Lnet/time4j/engine/ChronoUnit;)V

    return-void
.end method

.method synthetic constructor <init>([Lnet/time4j/IsoUnit;Lnet/time4j/Duration$1;)V
    .locals 0

    .line 4578
    invoke-direct {p0, p1}, Lnet/time4j/Duration$Metric;-><init>([Lnet/time4j/IsoUnit;)V

    return-void
.end method


# virtual methods
.method protected createEmptyTimeSpan()Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 4598
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createEmptyTimeSpan()Lnet/time4j/engine/AbstractDuration;
    .locals 1

    .line 4578
    invoke-virtual {p0}, Lnet/time4j/Duration$Metric;->createEmptyTimeSpan()Lnet/time4j/Duration;

    move-result-object v0

    return-object v0
.end method

.method protected createTimeSpan(Ljava/util/List;Z)Lnet/time4j/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;Z)",
            "Lnet/time4j/Duration<",
            "TU;>;"
        }
    .end annotation

    .line 4608
    new-instance v0, Lnet/time4j/Duration;

    invoke-direct {v0, p1, p2}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method protected bridge synthetic createTimeSpan(Ljava/util/List;Z)Lnet/time4j/engine/AbstractDuration;
    .locals 0

    .line 4578
    invoke-virtual {p0, p1, p2}, Lnet/time4j/Duration$Metric;->createTimeSpan(Ljava/util/List;Z)Lnet/time4j/Duration;

    move-result-object p1

    return-object p1
.end method

.method protected resolve(Lnet/time4j/engine/TimeSpan$Item;)Lnet/time4j/engine/TimeSpan$Item;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;)",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;"
        }
    .end annotation

    .line 4616
    invoke-virtual {p1}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/IsoUnit;

    .line 4618
    sget-object v1, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4619
    invoke-virtual {p1}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    sget-object p1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {v0, v1, p1}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p1

    return-object p1

    .line 4620
    :cond_0
    sget-object v1, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4621
    invoke-virtual {p1}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    sget-object p1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-static {v0, v1, p1}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p1

    :cond_1
    return-object p1
.end method
