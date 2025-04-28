.class final enum Lnet/time4j/history/NewYearRule$8;
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

    .line 277
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/history/NewYearRule;-><init>(Ljava/lang/String;ILnet/time4j/history/NewYearRule$1;)V

    return-void
.end method


# virtual methods
.method displayedYear(Lnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricDate;)I
    .locals 1

    .line 287
    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 288
    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/time4j/history/NewYearRule$8;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    .line 290
    invoke-virtual {p2, v0}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p2

    if-gez p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;
    .locals 1

    .line 280
    sget-object v0, Lnet/time4j/history/NewYearRule$8;->MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Lnet/time4j/history/NewYearRule;->newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method standardYear(ZLnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricEra;III)I
    .locals 7

    .line 304
    sget-object v0, Lnet/time4j/history/NewYearRule$8;->MARIA_ANUNCIATA:Lnet/time4j/history/NewYearRule;

    add-int/lit8 v4, p4, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/time4j/history/NewYearRule;->standardYear(ZLnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricEra;III)I

    move-result p1

    return p1
.end method
