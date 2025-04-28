.class public final Lnet/time4j/ZonalDateTime;
.super Ljava/lang/Object;
.source "ZonalDateTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoDisplay;
.implements Lnet/time4j/scale/UniversalTime;


# instance fields
.field private final moment:Lnet/time4j/Moment;

.field private final transient timestamp:Lnet/time4j/PlainTimestamp;

.field private final zone:Lnet/time4j/tz/Timezone;


# direct methods
.method private constructor <init>(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    .line 121
    invoke-virtual {p2, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p2

    .line 123
    invoke-virtual {p1}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p2}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p2}, Lnet/time4j/tz/ZonalOffset;->getAbsoluteSeconds()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3c

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leap second can only be represented  with timezone-offset in full minutes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    .line 136
    invoke-static {p1, p2}, Lnet/time4j/PlainTimestamp;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/PlainTimestamp;Lnet/time4j/tz/ZonalOffset;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1, p2}, Lnet/time4j/PlainTimestamp;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/Moment;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    .line 147
    invoke-static {p2}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    .line 148
    iput-object p1, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    return-void
.end method

.method static of(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)Lnet/time4j/ZonalDateTime;
    .locals 1

    .line 168
    new-instance v0, Lnet/time4j/ZonalDateTime;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalDateTime;-><init>(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method static of(Lnet/time4j/PlainTimestamp;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/ZonalDateTime;
    .locals 1

    .line 184
    new-instance v0, Lnet/time4j/ZonalDateTime;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalDateTime;-><init>(Lnet/time4j/PlainTimestamp;Lnet/time4j/tz/ZonalOffset;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lnet/time4j/format/TemporalFormatter;)Lnet/time4j/ZonalDateTime;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/Moment;",
            ">;)",
            "Lnet/time4j/ZonalDateTime;"
        }
    .end annotation

    .line 501
    :try_start_0
    new-instance v0, Lnet/time4j/format/RawValues;

    invoke-direct {v0}, Lnet/time4j/format/RawValues;-><init>()V

    .line 502
    invoke-interface {p1, p0, v0}, Lnet/time4j/format/TemporalFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/RawValues;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/Moment;

    .line 505
    invoke-virtual {v0}, Lnet/time4j/format/RawValues;->get()Lnet/time4j/engine/ChronoDisplay;

    move-result-object v2

    invoke-interface {v2}, Lnet/time4j/engine/ChronoDisplay;->hasTimezone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {v0}, Lnet/time4j/format/RawValues;->get()Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    invoke-interface {p1}, Lnet/time4j/engine/ChronoDisplay;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/time4j/ZonalDateTime;->toTimezone(Lnet/time4j/tz/TZID;Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p0

    goto :goto_0

    .line 507
    :cond_0
    invoke-interface {p1}, Lnet/time4j/format/TemporalFormatter;->getAttributes()Lnet/time4j/engine/AttributeQuery;

    move-result-object v0

    sget-object v2, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {v0, v2}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-interface {p1}, Lnet/time4j/format/TemporalFormatter;->getAttributes()Lnet/time4j/engine/AttributeQuery;

    move-result-object p1

    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p1, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/TZID;

    invoke-static {p1, p0}, Lnet/time4j/ZonalDateTime;->toTimezone(Lnet/time4j/tz/TZID;Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p0

    .line 513
    :goto_0
    invoke-static {v1, p0}, Lnet/time4j/ZonalDateTime;->of(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)Lnet/time4j/ZonalDateTime;

    move-result-object p0

    return-object p0

    .line 510
    :cond_1
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing timezone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 515
    new-instance p1, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static read(Ljava/io/ObjectInput;)Lnet/time4j/ZonalDateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 650
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Moment;

    .line 651
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/Timezone;

    .line 652
    new-instance v1, Lnet/time4j/ZonalDateTime;

    invoke-direct {v1, v0, p0}, Lnet/time4j/ZonalDateTime;-><init>(Lnet/time4j/Moment;Lnet/time4j/tz/Timezone;)V

    return-object v1
.end method

.method private static toTimezone(Lnet/time4j/tz/TZID;Ljava/lang/String;)Lnet/time4j/tz/Timezone;
    .locals 3

    .line 669
    :try_start_0
    invoke-static {p0}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 671
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timezone error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public compareByLocalTimestamp(Lnet/time4j/ZonalDateTime;)I
    .locals 2

    .line 242
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    iget-object v1, p1, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainTimestamp;->compareTo(Lnet/time4j/PlainTimestamp;)I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    iget-object p1, p1, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->compareTo(Lnet/time4j/Moment;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public compareByMoment(Lnet/time4j/ZonalDateTime;)I
    .locals 2

    .line 210
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    iget-object v1, p1, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, v1}, Lnet/time4j/Moment;->compareTo(Lnet/time4j/Moment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    iget-object p1, p1, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->compareTo(Lnet/time4j/PlainTimestamp;)I

    move-result v0

    :cond_0
    return v0
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

    .line 255
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    .line 256
    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    .line 257
    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 525
    :cond_0
    instance-of v1, p1, Lnet/time4j/ZonalDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 526
    check-cast p1, Lnet/time4j/ZonalDateTime;

    .line 527
    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    iget-object v3, p1, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    .line 528
    invoke-virtual {v1, v3}, Lnet/time4j/Moment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    iget-object p1, p1, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    .line 529
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
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

    .line 265
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    .line 266
    invoke-virtual {v0}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_0

    .line 269
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 275
    :cond_1
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getElapsedTime(Lnet/time4j/scale/TimeScale;)J
    .locals 2

    .line 418
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->getElapsedTime(Lnet/time4j/scale/TimeScale;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Lnet/time4j/engine/ChronoElement;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3c

    return p1

    .line 287
    :cond_0
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 290
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    :goto_0
    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    .line 323
    invoke-virtual {v1}, Lnet/time4j/PlainTimestamp;->getYear()I

    move-result v1

    const/16 v2, 0x7b4

    if-lt v1, v2, :cond_1

    .line 325
    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v1, p1, v0}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainTimestamp;

    .line 327
    iget-object v2, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    invoke-virtual {v2, v1, v1}, Lnet/time4j/tz/Timezone;->isInvalid(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    iget-object v2, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    invoke-virtual {v1, v2}, Lnet/time4j/PlainTimestamp;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/Moment;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 329
    sget-object v4, Lnet/time4j/SI;->SECONDS:Lnet/time4j/SI;

    invoke-virtual {v1, v2, v3, v4}, Lnet/time4j/Moment;->plus(JLnet/time4j/SI;)Lnet/time4j/Moment;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
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

    .line 301
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v0, p1}, Lnet/time4j/PlainTimestamp;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 304
    :cond_0
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNanosecond()I
    .locals 1

    .line 446
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0}, Lnet/time4j/Moment;->getNanosecond()I

    move-result v0

    return v0
.end method

.method public getNanosecond(Lnet/time4j/scale/TimeScale;)I
    .locals 1

    .line 425
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->getNanosecond(Lnet/time4j/scale/TimeScale;)I

    move-result p1

    return p1
.end method

.method public getOffset()Lnet/time4j/tz/ZonalOffset;
    .locals 2

    .line 379
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0, v1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    return-object v0
.end method

.method public getPosixTime()J
    .locals 2

    .line 439
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimezone()Lnet/time4j/tz/TZID;
    .locals 1

    .line 361
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    return-object v0
.end method

.method getTimezone0()Lnet/time4j/tz/Timezone;
    .locals 1

    .line 659
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    return-object v0
.end method

.method public hasTimezone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 540
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0}, Lnet/time4j/Moment;->hashCode()I

    move-result v0

    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isLeapSecond()Z
    .locals 1

    .line 432
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-virtual {v0}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v0

    return v0
.end method

.method public print(Lnet/time4j/format/TemporalFormatter;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/TemporalFormatter<",
            "Lnet/time4j/Moment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lnet/time4j/ZonalDateTime;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/time4j/format/TemporalFormatter;->withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/TemporalFormatter;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-interface {p1, v0}, Lnet/time4j/format/TemporalFormatter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toMoment()Lnet/time4j/Moment;
    .locals 1

    .line 395
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 560
    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v1}, Lnet/time4j/PlainTimestamp;->getHour()I

    move-result v1

    const/16 v2, 0x30

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 564
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    iget-object v4, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v4}, Lnet/time4j/PlainTimestamp;->getMinute()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p0}, Lnet/time4j/ZonalDateTime;->isLeapSecond()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "60"

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 577
    :cond_2
    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v1}, Lnet/time4j/PlainTimestamp;->getSecond()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 579
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    :goto_0
    iget-object v1, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    invoke-virtual {v1}, Lnet/time4j/PlainTimestamp;->getNanosecond()I

    move-result v1

    if-eqz v1, :cond_4

    .line 585
    invoke-static {v0, v1}, Lnet/time4j/PlainTime;->printNanos(Ljava/lang/StringBuilder;I)V

    .line 587
    :cond_4
    invoke-virtual {p0}, Lnet/time4j/ZonalDateTime;->getOffset()Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Lnet/time4j/ZonalDateTime;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v1

    .line 589
    instance-of v2, v1, Lnet/time4j/tz/ZonalOffset;

    if-nez v2, :cond_5

    const/16 v2, 0x5b

    .line 592
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTimestamp()Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 411
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->timestamp:Lnet/time4j/PlainTimestamp;

    return-object v0
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->moment:Lnet/time4j/Moment;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lnet/time4j/ZonalDateTime;->zone:Lnet/time4j/tz/Timezone;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
