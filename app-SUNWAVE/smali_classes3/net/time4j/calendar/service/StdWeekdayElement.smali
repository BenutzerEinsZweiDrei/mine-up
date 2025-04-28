.class public Lnet/time4j/calendar/service/StdWeekdayElement;
.super Lnet/time4j/calendar/service/StdEnumDateElement;
.source "StdWeekdayElement.java"


# annotations
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
.field private static final serialVersionUID:J = -0x12d253f0081cd28L


# instance fields
.field private final transient model:Lnet/time4j/Weekmodel;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lnet/time4j/Weekmodel;)V
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

    .line 69
    const-class v0, Lnet/time4j/Weekday;

    const-string v1, "DAY_OF_WEEK"

    const/16 v2, 0x45

    invoke-direct {p0, v1, p1, v0, v2}, Lnet/time4j/calendar/service/StdEnumDateElement;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;C)V

    .line 71
    iput-object p2, p0, Lnet/time4j/calendar/service/StdWeekdayElement;->model:Lnet/time4j/Weekmodel;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lnet/time4j/engine/ChronoDisplay;

    check-cast p2, Lnet/time4j/engine/ChronoDisplay;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/service/StdWeekdayElement;->compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
    .locals 1

    .line 104
    invoke-interface {p1, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/Weekday;

    iget-object v0, p0, Lnet/time4j/calendar/service/StdWeekdayElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {p1, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    .line 105
    invoke-interface {p2, p0}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/Weekday;

    iget-object v0, p0, Lnet/time4j/calendar/service/StdWeekdayElement;->model:Lnet/time4j/Weekmodel;

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

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Enum;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdWeekdayElement;->getDefaultMaximum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdWeekdayElement;->getDefaultMaximum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/Weekday;
    .locals 2

    .line 87
    iget-object v0, p0, Lnet/time4j/calendar/service/StdWeekdayElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lnet/time4j/Weekday;->roll(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Enum;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdWeekdayElement;->getDefaultMinimum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lnet/time4j/calendar/service/StdWeekdayElement;->getDefaultMinimum()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/Weekday;
    .locals 1

    .line 80
    iget-object v0, p0, Lnet/time4j/calendar/service/StdWeekdayElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic numerical(Ljava/lang/Enum;)I
    .locals 0

    .line 40
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/service/StdWeekdayElement;->numerical(Lnet/time4j/Weekday;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic numerical(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/service/StdWeekdayElement;->numerical(Lnet/time4j/Weekday;)I

    move-result p1

    return p1
.end method

.method public numerical(Lnet/time4j/Weekday;)I
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/time4j/calendar/service/StdWeekdayElement;->model:Lnet/time4j/Weekmodel;

    invoke-virtual {p1, v0}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    return p1
.end method
