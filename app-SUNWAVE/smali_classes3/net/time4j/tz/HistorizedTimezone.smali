.class final Lnet/time4j/tz/HistorizedTimezone;
.super Lnet/time4j/tz/Timezone;
.source "HistorizedTimezone.java"


# static fields
.field private static final serialVersionUID:J = 0x1821d8c1a900067dL


# instance fields
.field private final transient history:Lnet/time4j/tz/TransitionHistory;

.field private final transient id:Lnet/time4j/tz/TZID;

.field private final transient strategy:Lnet/time4j/tz/TransitionStrategy;


# direct methods
.method constructor <init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TransitionHistory;)V
    .locals 1

    .line 65
    sget-object v0, Lnet/time4j/tz/Timezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/tz/HistorizedTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TransitionHistory;Lnet/time4j/tz/TransitionStrategy;)V

    return-void
.end method

.method constructor <init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TransitionHistory;Lnet/time4j/tz/TransitionStrategy;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lnet/time4j/tz/Timezone;-><init>()V

    const-string v0, "Missing timezone id."

    .line 86
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    instance-of v0, p1, Lnet/time4j/tz/ZonalOffset;

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {p2}, Lnet/time4j/tz/TransitionHistory;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fixed zonal offset can\'t be combined with offset transitions: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const-string v0, "Missing timezone history."

    .line 95
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing transition strategy."

    .line 97
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lnet/time4j/tz/HistorizedTimezone;->id:Lnet/time4j/tz/TZID;

    .line 101
    iput-object p2, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    .line 102
    iput-object p3, p0, Lnet/time4j/tz/HistorizedTimezone;->strategy:Lnet/time4j/tz/TransitionStrategy;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 329
    new-instance v0, Lnet/time4j/tz/SPX;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 241
    :cond_0
    instance-of v1, p1, Lnet/time4j/tz/HistorizedTimezone;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 242
    check-cast p1, Lnet/time4j/tz/HistorizedTimezone;

    .line 243
    iget-object v1, p0, Lnet/time4j/tz/HistorizedTimezone;->id:Lnet/time4j/tz/TZID;

    .line 244
    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lnet/time4j/tz/HistorizedTimezone;->id:Lnet/time4j/tz/TZID;

    invoke-interface {v3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    iget-object v3, p1, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/tz/HistorizedTimezone;->strategy:Lnet/time4j/tz/TransitionStrategy;

    iget-object p1, p1, Lnet/time4j/tz/HistorizedTimezone;->strategy:Lnet/time4j/tz/TransitionStrategy;

    .line 246
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

    .line 144
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-interface {v0, p1}, Lnet/time4j/tz/TransitionHistory;->getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    if-nez p1, :cond_0

    .line 146
    sget-object p1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getHistory()Lnet/time4j/tz/TransitionHistory;
    .locals 1

    .line 232
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    return-object v0
.end method

.method public getID()Lnet/time4j/tz/TZID;
    .locals 1

    .line 111
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->id:Lnet/time4j/tz/TZID;

    return-object v0
.end method

.method public getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 3

    .line 160
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    .line 161
    invoke-interface {v0, p1, p2}, Lnet/time4j/tz/TransitionHistory;->getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    .line 164
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1

    .line 166
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-interface {v0, p1, p2}, Lnet/time4j/tz/TransitionHistory;->getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 118
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-interface {v0, p1}, Lnet/time4j/tz/TransitionHistory;->getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    if-nez p1, :cond_0

    .line 120
    iget-object p1, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    .line 122
    invoke-interface {p1}, Lnet/time4j/tz/TransitionHistory;->getInitialOffset()Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStandardOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 131
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-interface {v0, p1}, Lnet/time4j/tz/TransitionHistory;->getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    if-nez p1, :cond_0

    .line 133
    iget-object p1, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    .line 135
    invoke-interface {p1}, Lnet/time4j/tz/TransitionHistory;->getInitialOffset()Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getStrategy()Lnet/time4j/tz/TransitionStrategy;
    .locals 1

    .line 281
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->strategy:Lnet/time4j/tz/TransitionStrategy;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 257
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->id:Lnet/time4j/tz/TZID;

    invoke-interface {v0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDaylightSaving(Lnet/time4j/base/UnixTime;)Z
    .locals 5

    .line 187
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-interface {v0, p1}, Lnet/time4j/tz/TransitionHistory;->getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 193
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    return v2

    :cond_1
    if-gez v1, :cond_2

    return v0

    .line 202
    :cond_2
    iget-object v1, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-interface {v1}, Lnet/time4j/tz/TransitionHistory;->hasNegativeDST()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 207
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v3

    invoke-static {v3, v4, v0}, Lnet/time4j/tz/SimpleUT;->previousTime(JI)Lnet/time4j/base/UnixTime;

    move-result-object v1

    .line 208
    iget-object v3, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-interface {v3, v1}, Lnet/time4j/tz/TransitionHistory;->getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object v3

    if-nez v3, :cond_4

    return v0

    .line 213
    :cond_4
    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result v4

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getStandardOffset()I

    move-result p1

    if-ne v4, p1, :cond_6

    .line 214
    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result p1

    if-gez p1, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 216
    :cond_6
    invoke-virtual {p0, v1}, Lnet/time4j/tz/HistorizedTimezone;->isDaylightSaving(Lnet/time4j/base/UnixTime;)Z

    move-result p1

    return p1
.end method

.method public isFixed()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-interface {v0}, Lnet/time4j/tz/TransitionHistory;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isInvalid(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    .line 179
    invoke-interface {v0, p1, p2}, Lnet/time4j/tz/TransitionHistory;->getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    iget-object v1, p0, Lnet/time4j/tz/HistorizedTimezone;->id:Lnet/time4j/tz/TZID;

    invoke-interface {v1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",history={"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "},strategy="

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v1, p0, Lnet/time4j/tz/HistorizedTimezone;->strategy:Lnet/time4j/tz/TransitionStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;
    .locals 3

    .line 288
    iget-object v0, p0, Lnet/time4j/tz/HistorizedTimezone;->strategy:Lnet/time4j/tz/TransitionStrategy;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 292
    :cond_0
    new-instance v0, Lnet/time4j/tz/HistorizedTimezone;

    iget-object v1, p0, Lnet/time4j/tz/HistorizedTimezone;->id:Lnet/time4j/tz/TZID;

    iget-object v2, p0, Lnet/time4j/tz/HistorizedTimezone;->history:Lnet/time4j/tz/TransitionHistory;

    invoke-direct {v0, v1, v2, p1}, Lnet/time4j/tz/HistorizedTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TransitionHistory;Lnet/time4j/tz/TransitionStrategy;)V

    return-object v0
.end method
