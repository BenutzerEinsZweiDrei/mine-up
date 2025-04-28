.class Lnet/time4j/calendar/CommonElements$DRule;
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
.field private final element:Lnet/time4j/calendar/CommonElements$DayOfWeekElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/calendar/CommonElements$DayOfWeekElement<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/CommonElements$DayOfWeekElement<",
            "*>;)V"
        }
    .end annotation

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    iput-object p1, p0, Lnet/time4j/calendar/CommonElements$DRule;->element:Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;Lnet/time4j/calendar/CommonElements$1;)V
    .locals 0

    .line 1112
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CommonElements$DRule;-><init>(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$DRule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

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

    .line 1112
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$DRule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

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

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$DRule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/Weekday;"
        }
    .end annotation

    .line 1163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/engine/Chronology;->lookup(Ljava/lang/Class;)Lnet/time4j/engine/Chronology;

    move-result-object v0

    .line 1166
    instance-of v1, p1, Lnet/time4j/engine/CalendarVariant;

    if-eqz v1, :cond_0

    .line 1167
    const-class v1, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {v1}, Lnet/time4j/engine/CalendarVariant;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/engine/Chronology;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v0

    goto :goto_0

    .line 1169
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v0

    .line 1172
    :goto_0
    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1173
    invoke-static {v2, v3}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p1

    iget-object v4, p0, Lnet/time4j/calendar/CommonElements$DRule;->element:Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-static {v4}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->access$700(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    int-to-long v4, p1

    sub-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    .line 1176
    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1

    .line 1179
    :cond_1
    iget-object p1, p0, Lnet/time4j/calendar/CommonElements$DRule;->element:Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-virtual {p1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->getDefaultMaximum()Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$DRule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/Weekday;"
        }
    .end annotation

    .line 1140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/engine/Chronology;->lookup(Ljava/lang/Class;)Lnet/time4j/engine/Chronology;

    move-result-object v0

    .line 1143
    instance-of v1, p1, Lnet/time4j/engine/CalendarVariant;

    if-eqz v1, :cond_0

    .line 1144
    const-class v1, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {v1}, Lnet/time4j/engine/CalendarVariant;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/engine/Chronology;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v0

    goto :goto_0

    .line 1146
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v0

    .line 1149
    :goto_0
    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1150
    invoke-static {v2, v3}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p1

    iget-object v4, p0, Lnet/time4j/calendar/CommonElements$DRule;->element:Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-static {v4}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->access$700(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    int-to-long v4, p1

    sub-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-gez p1, :cond_1

    .line 1153
    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1

    .line 1156
    :cond_1
    iget-object p1, p0, Lnet/time4j/calendar/CommonElements$DRule;->element:Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-virtual {p1}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->getDefaultMinimum()Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/CommonElements$DRule;->getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/Weekday;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/time4j/Weekday;"
        }
    .end annotation

    .line 1133
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/CommonElements$DRule;->isValid(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/Weekday;)Z

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

    .line 1194
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/calendar/CommonElements$DRule;->withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/Weekday;Z)Lnet/time4j/engine/ChronoEntity;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1112
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/Weekday;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/CommonElements$DRule;->withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/Weekday;Z)Lnet/time4j/engine/ChronoEntity;

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

    .line 1211
    sget-object p3, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1212
    invoke-static {v0, v1}, Lnet/time4j/calendar/CommonElements;->access$400(J)Lnet/time4j/Weekday;

    move-result-object p3

    if-ne p2, p3, :cond_0

    return-object p1

    .line 1218
    :cond_0
    iget-object v2, p0, Lnet/time4j/calendar/CommonElements$DRule;->element:Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-static {v2}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->access$700(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v2

    invoke-virtual {p3, v2}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p3

    .line 1219
    iget-object v2, p0, Lnet/time4j/calendar/CommonElements$DRule;->element:Lnet/time4j/calendar/CommonElements$DayOfWeekElement;

    invoke-static {v2}, Lnet/time4j/calendar/CommonElements$DayOfWeekElement;->access$700(Lnet/time4j/calendar/CommonElements$DayOfWeekElement;)Lnet/time4j/Weekmodel;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnet/time4j/Weekday;->getValue(Lnet/time4j/Weekmodel;)I

    move-result p2

    .line 1220
    sget-object v2, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    int-to-long v3, p2

    add-long/2addr v0, v3

    int-to-long p2, p3

    sub-long/2addr v0, p2

    invoke-virtual {p1, v2, v0, v1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method
