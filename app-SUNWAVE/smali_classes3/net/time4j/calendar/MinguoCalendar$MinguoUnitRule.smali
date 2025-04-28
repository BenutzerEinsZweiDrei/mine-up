.class Lnet/time4j/calendar/MinguoCalendar$MinguoUnitRule;
.super Ljava/lang/Object;
.source "MinguoCalendar.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/MinguoCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MinguoUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/MinguoCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/CalendarUnit;


# direct methods
.method constructor <init>(Lnet/time4j/CalendarUnit;)V
    .locals 0

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    iput-object p1, p0, Lnet/time4j/calendar/MinguoCalendar$MinguoUnitRule;->unit:Lnet/time4j/CalendarUnit;

    return-void
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1076
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/MinguoCalendar$MinguoUnitRule;->addTo(Lnet/time4j/calendar/MinguoCalendar;J)Lnet/time4j/calendar/MinguoCalendar;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/MinguoCalendar;J)Lnet/time4j/calendar/MinguoCalendar;
    .locals 2

    .line 1100
    new-instance v0, Lnet/time4j/calendar/MinguoCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/MinguoCalendar;->access$500(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    iget-object v1, p0, Lnet/time4j/calendar/MinguoCalendar$MinguoUnitRule;->unit:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, p2, p3, v1}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lnet/time4j/calendar/MinguoCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/MinguoCalendar$1;)V

    return-object v0
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1076
    check-cast p1, Lnet/time4j/calendar/MinguoCalendar;

    check-cast p2, Lnet/time4j/calendar/MinguoCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/MinguoCalendar$MinguoUnitRule;->between(Lnet/time4j/calendar/MinguoCalendar;Lnet/time4j/calendar/MinguoCalendar;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/MinguoCalendar;Lnet/time4j/calendar/MinguoCalendar;)J
    .locals 1

    .line 1110
    iget-object v0, p0, Lnet/time4j/calendar/MinguoCalendar$MinguoUnitRule;->unit:Lnet/time4j/CalendarUnit;

    invoke-static {p1}, Lnet/time4j/calendar/MinguoCalendar;->access$500(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-static {p2}, Lnet/time4j/calendar/MinguoCalendar;->access$500(Lnet/time4j/calendar/MinguoCalendar;)Lnet/time4j/PlainDate;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/time4j/CalendarUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide p1

    return-wide p1
.end method
