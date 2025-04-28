.class public abstract Lnet/time4j/tz/model/DaylightSavingRule;
.super Ljava/lang/Object;
.source "DaylightSavingRule.java"


# instance fields
.field private final transient dayOverflow:J

.field private final transient indicator:Lnet/time4j/tz/model/OffsetIndicator;

.field private final transient savings:I

.field private final transient timeOfDay:Lnet/time4j/PlainTime;


# direct methods
.method protected constructor <init>(ILnet/time4j/tz/model/OffsetIndicator;I)V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing offset indicator."

    .line 105
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7fffffff

    if-eq p3, v0, :cond_1

    const v1, -0xfd20

    if-lt p3, v1, :cond_0

    const v1, 0xfd20

    if-gt p3, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DST out of range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const v1, 0x15180

    if-ne p1, v1, :cond_2

    const-wide/16 v1, 0x0

    .line 111
    iput-wide v1, p0, Lnet/time4j/tz/model/DaylightSavingRule;->dayOverflow:J

    .line 112
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtEndOfDay()Lnet/time4j/PlainTime;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/DaylightSavingRule;->timeOfDay:Lnet/time4j/PlainTime;

    goto :goto_1

    .line 114
    :cond_2
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtStartOfDay()Lnet/time4j/PlainTime;

    move-result-object v1

    int-to-long v2, p1

    sget-object p1, Lnet/time4j/ClockUnit;->SECONDS:Lnet/time4j/ClockUnit;

    invoke-virtual {v1, v2, v3, p1}, Lnet/time4j/PlainTime;->roll(JLnet/time4j/ClockUnit;)Lnet/time4j/DayCycles;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lnet/time4j/DayCycles;->getDayOverflow()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/time4j/tz/model/DaylightSavingRule;->dayOverflow:J

    .line 116
    invoke-virtual {p1}, Lnet/time4j/DayCycles;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/DaylightSavingRule;->timeOfDay:Lnet/time4j/PlainTime;

    .line 119
    :goto_1
    iput-object p2, p0, Lnet/time4j/tz/model/DaylightSavingRule;->indicator:Lnet/time4j/tz/model/OffsetIndicator;

    if-ne p3, v0, :cond_3

    const/4 p3, 0x0

    .line 120
    :cond_3
    iput p3, p0, Lnet/time4j/tz/model/DaylightSavingRule;->savings:I

    return-void
.end method


# virtual methods
.method protected getCalendarType()Ljava/lang/String;
    .locals 3

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/time4j/format/CalendarType;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/CalendarType;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lnet/time4j/format/CalendarType;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find calendar type annotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDate(I)Lnet/time4j/PlainDate;
.end method

.method protected final getDayOverflow()J
    .locals 2

    .line 297
    iget-wide v0, p0, Lnet/time4j/tz/model/DaylightSavingRule;->dayOverflow:J

    return-wide v0
.end method

.method public final getIndicator()Lnet/time4j/tz/model/OffsetIndicator;
    .locals 1

    .line 193
    iget-object v0, p0, Lnet/time4j/tz/model/DaylightSavingRule;->indicator:Lnet/time4j/tz/model/OffsetIndicator;

    return-object v0
.end method

.method public final getSavings()I
    .locals 1

    .line 216
    iget v0, p0, Lnet/time4j/tz/model/DaylightSavingRule;->savings:I

    return v0
.end method

.method public final getTimeOfDay()Lnet/time4j/PlainTime;
    .locals 1

    .line 173
    iget-object v0, p0, Lnet/time4j/tz/model/DaylightSavingRule;->timeOfDay:Lnet/time4j/PlainTime;

    return-object v0
.end method

.method getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract toCalendarYear(J)I
.end method

.method protected abstract toCalendarYear(Lnet/time4j/base/GregorianDate;)I
.end method
