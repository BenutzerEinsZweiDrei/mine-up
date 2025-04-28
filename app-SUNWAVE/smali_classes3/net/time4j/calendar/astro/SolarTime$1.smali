.class Lnet/time4j/calendar/astro/SolarTime$1;
.super Ljava/lang/Object;
.source "SolarTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/astro/SolarTime;->sunrise()Lnet/time4j/engine/ChronoFunction;
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


# direct methods
.method constructor <init>(Lnet/time4j/calendar/astro/SolarTime;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$1;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 612
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/astro/SolarTime$1;->apply(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/Moment;
    .locals 9

    .line 615
    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$1;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/SolarTime;->getCalculator()Lnet/time4j/calendar/astro/SolarTime$Calculator;

    move-result-object v1

    iget-object v0, p0, Lnet/time4j/calendar/astro/SolarTime$1;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    .line 616
    invoke-static {v0, p1}, Lnet/time4j/calendar/astro/SolarTime;->access$100(Lnet/time4j/calendar/astro/SolarTime;Lnet/time4j/engine/CalendarDate;)Lnet/time4j/engine/CalendarDate;

    move-result-object v2

    iget-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$1;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {p1}, Lnet/time4j/calendar/astro/SolarTime;->access$200(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v3

    iget-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$1;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {p1}, Lnet/time4j/calendar/astro/SolarTime;->access$300(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v5

    iget-object p1, p0, Lnet/time4j/calendar/astro/SolarTime$1;->this$0:Lnet/time4j/calendar/astro/SolarTime;

    invoke-static {p1}, Lnet/time4j/calendar/astro/SolarTime;->access$400(Lnet/time4j/calendar/astro/SolarTime;)D

    move-result-wide v7

    .line 615
    invoke-interface/range {v1 .. v8}, Lnet/time4j/calendar/astro/SolarTime$Calculator;->sunrise(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method
