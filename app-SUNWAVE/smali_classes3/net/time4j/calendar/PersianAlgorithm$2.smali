.class final enum Lnet/time4j/calendar/PersianAlgorithm$2;
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

    .line 194
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/PersianAlgorithm;-><init>(Ljava/lang/String;ILnet/time4j/calendar/PersianAlgorithm$1;)V

    return-void
.end method


# virtual methods
.method isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z
    .locals 1

    .line 200
    invoke-static {p1}, Lnet/time4j/calendar/PersianAlgorithm;->access$100(I)V

    .line 201
    rem-int/lit8 p1, p1, 0x21

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J
    .locals 5

    .line 245
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getYear()I

    move-result p2

    .line 246
    div-int/lit8 v0, p2, 0x21

    mul-int/lit16 v0, v0, 0x2f15

    int-to-long v0, v0

    const-wide/32 v2, 0x78733

    sub-long/2addr v0, v2

    .line 247
    rem-int/lit8 p2, p2, 0x21

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-ge v2, p2, :cond_2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    const/16 v4, 0x9

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1

    const/16 v4, 0x11

    if-eq v2, v4, :cond_1

    const/16 v4, 0x16

    if-eq v2, v4, :cond_1

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x16d

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v3, 0x16e

    :goto_2
    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getMonth()Lnet/time4j/calendar/PersianMonth;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/calendar/PersianMonth;->getValue()I

    move-result p2

    const/4 v2, 0x7

    if-gt p2, v2, :cond_3

    sub-int/2addr p2, v4

    mul-int/lit8 p2, p2, 0x1f

    goto :goto_3

    :cond_3
    sub-int/2addr p2, v4

    mul-int/2addr p2, v3

    add-int/lit8 p2, p2, 0x6

    :goto_3
    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 261
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getDayOfMonth()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;
    .locals 4

    .line 209
    invoke-static {p1, p2}, Lnet/time4j/calendar/PersianAlgorithm;->access$200(J)V

    const-wide/32 v0, 0x78733

    add-long/2addr p1, v0

    const-wide/16 v0, 0x2f15

    .line 211
    div-long v2, p1, v0

    long-to-int p3, v2

    .line 212
    rem-long/2addr p1, v0

    long-to-int p1, p1

    const/16 p2, 0x21

    mul-int/2addr p3, p2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ge v0, p2, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x11

    if-eq v0, v3, :cond_1

    const/16 v3, 0x16

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x16d

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v3, 0x16e

    :goto_2
    if-lt p1, v3, :cond_2

    sub-int/2addr p1, v3

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move p2, v2

    move v0, p2

    :goto_3
    const/16 v3, 0xc

    if-ge p2, v3, :cond_4

    const/4 v3, 0x6

    if-gt p2, v3, :cond_3

    const/16 v3, 0x1f

    goto :goto_4

    :cond_3
    move v3, v1

    :goto_4
    if-lt p1, v3, :cond_4

    sub-int/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v2, p1

    .line 238
    new-instance p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-direct {p1, p3, v0, v2}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    return-object p1
.end method
