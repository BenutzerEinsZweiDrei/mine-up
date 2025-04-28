.class public final Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;
.super Ljava/lang/Object;
.source "FrenchRepublicanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Date"
.end annotation


# instance fields
.field private final algorithm:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

.field private final delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;


# direct methods
.method private constructor <init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;)V
    .locals 0

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    iput-object p1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    .line 1494
    iput-object p2, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->algorithm:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V
    .locals 0

    .line 1477
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;-><init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;)V

    return-void
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 1502
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$700()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1584
    :cond_0
    instance-of v0, p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1585
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;

    .line 1586
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->algorithm:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    iget-object v2, p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->algorithm:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    if-eq v0, v2, :cond_1

    return v1

    .line 1589
    :cond_1
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    iget-object p1, p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1507
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_WEEK:Lnet/time4j/calendar/StdCalendarElement;

    if-ne p1, v0, :cond_0

    .line 1508
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->algorithm:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    iget-object v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v0

    .line 1509
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1510
    :cond_0
    instance-of v0, p1, Lnet/time4j/engine/EpochDays;

    if-eqz v0, :cond_1

    .line 1511
    const-class v0, Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/EpochDays;

    .line 1512
    iget-object v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->algorithm:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    iget-object v2, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v1, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v1

    .line 1513
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    sget-object v3, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1514
    :cond_1
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$700()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1515
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1517
    :cond_2
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "French republican dates only support registered elements."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Lnet/time4j/engine/ChronoElement;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1523
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$700()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1541
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$700()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1544
    :cond_0
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "French republican dates only support registered elements."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1532
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$700()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1535
    :cond_0
    new-instance p1, Lnet/time4j/engine/ChronoException;

    const-string v0, "French republican dates only support registered elements."

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTimezone()Lnet/time4j/tz/TZID;
    .locals 2

    .line 1577
    new-instance v0, Lnet/time4j/engine/ChronoException;

    const-string v1, "Timezone not available."

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasTimezone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1598
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->algorithm:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    invoke-virtual {v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1604
    iget-object v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->delegate:Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 1605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1606
    iget-object v1, p0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;->algorithm:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
