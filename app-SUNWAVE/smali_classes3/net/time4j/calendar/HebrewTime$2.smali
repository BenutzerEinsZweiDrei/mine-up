.class final Lnet/time4j/calendar/HebrewTime$2;
.super Ljava/lang/Object;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/HebrewTime;->at(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoFunction;
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
        "Lnet/time4j/calendar/HebrewTime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$tzid:Lnet/time4j/tz/TZID;


# direct methods
.method constructor <init>(Lnet/time4j/tz/TZID;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lnet/time4j/calendar/HebrewTime$2;->val$tzid:Lnet/time4j/tz/TZID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 555
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$2;->apply(Lnet/time4j/Moment;)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/Moment;)Lnet/time4j/calendar/HebrewTime;
    .locals 3

    .line 558
    iget-object v0, p0, Lnet/time4j/calendar/HebrewTime$2;->val$tzid:Lnet/time4j/tz/TZID;

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->toZonalTimestamp(Lnet/time4j/tz/TZID;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object p1

    .line 559
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    rem-int/lit8 v0, v0, 0x18

    .line 560
    sget-object v1, Lnet/time4j/PlainTime;->DECIMAL_HOUR:Lnet/time4j/ZonalElement;

    .line 561
    invoke-virtual {p1, v1}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    .line 562
    invoke-virtual {p1}, Lnet/time4j/PlainTime;->getHour()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x438

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    .line 563
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    .line 565
    new-instance v1, Lnet/time4j/calendar/HebrewTime;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lnet/time4j/calendar/HebrewTime;-><init>(IILnet/time4j/calendar/HebrewTime$1;)V

    return-object v1
.end method
