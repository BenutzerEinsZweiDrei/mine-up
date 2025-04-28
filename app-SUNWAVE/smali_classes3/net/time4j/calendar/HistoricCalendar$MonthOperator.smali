.class Lnet/time4j/calendar/HistoricCalendar$MonthOperator;
.super Ljava/lang/Object;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final backwards:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1821
    iput-boolean p1, p0, Lnet/time4j/calendar/HistoricCalendar$MonthOperator;->backwards:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1809
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$MonthOperator;->apply(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/calendar/HistoricCalendar;
    .locals 8

    .line 1830
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    .line 1831
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    .line 1832
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v2

    iget-boolean v3, p0, Lnet/time4j/calendar/HistoricCalendar$MonthOperator;->backwards:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v2, v3

    .line 1833
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v3

    const/16 v5, 0xc

    if-le v2, v5, :cond_3

    .line 1837
    sget-object v2, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    .line 1840
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    move v1, v4

    move v2, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    if-ge v2, v4, :cond_6

    .line 1848
    sget-object v2, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne v0, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_5

    .line 1852
    sget-object v2, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    if-ne v0, v2, :cond_5

    .line 1854
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    move v1, v4

    :cond_5
    :goto_1
    move v2, v5

    .line 1859
    :cond_6
    :goto_2
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v5

    move v6, v3

    :goto_3
    if-le v6, v4, :cond_7

    .line 1862
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v7

    invoke-virtual {v7, v5}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v7

    if-nez v7, :cond_7

    add-int/lit8 v6, v6, -0x1

    .line 1864
    invoke-static {v0, v1, v2, v6}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v5

    goto :goto_3

    :cond_7
    if-ne v6, v4, :cond_8

    :goto_4
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_8

    .line 1869
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v4

    invoke-virtual {v4, v5}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    .line 1871
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v5

    goto :goto_4

    .line 1875
    :cond_8
    new-instance v0, Lnet/time4j/calendar/HistoricCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v5, v1}, Lnet/time4j/calendar/HistoricCalendar;-><init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/history/HistoricDate;Lnet/time4j/calendar/HistoricCalendar$1;)V

    return-object v0
.end method
