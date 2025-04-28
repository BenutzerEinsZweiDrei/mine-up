.class Lnet/time4j/engine/StartOfDay$FunctionalStartOfDay;
.super Lnet/time4j/engine/StartOfDay;
.source "StartOfDay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/StartOfDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionalStartOfDay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/time4j/base/UnixTime;",
        ">",
        "Lnet/time4j/engine/StartOfDay;"
    }
.end annotation


# instance fields
.field private final event:Lnet/time4j/engine/ChronoFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/time4j/engine/ChronoFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "TT;>;)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Lnet/time4j/engine/StartOfDay;-><init>()V

    const-string v0, "Missing event function."

    .line 297
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iput-object p1, p0, Lnet/time4j/engine/StartOfDay$FunctionalStartOfDay;->event:Lnet/time4j/engine/ChronoFunction;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/ChronoFunction;Lnet/time4j/engine/StartOfDay$1;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1}, Lnet/time4j/engine/StartOfDay$FunctionalStartOfDay;-><init>(Lnet/time4j/engine/ChronoFunction;)V

    return-void
.end method


# virtual methods
.method public getDeviation(Lnet/time4j/engine/CalendarDate;Lnet/time4j/tz/TZID;)I
    .locals 5

    .line 312
    iget-object v0, p0, Lnet/time4j/engine/StartOfDay$FunctionalStartOfDay;->event:Lnet/time4j/engine/ChronoFunction;

    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/base/UnixTime;

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v0}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v1

    const-wide/32 v3, 0x3c26700

    sub-long/2addr v1, v3

    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    invoke-virtual {p2, v0}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result p2

    int-to-long v3, p2

    add-long/2addr v1, v3

    .line 316
    invoke-interface {p1}, Lnet/time4j/engine/CalendarDate;->getDaysSinceEpochUTC()J

    move-result-wide p1

    const-wide/32 v3, 0x15180

    mul-long/2addr p1, v3

    sub-long/2addr v1, p1

    .line 317
    invoke-static {v1, v2}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result p1

    const p2, 0xa8c0

    if-lt p1, p2, :cond_0

    const p2, 0x15180

    sub-int/2addr p1, p2

    :cond_0
    return p1

    .line 320
    :cond_1
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string p2, "Cannot determine start of day: No event."

    invoke-direct {p1, p2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
