.class final Lnet/time4j/history/CutOverEvent;
.super Ljava/lang/Object;
.source "CutOverEvent.java"


# instance fields
.field final algorithm:Lnet/time4j/history/CalendarAlgorithm;

.field final dateAtCutOver:Lnet/time4j/history/HistoricDate;

.field final dateBeforeCutOver:Lnet/time4j/history/HistoricDate;

.field final start:J


# direct methods
.method constructor <init>(JLnet/time4j/history/CalendarAlgorithm;Lnet/time4j/history/CalendarAlgorithm;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lnet/time4j/history/CutOverEvent;->start:J

    .line 52
    iput-object p4, p0, Lnet/time4j/history/CutOverEvent;->algorithm:Lnet/time4j/history/CalendarAlgorithm;

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 55
    new-instance p1, Lnet/time4j/history/HistoricDate;

    sget-object p2, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    const p3, 0x3b9aca00

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4, p4}, Lnet/time4j/history/HistoricDate;-><init>(Lnet/time4j/history/HistoricEra;III)V

    .line 56
    iput-object p1, p0, Lnet/time4j/history/CutOverEvent;->dateAtCutOver:Lnet/time4j/history/HistoricDate;

    .line 57
    iput-object p1, p0, Lnet/time4j/history/CutOverEvent;->dateBeforeCutOver:Lnet/time4j/history/HistoricDate;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p4, p1, p2}, Lnet/time4j/history/CalendarAlgorithm;->fromMJD(J)Lnet/time4j/history/HistoricDate;

    move-result-object p4

    iput-object p4, p0, Lnet/time4j/history/CutOverEvent;->dateAtCutOver:Lnet/time4j/history/HistoricDate;

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 60
    invoke-virtual {p3, p1, p2}, Lnet/time4j/history/CalendarAlgorithm;->fromMJD(J)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/history/CutOverEvent;->dateBeforeCutOver:Lnet/time4j/history/HistoricDate;

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 72
    :cond_0
    instance-of v1, p1, Lnet/time4j/history/CutOverEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 73
    check-cast p1, Lnet/time4j/history/CutOverEvent;

    .line 74
    iget-wide v3, p0, Lnet/time4j/history/CutOverEvent;->start:J

    iget-wide v5, p1, Lnet/time4j/history/CutOverEvent;->start:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/time4j/history/CutOverEvent;->algorithm:Lnet/time4j/history/CalendarAlgorithm;

    iget-object v3, p1, Lnet/time4j/history/CutOverEvent;->algorithm:Lnet/time4j/history/CalendarAlgorithm;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lnet/time4j/history/CutOverEvent;->dateBeforeCutOver:Lnet/time4j/history/HistoricDate;

    iget-object p1, p1, Lnet/time4j/history/CutOverEvent;->dateBeforeCutOver:Lnet/time4j/history/HistoricDate;

    .line 77
    invoke-virtual {v1, p1}, Lnet/time4j/history/HistoricDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 88
    iget-wide v0, p0, Lnet/time4j/history/CutOverEvent;->start:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[start="

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-wide v1, p0, Lnet/time4j/history/CutOverEvent;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ("

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-wide v1, p0, Lnet/time4j/history/CutOverEvent;->start:J

    sget-object v3, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-static {v1, v2, v3}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "),algorithm="

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lnet/time4j/history/CutOverEvent;->algorithm:Lnet/time4j/history/CalendarAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",date-before-cutover="

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lnet/time4j/history/CutOverEvent;->dateBeforeCutOver:Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",date-at-cutover="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lnet/time4j/history/CutOverEvent;->dateAtCutOver:Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
