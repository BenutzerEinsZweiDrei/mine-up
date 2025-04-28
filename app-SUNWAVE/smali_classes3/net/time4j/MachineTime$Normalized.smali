.class Lnet/time4j/MachineTime$Normalized;
.super Ljava/lang/Object;
.source "MachineTime.java"

# interfaces
.implements Lnet/time4j/engine/TimeSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/MachineTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Normalized"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeSpan<",
        "Ljava/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# instance fields
.field private final duration:Lnet/time4j/engine/TimeSpan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeSpan<",
            "-",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final patternUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/time4j/engine/TimeSpan;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-",
            "Ljava/util/concurrent/TimeUnit;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;)V"
        }
    .end annotation

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1594
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    iput-object p1, p0, Lnet/time4j/MachineTime$Normalized;->duration:Lnet/time4j/engine/TimeSpan;

    .line 1598
    iput-object p2, p0, Lnet/time4j/MachineTime$Normalized;->patternUnits:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addTo(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-",
            "Ljava/util/concurrent/TimeUnit;",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 1673
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1577
    check-cast p1, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1}, Lnet/time4j/MachineTime$Normalized;->contains(Ljava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/util/concurrent/TimeUnit;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getPartialAmount(Ljava/lang/Object;)J
    .locals 2

    .line 1577
    check-cast p1, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1}, Lnet/time4j/MachineTime$Normalized;->getPartialAmount(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPartialAmount(Ljava/util/concurrent/TimeUnit;)J
    .locals 11

    .line 1617
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p1, v0, :cond_0

    .line 1618
    iget-object p1, p0, Lnet/time4j/MachineTime$Normalized;->duration:Lnet/time4j/engine/TimeSpan;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0}, Lnet/time4j/engine/TimeSpan;->getPartialAmount(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0

    .line 1624
    :cond_0
    iget-object v0, p0, Lnet/time4j/MachineTime$Normalized;->duration:Lnet/time4j/engine/TimeSpan;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Lnet/time4j/engine/TimeSpan;->getPartialAmount(Ljava/lang/Object;)J

    move-result-wide v0

    .line 1626
    iget-object v2, p0, Lnet/time4j/MachineTime$Normalized;->patternUnits:Ljava/util/Set;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    const-wide/32 v5, 0x15180

    .line 1627
    div-long v7, v0, v5

    mul-long/2addr v5, v7

    sub-long/2addr v0, v5

    goto :goto_0

    :cond_1
    move-wide v7, v3

    .line 1631
    :goto_0
    iget-object v2, p0, Lnet/time4j/MachineTime$Normalized;->patternUnits:Ljava/util/Set;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v5, 0xe10

    .line 1632
    div-long v9, v0, v5

    mul-long/2addr v5, v9

    sub-long/2addr v0, v5

    goto :goto_1

    :cond_2
    move-wide v9, v3

    .line 1636
    :goto_1
    iget-object v2, p0, Lnet/time4j/MachineTime$Normalized;->patternUnits:Ljava/util/Set;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x3c

    .line 1637
    div-long v4, v0, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    move-wide v3, v4

    .line 1641
    :cond_3
    sget-object v2, Lnet/time4j/MachineTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    return-wide v0

    .line 1651
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    return-wide v3

    :cond_6
    return-wide v9

    :cond_7
    return-wide v7
.end method

.method public getTotalLength()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;>;"
        }
    .end annotation

    .line 1606
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Never called."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1668
    iget-object v0, p0, Lnet/time4j/MachineTime$Normalized;->duration:Lnet/time4j/engine/TimeSpan;

    invoke-interface {v0}, Lnet/time4j/engine/TimeSpan;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .line 1658
    iget-object v0, p0, Lnet/time4j/MachineTime$Normalized;->duration:Lnet/time4j/engine/TimeSpan;

    invoke-interface {v0}, Lnet/time4j/engine/TimeSpan;->isNegative()Z

    move-result v0

    return v0
.end method

.method public isPositive()Z
    .locals 1

    .line 1663
    iget-object v0, p0, Lnet/time4j/MachineTime$Normalized;->duration:Lnet/time4j/engine/TimeSpan;

    invoke-interface {v0}, Lnet/time4j/engine/TimeSpan;->isPositive()Z

    move-result v0

    return v0
.end method

.method public subtractFrom(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-",
            "Ljava/util/concurrent/TimeUnit;",
            "TT;>;>(TT;)TT;"
        }
    .end annotation

    .line 1678
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
