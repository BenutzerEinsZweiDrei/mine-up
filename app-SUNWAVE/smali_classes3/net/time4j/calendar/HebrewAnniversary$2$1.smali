.class Lnet/time4j/calendar/HebrewAnniversary$2$1;
.super Ljava/lang/Object;
.source "HebrewAnniversary.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/HebrewAnniversary$2;->inHebrewYear(I)Lnet/time4j/engine/ChronoFunction;
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
.field final synthetic this$0:Lnet/time4j/calendar/HebrewAnniversary$2;

.field final synthetic val$hyear:I


# direct methods
.method constructor <init>(Lnet/time4j/calendar/HebrewAnniversary$2;I)V
    .locals 0

    .line 134
    iput-object p1, p0, Lnet/time4j/calendar/HebrewAnniversary$2$1;->this$0:Lnet/time4j/calendar/HebrewAnniversary$2;

    iput p2, p0, Lnet/time4j/calendar/HebrewAnniversary$2$1;->val$hyear:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Lnet/time4j/engine/CalendarDate;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewAnniversary$2$1;->apply(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;
    .locals 7

    .line 137
    invoke-static {p1}, Lnet/time4j/calendar/HebrewAnniversary;->access$100(Lnet/time4j/engine/CalendarDate;)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->getYear()I

    move-result v0

    .line 139
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->getMonth()Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewCalendar;->getDayOfMonth()I

    move-result p1

    .line 141
    sget-object v2, Lnet/time4j/calendar/HebrewMonth;->HESHVAN:Lnet/time4j/calendar/HebrewMonth;

    const/16 v3, 0x1d

    const/16 v4, 0x1e

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    if-ne p1, v4, :cond_0

    add-int/lit8 v2, v0, 0x1

    sget-object v6, Lnet/time4j/calendar/HebrewMonth;->HESHVAN:Lnet/time4j/calendar/HebrewMonth;

    invoke-static {v2, v6}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 142
    iget p1, p0, Lnet/time4j/calendar/HebrewAnniversary$2$1;->val$hyear:I

    sget-object v0, Lnet/time4j/calendar/HebrewMonth;->KISLEV:Lnet/time4j/calendar/HebrewMonth;

    invoke-static {p1, v0, v5}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    sget-object v0, Lnet/time4j/engine/CalendarDays;->ONE:Lnet/time4j/engine/CalendarDays;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HebrewCalendar;->minus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    return-object p1

    .line 143
    :cond_0
    sget-object v2, Lnet/time4j/calendar/HebrewMonth;->KISLEV:Lnet/time4j/calendar/HebrewMonth;

    if-ne v1, v2, :cond_1

    if-ne p1, v4, :cond_1

    add-int/lit8 v2, v0, 0x1

    sget-object v6, Lnet/time4j/calendar/HebrewMonth;->KISLEV:Lnet/time4j/calendar/HebrewMonth;

    invoke-static {v2, v6}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 144
    iget p1, p0, Lnet/time4j/calendar/HebrewAnniversary$2$1;->val$hyear:I

    sget-object v0, Lnet/time4j/calendar/HebrewMonth;->TEVET:Lnet/time4j/calendar/HebrewMonth;

    invoke-static {p1, v0, v5}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    sget-object v0, Lnet/time4j/engine/CalendarDays;->ONE:Lnet/time4j/engine/CalendarDays;

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HebrewCalendar;->minus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    return-object p1

    .line 145
    :cond_1
    sget-object v2, Lnet/time4j/calendar/HebrewMonth;->ADAR_II:Lnet/time4j/calendar/HebrewMonth;

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget v0, p0, Lnet/time4j/calendar/HebrewAnniversary$2$1;->val$hyear:I

    sget-object v1, Lnet/time4j/calendar/HebrewMonth;->ADAR_II:Lnet/time4j/calendar/HebrewMonth;

    invoke-static {v0, v1, p1}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 147
    invoke-virtual {v1, v0}, Lnet/time4j/calendar/HebrewMonth;->getBiblicalValue(Z)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    if-ne p1, v4, :cond_3

    iget v2, p0, Lnet/time4j/calendar/HebrewAnniversary$2$1;->val$hyear:I

    invoke-static {v2}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    iget p1, p0, Lnet/time4j/calendar/HebrewAnniversary$2$1;->val$hyear:I

    sget-object v0, Lnet/time4j/calendar/HebrewMonth;->SHEVAT:Lnet/time4j/calendar/HebrewMonth;

    invoke-static {p1, v0, v4}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    .line 150
    :cond_3
    iget v2, p0, Lnet/time4j/calendar/HebrewAnniversary$2$1;->val$hyear:I

    invoke-virtual {v1, v0}, Lnet/time4j/calendar/HebrewMonth;->getBiblicalValue(Z)I

    move-result v0

    invoke-static {v2, v0, v5}, Lnet/time4j/calendar/HebrewCalendar;->ofBiblical(III)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object v0

    sub-int/2addr p1, v5

    int-to-long v1, p1

    .line 151
    invoke-static {v1, v2}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/HebrewCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    return-object p1
.end method
