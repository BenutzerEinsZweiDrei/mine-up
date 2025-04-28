.class Lnet/time4j/CalendarUnit$Rule;
.super Ljava/lang/Object;
.source "CalendarUnit.java"

# interfaces
.implements Lnet/time4j/engine/UnitRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/CalendarUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/UnitRule<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final policy:I

.field private final unit:Lnet/time4j/CalendarUnit;


# direct methods
.method constructor <init>(Lnet/time4j/CalendarUnit;)V
    .locals 1

    const/4 v0, 0x0

    .line 642
    invoke-direct {p0, p1, v0}, Lnet/time4j/CalendarUnit$Rule;-><init>(Lnet/time4j/CalendarUnit;I)V

    return-void
.end method

.method constructor <init>(Lnet/time4j/CalendarUnit;I)V
    .locals 0

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Lnet/time4j/CalendarUnit$Rule;->unit:Lnet/time4j/CalendarUnit;

    .line 660
    iput p2, p0, Lnet/time4j/CalendarUnit$Rule;->policy:I

    return-void
.end method

.method private static dayDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J
    .locals 2

    .line 779
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 780
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result p1

    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDayOfYear()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0

    .line 783
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceUTC()J

    move-result-wide v0

    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDaysSinceUTC()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private monthDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J
    .locals 8

    .line 749
    invoke-virtual {p2}, Lnet/time4j/PlainDate;->getEpochMonths()J

    move-result-wide v0

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getEpochMonths()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 751
    iget v2, p0, Lnet/time4j/CalendarUnit$Rule;->policy:I

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/4 v7, 0x5

    if-eq v2, v7, :cond_2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2

    const/4 v7, 0x6

    if-ne v2, v7, :cond_0

    goto :goto_2

    :cond_0
    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    .line 763
    invoke-virtual {p2}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result v4

    if-ge v3, v4, :cond_1

    :goto_0
    sub-long/2addr v0, v5

    goto :goto_3

    :cond_1
    if-gez v2, :cond_4

    .line 765
    invoke-virtual {p2}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p2

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p1

    if-le p2, p1, :cond_4

    :goto_1
    add-long/2addr v0, v5

    goto :goto_3

    .line 756
    :cond_2
    :goto_2
    sget-object v2, Lnet/time4j/CalendarUnit;->MONTHS:Lnet/time4j/CalendarUnit;

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    .line 757
    iget v4, p0, Lnet/time4j/CalendarUnit$Rule;->policy:I

    invoke-static {v2, p1, v0, v1, v4}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object v4

    invoke-virtual {v4, p2}, Lnet/time4j/PlainDate;->isAfter(Lnet/time4j/engine/CalendarDate;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    if-gez v3, :cond_4

    .line 759
    iget v3, p0, Lnet/time4j/CalendarUnit$Rule;->policy:I

    invoke-static {v2, p1, v0, v1, v3}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/time4j/PlainDate;->isBefore(Lnet/time4j/engine/CalendarDate;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return-wide v0
.end method


# virtual methods
.method public bridge synthetic addTo(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 625
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/CalendarUnit$Rule;->addTo(Lnet/time4j/engine/ChronoEntity;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public addTo(Lnet/time4j/engine/ChronoEntity;J)Lnet/time4j/engine/ChronoEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)TT;"
        }
    .end annotation

    .line 672
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    .line 673
    iget-object v1, p0, Lnet/time4j/CalendarUnit$Rule;->unit:Lnet/time4j/CalendarUnit;

    iget v2, p0, Lnet/time4j/CalendarUnit$Rule;->policy:I

    invoke-static {v1, v0, p2, p3, v2}, Lnet/time4j/PlainDate;->doAdd(Lnet/time4j/CalendarUnit;Lnet/time4j/PlainDate;JI)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 674
    sget-object p3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p3, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic between(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 625
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/CalendarUnit$Rule;->between(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoEntity;)J

    move-result-wide p1

    return-wide p1
.end method

.method public between(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoEntity;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)J"
        }
    .end annotation

    .line 681
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    .line 682
    sget-object v1, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p2, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainDate;

    .line 685
    sget-object v2, Lnet/time4j/CalendarUnit$9;->$SwitchMap$net$time4j$CalendarUnit:[I

    iget-object v3, p0, Lnet/time4j/CalendarUnit$Rule;->unit:Lnet/time4j/CalendarUnit;

    invoke-virtual {v3}, Lnet/time4j/CalendarUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 711
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lnet/time4j/CalendarUnit$Rule;->unit:Lnet/time4j/CalendarUnit;

    invoke-virtual {p2}, Lnet/time4j/CalendarUnit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 702
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lnet/time4j/CalendarUnit$Rule;->monthDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J

    move-result-wide v2

    goto :goto_0

    .line 699
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lnet/time4j/CalendarUnit$Rule;->monthDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    goto :goto_0

    .line 696
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lnet/time4j/CalendarUnit$Rule;->monthDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J

    move-result-wide v2

    const-wide/16 v4, 0xc

    div-long/2addr v2, v4

    goto :goto_0

    .line 693
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lnet/time4j/CalendarUnit$Rule;->monthDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x78

    div-long/2addr v2, v4

    goto :goto_0

    .line 690
    :pswitch_4
    invoke-direct {p0, v0, v1}, Lnet/time4j/CalendarUnit$Rule;->monthDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    div-long/2addr v2, v4

    goto :goto_0

    .line 687
    :pswitch_5
    invoke-direct {p0, v0, v1}, Lnet/time4j/CalendarUnit$Rule;->monthDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x2ee0

    div-long/2addr v2, v4

    goto :goto_0

    .line 708
    :pswitch_6
    invoke-static {v0, v1}, Lnet/time4j/CalendarUnit$Rule;->dayDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J

    move-result-wide v2

    goto :goto_0

    .line 705
    :pswitch_7
    invoke-static {v0, v1}, Lnet/time4j/CalendarUnit$Rule;->dayDelta(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x7

    div-long/2addr v2, v4

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 714
    sget-object v5, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    .line 716
    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    .line 717
    invoke-virtual {p2, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 721
    iget-object v5, p0, Lnet/time4j/CalendarUnit$Rule;->unit:Lnet/time4j/CalendarUnit;

    sget-object v6, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 724
    :cond_0
    iget-object v5, p0, Lnet/time4j/CalendarUnit$Rule;->unit:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v2, v3, v5}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    .line 725
    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->compareByTime(Lnet/time4j/engine/CalendarDate;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-eqz v7, :cond_3

    .line 729
    sget-object v0, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    .line 730
    sget-object v0, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p2, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/PlainTime;

    const-wide/16 v0, 0x1

    if-lez v4, :cond_2

    .line 732
    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->isAfter(Lnet/time4j/PlainTime;)Z

    move-result v5

    if-eqz v5, :cond_2

    sub-long/2addr v2, v0

    goto :goto_2

    :cond_2
    if-gez v4, :cond_3

    .line 734
    invoke-virtual {p1, p2}, Lnet/time4j/PlainTime;->isBefore(Lnet/time4j/PlainTime;)Z

    move-result p1

    if-eqz p1, :cond_3

    add-long/2addr v2, v0

    :cond_3
    :goto_2
    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
