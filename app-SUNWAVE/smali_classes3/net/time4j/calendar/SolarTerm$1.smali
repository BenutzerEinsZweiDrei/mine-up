.class Lnet/time4j/calendar/SolarTerm$1;
.super Ljava/lang/Object;
.source "SolarTerm.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/SolarTerm;->sinceLichun()Lnet/time4j/engine/ChronoOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/calendar/SolarTerm;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/SolarTerm;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lnet/time4j/calendar/SolarTerm$1;->this$0:Lnet/time4j/calendar/SolarTerm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 453
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/SolarTerm$1;->apply(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .line 456
    const-class v0, Lnet/time4j/PlainDate;

    .line 457
    invoke-virtual {p1, v0}, Lnet/time4j/calendar/EastAsianCalendar;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    .line 458
    sget-object v2, Lnet/time4j/calendar/SolarTerm;->MINOR_01_LICHUN_315:Lnet/time4j/calendar/SolarTerm;

    .line 459
    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/time4j/calendar/SolarTerm;->onOrAfter(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    .line 460
    iget-object v0, p0, Lnet/time4j/calendar/SolarTerm$1;->this$0:Lnet/time4j/calendar/SolarTerm;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/SolarTerm;->onOrAfter(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method
