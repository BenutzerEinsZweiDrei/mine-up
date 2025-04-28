.class Lnet/time4j/calendar/astro/SolarTime$11;
.super Ljava/lang/Object;
.source "SolarTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/astro/SolarTime;->timeOfShadowAfterNoon(DD)Lnet/time4j/engine/ChronoFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/engine/CalendarDate;",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/calendar/astro/SolarTime;

.field final synthetic val$objectHeight:D

.field final synthetic val$shadowLength:D


# direct methods
.method constructor <init>(Lnet/time4j/calendar/astro/SolarTime;DD)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$11;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    iput-wide p2, p0, Lnet/time4j/calendar/astro/SolarTime$11;->val$objectHeight:D

    iput-wide p4, p0, Lnet/time4j/calendar/astro/SolarTime$11;->val$shadowLength:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1030
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/astro/SolarTime$11;->apply(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/Moment;
    .locals 7

    .line 1033
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$11;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    iget-wide v3, p0, Lnet/time4j/calendar/astro/SolarTime$11;->val$objectHeight:D

    iget-wide v5, p0, Lnet/time4j/calendar/astro/SolarTime$11;->val$shadowLength:D

    const/4 v2, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lnet/time4j/calendar/astro/SolarTime;->access$900(Lnet/time4j/calendar/astro/SolarTime;Lnet/time4j/engine/CalendarDate;ZDD)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method
