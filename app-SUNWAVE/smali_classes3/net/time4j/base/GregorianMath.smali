.class public final Lnet/time4j/base/GregorianMath;
.super Ljava/lang/Object;
.source "GregorianMath.java"


# static fields
.field public static final MAX_YEAR:I = 0x3b9ac9ff

.field public static final MIN_YEAR:I = -0x3b9ac9ff

.field private static final OFFSET:I = 0xa5be1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDate(III)V
    .locals 3

    const v0, -0x3b9ac9ff

    if-lt p0, v0, :cond_3

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v1, 0xc

    if-gt p1, v1, :cond_2

    if-lt p2, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p2, v0, :cond_1

    .line 208
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v0

    if-gt p2, v0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAY_OF_MONTH exceeds month length in given year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {p0, p1, p2}, Lnet/time4j/base/GregorianMath;->toString(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DAY_OF_MONTH out of range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MONTH out of range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "YEAR out of range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static gaussianWeekTerm(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Month out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x19

    return p0

    :pswitch_1
    const/16 p0, 0x17

    return p0

    :pswitch_2
    const/16 p0, 0x14

    return p0

    :pswitch_3
    const/16 p0, 0x12

    return p0

    :pswitch_4
    const/16 p0, 0xf

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_6
    const/16 p0, 0xa

    return p0

    :pswitch_7
    const/4 p0, 0x7

    return p0

    :pswitch_8
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x2

    return p0

    :pswitch_a
    const/16 p0, 0x1f

    return p0

    :pswitch_b
    const/16 p0, 0x1c

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDayOfWeek(III)I
    .locals 4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    const/16 v0, 0x1f

    if-gt p2, v0, :cond_4

    .line 251
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 257
    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->gaussianWeekTerm(I)I

    move-result v0

    .line 258
    rem-int/lit8 v1, p0, 0x64

    const/16 v2, 0x64

    .line 259
    invoke-static {p0, v2}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p0

    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x64

    :cond_0
    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/16 v1, 0x63

    add-int/lit8 p0, p0, -0x1

    :cond_1
    const/4 p1, 0x4

    .line 274
    invoke-static {p0, p1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v3

    add-int/2addr p2, v0

    add-int/2addr p2, v1

    .line 275
    div-int/2addr v1, p1

    add-int/2addr p2, v1

    add-int/2addr p2, v3

    mul-int/2addr p0, v2

    sub-int/2addr p2, p0

    rem-int/lit8 p2, p2, 0x7

    if-gtz p2, :cond_2

    add-int/lit8 p2, p2, 0x7

    :cond_2
    return p2

    .line 252
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Day exceeds month length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p0, p1, p2}, Lnet/time4j/base/GregorianMath;->toString(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day out of range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLengthOfMonth(II)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 127
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid month: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    .line 125
    :pswitch_1
    invoke-static {p0}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    :goto_0
    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isLeapYear(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x76c

    if-le p0, v2, :cond_1

    const/16 v2, 0x834

    if-ge p0, v2, :cond_1

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    and-int/lit8 v2, p0, 0x3

    if-nez v2, :cond_2

    .line 83
    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_3

    :cond_2
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public static isValid(III)Z
    .locals 2

    const/4 v0, 0x1

    const v1, -0x3b9ac9ff

    if-lt p0, v1, :cond_0

    const v1, 0x3b9ac9ff

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    const/16 v1, 0xc

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    .line 168
    invoke-static {p0, p1}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result p0

    if-gt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readDayOfMonth(J)I
    .locals 2

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static readMonth(J)I
    .locals 2

    const/16 v0, 0x10

    shr-long/2addr p0, v0

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static readYear(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toMJD(III)J
    .locals 6

    .line 482
    invoke-static {p0, p1, p2}, Lnet/time4j/base/GregorianMath;->checkDate(III)V

    int-to-long v0, p0

    const/4 p0, 0x3

    if-ge p1, p0, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    add-int/lit8 p1, p1, 0xc

    :cond_0
    const-wide/16 v2, 0x16d

    mul-long/2addr v2, v0

    const/4 p0, 0x4

    .line 494
    invoke-static {v0, v1, p0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 p0, 0x64

    .line 495
    invoke-static {v0, v1, p0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 p0, 0x190

    .line 496
    invoke-static {v0, v1, p0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    add-long/2addr v2, v0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit16 p1, p1, 0x99

    div-int/lit8 p1, p1, 0x5

    int-to-long p0, p1

    add-long/2addr v2, p0

    const-wide/16 p0, 0x7b

    sub-long/2addr v2, p0

    int-to-long p0, p2

    add-long/2addr v2, p0

    const-wide/32 p0, 0xa5be1

    sub-long/2addr v2, p0

    return-wide v2
.end method

.method public static toMJD(Lnet/time4j/base/GregorianDate;)J
    .locals 2

    .line 454
    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getYear()I

    move-result v0

    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getMonth()I

    move-result v1

    invoke-interface {p0}, Lnet/time4j/base/GregorianDate;->getDayOfMonth()I

    move-result p0

    .line 453
    invoke-static {v0, v1, p0}, Lnet/time4j/base/GregorianMath;->toMJD(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toPackedDate(J)J
    .locals 10

    const-wide/32 v0, 0xa5be1

    .line 384
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide p0

    const v0, 0x23ab1

    .line 390
    invoke-static {p0, p1, v0}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v1

    .line 391
    invoke-static {p0, p1, v0}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p0

    const/16 p1, 0x1d

    const-wide/16 v3, 0x1

    const/4 v0, 0x2

    const-wide/16 v5, 0x190

    const v7, 0x23ab0

    if-ne p0, v7, :cond_0

    add-long/2addr v1, v3

    mul-long/2addr v1, v5

    goto :goto_0

    :cond_0
    const v7, 0x8eac

    .line 398
    div-int v8, p0, v7

    .line 399
    rem-int/2addr p0, v7

    .line 401
    div-int/lit16 v7, p0, 0x5b5

    .line 402
    rem-int/lit16 p0, p0, 0x5b5

    const/16 v9, 0x5b4

    if-ne p0, v9, :cond_1

    mul-long/2addr v1, v5

    mul-int/lit8 v8, v8, 0x64

    int-to-long v3, v8

    add-long/2addr v1, v3

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x4

    int-to-long v3, v7

    add-long/2addr v1, v3

    goto :goto_0

    .line 409
    :cond_1
    div-int/lit16 p1, p0, 0x16d

    .line 410
    rem-int/lit16 p0, p0, 0x16d

    mul-long/2addr v1, v5

    mul-int/lit8 v8, v8, 0x64

    int-to-long v5, v8

    add-long/2addr v1, v5

    mul-int/lit8 v7, v7, 0x4

    int-to-long v5, v7

    add-long/2addr v1, v5

    int-to-long v5, p1

    add-long/2addr v1, v5

    add-int/lit8 p1, p0, 0x1f

    mul-int/lit8 p1, p1, 0x5

    .line 413
    div-int/lit16 p1, p1, 0x99

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    mul-int/lit16 p1, p1, 0x99

    .line 414
    div-int/lit8 p1, p1, 0x5

    sub-int/2addr p0, p1

    add-int/lit8 p1, p0, 0x7b

    const/16 p0, 0xc

    if-le v0, p0, :cond_2

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, -0xc

    :cond_2
    :goto_0
    const-wide/32 v3, -0x3b9ac9ff

    cmp-long p0, v1, v3

    if-ltz p0, :cond_3

    const-wide/32 v3, 0x3b9ac9ff

    cmp-long p0, v1, v3

    if-gtz p0, :cond_3

    const/16 p0, 0x20

    shl-long/2addr v1, p0

    shl-int/lit8 p0, v0, 0x10

    int-to-long v3, p0

    or-long v0, v1, v3

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0

    .line 424
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Year out of range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static toString(III)Ljava/lang/String;
    .locals 3

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    .line 517
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p2, v2, :cond_1

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
