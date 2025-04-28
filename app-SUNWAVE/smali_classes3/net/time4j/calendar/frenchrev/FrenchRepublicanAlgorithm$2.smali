.class final enum Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$2;
.super Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;
.source "FrenchRepublicanAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;-><init>(Ljava/lang/String;ILnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$1;)V

    return-void
.end method


# virtual methods
.method public isLeapYear(I)Z
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    const/16 v1, 0x4b2

    if-gt p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x7

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-lt p1, v1, :cond_3

    and-int/lit8 v1, p1, 0x3

    if-nez v1, :cond_1

    .line 132
    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_2

    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v0

    .line 128
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J
    .locals 5

    .line 155
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getYear()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 156
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$2;->EQUINOX:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    invoke-virtual {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v0

    return-wide v0

    .line 158
    :cond_0
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 160
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->access$400()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    mul-int/lit16 v3, v0, 0x16d

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x4

    .line 162
    invoke-static {v0, v3}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/16 v3, 0x64

    .line 163
    invoke-static {v0, v3}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const/16 v3, 0x190

    .line 164
    invoke-static {v0, v3}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 165
    invoke-virtual {p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfYear()I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 7

    .line 139
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->access$300()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 140
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$2;->EQUINOX:Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    invoke-static {p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->access$100(J)V

    .line 143
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->access$400()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    mul-long/2addr v0, v2

    const v2, 0x164ae9

    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 144
    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    invoke-virtual {p0, v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$2;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v5

    cmp-long v1, v5, p1

    if-lez v1, :cond_1

    .line 146
    new-instance v1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    add-int/lit8 v5, v0, -0x1

    invoke-direct {v1, v5, v4}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    invoke-virtual {p0, v1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm$2;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide v5

    add-int/lit8 v0, v0, -0x1

    :cond_1
    sub-long/2addr p1, v5

    add-long/2addr p1, v2

    long-to-int p1, p1

    .line 150
    new-instance p2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-direct {p2, v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    return-object p2
.end method
