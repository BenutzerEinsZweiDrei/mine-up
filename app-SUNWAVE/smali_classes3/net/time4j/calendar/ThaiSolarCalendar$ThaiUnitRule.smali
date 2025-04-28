.class Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;
.super Ljava/lang/Object;
.source "ThaiSolarCalendar.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ThaiSolarCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThaiUnitRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "Lnet/time4j/calendar/ThaiSolarCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final unit:Lnet/time4j/CalendarUnit;


# direct methods
.method constructor <init>(Lnet/time4j/CalendarUnit;)V
    .locals 0

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    iput-object p1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;->unit:Lnet/time4j/CalendarUnit;

    return-void
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1163
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;->addTo(Lnet/time4j/calendar/ThaiSolarCalendar;J)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/calendar/ThaiSolarCalendar;J)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 2

    .line 1187
    new-instance v0, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    iget-object v1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;->unit:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, p2, p3, v1}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/ThaiSolarCalendar$1;)V

    return-object v0
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1163
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    check-cast p2, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;->between(Lnet/time4j/calendar/ThaiSolarCalendar;Lnet/time4j/calendar/ThaiSolarCalendar;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/calendar/ThaiSolarCalendar;Lnet/time4j/calendar/ThaiSolarCalendar;)J
    .locals 1

    .line 1197
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$ThaiUnitRule;->unit:Lnet/time4j/CalendarUnit;

    invoke-static {p1}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-static {p2}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$400(Lnet/time4j/calendar/ThaiSolarCalendar;)Lnet/time4j/PlainDate;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/time4j/CalendarUnit;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)J

    move-result-wide p1

    return-wide p1
.end method
