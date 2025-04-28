.class Lnet/time4j/Moment$GlobalTimeLine;
.super Ljava/lang/Object;
.source "Moment.java"

# interfaces
.implements Lnet/time4j/engine/TimeLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalTimeLine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeLine<",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/Moment$1;)V
    .locals 0

    .line 3153
    invoke-direct {p0}, Lnet/time4j/Moment$GlobalTimeLine;-><init>()V

    return-void
.end method

.method private static useSI(Lnet/time4j/Moment;)Z
    .locals 4

    .line 3205
    invoke-static {p0}, Lnet/time4j/Moment;->access$1900(Lnet/time4j/Moment;)J

    move-result-wide v0

    const-wide/32 v2, 0x3c26700

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 3206
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3153
    check-cast p1, Lnet/time4j/Moment;

    check-cast p2, Lnet/time4j/Moment;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$GlobalTimeLine;->compare(Lnet/time4j/Moment;Lnet/time4j/Moment;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/Moment;Lnet/time4j/Moment;)I
    .locals 0

    .line 3198
    invoke-virtual {p1, p2}, Lnet/time4j/Moment;->compareTo(Lnet/time4j/Moment;)I

    move-result p1

    return p1
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic stepBackwards(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3153
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$GlobalTimeLine;->stepBackwards(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public stepBackwards(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 3

    .line 3177
    :try_start_0
    invoke-static {p1}, Lnet/time4j/Moment$GlobalTimeLine;->useSI(Lnet/time4j/Moment;)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 3178
    sget-object v0, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    invoke-virtual {p1, v1, v2, v0}, Lnet/time4j/Moment;->minus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 3180
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Lnet/time4j/Moment;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic stepForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3153
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$GlobalTimeLine;->stepForward(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public stepForward(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 3

    .line 3162
    :try_start_0
    invoke-static {p1}, Lnet/time4j/Moment$GlobalTimeLine;->useSI(Lnet/time4j/Moment;)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 3163
    sget-object v0, Lnet/time4j/SI;->NANOSECONDS:Lnet/time4j/SI;

    invoke-virtual {p1, v1, v2, v0}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 3165
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v0}, Lnet/time4j/Moment;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/Moment;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
