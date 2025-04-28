.class final Lnet/time4j/tz/FallbackTimezone;
.super Lnet/time4j/tz/Timezone;
.source "FallbackTimezone.java"


# static fields
.field private static final serialVersionUID:J = -0x282c2278fb46c4d4L


# instance fields
.field private final fallback:Lnet/time4j/tz/Timezone;

.field private final tzid:Lnet/time4j/tz/TZID;


# direct methods
.method constructor <init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/Timezone;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lnet/time4j/tz/Timezone;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 66
    iput-object p1, p0, Lnet/time4j/tz/FallbackTimezone;->tzid:Lnet/time4j/tz/TZID;

    .line 67
    iput-object p2, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 63
    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 233
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 221
    new-instance v0, Lnet/time4j/tz/SPX;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 161
    :cond_0
    instance-of v1, p1, Lnet/time4j/tz/FallbackTimezone;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 162
    check-cast p1, Lnet/time4j/tz/FallbackTimezone;

    .line 163
    iget-object v1, p0, Lnet/time4j/tz/FallbackTimezone;->tzid:Lnet/time4j/tz/TZID;

    .line 164
    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lnet/time4j/tz/FallbackTimezone;->tzid:Lnet/time4j/tz/TZID;

    invoke-interface {v3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    iget-object p1, p1, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    .line 165
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

.method public getDaylightSavingOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 97
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->getDaylightSavingOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method getFallback()Lnet/time4j/tz/Timezone;
    .locals 1

    .line 198
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    return-object v0
.end method

.method public getHistory()Lnet/time4j/tz/TransitionHistory;
    .locals 1

    .line 138
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v0

    return-object v0
.end method

.method public getID()Lnet/time4j/tz/TZID;
    .locals 1

    .line 76
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->tzid:Lnet/time4j/tz/TZID;

    return-object v0
.end method

.method public getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 107
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method public getStandardOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->getStandardOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method public getStrategy()Lnet/time4j/tz/TransitionStrategy;
    .locals 1

    .line 145
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getStrategy()Lnet/time4j/tz/TransitionStrategy;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 176
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->tzid:Lnet/time4j/tz/TZID;

    invoke-interface {v0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDaylightSaving(Lnet/time4j/base/UnixTime;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->isDaylightSaving(Lnet/time4j/base/UnixTime;)Z

    move-result p1

    return p1
.end method

.method public isFixed()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->isFixed()Z

    move-result v0

    return v0
.end method

.method public isInvalid(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/tz/Timezone;->isInvalid(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lnet/time4j/tz/FallbackTimezone;->tzid:Lnet/time4j/tz/TZID;

    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",fallback="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;
    .locals 3

    .line 152
    new-instance v0, Lnet/time4j/tz/FallbackTimezone;

    iget-object v1, p0, Lnet/time4j/tz/FallbackTimezone;->tzid:Lnet/time4j/tz/TZID;

    iget-object v2, p0, Lnet/time4j/tz/FallbackTimezone;->fallback:Lnet/time4j/tz/Timezone;

    invoke-virtual {v2, p1}, Lnet/time4j/tz/Timezone;->with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/time4j/tz/FallbackTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/Timezone;)V

    return-object v0
.end method
