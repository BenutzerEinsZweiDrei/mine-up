.class final Lnet/time4j/calendar/MinguoCalendar$1;
.super Ljava/lang/Object;
.source "MinguoCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/MinguoCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/calendar/MinguoCalendar;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/MinguoCalendar;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 277
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/MinguoCalendar$1;->apply(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/engine/CalendarSystem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/MinguoCalendar;",
            ")",
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/calendar/MinguoCalendar;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-static {}, Lnet/time4j/calendar/MinguoCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p1

    return-object p1
.end method
