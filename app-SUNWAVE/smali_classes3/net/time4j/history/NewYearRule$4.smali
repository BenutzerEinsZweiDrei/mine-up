.class final enum Lnet/time4j/history/NewYearRule$4;
.super Lnet/time4j/history/NewYearRule;
.source "NewYearRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/history/NewYearRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/history/NewYearRule;-><init>(Ljava/lang/String;ILnet/time4j/history/NewYearRule$1;)V

    return-void
.end method


# virtual methods
.method displayedYear(Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricDate;)I
    .locals 3

    .line 164
    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v0

    .line 165
    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Lnet/time4j/history/NewYearStrategy;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 167
    invoke-virtual {p2, p1}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p1

    if-ltz p1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;
    .locals 2

    add-int/lit8 p2, p2, -0x1

    const/16 v0, 0xc

    const/16 v1, 0x19

    .line 157
    invoke-static {p1, p2, v0, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method
