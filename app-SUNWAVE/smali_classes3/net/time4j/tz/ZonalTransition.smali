.class public final Lnet/time4j/tz/ZonalTransition;
.super Ljava/lang/Object;
.source "ZonalTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/tz/ZonalTransition;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3fc425267cc82658L


# instance fields
.field private final dst:I

.field private final posix:J

.field private final previous:I

.field private final total:I


# direct methods
.method public constructor <init>(JIII)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-wide p1, p0, Lnet/time4j/tz/ZonalTransition;->posix:J

    .line 164
    iput p3, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    .line 165
    iput p4, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    .line 166
    iput p5, p0, Lnet/time4j/tz/ZonalTransition;->dst:I

    .line 168
    invoke-static {p3}, Lnet/time4j/tz/ZonalTransition;->checkRange(I)V

    .line 169
    invoke-static {p4}, Lnet/time4j/tz/ZonalTransition;->checkRange(I)V

    .line 170
    invoke-static {p5}, Lnet/time4j/tz/ZonalTransition;->checkDST(I)V

    return-void
.end method

.method private static checkDST(I)V
    .locals 1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    .line 481
    invoke-static {p0}, Lnet/time4j/tz/ZonalTransition;->checkRange(I)V

    :cond_0
    return-void
.end method

.method private static checkRange(I)V
    .locals 3

    const v0, -0xfd20

    if-lt p0, v0, :cond_0

    const v0, 0xfd20

    if-gt p0, v0, :cond_0

    return-void

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 495
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 498
    :try_start_0
    iget p1, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    invoke-static {p1}, Lnet/time4j/tz/ZonalTransition;->checkRange(I)V

    .line 499
    iget p1, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    invoke-static {p1}, Lnet/time4j/tz/ZonalTransition;->checkRange(I)V

    .line 500
    iget p1, p0, Lnet/time4j/tz/ZonalTransition;->dst:I

    invoke-static {p1}, Lnet/time4j/tz/ZonalTransition;->checkDST(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 502
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 81
    check-cast p1, Lnet/time4j/tz/ZonalTransition;

    invoke-virtual {p0, p1}, Lnet/time4j/tz/ZonalTransition;->compareTo(Lnet/time4j/tz/ZonalTransition;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/tz/ZonalTransition;)I
    .locals 5

    .line 383
    iget-wide v0, p0, Lnet/time4j/tz/ZonalTransition;->posix:J

    iget-wide v2, p1, Lnet/time4j/tz/ZonalTransition;->posix:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 386
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    iget v1, p1, Lnet/time4j/tz/ZonalTransition;->previous:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 388
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    iget v1, p1, Lnet/time4j/tz/ZonalTransition;->total:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 390
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 414
    :cond_0
    instance-of v1, p1, Lnet/time4j/tz/ZonalTransition;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 415
    check-cast p1, Lnet/time4j/tz/ZonalTransition;

    .line 417
    iget-wide v3, p0, Lnet/time4j/tz/ZonalTransition;->posix:J

    iget-wide v5, p1, Lnet/time4j/tz/ZonalTransition;->posix:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    iget v3, p1, Lnet/time4j/tz/ZonalTransition;->previous:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    iget v3, p1, Lnet/time4j/tz/ZonalTransition;->total:I

    if-ne v1, v3, :cond_1

    .line 421
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDaylightSavingOffset()I
    .locals 2

    .line 300
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->dst:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getPosixTime()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lnet/time4j/tz/ZonalTransition;->posix:J

    return-wide v0
.end method

.method public getPreviousOffset()I
    .locals 1

    .line 214
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 318
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    iget v1, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStandardOffset()I
    .locals 2

    .line 270
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTotalOffset()I
    .locals 1

    .line 238
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 438
    iget-wide v0, p0, Lnet/time4j/tz/ZonalTransition;->posix:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isGap()Z
    .locals 2

    .line 340
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    iget v1, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverlap()Z
    .locals 2

    .line 362
    iget v0, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    iget v1, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[POSIX="

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-wide v1, p0, Lnet/time4j/tz/ZonalTransition;->posix:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", previous-offset="

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v1, p0, Lnet/time4j/tz/ZonalTransition;->previous:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total-offset="

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget v1, p0, Lnet/time4j/tz/ZonalTransition;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dst-offset="

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
