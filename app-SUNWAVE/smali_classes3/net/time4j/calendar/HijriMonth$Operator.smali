.class Lnet/time4j/calendar/HijriMonth$Operator;
.super Ljava/lang/Object;
.source "HijriMonth.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HijriMonth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/calendar/HijriCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final steps:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lnet/time4j/calendar/HijriMonth$Operator;->steps:I

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriMonth$Operator;->apply(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/calendar/HijriCalendar;
    .locals 4

    .line 218
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getYear()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getMonth()Lnet/time4j/calendar/HijriMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HijriMonth;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 219
    iget v1, p0, Lnet/time4j/calendar/HijriMonth$Operator;->steps:I

    add-int/2addr v0, v1

    .line 220
    div-int/lit8 v1, v0, 0xc

    .line 221
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1

    .line 222
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v2

    sget-object v3, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-interface {v2, v3, v1, v0}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v2

    .line 223
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getDayOfMonth()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 225
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v0, v2}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1
.end method
