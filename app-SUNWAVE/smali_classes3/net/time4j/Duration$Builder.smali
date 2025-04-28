.class public Lnet/time4j/Duration$Builder;
.super Ljava/lang/Object;
.source "Duration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "Lnet/time4j/IsoUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private microsSet:Z

.field private millisSet:Z

.field private nanosSet:Z

.field private final negative:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2

    .line 3684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3672
    iput-boolean v0, p0, Lnet/time4j/Duration$Builder;->millisSet:Z

    .line 3673
    iput-boolean v0, p0, Lnet/time4j/Duration$Builder;->microsSet:Z

    .line 3674
    iput-boolean v0, p0, Lnet/time4j/Duration$Builder;->nanosSet:Z

    .line 3686
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    .line 3687
    iput-boolean p1, p0, Lnet/time4j/Duration$Builder;->negative:Z

    return-void
.end method

.method private microsCalled()V
    .locals 3

    .line 4027
    iget-boolean v0, p0, Lnet/time4j/Duration$Builder;->microsSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4032
    iput-boolean v0, p0, Lnet/time4j/Duration$Builder;->microsSet:Z

    return-void

    .line 4028
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called twice for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/time4j/ClockUnit;->MICROS:Lnet/time4j/ClockUnit;

    .line 4029
    invoke-virtual {v2}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private millisCalled()V
    .locals 3

    .line 4016
    iget-boolean v0, p0, Lnet/time4j/Duration$Builder;->millisSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4021
    iput-boolean v0, p0, Lnet/time4j/Duration$Builder;->millisSet:Z

    return-void

    .line 4017
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called twice for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/time4j/ClockUnit;->MILLIS:Lnet/time4j/ClockUnit;

    .line 4018
    invoke-virtual {v2}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nanosCalled()V
    .locals 3

    .line 4038
    iget-boolean v0, p0, Lnet/time4j/Duration$Builder;->nanosSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4043
    iput-boolean v0, p0, Lnet/time4j/Duration$Builder;->nanosSet:Z

    return-void

    .line 4039
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called twice for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    .line 4040
    invoke-virtual {v2}, Lnet/time4j/ClockUnit;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private set(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration$Builder;
    .locals 3

    .line 3957
    iget-object v0, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3958
    iget-object v2, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v2}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3959
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already registered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 3965
    invoke-static {p1, p2, p3}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p1

    .line 3966
    iget-object p2, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method private update(JJ)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 3979
    sget-object v1, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    .line 3981
    iget-object v2, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 3982
    iget-object v3, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/TimeSpan$Item;

    .line 3983
    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/IsoUnit;

    sget-object v5, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3984
    iget-object v0, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    .line 3988
    invoke-static {p1, p2, p3, p4}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 3989
    invoke-virtual {v3}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide p3

    .line 3987
    invoke-static {p1, p2, p3, p4}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 3986
    invoke-static {p1, p2, v1}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p1

    .line 3984
    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 3999
    iget-object v0, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    .line 4001
    invoke-static {p1, p2, p3, p4}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p1

    .line 4000
    invoke-static {p1, p2, v1}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object p1

    .line 3999
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 4008
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal negative amount: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public build()Lnet/time4j/Duration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/IsoUnit;",
            ">;"
        }
    .end annotation

    .line 3941
    iget-object v0, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3945
    new-instance v0, Lnet/time4j/Duration;

    iget-object v1, p0, Lnet/time4j/Duration$Builder;->items:Ljava/util/List;

    iget-boolean v2, p0, Lnet/time4j/Duration$Builder;->negative:Z

    invoke-direct {v0, v1, v2}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object v0

    .line 3942
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not set any amount and unit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public days(I)Lnet/time4j/Duration$Builder;
    .locals 2

    int-to-long v0, p1

    .line 3763
    sget-object p1, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-direct {p0, v0, v1, p1}, Lnet/time4j/Duration$Builder;->set(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration$Builder;

    return-object p0
.end method

.method public hours(I)Lnet/time4j/Duration$Builder;
    .locals 2

    int-to-long v0, p1

    .line 3788
    sget-object p1, Lnet/time4j/ClockUnit;->HOURS:Lnet/time4j/ClockUnit;

    invoke-direct {p0, v0, v1, p1}, Lnet/time4j/Duration$Builder;->set(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration$Builder;

    return-object p0
.end method

.method public micros(I)Lnet/time4j/Duration$Builder;
    .locals 4

    .line 3897
    invoke-direct {p0}, Lnet/time4j/Duration$Builder;->microsCalled()V

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    .line 3898
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/time4j/Duration$Builder;->update(JJ)V

    return-object p0
.end method

.method public millis(I)Lnet/time4j/Duration$Builder;
    .locals 4

    .line 3867
    invoke-direct {p0}, Lnet/time4j/Duration$Builder;->millisCalled()V

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    .line 3868
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/time4j/Duration$Builder;->update(JJ)V

    return-object p0
.end method

.method public minutes(I)Lnet/time4j/Duration$Builder;
    .locals 2

    int-to-long v0, p1

    .line 3813
    sget-object p1, Lnet/time4j/ClockUnit;->MINUTES:Lnet/time4j/ClockUnit;

    invoke-direct {p0, v0, v1, p1}, Lnet/time4j/Duration$Builder;->set(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration$Builder;

    return-object p0
.end method

.method public months(I)Lnet/time4j/Duration$Builder;
    .locals 2

    int-to-long v0, p1

    .line 3738
    sget-object p1, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    invoke-direct {p0, v0, v1, p1}, Lnet/time4j/Duration$Builder;->set(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration$Builder;

    return-object p0
.end method

.method public nanos(I)Lnet/time4j/Duration$Builder;
    .locals 4

    .line 3923
    invoke-direct {p0}, Lnet/time4j/Duration$Builder;->nanosCalled()V

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    .line 3924
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/time4j/Duration$Builder;->update(JJ)V

    return-object p0
.end method

.method public seconds(I)Lnet/time4j/Duration$Builder;
    .locals 2

    int-to-long v0, p1

    .line 3838
    sget-object p1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-direct {p0, v0, v1, p1}, Lnet/time4j/Duration$Builder;->set(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration$Builder;

    return-object p0
.end method

.method public years(I)Lnet/time4j/Duration$Builder;
    .locals 2

    int-to-long v0, p1

    .line 3713
    sget-object p1, Lnet/time4j/CalendarUnit;->YEARS:Lnet/time4j/CalendarUnit;

    invoke-direct {p0, v0, v1, p1}, Lnet/time4j/Duration$Builder;->set(JLnet/time4j/IsoUnit;)Lnet/time4j/Duration$Builder;

    return-object p0
.end method
