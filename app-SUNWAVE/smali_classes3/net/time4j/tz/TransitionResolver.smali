.class final Lnet/time4j/tz/TransitionResolver;
.super Ljava/lang/Object;
.source "TransitionResolver.java"

# interfaces
.implements Lnet/time4j/tz/TransitionStrategy;
.implements Ljava/io/Serializable;


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/time4j/tz/TransitionResolver;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_HISTORY:Ljava/lang/String; = "Timezone provider does not expose its transition history."

.field private static final serialVersionUID:J = 0x18d8e68000b7a496L


# instance fields
.field private final transient gapResolver:Lnet/time4j/tz/GapResolver;

.field private final transient overlapResolver:Lnet/time4j/tz/OverlapResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/time4j/tz/TransitionResolver;->INSTANCES:Ljava/util/Map;

    .line 54
    invoke-static {}, Lnet/time4j/tz/GapResolver;->values()[Lnet/time4j/tz/GapResolver;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 55
    invoke-static {}, Lnet/time4j/tz/OverlapResolver;->values()[Lnet/time4j/tz/OverlapResolver;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 56
    new-instance v9, Lnet/time4j/tz/TransitionResolver;

    invoke-direct {v9, v4, v8}, Lnet/time4j/tz/TransitionResolver;-><init>(Lnet/time4j/tz/GapResolver;Lnet/time4j/tz/OverlapResolver;)V

    .line 58
    invoke-virtual {v4}, Lnet/time4j/tz/GapResolver;->ordinal()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v8}, Lnet/time4j/tz/OverlapResolver;->ordinal()I

    move-result v8

    add-int/2addr v10, v8

    .line 59
    sget-object v8, Lnet/time4j/tz/TransitionResolver;->INSTANCES:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Lnet/time4j/tz/GapResolver;Lnet/time4j/tz/OverlapResolver;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    .line 82
    iput-object p2, p0, Lnet/time4j/tz/TransitionResolver;->overlapResolver:Lnet/time4j/tz/OverlapResolver;

    return-void
.end method

.method static of(Lnet/time4j/tz/GapResolver;Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionResolver;
    .locals 0

    .line 273
    invoke-virtual {p0}, Lnet/time4j/tz/GapResolver;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Lnet/time4j/tz/OverlapResolver;->ordinal()I

    move-result p1

    add-int/2addr p0, p1

    .line 274
    sget-object p1, Lnet/time4j/tz/TransitionResolver;->INSTANCES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/tz/TransitionResolver;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 352
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static throwInvalidException(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)V
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid local timestamp due to timezone transition: local-date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", local-time="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p2}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object p0

    invoke-interface {p0}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toLocalSeconds(IIIIII)J
    .locals 2

    .line 297
    invoke-static {p0, p1, p2}, Lnet/time4j/base/GregorianMath;->toMJD(III)J

    move-result-wide p0

    const-wide/32 v0, 0x9e8b

    .line 296
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p0

    const-wide/32 v0, 0x15180

    .line 295
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide p0

    mul-int/lit16 p3, p3, 0xe10

    mul-int/lit8 p4, p4, 0x3c

    add-int/2addr p3, p4

    add-int/2addr p3, p5

    int-to-long p2, p3

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 340
    new-instance v0, Lnet/time4j/tz/SPX;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method getKey()I
    .locals 2

    .line 281
    iget-object v0, p0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    invoke-virtual {v0}, Lnet/time4j/tz/GapResolver;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lnet/time4j/tz/TransitionResolver;->overlapResolver:Lnet/time4j/tz/OverlapResolver;

    invoke-virtual {v1}, Lnet/time4j/tz/OverlapResolver;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)Lnet/time4j/tz/ZonalOffset;
    .locals 4

    .line 187
    invoke-virtual {p3}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v0

    if-nez v0, :cond_2

    .line 189
    iget-object v1, p0, Lnet/time4j/tz/TransitionResolver;->overlapResolver:Lnet/time4j/tz/OverlapResolver;

    sget-object v2, Lnet/time4j/tz/OverlapResolver;->LATER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    sget-object v2, Lnet/time4j/tz/GapResolver;->PUSH_FORWARD:Lnet/time4j/tz/GapResolver;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    sget-object v2, Lnet/time4j/tz/GapResolver;->ABORT:Lnet/time4j/tz/GapResolver;

    if-ne v1, v2, :cond_2

    .line 196
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    sget-object v1, Lnet/time4j/tz/GapResolver;->ABORT:Lnet/time4j/tz/GapResolver;

    if-ne v0, v1, :cond_1

    .line 198
    invoke-virtual {p3, p1, p2}, Lnet/time4j/tz/Timezone;->isInvalid(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-static {p1, p2, p3}, Lnet/time4j/tz/TransitionResolver;->throwInvalidException(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)V

    .line 203
    :cond_1
    invoke-virtual {p3, p1, p2}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_7

    .line 210
    invoke-interface {v0, p1, p2}, Lnet/time4j/tz/TransitionHistory;->getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 213
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v2

    .line 214
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 215
    iget-object v1, p0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    sget-object v3, Lnet/time4j/tz/GapResolver;->ABORT:Lnet/time4j/tz/GapResolver;

    if-ne v1, v3, :cond_3

    .line 216
    invoke-static {p1, p2, p3}, Lnet/time4j/tz/TransitionResolver;->throwInvalidException(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-static {v2}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1

    .line 220
    :cond_4
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalTransition;->isOverlap()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 221
    iget-object p1, p0, Lnet/time4j/tz/TransitionResolver;->overlapResolver:Lnet/time4j/tz/OverlapResolver;

    sget-object p2, Lnet/time4j/tz/OverlapResolver;->EARLIER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    if-ne p1, p2, :cond_5

    .line 222
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v2

    .line 224
    :cond_5
    invoke-static {v2}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1

    .line 228
    :cond_6
    :goto_0
    invoke-interface {v0, p1, p2}, Lnet/time4j/tz/TransitionHistory;->getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/ZonalOffset;

    return-object p1

    .line 207
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Timezone provider does not expose its transition history."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolve(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 95
    invoke-interface/range {p1 .. p1}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v10

    .line 96
    invoke-interface/range {p1 .. p1}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v11

    .line 97
    invoke-interface/range {p1 .. p1}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result v12

    .line 98
    invoke-interface/range {p2 .. p2}, Lnet/time4j/base/WallTime;->getHour()I

    move-result v13

    .line 99
    invoke-interface/range {p2 .. p2}, Lnet/time4j/base/WallTime;->getMinute()I

    move-result v14

    .line 100
    invoke-interface/range {p2 .. p2}, Lnet/time4j/base/WallTime;->getSecond()I

    move-result v15

    .line 102
    invoke-virtual/range {p3 .. p3}, Lnet/time4j/tz/Timezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez v9, :cond_3

    .line 104
    iget-object v3, v0, Lnet/time4j/tz/TransitionResolver;->overlapResolver:Lnet/time4j/tz/OverlapResolver;

    sget-object v4, Lnet/time4j/tz/OverlapResolver;->LATER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    sget-object v4, Lnet/time4j/tz/GapResolver;->PUSH_FORWARD:Lnet/time4j/tz/GapResolver;

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    sget-object v4, Lnet/time4j/tz/GapResolver;->ABORT:Lnet/time4j/tz/GapResolver;

    if-ne v3, v4, :cond_3

    .line 110
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v3

    invoke-interface {v3}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 111
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 112
    new-instance v3, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    const/16 v3, 0xe

    .line 113
    invoke-virtual {v9, v3, v7}, Ljava/util/GregorianCalendar;->set(II)V

    add-int/lit8 v5, v11, -0x1

    move-object v3, v9

    move v4, v10

    move v7, v6

    move v6, v12

    move v1, v7

    move v7, v13

    move v8, v14

    move-object v1, v9

    move v9, v15

    .line 114
    invoke-virtual/range {v3 .. v9}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    const/4 v3, 0x1

    .line 116
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 117
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    const/4 v3, 0x5

    .line 118
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    const/16 v3, 0xb

    .line 119
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/16 v3, 0xc

    .line 120
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    const/16 v3, 0xd

    .line 121
    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 123
    iget-object v1, v0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    sget-object v3, Lnet/time4j/tz/GapResolver;->ABORT:Lnet/time4j/tz/GapResolver;

    if-ne v1, v3, :cond_2

    if-ne v10, v4, :cond_1

    if-ne v11, v5, :cond_1

    if-ne v12, v6, :cond_1

    if-ne v13, v7, :cond_1

    if-ne v14, v8, :cond_1

    if-eq v15, v9, :cond_2

    .line 132
    :cond_1
    invoke-static/range {p1 .. p3}, Lnet/time4j/tz/TransitionResolver;->throwInvalidException(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)V

    .line 137
    :cond_2
    invoke-static/range {v4 .. v9}, Lnet/time4j/tz/TransitionResolver;->toLocalSeconds(IIIIII)J

    move-result-wide v3

    move-object/from16 v1, p1

    move-object/from16 v6, p3

    .line 139
    invoke-virtual {v6, v1, v2}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v1

    :goto_0
    int-to-long v1, v1

    sub-long/2addr v3, v1

    return-wide v3

    :cond_3
    move v3, v6

    move v5, v8

    move-object/from16 v6, p3

    if-eqz v9, :cond_a

    .line 146
    invoke-interface {v9, v1, v2}, Lnet/time4j/tz/TransitionHistory;->getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 149
    invoke-virtual {v8}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 150
    sget-object v4, Lnet/time4j/tz/TransitionResolver$1;->$SwitchMap$net$time4j$tz$GapResolver:[I

    iget-object v7, v0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    invoke-virtual {v7}, Lnet/time4j/tz/GapResolver;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v3, :cond_6

    if-eq v4, v5, :cond_5

    const/4 v3, 0x3

    if-ne v4, v3, :cond_4

    .line 158
    invoke-static/range {p1 .. p3}, Lnet/time4j/tz/TransitionResolver;->throwInvalidException(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)V

    goto :goto_2

    .line 161
    :cond_4
    iget-object v1, v0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    invoke-virtual {v1}, Lnet/time4j/tz/GapResolver;->name()Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_5
    invoke-virtual {v8}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v1

    return-wide v1

    :cond_6
    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    .line 152
    invoke-static/range {v1 .. v6}, Lnet/time4j/tz/TransitionResolver;->toLocalSeconds(IIIIII)J

    move-result-wide v1

    .line 153
    invoke-virtual {v8}, Lnet/time4j/tz/ZonalTransition;->getSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 154
    invoke-virtual {v8}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v3

    :cond_7
    :goto_1
    int-to-long v3, v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 164
    :cond_8
    invoke-virtual {v8}, Lnet/time4j/tz/ZonalTransition;->isOverlap()Z

    move-result v3

    if-eqz v3, :cond_9

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    .line 165
    invoke-static/range {v1 .. v6}, Lnet/time4j/tz/TransitionResolver;->toLocalSeconds(IIIIII)J

    move-result-wide v1

    .line 166
    invoke-virtual {v8}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v3

    .line 167
    iget-object v4, v0, Lnet/time4j/tz/TransitionResolver;->overlapResolver:Lnet/time4j/tz/OverlapResolver;

    sget-object v5, Lnet/time4j/tz/OverlapResolver;->EARLIER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    if-ne v4, v5, :cond_7

    .line 168
    invoke-virtual {v8}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v3

    goto :goto_1

    :cond_9
    :goto_2
    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    const/4 v10, 0x0

    move v7, v14

    move v8, v15

    .line 174
    invoke-static/range {v3 .. v8}, Lnet/time4j/tz/TransitionResolver;->toLocalSeconds(IIIIII)J

    move-result-wide v3

    .line 175
    invoke-interface {v9, v1, v2}, Lnet/time4j/tz/TransitionHistory;->getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/ZonalOffset;

    .line 176
    invoke-virtual {v1}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v1

    goto/16 :goto_0

    .line 143
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Timezone provider does not expose its transition history."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":[gap="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",overlap="

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lnet/time4j/tz/TransitionResolver;->overlapResolver:Lnet/time4j/tz/OverlapResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public using(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;
    .locals 1

    .line 235
    iget-object v0, p0, Lnet/time4j/tz/TransitionResolver;->overlapResolver:Lnet/time4j/tz/OverlapResolver;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 239
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/TransitionResolver;->gapResolver:Lnet/time4j/tz/GapResolver;

    invoke-virtual {v0, p1}, Lnet/time4j/tz/GapResolver;->and(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;

    move-result-object p1

    return-object p1
.end method
