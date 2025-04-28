.class Lnet/time4j/calendar/CommonElements$DayOfWeekElement;
.super Lnet/time4j/calendar/service/StdEnumDateElement;
.source "CommonElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/CommonElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayOfWeekElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Lnet/time4j/calendar/service/StdEnumDateElement<",
        "Lnet/time4j/Weekday;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4de72395bd4206fcL


# instance fields
.field private final model:Lnet/time4j/Weekmodel;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/Weekmodel;",
            ")V"
        }
    .end annotation

    .line 1009
    const-class v0, Lnet/time4j/Weekday;

    const-string v1, "LOCAL_DAY_OF_WEEK"

    const/16 v2, 0x65

    invoke-direct {p0, v1, p1, v0, v2}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    .line 1011
    iput-object p2, p0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    return-void
.end method

.method static synthetic access$700(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;)Lnet/time4j/Weekmodel;
    .locals 0

    .line 989
    iget-object p0, p0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    return-object p0
.end method

.method static of(Ljava/lang/Class;Lnet/time4j/Weekmodel;)Lnet/time4j/calendar/CommonElements$DayOfWeekElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/Weekmodel;",
            ")",
            "Lnet/time4j/calendar/CommonElements$DayOfWeekElement<",
            "TT;>;"
        }
    .end annotation

    .line 1022
    new-instance v0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;-><init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 989
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 1

    .line 1067
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Weekday;

    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {p1, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    .line 1068
    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Weekday;

    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {p2, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public decremented()Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 1029
    new-instance v0, Lnet/time4j/calendar/CommonElements$DayOperator;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lnet/time4j/calendar/CommonElements$DayOperator;-><init>(I)V

    return-object v0
.end method

.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TD;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TD;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Lnet/time4j/Weekday;",
            ">;"
        }
    .end annotation

    .line 1088
    invoke-virtual {p0}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1089
    new-instance p1, Lnet/time4j/calendar/CommonElements$DRule;

    invoke-direct {p1, p0, v0}, Lnet/time4j/calendar/CommonElements$DRule;-><init>(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;Lnet/time4j/calendar/CommonElements$1;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected doEquals(Lnet/time4j/engine/BasicElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/BasicElement<",
            "*>;)Z"
        }
    .end annotation

    .line 1076
    invoke-super {p0, p1}, Lnet/time4j/calendar/service/StdEnumDateElement;->doEquals(Lnet/time4j/engine/BasicElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    const-class v0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    .line 1078
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    iget-object p1, p1, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {v0, p1}, Lnet/time4j/Weekmodel;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Enum;
    .locals 1

    .line 989
    invoke-virtual {p0}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->getDefaultMaximum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 989
    invoke-virtual {p0}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->getDefaultMaximum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/Weekday;
    .locals 2

    .line 1057
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lnet/time4j/Weekday;->roll(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Enum;
    .locals 1

    .line 989
    invoke-virtual {p0}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->getDefaultMinimum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 989
    invoke-virtual {p0}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->getDefaultMinimum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/Weekday;
    .locals 1

    .line 1050
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public incremented()Lnet/time4j/engine/ChronoOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 1036
    new-instance v0, Lnet/time4j/calendar/CommonElements$DayOperator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/time4j/calendar/CommonElements$DayOperator;-><init>(I)V

    return-object v0
.end method

.method protected isWeekdayElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic numerical(Ljava/lang/Enum;)I
    .locals 0

    .line 989
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->numerical(Lnet/time4j/Weekday;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic numerical(Ljava/lang/Object;)I
    .locals 0

    .line 989
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->numerical(Lnet/time4j/Weekday;)I

    move-result p1

    return p1
.end method

.method public numerical(Lnet/time4j/Weekday;)I
    .locals 1

    .line 1043
    iget-object v0, p0, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {p1, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    return p1
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    return-object p0
.end method
