.class Lnet/time4j/history/HistoricIntegerElement$Rule;
.super Ljava/lang/Object;
.source "HistoricIntegerElement.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/history/HistoricIntegerElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TC;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TC;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final history:Lnet/time4j/history/ChronoHistory;

.field private final index:I


# direct methods
.method constructor <init>(ILnet/time4j/history/ChronoHistory;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    .line 578
    iput-object p2, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    return-void
.end method

.method private adjust(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/history/HistoricDate;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;I)",
            "Lnet/time4j/history/HistoricDate;"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 810
    sget-object v4, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    .line 811
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v10

    .line 815
    iget v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 855
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown element index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 849
    :pswitch_0
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v0

    const/16 v2, 0x64

    rem-int/2addr v0, v2

    sub-int/2addr p2, v1

    mul-int/2addr p2, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int v1, p2, v2

    .line 851
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v3

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;IIILnet/time4j/history/YearDefinition;Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 852
    iget-object p2, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p2, p1}, Lnet/time4j/history/ChronoHistory;->adjustDayOfMonth(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 818
    sget-object v0, Lnet/time4j/history/YearDefinition;->AFTER_NEW_YEAR:Lnet/time4j/history/YearDefinition;

    goto :goto_1

    :cond_1
    sget-object v0, Lnet/time4j/history/YearDefinition;->BEFORE_NEW_YEAR:Lnet/time4j/history/YearDefinition;

    :goto_1
    move-object v4, v0

    goto/16 :goto_2

    .line 835
    :pswitch_2
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/history/HistoricDate;->getYearOfEra(Lnet/time4j/history/NewYearStrategy;)I

    move-result v0

    .line 836
    iget-object v2, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lnet/time4j/history/ChronoHistory;->getBeginOfYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    .line 837
    iget-object v3, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Lnet/time4j/history/ChronoHistory;->getLengthOfYear(Lnet/time4j/history/HistoricEra;I)I

    move-result p1

    if-ne p2, v1, :cond_2

    move-object p1, v2

    goto/16 :goto_3

    :cond_2
    if-le p2, v1, :cond_3

    if-gt p2, p1, :cond_3

    .line 841
    iget-object p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p1, v2}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    sub-int/2addr p2, v1

    int-to-long v0, p2

    .line 842
    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/PlainDate;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 843
    iget-object p2, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p2, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    goto :goto_3

    .line 845
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 832
    :pswitch_3
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    goto :goto_3

    .line 828
    :pswitch_4
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    invoke-static {v0, v1, p2, p1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 829
    iget-object p2, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p2, p1}, Lnet/time4j/history/ChronoHistory;->adjustDayOfMonth(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    goto :goto_3

    :goto_2
    :pswitch_5
    move-object v9, v4

    .line 824
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v5

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v7

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v8

    move v6, p2

    invoke-static/range {v5 .. v10}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;IIILnet/time4j/history/YearDefinition;Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 825
    iget-object p2, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p2, p1}, Lnet/time4j/history/ChronoHistory;->adjustDayOfMonth(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 561
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricIntegerElement$Rule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 800
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 561
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricIntegerElement$Rule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 793
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 676
    :try_start_0
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainDate;

    invoke-virtual {v0, v1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    .line 680
    iget v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    const/16 v2, 0x8

    const v3, 0x3b9a8f4d

    packed-switch v1, :pswitch_data_0

    .line 727
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    goto/16 :goto_7

    .line 720
    :pswitch_0
    iget-object p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra(Lnet/time4j/history/NewYearStrategy;)I

    move-result p1

    .line 721
    iget-object v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lnet/time4j/history/ChronoHistory;->getLengthOfYear(Lnet/time4j/history/HistoricEra;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 725
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 723
    :cond_0
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "Length of historic year undefined."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 716
    :pswitch_1
    iget-object v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1, v0}, Lnet/time4j/history/ChronoHistory;->getAlgorithm(Lnet/time4j/history/HistoricDate;)Lnet/time4j/history/Calculus;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/time4j/history/Calculus;->getMaximumDayOfMonth(Lnet/time4j/history/HistoricDate;)I

    move-result v1

    .line 717
    invoke-direct {p0, p1, v1}, Lnet/time4j/history/HistoricIntegerElement$Rule;->adjust(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    goto :goto_1

    .line 706
    :pswitch_2
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v1

    sget-object v4, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    if-ne v1, v4, :cond_1

    .line 707
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    .line 713
    :goto_0
    invoke-direct {p0, p1, v2}, Lnet/time4j/history/HistoricIntegerElement$Rule;->adjust(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    move v1, v2

    .line 730
    :goto_1
    iget-object v2, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v2, p1}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 731
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 734
    :cond_2
    iget-object v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->getEvents()Ljava/util/List;

    move-result-object v1

    .line 737
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_4

    .line 738
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/history/CutOverEvent;

    .line 741
    iget-object v4, v3, Lnet/time4j/history/CutOverEvent;->dateAtCutOver:Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0, v4}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result v4

    if-gez v4, :cond_3

    .line 742
    iget-object p1, v3, Lnet/time4j/history/CutOverEvent;->dateBeforeCutOver:Lnet/time4j/history/HistoricDate;

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 747
    :cond_4
    :goto_3
    iget v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    .line 748
    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 685
    :pswitch_3
    iget-object p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/ChronoHistory;

    if-ne p1, v1, :cond_6

    goto :goto_6

    .line 687
    :cond_6
    iget-object p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    if-ne p1, v1, :cond_7

    const v3, 0x3b9a79c9

    .line 689
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_a

    const v3, 0x3b9a79ca

    goto :goto_6

    .line 692
    :cond_7
    iget-object p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

    if-ne p1, v1, :cond_8

    const v3, 0x3b9ac9ff

    .line 694
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_a

    const v3, 0x3b9aca00

    goto :goto_6

    .line 698
    :cond_8
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_9

    const/16 p1, 0x2d

    goto :goto_5

    :cond_9
    const/16 p1, 0x270f

    :goto_5
    move v3, p1

    .line 700
    :cond_a
    :goto_6
    iget p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    if-ne p1, v2, :cond_b

    add-int/lit8 v3, v3, -0x1

    .line 701
    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x1

    .line 703
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 727
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 750
    new-instance v0, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 561
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricIntegerElement$Rule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 629
    :try_start_0
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainDate;

    invoke-virtual {v0, v1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    .line 631
    iget v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_3

    .line 644
    :cond_0
    invoke-direct {p0, p1, v3}, Lnet/time4j/history/HistoricIntegerElement$Rule;->adjust(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 646
    iget-object v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1, p1}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 648
    :cond_1
    iget v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 653
    iget-object v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->getEvents()Ljava/util/List;

    move-result-object v1

    .line 655
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    .line 656
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/history/CutOverEvent;

    .line 658
    iget-object v4, v3, Lnet/time4j/history/CutOverEvent;->dateAtCutOver:Lnet/time4j/history/HistoricDate;

    invoke-virtual {v0, v4}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 659
    iget-object p1, v3, Lnet/time4j/history/CutOverEvent;->dateAtCutOver:Lnet/time4j/history/HistoricDate;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 664
    :cond_3
    :goto_1
    iget v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    .line 665
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 649
    :cond_5
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "Historic New Year cannot be determined."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 637
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    sget-object v1, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    if-ne p1, v1, :cond_7

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    const/16 v0, 0x9

    if-lt p1, v0, :cond_7

    const/4 p1, 0x0

    .line 638
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 640
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 667
    new-instance v0, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 561
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricIntegerElement$Rule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 588
    :try_start_0
    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 589
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    .line 592
    iget v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    packed-switch v1, :pswitch_data_0

    .line 616
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    goto :goto_1

    .line 613
    :pswitch_0
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x64

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 610
    :pswitch_1
    iget-object p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra(Lnet/time4j/history/NewYearStrategy;)I

    move-result p1

    goto :goto_0

    .line 603
    :pswitch_2
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v1

    .line 604
    iget-object p1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra(Lnet/time4j/history/NewYearStrategy;)I

    move-result p1

    .line 605
    iget-object v3, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lnet/time4j/history/ChronoHistory;->getBeginOfYear(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 606
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int p1, v1

    goto :goto_0

    .line 600
    :pswitch_3
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    goto :goto_0

    .line 597
    :pswitch_4
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result p1

    goto :goto_0

    .line 594
    :pswitch_5
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p1

    .line 618
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 616
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 620
    new-instance v0, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 561
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricIntegerElement$Rule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 561
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/history/HistoricIntegerElement$Rule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 766
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lnet/time4j/history/HistoricIntegerElement$Rule;->adjust(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 767
    iget-object p2, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p2, p1}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 561
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/history/HistoricIntegerElement$Rule;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/lang/Integer;",
            "Z)TC;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 785
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lnet/time4j/history/HistoricIntegerElement$Rule;->adjust(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/history/HistoricDate;

    move-result-object p2

    .line 786
    sget-object p3, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0, p2}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 782
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing historic element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
