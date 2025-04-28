.class Lnet/time4j/calendar/KoreanCalendar$Merger;
.super Lnet/time4j/calendar/AbstractMergerEA;
.source "KoreanCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/KoreanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/AbstractMergerEA<",
        "Lnet/time4j/calendar/KoreanCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 988
    const-class v0, Lnet/time4j/calendar/KoreanCalendar;

    invoke-direct {p0, v0}, Lnet/time4j/calendar/AbstractMergerEA;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 982
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/KoreanCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/KoreanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 0

    .line 982
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/KoreanCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/KoreanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/KoreanCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/KoreanCalendar;"
        }
    .end annotation

    .line 1003
    sget-object p2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    const/4 p3, 0x0

    const/high16 p4, -0x80000000

    if-ne p2, p4, :cond_2

    .line 1006
    sget-object p2, Lnet/time4j/calendar/KoreanCalendar;->YEAR_OF_CYCLE:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lnet/time4j/calendar/KoreanCalendar;->CYCLE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1007
    sget-object p2, Lnet/time4j/calendar/KoreanCalendar;->YEAR_OF_CYCLE:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/CyclicYear;

    .line 1008
    sget-object v0, Lnet/time4j/calendar/KoreanCalendar;->CYCLE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    .line 1009
    invoke-virtual {p2, v0}, Lnet/time4j/calendar/CyclicYear;->inCycle(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    goto :goto_0

    .line 1011
    :cond_0
    sget-object p2, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    invoke-virtual {p2}, Lnet/time4j/calendar/KoreanEra;->yearOfEra()Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    if-eq p2, p4, :cond_1

    .line 1013
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianYear;->forDangi(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p3

    goto :goto_0

    .line 1017
    :cond_2
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_3

    .line 1021
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p4, "Cannot determine East Asian year."

    invoke-virtual {p1, p2, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p3

    .line 1025
    :cond_3
    sget-object v0, Lnet/time4j/calendar/KoreanCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1026
    sget-object v0, Lnet/time4j/calendar/KoreanCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/EastAsianMonth;

    .line 1027
    sget-object v1, Lnet/time4j/calendar/KoreanCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    if-eq p1, p4, :cond_5

    .line 1029
    invoke-static {p2, v0, p1}, Lnet/time4j/calendar/KoreanCalendar;->of(Lnet/time4j/calendar/EastAsianYear;Lnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/KoreanCalendar;

    move-result-object p1

    return-object p1

    .line 1032
    :cond_4
    sget-object v0, Lnet/time4j/calendar/KoreanCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    if-eq p1, p4, :cond_5

    const/4 p4, 0x1

    if-lt p1, p4, :cond_5

    .line 1034
    invoke-static {p4}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p3

    invoke-static {p2, p3, p4}, Lnet/time4j/calendar/KoreanCalendar;->of(Lnet/time4j/calendar/EastAsianYear;Lnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/KoreanCalendar;

    move-result-object p2

    sub-int/2addr p1, p4

    int-to-long p3, p1

    .line 1035
    sget-object p1, Lnet/time4j/calendar/KoreanCalendar$Unit;->DAYS:Lnet/time4j/calendar/KoreanCalendar$Unit;

    invoke-virtual {p2, p3, p4, p1}, Lnet/time4j/calendar/KoreanCalendar;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    return-object p1

    :cond_5
    return-object p3
.end method
