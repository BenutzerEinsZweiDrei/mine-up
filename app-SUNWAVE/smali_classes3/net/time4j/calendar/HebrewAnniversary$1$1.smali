.class Lnet/time4j/calendar/HebrewAnniversary$1$1;
.super Ljava/lang/Object;
.source "HebrewAnniversary.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/HebrewAnniversary$1;->inHebrewYear(I)Lnet/time4j/engine/ChronoFunction;
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
        "Lnet/time4j/calendar/HebrewCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/calendar/HebrewAnniversary$1;

.field final synthetic val$hyear:I


# direct methods
.method constructor <init>(Lnet/time4j/calendar/HebrewAnniversary$1;I)V
    .locals 0

    .line 93
    iput-object p1, p0, Lnet/time4j/calendar/HebrewAnniversary$1$1;->this$0:Lnet/time4j/calendar/HebrewAnniversary$1;

    iput p2, p0, Lnet/time4j/calendar/HebrewAnniversary$1$1;->val$hyear:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewAnniversary$1$1;->apply(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;
    .locals 3

    .line 96
    invoke-static {p1}, Lnet/time4j/calendar/HebrewAnniversary;->access$100(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->getDayOfMonth()I

    move-result v0

    .line 98
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->getMonth()Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    sget-object v2, Lnet/time4j/calendar/HebrewMonth;->ADAR_II:Lnet/time4j/calendar/HebrewMonth;

    if-ne v1, v2, :cond_1

    .line 99
    iget p1, p0, Lnet/time4j/calendar/HebrewAnniversary$1$1;->val$hyear:I

    .line 101
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    .line 99
    :goto_0
    invoke-static {p1, v1, v0}, Lnet/time4j/calendar/HebrewCalendar;->ofBiblical(III)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    .line 104
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->getMonth()Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    .line 105
    sget-object v1, Lnet/time4j/calendar/HebrewMonth;->ADAR_I:Lnet/time4j/calendar/HebrewMonth;

    if-ne p1, v1, :cond_2

    iget v1, p0, Lnet/time4j/calendar/HebrewAnniversary$1$1;->val$hyear:I

    invoke-static {v1}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    sget-object p1, Lnet/time4j/calendar/HebrewMonth;->ADAR_II:Lnet/time4j/calendar/HebrewMonth;

    :cond_2
    const/16 v1, 0x1d

    if-gt v0, v1, :cond_3

    .line 109
    iget v1, p0, Lnet/time4j/calendar/HebrewAnniversary$1$1;->val$hyear:I

    invoke-static {v1, p1, v0}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    .line 111
    :cond_3
    iget v1, p0, Lnet/time4j/calendar/HebrewAnniversary$1$1;->val$hyear:I

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    sub-int/2addr v0, v2

    int-to-long v0, v0

    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HebrewCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    return-object p1
.end method
