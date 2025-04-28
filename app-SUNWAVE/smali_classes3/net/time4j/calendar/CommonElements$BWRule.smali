.class Lnet/time4j/calendar/CommonElements$BWRule;
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
    name = "BWRule"
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

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p1, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;Lnet/time4j/calendar/CommonElements$1;)V
    .locals 0

    .line 806
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;-><init>(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)V

    return-void
.end method

.method private getChild(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 864
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v1}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$200(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->of(Ljava/lang/Class;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    move-result-object v0

    .line 865
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result v1

    .line 866
    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 867
    iget-object v4, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v4}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    if-eqz p2, :cond_0

    .line 870
    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p2

    .line 871
    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p2, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 872
    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    int-to-long v1, v4

    add-long/2addr v1, v5

    cmp-long p1, p1, v1

    if-gez p1, :cond_1

    .line 873
    iget-object p1, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p1}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-gt v1, p2, :cond_1

    .line 876
    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p2

    .line 877
    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p2, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 878
    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    int-to-long v4, v4

    sub-long/2addr v4, v2

    cmp-long p1, p1, v4

    if-lez p1, :cond_1

    .line 879
    iget-object p1, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p1}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getMaxWeek(Lnet/time4j/engine/ChronoEntity;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 932
    invoke-direct {p0, p1, v0}, Lnet/time4j/calendar/CommonElements$BWRule;->getWeek(Lnet/time4j/engine/ChronoEntity;I)I

    move-result p1

    return p1
.end method

.method private getMinWeek(Lnet/time4j/engine/ChronoEntity;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)I"
        }
    .end annotation

    const/4 v0, -0x1

    .line 926
    invoke-direct {p0, p1, v0}, Lnet/time4j/calendar/CommonElements$BWRule;->getWeek(Lnet/time4j/engine/ChronoEntity;I)I

    move-result p1

    return p1
.end method

.method private getWeek(Lnet/time4j/engine/ChronoEntity;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 920
    invoke-direct {p0, p1, v0}, Lnet/time4j/calendar/CommonElements$BWRule;->getWeek(Lnet/time4j/engine/ChronoEntity;I)I

    move-result p1

    return p1
.end method

.method private getWeek(Lnet/time4j/engine/ChronoEntity;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I)I"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v0}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    .line 942
    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    int-to-long v3, v0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object v1

    .line 943
    iget-object v2, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {v2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$200(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result v1

    .line 945
    iget-object v2, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    .line 946
    invoke-static {v2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$200(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/Weekmodel;->getMinimalDaysInFirstWeek()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x8

    if-gt v1, v2, :cond_0

    rsub-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v1, 0x9

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_2

    if-eqz p2, :cond_3

    if-ne p2, v3, :cond_1

    .line 961
    iget-object p2, p0, Lnet/time4j/calendar/CommonElements$BWRule;->owner:Lnet/time4j/calendar/CommonElements$CalendarWeekElement;

    invoke-static {p2}, Lnet/time4j/calendar/CommonElements$CalendarWeekElement;->access$300(Lnet/time4j/calendar/CommonElements$CalendarWeekElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 964
    :cond_1
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

    :cond_2
    move v0, v3

    :cond_3
    :goto_1
    sub-int/2addr v0, v1

    const/4 p1, 0x7

    .line 967
    invoke-static {v0, p1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p1

    add-int/2addr p1, v3

    return p1
.end method

.method private setWeek(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/engine/ChronoEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;I)TD;"
        }
    .end annotation

    .line 976
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x7

    .line 982
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 806
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 855
    invoke-direct {p0, p1, v0}, Lnet/time4j/calendar/CommonElements$BWRule;->getChild(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 806
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 848
    invoke-direct {p0, p1, v0}, Lnet/time4j/calendar/CommonElements$BWRule;->getChild(Lnet/time4j/engine/ChronoEntity;Z)Lnet/time4j/engine/ChronoElement;

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

    .line 841
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getMaxWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 806
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

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

    .line 834
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getMinWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 806
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

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

    .line 827
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 806
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 806
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CommonElements$BWRule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

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

    .line 897
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 898
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getMinWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result v1

    if-lt p2, v1, :cond_1

    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$BWRule;->getMaxWeek(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    if-gt p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 806
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/CommonElements$BWRule;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;

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

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 909
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CommonElements$BWRule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 914
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/CommonElements$BWRule;->setWeek(Lnet/time4j/engine/ChronoEntity;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 910
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (context="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
