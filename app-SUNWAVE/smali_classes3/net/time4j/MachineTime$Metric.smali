.class Lnet/time4j/MachineTime$Metric;
.super Ljava/lang/Object;
.source "MachineTime.java"

# interfaces
.implements Lnet/time4j/engine/TimeMetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/MachineTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Metric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeMetric<",
        "Ljava/util/concurrent/TimeUnit;",
        "Lnet/time4j/MachineTime<",
        "TU;>;>;"
    }
.end annotation


# instance fields
.field private final scale:Lnet/time4j/scale/TimeScale;


# direct methods
.method private constructor <init>(Lnet/time4j/scale/TimeScale;)V
    .locals 0

    .line 1694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    iput-object p1, p0, Lnet/time4j/MachineTime$Metric;->scale:Lnet/time4j/scale/TimeScale;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/scale/TimeScale;Lnet/time4j/MachineTime$1;)V
    .locals 0

    .line 1684
    invoke-direct {p0, p1}, Lnet/time4j/MachineTime$Metric;-><init>(Lnet/time4j/scale/TimeScale;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;
    .locals 0

    .line 1684
    invoke-virtual {p0, p1, p2}, Lnet/time4j/MachineTime$Metric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/MachineTime;

    move-result-object p1

    return-object p1
.end method

.method public between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/MachineTime;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-",
            "Ljava/util/concurrent/TimeUnit;",
            "TT;>;>(TT;TT;)",
            "Lnet/time4j/MachineTime<",
            "TU;>;"
        }
    .end annotation

    .line 1712
    iget-object v0, p0, Lnet/time4j/MachineTime$Metric;->scale:Lnet/time4j/scale/TimeScale;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Lnet/time4j/scale/UniversalTime;

    if-eqz v0, :cond_1

    .line 1716
    check-cast p1, Lnet/time4j/scale/UniversalTime;

    .line 1717
    check-cast p2, Lnet/time4j/scale/UniversalTime;

    .line 1718
    sget-object v0, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-interface {p2, v0}, Lnet/time4j/scale/UniversalTime;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v0

    .line 1719
    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-interface {p1, v2}, Lnet/time4j/scale/UniversalTime;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    sub-long/2addr v0, v2

    .line 1725
    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-interface {p2, v2}, Lnet/time4j/scale/UniversalTime;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result p2

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-interface {p1, v2}, Lnet/time4j/scale/UniversalTime;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result p1

    goto :goto_0

    .line 1721
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot calculate SI-duration before 1972-01-01."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1726
    :cond_1
    instance-of v0, p1, Lnet/time4j/base/UnixTime;

    if-eqz v0, :cond_2

    .line 1727
    check-cast p1, Lnet/time4j/base/UnixTime;

    .line 1728
    check-cast p2, Lnet/time4j/base/UnixTime;

    .line 1729
    invoke-interface {p2}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1730
    invoke-interface {p2}, Lnet/time4j/base/UnixTime;->getNanosecond()I

    move-result p2

    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getNanosecond()I

    move-result p1

    :goto_0
    sub-int/2addr p2, p1

    move v5, p2

    move-wide v3, v0

    .line 1736
    new-instance p1, Lnet/time4j/MachineTime;

    iget-object v6, p0, Lnet/time4j/MachineTime$Metric;->scale:Lnet/time4j/scale/TimeScale;

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lnet/time4j/MachineTime;-><init>(JILnet/time4j/scale/TimeScale;Lnet/time4j/MachineTime$1;)V

    return-object p1

    .line 1732
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Machine time requires objects of type \'UnixTime\'."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reversible()Lnet/time4j/engine/TimeMetric;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeMetric<",
            "Ljava/util/concurrent/TimeUnit;",
            "Lnet/time4j/MachineTime<",
            "TU;>;>;"
        }
    .end annotation

    return-object p0
.end method
