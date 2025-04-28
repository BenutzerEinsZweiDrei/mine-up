.class Lnet/time4j/calendar/ChineseCalendar$Merger;
.super Lnet/time4j/calendar/AbstractMergerEA;
.source "ChineseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ChineseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/calendar/AbstractMergerEA<",
        "Lnet/time4j/calendar/ChineseCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1309
    const-class v0, Lnet/time4j/calendar/ChineseCalendar;

    invoke-direct {p0, v0}, Lnet/time4j/calendar/AbstractMergerEA;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 1303
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/ChineseCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/ChineseCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/ChineseCalendar;"
        }
    .end annotation

    .line 1324
    sget-object p2, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_3

    .line 1327
    sget-object p2, Lnet/time4j/calendar/ChineseCalendar;->YEAR_OF_CYCLE:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1328
    sget-object p2, Lnet/time4j/calendar/ChineseCalendar;->YEAR_OF_CYCLE:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/CyclicYear;

    .line 1329
    sget-object v1, Lnet/time4j/calendar/ChineseCalendar;->CYCLE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1331
    sget-object v1, Lnet/time4j/calendar/ChineseCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1332
    sget-object v1, Lnet/time4j/calendar/ChineseCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/calendar/ChineseEra;

    .line 1333
    invoke-virtual {v1}, Lnet/time4j/calendar/ChineseEra;->isQingDynasty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1334
    invoke-virtual {p2, v1}, Lnet/time4j/calendar/CyclicYear;->inQingDynasty(Lnet/time4j/calendar/ChineseEra;)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    goto :goto_0

    .line 1338
    :cond_0
    invoke-virtual {p2, v1}, Lnet/time4j/calendar/CyclicYear;->inCycle(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    goto :goto_0

    .line 1340
    :cond_1
    sget-object p2, Lnet/time4j/calendar/ChineseCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1341
    sget-object p2, Lnet/time4j/calendar/ChineseCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    if-eq p2, v0, :cond_2

    .line 1343
    sget-object v1, Lnet/time4j/calendar/ChineseCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/calendar/ChineseEra;

    .line 1344
    invoke-virtual {v1}, Lnet/time4j/calendar/ChineseEra;->getStartAsGregorianYear()I

    move-result v1

    add-int/2addr v1, p2

    sub-int/2addr v1, p4

    invoke-static {v1}, Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, p3

    goto :goto_0

    .line 1348
    :cond_3
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_4

    .line 1352
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p4, "Cannot determine East Asian year."

    invoke-virtual {p1, p2, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p3

    .line 1356
    :cond_4
    sget-object v1, Lnet/time4j/calendar/ChineseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1357
    sget-object p4, Lnet/time4j/calendar/ChineseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/time4j/calendar/EastAsianMonth;

    .line 1358
    sget-object v1, Lnet/time4j/calendar/ChineseCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    if-eq p1, v0, :cond_6

    .line 1360
    invoke-static {p2, p4, p1}, Lnet/time4j/calendar/ChineseCalendar;->of(Lnet/time4j/calendar/EastAsianYear;Lnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    return-object p1

    .line 1363
    :cond_5
    sget-object v1, Lnet/time4j/calendar/ChineseCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    if-eq p1, v0, :cond_6

    if-lt p1, p4, :cond_6

    .line 1365
    invoke-static {p4}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p3

    invoke-static {p2, p3, p4}, Lnet/time4j/calendar/ChineseCalendar;->of(Lnet/time4j/calendar/EastAsianYear;Lnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p2

    sub-int/2addr p1, p4

    int-to-long p3, p1

    .line 1366
    sget-object p1, Lnet/time4j/calendar/ChineseCalendar$Unit;->DAYS:Lnet/time4j/calendar/ChineseCalendar$Unit;

    invoke-virtual {p2, p3, p4, p1}, Lnet/time4j/calendar/ChineseCalendar;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ChineseCalendar;

    return-object p1

    :cond_6
    return-object p3
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/EastAsianCalendar;
    .locals 0

    .line 1303
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/ChineseCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    return-object p1
.end method
