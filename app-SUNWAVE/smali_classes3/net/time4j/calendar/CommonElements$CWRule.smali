.class Lnet/time4j/calendar/CommonElements$CWRule;
.super Ljava/lang/Object;
.source "CommonElements.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/CommonElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CWRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TD;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TD;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/CommonElements$CalendarWeekElement<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/CommonElements$CalendarWeekElement<",
            "*>;)V"
        }
    .end annotation

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput-object p1, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;Lnet/time4j/calendar/CommonElements$1;)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;-><init>(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)V

    return-void
.end method

.method private getCalendarWeek(Lnet/time4j/engine/ChronoEntity;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)I"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/4 v1, 0x0

    .line 772
    invoke-direct {p0, p1, v1}, Lnet/time4j/calendar/CommonElements$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v0, :cond_1

    .line 775
    invoke-direct {p0, p1, v3}, Lnet/time4j/calendar/CommonElements$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v4

    invoke-direct {p0, p1, v1}, Lnet/time4j/calendar/CommonElements$CWRule;->getLengthOfYM(Lnet/time4j/engine/ChronoEntity;I)I

    move-result p1

    add-int/2addr v4, p1

    if-gt v4, v0, :cond_0

    return v3

    :cond_0
    sub-int/2addr v0, v2

    .line 779
    div-int/lit8 v0, v0, 0x7

    :goto_0
    add-int/2addr v0, v3

    return v0

    :cond_1
    const/4 v1, -0x1

    .line 782
    invoke-direct {p0, p1, v1}, Lnet/time4j/calendar/CommonElements$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v2

    .line 783
    invoke-direct {p0, p1, v1}, Lnet/time4j/calendar/CommonElements$CWRule;->getLengthOfYM(Lnet/time4j/engine/ChronoEntity;I)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 784
    div-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method

.method private getChild(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 665
    check-cast p1, Ljava/lang/Class;

    .line 666
    new-instance v0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    iget-object v1, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v1}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$200(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    return-object v0
.end method

.method private getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I)I"
        }
    .end annotation

    .line 705
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/CommonElements$CWRule;->getWeekdayStart(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/Weekday;

    move-result-object p1

    .line 706
    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$200(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object p2

    .line 707
    invoke-virtual {p1, p2}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    .line 710
    invoke-virtual {p2}, Lnet/time4j/Weekmodel;->getMinimalDaysInFirstWeek()I

    move-result p2

    rsub-int/lit8 p2, p2, 0x8

    if-gt p1, p2, :cond_0

    rsub-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0x9

    :goto_0
    return p1
.end method

.method private getLengthOfYM(Lnet/time4j/engine/ChronoEntity;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I)I"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 759
    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    invoke-static {p2, p1}, Lnet/time4j/calendar/CommonElements;->access$500(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoEntity;)I

    move-result p2

    .line 760
    iget-object v1, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    .line 761
    invoke-static {v1}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    sget-object v3, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    .line 762
    invoke-virtual {p1, v3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    int-to-long v5, v0

    sub-long/2addr v3, v5

    invoke-virtual {p1, v2, v3, v4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    .line 760
    invoke-static {v1, p1}, Lnet/time4j/calendar/CommonElements;->access$500(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    return p1

    .line 764
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 757
    :cond_1
    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    invoke-static {p2, p1}, Lnet/time4j/calendar/CommonElements;->access$500(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    return p1

    .line 753
    :cond_2
    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    .line 754
    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    .line 755
    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    .line 753
    invoke-static {p2, p1}, Lnet/time4j/calendar/CommonElements;->access$500(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    return p1
.end method

.method private getMaxCalendarWeek(Lnet/time4j/engine/ChronoEntity;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)I"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/4 v1, 0x0

    .line 674
    invoke-direct {p0, p1, v1}, Lnet/time4j/calendar/CommonElements$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v2

    if-gt v2, v0, :cond_1

    const/4 v3, 0x1

    .line 678
    invoke-direct {p0, p1, v3}, Lnet/time4j/calendar/CommonElements$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v4

    invoke-direct {p0, p1, v1}, Lnet/time4j/calendar/CommonElements$CWRule;->getLengthOfYM(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v1

    add-int/2addr v4, v1

    if-gt v4, v0, :cond_0

    .line 681
    :try_start_0
    invoke-direct {p0, p1, v3}, Lnet/time4j/calendar/CommonElements$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v0

    .line 682
    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    sget-object v5, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x7

    add-long/2addr v5, v7

    invoke-virtual {p1, v1, v5, v6}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    .line 683
    invoke-direct {p0, v1, v3}, Lnet/time4j/calendar/CommonElements$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v1

    invoke-direct {p0, p1, v3}, Lnet/time4j/calendar/CommonElements$CWRule;->getLengthOfYM(Lnet/time4j/engine/ChronoEntity;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int v4, v1, p1

    move v2, v0

    goto :goto_0

    :catch_0
    add-int/lit8 v4, v4, 0x7

    :cond_0
    :goto_0
    sub-int/2addr v4, v2

    .line 689
    div-int/lit8 v4, v4, 0x7

    return v4

    :cond_1
    const/4 v0, -0x1

    .line 691
    invoke-direct {p0, p1, v0}, Lnet/time4j/calendar/CommonElements$CWRule;->getFirstCalendarWeekAsDay(Lnet/time4j/engine/ChronoEntity;I)I

    move-result v1

    .line 692
    invoke-direct {p0, p1, v0}, Lnet/time4j/calendar/CommonElements$CWRule;->getLengthOfYM(Lnet/time4j/engine/ChronoEntity;I)I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    .line 693
    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method private getWeekdayStart(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/Weekday;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I)",
            "Lnet/time4j/Weekday;"
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/4 v1, -0x1

    const-wide/16 v2, 0x1

    if-eq p2, v1, :cond_2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 734
    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    invoke-static {p2, p1}, Lnet/time4j/calendar/CommonElements;->access$500(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ChronoEntity;)I

    move-result p2

    .line 735
    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    int-to-long p1, p2

    add-long/2addr v4, p1

    add-long/2addr v4, v2

    int-to-long p1, v0

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1

    .line 737
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 732
    :cond_1
    sget-object p2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    int-to-long v0, v0

    sub-long/2addr p1, v0

    add-long/2addr p1, v2

    invoke-static {p1, p2}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1

    .line 728
    :cond_2
    sget-object p2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 729
    sget-object p2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, p2, v4, v5}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$CWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    int-to-long p1, p1

    sub-long/2addr v4, p1

    add-long/2addr v4, v2

    .line 730
    invoke-static {v4, v5}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method private setCalendarWeek(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/engine/ChronoEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I)TD;"
        }
    .end annotation

    .line 794
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getCalendarWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p1

    .line 799
    :cond_0
    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x7

    int-to-long v4, p2

    add-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 576
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getChild(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 576
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getChild(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 611
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getMaxCalendarWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 576
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 604
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 576
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 597
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getCalendarWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 576
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 576
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CommonElements$CWRule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 625
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x1

    if-lt p2, v1, :cond_1

    .line 626
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$CWRule;->getMaxCalendarWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    if-gt p2, p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 576
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/CommonElements$CWRule;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/Integer;",
            "Z)TD;"
        }
    .end annotation

    .line 637
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p3, :cond_1

    .line 639
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CommonElements$CWRule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (context="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 644
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lnet/time4j/calendar/CommonElements$CWRule;->setCalendarWeek(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method
