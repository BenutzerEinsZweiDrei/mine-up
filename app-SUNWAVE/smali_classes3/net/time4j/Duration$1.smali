.class final Lnet/time4j/Duration$1;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/Duration;->comparatorOnClock()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/time4j/Duration<",
        "Lnet/time4j/ClockUnit;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 986
    check-cast p1, Lnet/time4j/Duration;

    check-cast p2, Lnet/time4j/Duration;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Duration$1;->compare(Lnet/time4j/Duration;Lnet/time4j/Duration;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/Duration;Lnet/time4j/Duration;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;",
            "Lnet/time4j/Duration<",
            "Lnet/time4j/ClockUnit;",
            ">;)I"
        }
    .end annotation

    .line 989
    invoke-static {p1}, Lnet/time4j/Duration;->access$400(Lnet/time4j/Duration;)J

    move-result-wide v0

    .line 990
    invoke-static {p2}, Lnet/time4j/Duration;->access$400(Lnet/time4j/Duration;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    .line 997
    :cond_1
    sget-object v0, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-virtual {p1, v0}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    rem-long/2addr v3, v5

    .line 998
    sget-object v0, Lnet/time4j/ClockUnit;->NANOS:Lnet/time4j/ClockUnit;

    invoke-virtual {p2, v0}, Lnet/time4j/Duration;->getPartialAmount(Lnet/time4j/engine/ChronoUnit;)J

    move-result-wide v7

    rem-long/2addr v7, v5

    .line 999
    invoke-virtual {p1}, Lnet/time4j/Duration;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1000
    invoke-static {v3, v4}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v3

    .line 1002
    :cond_2
    invoke-virtual {p2}, Lnet/time4j/Duration;->isNegative()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1003
    invoke-static {v7, v8}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v7

    :cond_3
    cmp-long p1, v3, v7

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    if-lez p1, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
