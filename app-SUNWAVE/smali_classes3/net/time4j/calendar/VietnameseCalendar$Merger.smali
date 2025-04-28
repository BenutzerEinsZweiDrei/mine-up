.class Lnet/time4j/calendar/VietnameseCalendar$Merger;
.super Lnet/time4j/calendar/AbstractMergerEA;
.source "VietnameseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/VietnameseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/AbstractMergerEA<",
        "Lnet/time4j/calendar/VietnameseCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 811
    const-class v0, Lnet/time4j/calendar/VietnameseCalendar;

    invoke-direct {p0, v0}, Lnet/time4j/calendar/AbstractMergerEA;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 805
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/VietnameseCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/VietnameseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 0

    .line 805
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/VietnameseCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/VietnameseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/VietnameseCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/VietnameseCalendar;"
        }
    .end annotation

    .line 826
    sget-object p2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    const/4 p3, 0x0

    const/high16 p4, -0x80000000

    if-ne p2, p4, :cond_1

    .line 829
    sget-object p2, Lnet/time4j/calendar/VietnameseCalendar;->YEAR_OF_CYCLE:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 830
    sget-object p2, Lnet/time4j/calendar/VietnameseCalendar;->YEAR_OF_CYCLE:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/CyclicYear;

    .line 831
    sget-object v0, Lnet/time4j/calendar/VietnameseCalendar;->CYCLE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    if-eq v0, p4, :cond_0

    .line 833
    invoke-virtual {p2, v0}, Lnet/time4j/calendar/CyclicYear;->inCycle(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    goto :goto_0

    .line 837
    :cond_1
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    .line 841
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p4, "Cannot determine East Asian year."

    invoke-virtual {p1, p2, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p3

    .line 845
    :cond_2
    sget-object v0, Lnet/time4j/calendar/VietnameseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    sget-object v0, Lnet/time4j/calendar/VietnameseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/EastAsianMonth;

    .line 847
    sget-object v1, Lnet/time4j/calendar/VietnameseCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    if-eq p1, p4, :cond_4

    .line 849
    invoke-static {p2, v0, p1}, Lnet/time4j/calendar/VietnameseCalendar;->of(Lnet/time4j/calendar/EastAsianYear;Lnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/VietnameseCalendar;

    move-result-object p1

    return-object p1

    .line 852
    :cond_3
    sget-object v0, Lnet/time4j/calendar/VietnameseCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    if-eq p1, p4, :cond_4

    const/4 p4, 0x1

    if-lt p1, p4, :cond_4

    .line 854
    invoke-static {p4}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p3

    invoke-static {p2, p3, p4}, Lnet/time4j/calendar/VietnameseCalendar;->of(Lnet/time4j/calendar/EastAsianYear;Lnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/VietnameseCalendar;

    move-result-object p2

    sub-int/2addr p1, p4

    int-to-long p3, p1

    .line 855
    sget-object p1, Lnet/time4j/calendar/VietnameseCalendar$Unit;->DAYS:Lnet/time4j/calendar/VietnameseCalendar$Unit;

    invoke-virtual {p2, p3, p4, p1}, Lnet/time4j/calendar/VietnameseCalendar;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/VietnameseCalendar;

    return-object p1

    :cond_4
    return-object p3
.end method
