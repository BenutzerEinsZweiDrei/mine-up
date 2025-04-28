.class public final Lnet/time4j/GeneralTimestamp;
.super Ljava/lang/Object;
.source "GeneralTimestamp.java"

# interfaces
.implements Lnet/time4j/engine/ChronoDisplay;
.implements Lnet/time4j/engine/VariantSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoDisplay;",
        "Lnet/time4j/engine/VariantSource;"
    }
.end annotation


# instance fields
.field private final ca:Lnet/time4j/engine/Calendrical;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Calendrical<",
            "**>;"
        }
    .end annotation
.end field

.field private final cv:Lnet/time4j/engine/CalendarVariant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarVariant<",
            "*>;"
        }
    .end annotation
.end field

.field private final time:Lnet/time4j/PlainTime;


# direct methods
.method private constructor <init>(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/CalendarVariant<",
            "*>;",
            "Lnet/time4j/engine/Calendrical<",
            "**>;",
            "Lnet/time4j/PlainTime;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p3}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    const/4 p3, 0x0

    const-wide/16 v0, 0x1

    if-nez p1, :cond_0

    .line 77
    iput-object p3, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    .line 78
    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/time4j/engine/Calendrical;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v0, v1}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/engine/CalendarVariant;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    .line 81
    iput-object p3, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    .line 83
    :goto_0
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    goto :goto_1

    .line 85
    :cond_1
    iput-object p1, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    .line 86
    iput-object p2, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    .line 87
    iput-object p3, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    :goto_1
    return-void
.end method

