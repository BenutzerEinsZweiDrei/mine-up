.class Lnet/time4j/calendar/SolarTerm$2;
.super Ljava/lang/Object;
.source "SolarTerm.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/SolarTerm;->sinceNewYear()Lnet/time4j/engine/ChronoOperator;
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

    .line 518
    iput-object p1, p0, Lnet/time4j/calendar/SolarTerm$2;->this$0:Lnet/time4j/calendar/SolarTerm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 518
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/SolarTerm$2;->apply(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lnet/time4j/calendar/SolarTerm$2;->this$0:Lnet/time4j/calendar/SolarTerm;

    invoke-virtual {p1}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v1

    invoke-static {p1}, Lnet/time4j/calendar/SolarTerm;->access$000(Lnet/time4j/calendar/EastAsianCalendar;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/SolarTerm;->onOrAfter(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object p1

    return-object p1
.end method
