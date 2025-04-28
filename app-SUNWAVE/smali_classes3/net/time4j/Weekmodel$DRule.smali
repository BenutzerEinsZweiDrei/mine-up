.class Lnet/time4j/Weekmodel$DRule;
.super Ljava/lang/Object;
.source "Weekmodel.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Weekmodel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TT;",
        "Lnet/time4j/Weekday;",
        ">;"
    }
.end annotation


# instance fields
.field final element:Lnet/time4j/Weekmodel$DayOfWeekElement;


# direct methods
.method private constructor <init>(Lnet/time4j/Weekmodel$DayOfWeekElement;)V
    .locals 0

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1210
    iput-object p1, p0, Lnet/time4j/Weekmodel$DRule;->element:Lnet/time4j/Weekmodel$DayOfWeekElement;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/Weekmodel$DayOfWeekElement;Lnet/time4j/Weekmodel$1;)V
    .locals 0

    .line 1198
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$DRule;-><init>(Lnet/time4j/Weekmodel$DayOfWeekElement;)V

    return-void
.end method

.method private getChild(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1312
    sget-object v0, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1313
    sget-object p1, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1198
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DRule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

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

    .line 1306
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$DRule;->getChild(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1198
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DRule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

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

    .line 1299
    invoke-direct {p0, p1}, Lnet/time4j/Weekmodel$DRule;->getChild(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1198
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DRule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/Weekday;"
        }
    .end annotation

    .line 1240
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1241
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/Weekmodel$DRule;->element:Lnet/time4j/Weekmodel$DayOfWeekElement;

    invoke-static {v1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->access$100(Lnet/time4j/Weekmodel$DayOfWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result v0

    .line 1243
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v1

    const-wide/16 v3, 0x7

    add-long/2addr v1, v3

    int-to-long v3, v0

    sub-long/2addr v1, v3

    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/TimeAxis;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    invoke-interface {p1}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 1244
    sget-object p1, Lnet/time4j/Weekday;->FRIDAY:Lnet/time4j/Weekday;

    return-object p1

    .line 1247
    :cond_0
    iget-object p1, p0, Lnet/time4j/Weekmodel$DRule;->element:Lnet/time4j/Weekmodel$DayOfWeekElement;

    invoke-virtual {p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getDefaultMaximum()Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1198
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DRule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/Weekday;"
        }
    .end annotation

    .line 1226
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1227
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v0

    iget-object v1, p0, Lnet/time4j/Weekmodel$DRule;->element:Lnet/time4j/Weekmodel$DayOfWeekElement;

    invoke-static {v1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->access$100(Lnet/time4j/Weekmodel$DayOfWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result v0

    .line 1229
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    int-to-long v3, v0

    sub-long/2addr v1, v3

    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/TimeAxis;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    invoke-interface {p1}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    .line 1230
    sget-object p1, Lnet/time4j/Weekday;->MONDAY:Lnet/time4j/Weekday;

    return-object p1

    .line 1233
    :cond_0
    iget-object p1, p0, Lnet/time4j/Weekmodel$DRule;->element:Lnet/time4j/Weekmodel$DayOfWeekElement;

    invoke-virtual {p1}, Lnet/time4j/Weekmodel$DayOfWeekElement;->getDefaultMinimum()Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1198
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/Weekmodel$DRule;->getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/Weekday;"
        }
    .end annotation

    .line 1219
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->getDayOfWeek()Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1198
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Weekmodel$DRule;->isValid(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/Weekday;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/Weekday;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/time4j/Weekday;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1262
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/Weekmodel$DRule;->withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/Weekday;Z)Lnet/time4j/engine/ChronoEntity;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1198
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/Weekmodel$DRule;->withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/Weekday;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/Weekday;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/time4j/Weekday;",
            "Z)TT;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1281
    sget-object p3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/PlainDate;

    .line 1282
    invoke-virtual {p3}, Lnet/time4j/PlainDate;->getDaysSinceUTC()J

    move-result-wide v0

    .line 1283
    invoke-static {v0, v1}, Lnet/time4j/Weekmodel;->getDayOfWeek(J)Lnet/time4j/Weekday;

    move-result-object v2

    if-ne p2, v2, :cond_0

    return-object p1

    .line 1289
    :cond_0
    iget-object v3, p0, Lnet/time4j/Weekmodel$DRule;->element:Lnet/time4j/Weekmodel$DayOfWeekElement;

    invoke-static {v3}, Lnet/time4j/Weekmodel$DayOfWeekElement;->access$100(Lnet/time4j/Weekmodel$DayOfWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result v2

    .line 1290
    iget-object v3, p0, Lnet/time4j/Weekmodel$DRule;->element:Lnet/time4j/Weekmodel$DayOfWeekElement;

    invoke-static {v3}, Lnet/time4j/Weekmodel$DayOfWeekElement;->access$100(Lnet/time4j/Weekmodel$DayOfWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v3

    invoke-virtual {p2, v3}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p2

    int-to-long v3, p2

    add-long/2addr v0, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 1291
    invoke-virtual {p3, v0, v1}, Lnet/time4j/PlainDate;->withDaysSinceUTC(J)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 1292
    sget-object p3, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p3, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 1278
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing weekday."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
