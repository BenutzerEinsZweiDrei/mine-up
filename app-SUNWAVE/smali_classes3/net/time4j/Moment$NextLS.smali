.class Lnet/time4j/Moment$NextLS;
.super Ljava/lang/Object;
.source "Moment.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NextLS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/Moment$1;)V
    .locals 0

    .line 3213
    invoke-direct {p0}, Lnet/time4j/Moment$NextLS;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3213
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/Moment$NextLS;->apply(Lnet/time4j/Moment;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/Moment;)Lnet/time4j/Moment;
    .locals 3

    .line 3221
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object v0

    .line 3223
    invoke-virtual {v0}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3224
    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-virtual {p1, v1}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v1

    .line 3225
    invoke-virtual {v0, v1, v2}, Lnet/time4j/scale/LeapSeconds;->getNextEvent(J)Lnet/time4j/scale/LeapSecondEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3229
    invoke-interface {p1}, Lnet/time4j/scale/LeapSecondEvent;->getDate()Lnet/time4j/base/GregorianDate;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/PlainDate;->from(Lnet/time4j/base/GregorianDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    const/16 v1, 0x17

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2, v2}, Lnet/time4j/PlainDate;->atTime(III)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 3230
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->atUTC()Lnet/time4j/Moment;

    move-result-object v0

    invoke-interface {p1}, Lnet/time4j/scale/LeapSecondEvent;->getShift()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {v0, v1, v2, p1}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
