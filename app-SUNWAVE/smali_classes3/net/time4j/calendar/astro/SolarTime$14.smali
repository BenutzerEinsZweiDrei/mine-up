.class final Lnet/time4j/calendar/astro/SolarTime$14;
.super Ljava/lang/Object;
.source "SolarTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/astro/SolarTime;->onAverage(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;
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
        "Lnet/time4j/PlainTimestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$offset:Lnet/time4j/tz/ZonalOffset;


# direct methods
.method constructor <init>(Lnet/time4j/tz/ZonalOffset;)V
    .locals 0

    .line 1192
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$14;->val$offset:Lnet/time4j/tz/ZonalOffset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1192
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/astro/SolarTime$14;->apply(Lnet/time4j/Moment;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/Moment;)Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 1195
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$14;->val$offset:Lnet/time4j/tz/ZonalOffset;

    invoke-static {p1, v0}, Lnet/time4j/calendar/astro/SolarTime;->access$1000(Lnet/time4j/Moment;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method
