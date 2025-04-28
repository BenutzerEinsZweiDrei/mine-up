.class final enum Lnet/time4j/history/NewYearRule$7;
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

    .line 253
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/history/NewYearRule;-><init>(Ljava/lang/String;ILnet/time4j/history/NewYearRule$1;)V

    return-void
.end method


# virtual methods
.method newYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x19

    .line 256
    invoke-static {p1, p2, v0, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method
