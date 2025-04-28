.class Lnet/time4j/calendar/WeekdayInMonthElement$Rule;
.super Ljava/lang/Object;
.source "WeekdayInMonthElement.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/WeekdayInMonthElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;:",
        "Lnet/time4j/engine/CalendarDate;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final wim:Lnet/time4j/calendar/WeekdayInMonthElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/time4j/calendar/WeekdayInMonthElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/WeekdayInMonthElement<",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    return-void
.end method

.method private getMax(Lnet/time4j/engine/ChronoEntity;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-static {v0}, Lnet/time4j/calendar/WeekdayInMonthElement;->access$100(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    .line 224
    iget-object v1, p0, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-static {v1}, Lnet/time4j/calendar/WeekdayInMonthElement;->access$100(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    add-int/lit8 v1, v0, 0x7

    if-gt v1, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 p1, 0x7

    .line 230
    invoke-static {v0, p1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getInt(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/engine/ChronoEntity;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-static {v0}, Lnet/time4j/calendar/WeekdayInMonthElement;->access$100(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x7

    .line 217
    invoke-static {p1, v0}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getMax(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getInt(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getValue(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->isValid(Lnet/time4j/engine/ChronoEntity;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->getMax(Lnet/time4j/engine/ChronoEntity;)I

    move-result p1

    if-gt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->isValid(Lnet/time4j/engine/ChronoEntity;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->withValue(Lnet/time4j/engine/ChronoEntity;IZ)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;IZ)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)TT;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->isValid(Lnet/time4j/engine/ChronoEntity;I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 205
    iget-object p3, p0, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-static {p3}, Lnet/time4j/calendar/WeekdayInMonthElement;->access$000(Lnet/time4j/calendar/WeekdayInMonthElement;)Lnet/time4j/engine/ChronoElement;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/Weekday;

    .line 206
    iget-object v0, p0, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->wim:Lnet/time4j/calendar/WeekdayInMonthElement;

    invoke-virtual {v0, p2, p3}, Lnet/time4j/calendar/WeekdayInMonthElement;->setTo(ILnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Integer;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/WeekdayInMonthElement$Rule;->withValue(Lnet/time4j/engine/ChronoEntity;IZ)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
