.class final enum Lnet/time4j/history/CalendarAlgorithm$2;
.super Lnet/time4j/history/CalendarAlgorithm;
.source "CalendarAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/history/CalendarAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/history/CalendarAlgorithm;-><init>(Ljava/lang/String;ILnet/time4j/history/CalendarAlgorithm$1;)V

    return-void
.end method


# virtual methods
.method public fromMJD(J)Lnet/time4j/history/HistoricDate;
    .locals 3

    .line 75
    invoke-static {p1, p2}, Lnet/time4j/history/JulianMath;->toPackedDate(J)J

    move-result-wide p1

    .line 76
    invoke-static {p1, p2}, Lnet/time4j/history/JulianMath;->readYear(J)I

    move-result v0

    .line 77
    invoke-static {p1, p2}, Lnet/time4j/history/JulianMath;->readMonth(J)I

    move-result v1

    .line 78
    invoke-static {p1, p2}, Lnet/time4j/history/JulianMath;->readDayOfMonth(J)I

    move-result p1

    .line 79
    new-instance p2, Lnet/time4j/history/HistoricDate;

    if-gtz v0, :cond_0

    sget-object v2, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    :goto_0
    if-gtz v0, :cond_1

    rsub-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-direct {p2, v2, v0, v1, p1}, Lnet/time4j/history/HistoricDate;-><init>(Lnet/time4j/history/HistoricEra;III)V

    return-object p2
.end method

.method public getMaximumDayOfMonth(Lnet/time4j/history/HistoricDate;)I
    .locals 1

    .line 97
    invoke-static {p1}, Lnet/time4j/history/CalendarAlgorithm;->access$100(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    invoke-static {v0, p1}, Lnet/time4j/history/JulianMath;->getLengthOfMonth(II)I

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/history/HistoricDate;)Z
    .locals 2

    .line 89
    invoke-static {p1}, Lnet/time4j/history/CalendarAlgorithm;->access$100(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    .line 90
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    .line 91
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    .line 92
    invoke-static {v0, v1, p1}, Lnet/time4j/history/JulianMath;->isValid(III)Z

    move-result p1

    return p1
.end method

.method public toMJD(Lnet/time4j/history/HistoricDate;)J
    .locals 2

    .line 70
    invoke-static {p1}, Lnet/time4j/history/CalendarAlgorithm;->access$100(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v0, v1, p1}, Lnet/time4j/history/JulianMath;->toMJD(III)J

    move-result-wide v0

    return-wide v0
.end method
