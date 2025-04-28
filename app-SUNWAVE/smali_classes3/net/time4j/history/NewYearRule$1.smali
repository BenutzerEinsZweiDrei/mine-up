.class final enum Lnet/time4j/history/NewYearRule$1;
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

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/history/NewYearRule;-><init>(Ljava/lang/String;ILnet/time4j/history/NewYearRule$1;)V

    return-void
.end method


# virtual methods
.method displayedYear(Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricDate;)I
    .locals 0

    .line 96
    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p1

    return p1
.end method

.method newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;
    .locals 1

    const/4 v0, 0x1

    .line 89
    invoke-static {p1, p2, v0, v0}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method
