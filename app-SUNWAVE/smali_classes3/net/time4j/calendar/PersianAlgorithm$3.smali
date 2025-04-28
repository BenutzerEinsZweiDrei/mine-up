.class final enum Lnet/time4j/calendar/PersianAlgorithm$3;
.super Lnet/time4j/calendar/PersianAlgorithm;
.source "PersianAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/PersianAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/PersianAlgorithm;-><init>(Ljava/lang/String;ILnet/time4j/calendar/PersianAlgorithm$1;)V

    return-void
.end method


# virtual methods
.method isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z
    .locals 1

    .line 285
    invoke-static {p1}, Lnet/time4j/calendar/PersianAlgorithm;->access$100(I)V

    add-int/lit16 p1, p1, -0x1da

    const/16 p2, 0xb04

    .line 286
    invoke-static {p1, p2}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p1

    add-int/lit16 p1, p1, 0x200

    const/16 p2, 0x1f

    mul-int/2addr p1, p2

    const/16 v0, 0x80

    invoke-static {p1, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p1

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J
    .locals 6

    .line 322
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getYear()I

    move-result p2

    add-int/lit16 p2, p2, -0x1da

    const/16 v0, 0xb04

    .line 323
    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x1da

    .line 325
    invoke-static {p2, v0}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p2

    const v0, 0xfb75f

    mul-int/2addr p2, v0

    int-to-long v2, p2

    const-wide/32 v4, -0x785c6

    add-long/2addr v2, v4

    add-int/lit8 p2, v1, -0x1

    mul-int/lit16 p2, p2, 0x16d

    int-to-long v4, p2

    add-long/2addr v2, v4

    mul-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, -0x5

    const/16 p2, 0x80

    .line 327
    invoke-static {v1, p2}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p2

    int-to-long v0, p2

    add-long/2addr v2, v0

    .line 328
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getMonth()Lnet/time4j/calendar/PersianMonth;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/calendar/PersianMonth;->getValue()I

    move-result p2

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    mul-int/lit8 p2, p2, 0x1f

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    mul-int/lit8 p2, p2, 0x1e

    add-int/lit8 p2, p2, 0x6

    :goto_0
    int-to-long v0, p2

    add-long/2addr v2, v0

    .line 334
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getDayOfMonth()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v2, p1

    return-wide v2
.end method

.method transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;
    .locals 5

    .line 293
    invoke-static {p1, p2}, Lnet/time4j/calendar/PersianAlgorithm;->access$200(J)V

    const-wide/32 v0, -0x4e180

    sub-long v0, p1, v0

    long-to-int v0, v0

    const v1, 0xfb75f

    .line 295
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v2

    .line 296
    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    const/16 v1, 0xb04

    const v3, 0xfb75e

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x80

    const v3, 0xb71e

    add-int/2addr v0, v3

    const v3, 0xb69f

    .line 300
    invoke-static {v0, v3}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    :goto_0
    mul-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x1da

    add-int/2addr v2, v0

    .line 304
    new-instance v0, Lnet/time4j/calendar/PersianCalendar;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, v1}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    invoke-virtual {p0, v0, p3}, Lnet/time4j/calendar/PersianAlgorithm$3;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide v3

    sub-long/2addr p1, v3

    long-to-int p1, p1

    move p2, v1

    move p3, p2

    :goto_1
    const/16 v0, 0xc

    if-ge p2, v0, :cond_2

    const/4 v0, 0x6

    if-gt p2, v0, :cond_1

    const/16 v0, 0x1f

    goto :goto_2

    :cond_1
    const/16 v0, 0x1e

    :goto_2
    if-lt p1, v0, :cond_2

    sub-int/2addr p1, v0

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v1, p1

    .line 315
    new-instance p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-direct {p1, v2, p3, v1}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    return-object p1
.end method
