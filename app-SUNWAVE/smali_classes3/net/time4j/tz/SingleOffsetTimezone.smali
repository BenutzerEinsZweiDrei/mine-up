.class final Lnet/time4j/tz/SingleOffsetTimezone;
.super Lnet/time4j/tz/Timezone;
.source "SingleOffsetTimezone.java"

# interfaces
.implements Lnet/time4j/tz/TransitionHistory;


# static fields
.field private static final UTC:Lnet/time4j/tz/SingleOffsetTimezone;

.field private static final serialVersionUID:J = 0x6c58daac73d8cdf2L


# instance fields
.field private final offset:Lnet/time4j/tz/ZonalOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lnet/time4j/tz/SingleOffsetTimezone;

    sget-object v1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-direct {v0, v1}, Lnet/time4j/tz/SingleOffsetTimezone;-><init>(Lnet/time4j/tz/ZonalOffset;)V

    sput-object v0, Lnet/time4j/tz/SingleOffsetTimezone;->UTC:Lnet/time4j/tz/SingleOffsetTimezone;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/tz/ZonalOffset;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lnet/time4j/tz/Timezone;-><init>()V

    .line 63
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v0

    .line 67
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result p1

    if-gez p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 70
    :cond_1
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    :goto_0
    return-void
.end method

.method static of(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/tz/SingleOffsetTimezone;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    sget-object p0, Lnet/time4j/tz/SingleOffsetTimezone;->UTC:Lnet/time4j/tz/SingleOffsetTimezone;

    return-object p0

    .line 296
    :cond_0
    new-instance v0, Lnet/time4j/tz/SingleOffsetTimezone;

    invoke-direct {v0, p0}, Lnet/time4j/tz/SingleOffsetTimezone;-><init>(Lnet/time4j/tz/ZonalOffset;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 312
    iget-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 313
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Fractional offset is invalid."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 226
    :cond_0
    instance-of v0, p1, Lnet/time4j/tz/SingleOffsetTimezone;

    if-eqz v0, :cond_1

    .line 227
    check-cast p1, Lnet/time4j/tz/SingleOffsetTimezone;

    .line 228
    iget-object v0, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    iget-object p1, p1, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/ZonalOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDaylightSavingOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 0

    .line 101
    sget-object p1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    return-object p1
.end method

.method public getDisplayName(Lnet/time4j/tz/NameStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 262
    invoke-virtual {p1}, Lnet/time4j/tz/NameStyle;->isAbbreviation()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    .line 263
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    .line 264
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalOffset;->canonical()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getHistory()Lnet/time4j/tz/TransitionHistory;
    .locals 0

    return-object p0
.end method

.method public getID()Lnet/time4j/tz/TZID;
    .locals 1

    .line 80
    iget-object v0, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    return-object v0
.end method

.method public getInitialOffset()Lnet/time4j/tz/ZonalOffset;
    .locals 1

    .line 217
    iget-object v0, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    return-object v0
.end method

.method public getNextTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 0

    .line 111
    iget-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    return-object p1
.end method

.method public getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 0

    .line 87
    iget-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    return-object p1
.end method

.method public getStandardOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;
    .locals 0

    .line 94
    iget-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    return-object p1
.end method

.method public getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getStdTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrategy()Lnet/time4j/tz/TransitionStrategy;
    .locals 1

    .line 272
    sget-object v0, Lnet/time4j/tz/SingleOffsetTimezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    return-object v0
.end method

.method public getTransitions(Lnet/time4j/base/UnixTime;Lnet/time4j/base/UnixTime;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/UnixTime;",
            "Lnet/time4j/base/UnixTime;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/GregorianDate;",
            "Lnet/time4j/base/WallTime;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object p1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasNegativeDST()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 238
    iget-object v0, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDaylightSaving(Lnet/time4j/base/UnixTime;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFixed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInvalid(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, p0, Lnet/time4j/tz/SingleOffsetTimezone;->offset:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;
    .locals 0

    return-object p0
.end method
