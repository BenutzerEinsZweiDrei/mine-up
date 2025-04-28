.class Lnet/time4j/calendar/HistoricCalendar$Transformer;
.super Ljava/lang/Object;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final history:Lnet/time4j/history/ChronoHistory;


# direct methods
.method constructor <init>(Lnet/time4j/history/ChronoHistory;)V
    .locals 0

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput-object p1, p0, Lnet/time4j/calendar/HistoricCalendar$Transformer;->history:Lnet/time4j/history/ChronoHistory;

    return-void
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 1059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    invoke-static {}, Lnet/time4j/history/HistoricEra;->values()[Lnet/time4j/history/HistoricEra;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1061
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1063
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSinceUTC()J
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    .line 1050
    invoke-static {v0, v1, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 1051
    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar$Transformer;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->date()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/history/HistoricDate;

    .line 1052
    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar$Transformer;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1, v0}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    .line 1041
    invoke-static {v0, v1, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object v0

    .line 1042
    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar$Transformer;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->date()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/history/HistoricDate;

    .line 1043
    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar$Transformer;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1, v0}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 1007
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$Transformer;->transform(Lnet/time4j/calendar/HistoricCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/HistoricCalendar;)J
    .locals 2

    .line 1034
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$800(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 1007
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar$Transformer;->transform(J)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/HistoricCalendar;
    .locals 3

    .line 1027
    new-instance v0, Lnet/time4j/calendar/HistoricCalendar;

    iget-object v1, p0, Lnet/time4j/calendar/HistoricCalendar$Transformer;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v2}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, p1, p2}, Lnet/time4j/calendar/HistoricCalendar;-><init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/PlainDate;Lnet/time4j/calendar/HistoricCalendar$1;)V

    return-object v0
.end method