.method public static of(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/time4j/engine/CalendarVariant<",
            "TC;>;>(TC;",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    const-string v0, "Missing date component."

    .line 118
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lnet/time4j/GeneralTimestamp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/GeneralTimestamp;-><init>(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)V

    return-object v0
.end method

.method public static of(Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/time4j/engine/Calendrical<",
            "*TC;>;>(TC;",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    const-string v0, "Missing date component."

    .line 149
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    new-instance v0, Lnet/time4j/GeneralTimestamp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lnet/time4j/GeneralTimestamp;-><init>(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)V

    return-object v0
.end method

.method private toDate0()Lnet/time4j/engine/ChronoDisplay;
    .locals 1

    .line 494
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    .line 495
    :cond_0
    check-cast v0, Lnet/time4j/engine/ChronoDisplay;

    return-object v0
.end method


# virtual methods
.method public at(Lnet/time4j/tz/ZonalOffset;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/Moment;
    .locals 4

    .line 384
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    const-class v1, Lnet/time4j/PlainDate;

    .line 386
    invoke-virtual {v0, v1}, Lnet/time4j/engine/Calendrical;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v1, Lnet/time4j/PlainDate;

    .line 387
    invoke-virtual {v0, v1}, Lnet/time4j/engine/CalendarVariant;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 390
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lnet/time4j/engine/StartOfDay;->getDeviation(Lnet/time4j/engine/CalendarDate;Lnet/time4j/tz/TZID;)I

    move-result p2

    .line 391
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    sget-object v2, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {v1, v2}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p2

    const p2, 0x15180

    const-wide/16 v2, 0x1

    if-lt v1, p2, :cond_1

    .line 394
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v2, v3, p2}, Lnet/time4j/PlainTimestamp;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lnet/time4j/PlainTimestamp;

    goto :goto_1

    :cond_1
    if-gez v1, :cond_2

    .line 396
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v2, v3, p2}, Lnet/time4j/PlainTimestamp;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lnet/time4j/PlainTimestamp;

    .line 399
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public contains(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 446
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/time4j/GeneralTimestamp;->toDate0()Lnet/time4j/engine/ChronoDisplay;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoDisplay;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTime;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 323
    :cond_0
    instance-of v1, p1, Lnet/time4j/GeneralTimestamp;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 324
    const-class v1, Lnet/time4j/GeneralTimestamp;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/GeneralTimestamp;

    .line 325
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    iget-object v3, p1, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v1, v3}, Lnet/time4j/PlainTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 327
    :cond_1
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v1, :cond_3

    .line 328
    iget-object v1, p1, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    iget-object p1, p1, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    invoke-virtual {v1, p1}, Lnet/time4j/engine/Calendrical;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 330
    :cond_3
    iget-object v3, p1, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    if-nez v3, :cond_4

    iget-object p1, p1, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {v1, p1}, Lnet/time4j/engine/CalendarVariant;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0

    :cond_5
    return v2
.end method

.method public get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
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

    .line 453
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/time4j/GeneralTimestamp;->toDate0()Lnet/time4j/engine/ChronoDisplay;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
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

    .line 460
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/time4j/GeneralTimestamp;->toDate0()Lnet/time4j/engine/ChronoDisplay;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTime;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    :goto_0
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

    .line 474
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/time4j/GeneralTimestamp;->toDate0()Lnet/time4j/engine/ChronoDisplay;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoDisplay;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTime;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
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

    .line 467
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/time4j/GeneralTimestamp;->toDate0()Lnet/time4j/engine/ChronoDisplay;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoDisplay;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTime;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTimezone()Lnet/time4j/tz/TZID;
    .locals 3

    .line 488
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timezone not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/time4j/engine/CalendarVariant;->getVariant()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasTimezone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 341
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    .line 343
    invoke-virtual {v0}, Lnet/time4j/engine/Calendrical;->hashCode()I

    move-result v0

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/engine/CalendarVariant;->hashCode()I

    move-result v0

    .line 345
    :goto_0
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v1}, Lnet/time4j/PlainTime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public in(Lnet/time4j/tz/Timezone;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/Moment;
    .locals 4

    .line 424
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    const-class v1, Lnet/time4j/PlainDate;

    .line 426
    invoke-virtual {v0, v1}, Lnet/time4j/engine/Calendrical;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v1, Lnet/time4j/PlainDate;

    .line 427
    invoke-virtual {v0, v1}, Lnet/time4j/engine/CalendarVariant;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->at(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object v0

    .line 430
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lnet/time4j/engine/StartOfDay;->getDeviation(Lnet/time4j/engine/CalendarDate;Lnet/time4j/tz/TZID;)I

    move-result p2

    .line 431
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    sget-object v2, Lnet/time4j/PlainTime;->SECOND_OF_DAY:Lnet/time4j/ProportionalElement;

    invoke-virtual {v1, v2}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p2

    const p2, 0x15180

    const-wide/16 v2, 0x1

    if-lt v1, p2, :cond_1

    .line 434
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v2, v3, p2}, Lnet/time4j/PlainTimestamp;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lnet/time4j/PlainTimestamp;

    goto :goto_1

    :cond_1
    if-gez v1, :cond_2

    .line 436
    sget-object p2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0, v2, v3, p2}, Lnet/time4j/PlainTimestamp;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lnet/time4j/PlainTimestamp;

    .line 439
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLnet/time4j/ClockUnit;)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lnet/time4j/ClockUnit;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 249
    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/GeneralTimestamp;->plus(JLnet/time4j/ClockUnit;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/CalendarDays;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lnet/time4j/engine/CalendarDays;->inverse()Lnet/time4j/engine/CalendarDays;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/GeneralTimestamp;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLnet/time4j/ClockUnit;)Lnet/time4j/GeneralTimestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lnet/time4j/ClockUnit;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/PlainTime;->roll(JLnet/time4j/ClockUnit;)Lnet/time4j/DayCycles;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Lnet/time4j/DayCycles;->getDayOverflow()J

    move-result-wide p2

    invoke-static {p2, p3}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    .line 312
    iget-object p3, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Lnet/time4j/engine/CalendarVariant;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p3

    .line 313
    :goto_0
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Lnet/time4j/engine/Calendrical;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object v0

    .line 314
    :goto_1
    new-instance p2, Lnet/time4j/GeneralTimestamp;

    invoke-virtual {p1}, Lnet/time4j/DayCycles;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lnet/time4j/GeneralTimestamp;-><init>(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)V

    return-object p2
.end method

.method public plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/GeneralTimestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/CalendarDays;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/time4j/engine/CalendarVariant;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/CalendarVariant;

    move-result-object v0

    .line 273
    :goto_0
    iget-object v2, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Lnet/time4j/engine/Calendrical;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object v1

    .line 274
    :goto_1
    new-instance p1, Lnet/time4j/GeneralTimestamp;

    iget-object v2, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-direct {p1, v0, v1, v2}, Lnet/time4j/GeneralTimestamp;-><init>(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)V

    return-object p1
.end method

.method public toDate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->cv:Lnet/time4j/engine/CalendarVariant;

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->ca:Lnet/time4j/engine/Calendrical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    :goto_0
    iget-object v1, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTime()Lnet/time4j/PlainTime;
    .locals 1

    .line 190
    iget-object v0, p0, Lnet/time4j/GeneralTimestamp;->time:Lnet/time4j/PlainTime;

    return-object v0
.end method
