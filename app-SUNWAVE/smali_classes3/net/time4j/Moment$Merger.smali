.class Lnet/time4j/Moment$Merger;
.super Ljava/lang/Object;
.source "Moment.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/Moment$1;)V
    .locals 0

    .line 2972
    invoke-direct {p0}, Lnet/time4j/Moment$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2972
    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 2972
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/Moment$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/Moment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/Moment;"
        }
    .end annotation

    .line 3008
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/Moment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/Moment;"
        }
    .end annotation

    .line 3020
    sget-object v0, Lnet/time4j/format/Attributes;->TIME_SCALE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/scale/TimeScale;

    .line 3022
    instance-of v1, p1, Lnet/time4j/base/UnixTime;

    if-eqz v1, :cond_0

    .line 3023
    const-class p2, Lnet/time4j/base/UnixTime;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/base/UnixTime;

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {p1, v0}, Lnet/time4j/Moment;->access$1400(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 3024
    :cond_0
    sget-object v1, Lnet/time4j/Moment$LongElement;->POSIX_TIME:Lnet/time4j/Moment$LongElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3025
    sget-object p2, Lnet/time4j/Moment$LongElement;->POSIX_TIME:Lnet/time4j/Moment$LongElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 3027
    sget-object p4, Lnet/time4j/Moment$IntElement;->FRACTION:Lnet/time4j/Moment$IntElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 3028
    sget-object p4, Lnet/time4j/Moment$IntElement;->FRACTION:Lnet/time4j/Moment$IntElement;

    invoke-virtual {p1, p4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3030
    :cond_1
    sget-object p1, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {p2, p3, v2, p1}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {p1, v0}, Lnet/time4j/Moment;->access$1400(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1

    .line 3036
    :cond_2
    sget-object v1, Lnet/time4j/engine/FlagElement;->LEAP_SECOND:Lnet/time4j/engine/FlagElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    const/16 v3, 0x3c

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 3038
    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v1, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    .line 3041
    :cond_3
    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/engine/TimeAxis;->element()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    .line 3044
    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3045
    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lnet/time4j/PlainTimestamp;

    goto :goto_0

    .line 3047
    :cond_4
    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lnet/time4j/engine/TimeAxis;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/engine/TimePoint;

    move-result-object p4

    check-cast p4, Lnet/time4j/PlainTimestamp;

    :goto_0
    const/4 v1, 0x0

    if-nez p4, :cond_5

    return-object v1

    .line 3056
    :cond_5
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->hasTimezone()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3057
    invoke-virtual {p1}, Lnet/time4j/engine/ChronoEntity;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v4

    goto :goto_1

    .line 3058
    :cond_6
    sget-object v4, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v4}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3059
    sget-object v4, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/tz/TZID;

    goto :goto_1

    :cond_7
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_b

    .line 3063
    sget-object v5, Lnet/time4j/engine/FlagElement;->DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3064
    sget-object v5, Lnet/time4j/engine/FlagElement;->DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3065
    sget-object v5, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    sget-object v6, Lnet/time4j/tz/Timezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    .line 3067
    invoke-interface {p2, v5, v6}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/tz/TransitionStrategy;

    if-eqz p1, :cond_8

    sget-object p1, Lnet/time4j/tz/OverlapResolver;->EARLIER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    goto :goto_2

    :cond_8
    sget-object p1, Lnet/time4j/tz/OverlapResolver;->LATER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    .line 3068
    :goto_2
    invoke-interface {p2, p1}, Lnet/time4j/tz/TransitionStrategy;->using(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;

    move-result-object p1

    .line 3069
    invoke-static {v4}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/time4j/tz/Timezone;->with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p4, p1}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    goto :goto_3

    .line 3070
    :cond_9
    sget-object p1, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, p1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3071
    sget-object p1, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, p1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/TransitionStrategy;

    .line 3072
    invoke-static {v4}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/time4j/tz/Timezone;->with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p4, p1}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object p1

    goto :goto_3

    .line 3074
    :cond_a
    invoke-virtual {p4, v4}, Lnet/time4j/PlainTimestamp;->inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/Moment;

    move-result-object p1

    goto :goto_3

    :cond_b
    move-object p1, v1

    :goto_3
    if-nez p1, :cond_c

    return-object v1

    :cond_c
    if-eqz v2, :cond_12

    .line 3085
    instance-of p2, v4, Lnet/time4j/tz/ZonalOffset;

    if-eqz p2, :cond_d

    .line 3086
    check-cast v4, Lnet/time4j/tz/ZonalOffset;

    goto :goto_4

    .line 3088
    :cond_d
    invoke-static {v4}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v4

    .line 3092
    :goto_4
    invoke-virtual {v4}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result p2

    if-nez p2, :cond_11

    .line 3093
    invoke-virtual {v4}, Lnet/time4j/tz/ZonalOffset;->getAbsoluteSeconds()I

    move-result p2

    rem-int/2addr p2, v3

    if-nez p2, :cond_11

    .line 3103
    invoke-static {p1}, Lnet/time4j/Moment;->access$1500(Lnet/time4j/Moment;)Lnet/time4j/PlainDate;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/PlainDate;->getYear()I

    move-result p2

    const/16 p4, 0x7b4

    const-wide/16 v2, 0x1

    if-lt p2, p4, :cond_e

    .line 3104
    sget-object p2, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {p1, v2, v3, p2}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object p2

    goto :goto_5

    .line 3106
    :cond_e
    new-instance p2, Lnet/time4j/Moment;

    .line 3108
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p4

    .line 3109
    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-direct {p2, p4, v4, v5, v1}, Lnet/time4j/Moment;-><init>(IJLnet/time4j/Moment$1;)V

    :goto_5
    if-eqz p3, :cond_f

    goto :goto_6

    .line 3114
    :cond_f
    invoke-static {}, Lnet/time4j/scale/LeapSeconds;->getInstance()Lnet/time4j/scale/LeapSeconds;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/scale/LeapSeconds;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 3115
    invoke-static {p2}, Lnet/time4j/Moment;->access$1700(Lnet/time4j/Moment;)Z

    move-result p1

    if-eqz p1, :cond_10

    :goto_6
    move-object p1, p2

    goto :goto_7

    .line 3118
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SECOND_OF_MINUTE parsed as invalid leapsecond before "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3095
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Leap second is only allowed  with timezone-offset in full minutes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3124
    :cond_12
    :goto_7
    invoke-static {p1, v0}, Lnet/time4j/Moment;->access$1400(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 2998
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getDefaultPivotYear()I

    move-result v0

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 2991
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 2983
    invoke-interface {p1}, Lnet/time4j/engine/DisplayStyle;->getStyleValue()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/format/DisplayMode;->ofStyle(I)Lnet/time4j/format/DisplayMode;

    move-result-object p1

    .line 2984
    invoke-static {p1, p1, p2}, Lnet/time4j/format/CalendarText;->patternForMoment(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 2972
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/Moment$Merger;->preformat(Lnet/time4j/Moment;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/Moment;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 3

    .line 3134
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3135
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    .line 3136
    sget-object v1, Lnet/time4j/format/Attributes;->TIME_SCALE:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/scale/TimeScale;

    .line 3137
    invoke-static {p1, p2}, Lnet/time4j/Moment;->access$1800(Lnet/time4j/Moment;Lnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/time4j/Moment;->inZonalView(Lnet/time4j/tz/TZID;)Lnet/time4j/ZonalDateTime;

    move-result-object p1

    return-object p1

    .line 3140
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot print moment without timezone."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public preparser()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    .line 3147
    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method
