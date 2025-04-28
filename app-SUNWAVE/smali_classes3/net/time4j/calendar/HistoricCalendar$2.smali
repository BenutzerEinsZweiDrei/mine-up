.class final Lnet/time4j/calendar/HistoricCalendar$2;
.super Ljava/lang/Object;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 406
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$2;->apply(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/CalendarSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ")",
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ">;"
        }
    .end annotation

    .line 409
    invoke-virtual {p1}, Lnet/time4j/calendar/HistoricCalendar;->getChronology()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/HistoricCalendar;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/engine/CalendarFamily;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1
.end method
