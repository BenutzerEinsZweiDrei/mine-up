.class final enum Lnet/time4j/history/CalendarAlgorithm$3;
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

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/history/CalendarAlgorithm;-><init>(Ljava/lang/String;ILnet/time4j/history/CalendarAlgorithm$1;)V

    return-void
.end method


# virtual methods
.method public fromMJD(J)Lnet/time4j/history/HistoricDate;
    .locals 3

    const-wide/32 v0, -0xd148

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 119
    new-instance p1, Lnet/time4j/history/HistoricDate;

    sget-object p2, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v0, 0x6b0

    const/4 v1, 0x2

    const/16 v2, 0x1e

    invoke-direct {p1, p2, v0, v1, v2}, Lnet/time4j/history/HistoricDate;-><init>(Lnet/time4j/history/HistoricEra;III)V

    return-object p1

    .line 121
    :cond_0
    sget-object v0, Lnet/time4j/history/CalendarAlgorithm$3;->JULIAN:Lnet/time4j/history/CalendarAlgorithm;

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lnet/time4j/history/CalendarAlgorithm;->fromMJD(J)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public getMaximumDayOfMonth(Lnet/time4j/history/HistoricDate;)I
    .locals 3

    .line 139
    invoke-static {p1}, Lnet/time4j/history/CalendarAlgorithm;->access$100(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    .line 141
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x6b0

    if-ne v0, v1, :cond_0

    const/16 p1, 0x1e

    return p1

    .line 146
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    invoke-static {v0, p1}, Lnet/time4j/history/JulianMath;->getLengthOfMonth(II)I

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/history/HistoricDate;)Z
    .locals 3

    .line 126
    invoke-static {p1}, Lnet/time4j/history/CalendarAlgorithm;->access$100(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    .line 128
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_0

    .line 129
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x6b0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v0, v1, p1}, Lnet/time4j/history/JulianMath;->isValid(III)Z

    move-result p1

    return p1
.end method

.method public toMJD(Lnet/time4j/history/HistoricDate;)J
    .locals 4

    .line 105
    invoke-static {p1}, Lnet/time4j/history/CalendarAlgorithm;->access$100(Lnet/time4j/history/HistoricDate;)I

    move-result v0

    .line 107
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_0

    .line 108
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x6b0

    if-ne v0, v1, :cond_0

    const-wide/32 v0, -0xd148

    return-wide v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v0, v1, p1}, Lnet/time4j/history/JulianMath;->toMJD(III)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method
