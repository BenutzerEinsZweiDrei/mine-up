.class final Lnet/time4j/SPX;
.super Ljava/lang/Object;
.source "SPX.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final DATE_TYPE:I = 0x1

.field static final DAY_PERIOD_TYPE:I = 0x7

.field static final DURATION_TYPE:I = 0x6

.field static final MACHINE_TIME_TYPE:I = 0x5

.field static final MOMENT_TYPE:I = 0x4

.field static final TIMESTAMP_TYPE:I = 0x8

.field static final TIME_TYPE:I = 0x2

.field static final WEEKMODEL_TYPE:I = 0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;

.field private transient type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    .line 117
    iput p2, p0, Lnet/time4j/SPX;->type:I

    return-void
.end method

.method private readDate(Ljava/io/DataInput;B)Lnet/time4j/PlainDate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0xf

    .line 298
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    shr-int/lit8 v1, v0, 0x5

    const/4 v2, 0x3

    and-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 311
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    goto :goto_0

    .line 314
    :cond_0
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string p2, "Unknown year range."

    invoke-direct {p1, p2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_1
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result p1

    goto :goto_0

    .line 305
    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    add-int/lit16 p1, p1, 0x73a

    add-int/lit16 p1, p1, 0x80

    .line 317
    :goto_0
    invoke-static {p2}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lnet/time4j/PlainDate;->of(ILnet/time4j/Month;I)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method private readDayPeriod(Ljava/io/ObjectInput;B)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 587
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 588
    new-instance p2, Lnet/time4j/DayPeriod$Element;

    invoke-static {p1}, Lnet/time4j/DayPeriod;->of(Ljava/util/Map;)Lnet/time4j/DayPeriod;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lnet/time4j/DayPeriod$Element;-><init>(ZLnet/time4j/DayPeriod;)V

    return-object p2

    .line 591
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p2

    .line 592
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    const-string v3, "-"

    .line 593
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 597
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 599
    :cond_3
    new-instance v4, Ljava/util/Locale;

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, v1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 602
    :goto_2
    new-instance p2, Lnet/time4j/DayPeriod$Element;

    invoke-direct {p2, v0, v1, p1}, Lnet/time4j/DayPeriod$Element;-><init>(ZLjava/util/Locale;Ljava/lang/String;)V

    return-object p2
.end method

.method private readDuration(Ljava/io/ObjectInput;B)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0xf

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 530
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p2

    if-nez p2, :cond_1

    .line 533
    invoke-static {}, Lnet/time4j/Duration;->ofZero()Lnet/time4j/Duration;

    move-result-object p1

    return-object p1

    .line 536
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p2, :cond_3

    if-eqz v1, :cond_2

    .line 540
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v3

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    int-to-long v3, v3

    .line 541
    :goto_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/IsoUnit;

    .line 542
    invoke-static {v3, v4, v5}, Lnet/time4j/engine/TimeSpan$Item;->of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 545
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result p1

    .line 546
    new-instance p2, Lnet/time4j/Duration;

    invoke-direct {p2, v2, p1}, Lnet/time4j/Duration;-><init>(Ljava/util/List;Z)V

    return-object p2
.end method

.method private readMachineTime(Ljava/io/ObjectInput;B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 634
    sget-object v0, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    .line 635
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v1

    const/4 v3, 0x2

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_1

    .line 636
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 638
    :goto_1
    sget-object p2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v0, p2, :cond_2

    .line 639
    invoke-static {v1, v2, p1}, Lnet/time4j/MachineTime;->ofSIUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p1

    return-object p1

    .line 641
    :cond_2
    invoke-static {v1, v2, p1}, Lnet/time4j/MachineTime;->ofPosixUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p1

    return-object p1
.end method

.method private readMoment(Ljava/io/DataInput;B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    and-int/lit8 p2, p2, 0x2

    const/4 v1, 0x1

    ushr-int/2addr p2, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 462
    :goto_1
    invoke-static {p1, v0, v1}, Lnet/time4j/Moment;->readTimestamp(Ljava/io/DataInput;ZZ)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private readTime(Ljava/io/DataInput;)Lnet/time4j/PlainTime;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-gez v0, :cond_0

    not-int p1, v0

    .line 363
    invoke-static {p1}, Lnet/time4j/PlainTime;->of(I)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 366
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    not-int v1, v1

    move p1, v2

    goto :goto_0

    .line 371
    :cond_1
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v3

    if-gez v3, :cond_2

    not-int p1, v3

    move v4, v2

    move v2, p1

    move p1, v4

    goto :goto_0

    .line 376
    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    move p1, v2

    move v2, v3

    .line 380
    :goto_0
    invoke-static {v0, v1, v2, p1}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method private readTimestamp(Ljava/io/DataInput;B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-direct {p0, p1, p2}, Lnet/time4j/SPX;->readDate(Ljava/io/DataInput;B)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 481
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->readTime(Ljava/io/DataInput;)Lnet/time4j/PlainTime;

    move-result-object p1

    .line 482
    invoke-static {p2, p1}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method private readWeekmodel(Ljava/io/DataInput;B)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    .line 422
    invoke-static {v1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v1

    and-int/lit8 v0, v0, 0xf

    .line 425
    sget-object v2, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    .line 426
    sget-object v3, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    and-int/lit8 p2, p2, 0xf

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 429
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    shr-int/lit8 p2, p1, 0x4

    .line 430
    invoke-static {p2}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v2

    and-int/lit8 p1, p1, 0xf

    .line 431
    invoke-static {p1}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v3

    .line 434
    :cond_0
    invoke-static {v1, v0, v2, v3}, Lnet/time4j/Weekmodel;->of(Lnet/time4j/Weekday;ILnet/time4j/Weekday;Lnet/time4j/Weekday;)Lnet/time4j/Weekmodel;

    move-result-object p1

    return-object p1
.end method

.method private writeDate(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/PlainDate;

    const/4 v1, 0x1

    .line 243
    invoke-static {v0, v1, p1}, Lnet/time4j/SPX;->writeDate(Lnet/time4j/PlainDate;ILjava/io/DataOutput;)V

    return-void
.end method

.method private static writeDate(Lnet/time4j/PlainDate;ILjava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getYear()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x73a

    if-lt v0, v3, :cond_0

    const/16 v4, 0x834

    if-gt v0, v4, :cond_0

    move v4, v1

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    :goto_0
    shl-int/lit8 p1, p1, 0x4

    .line 274
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v5

    or-int/2addr p1, v5

    .line 275
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeByte(I)V

    shl-int/lit8 p1, v4, 0x5

    .line 279
    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p0

    or-int/2addr p0, p1

    .line 280
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v4, v1, :cond_2

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x80

    .line 283
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    .line 285
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_1

    .line 287
    :cond_3
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_1
    return-void
.end method

.method private writeDayPeriod(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    const-class v0, Lnet/time4j/DayPeriod$Element;

    iget-object v1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/DayPeriod$Element;

    .line 553
    invoke-virtual {v0}, Lnet/time4j/DayPeriod$Element;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 556
    invoke-virtual {v0}, Lnet/time4j/DayPeriod$Element;->isFixed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x71

    goto :goto_0

    :cond_0
    const/16 v2, 0x70

    :goto_0
    if-nez v1, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 562
    :cond_1
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    if-nez v1, :cond_2

    .line 565
    invoke-virtual {v0}, Lnet/time4j/DayPeriod$Element;->getCodeMap()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 567
    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    :cond_3
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Lnet/time4j/DayPeriod$Element;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private writeDuration(Ljava/io/ObjectOutput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    const-class v0, Lnet/time4j/Duration;

    iget-object v1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Duration;

    .line 490
    invoke-virtual {v0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    .line 493
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 494
    invoke-virtual {v0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v5}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    const/16 v4, 0x60

    if-eqz v2, :cond_2

    const/16 v4, 0x61

    .line 505
    :cond_2
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 506
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_2
    if-ge v3, v1, :cond_4

    .line 509
    invoke-virtual {v0}, Lnet/time4j/Duration;->getTotalLength()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/TimeSpan$Item;

    if-eqz v2, :cond_3

    .line 511
    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_3

    .line 513
    :cond_3
    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getAmount()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 515
    :goto_3
    invoke-virtual {v4}, Lnet/time4j/engine/TimeSpan$Item;->getUnit()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    .line 519
    invoke-virtual {v0}, Lnet/time4j/Duration;->isNegative()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    :cond_5
    return-void
.end method

.method private writeMachineTime(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    const-class v0, Lnet/time4j/MachineTime;

    iget-object v1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/MachineTime;

    .line 613
    invoke-virtual {v0}, Lnet/time4j/MachineTime;->getScale()Lnet/time4j/scale/TimeScale;

    move-result-object v1

    sget-object v2, Lnet/time4j/scale/TimeScale;->UTC:Lnet/time4j/scale/TimeScale;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x51

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    .line 617
    :goto_0
    invoke-virtual {v0}, Lnet/time4j/MachineTime;->getFraction()I

    move-result v2

    if-nez v2, :cond_1

    .line 618
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 619
    invoke-virtual {v0}, Lnet/time4j/MachineTime;->getSeconds()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_1

    :cond_1
    or-int/lit8 v1, v1, 0x2

    .line 622
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 623
    invoke-virtual {v0}, Lnet/time4j/MachineTime;->getSeconds()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 624
    invoke-virtual {v0}, Lnet/time4j/MachineTime;->getFraction()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_1
    return-void
.end method

.method private writeMoment(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/Moment;

    .line 447
    invoke-virtual {v0, p1}, Lnet/time4j/Moment;->writeTimestamp(Ljava/io/DataOutput;)V

    return-void
.end method

.method private writeTime(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/PlainTime;

    const/16 v1, 0x20

    .line 325
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 326
    invoke-static {v0, p1}, Lnet/time4j/SPX;->writeTime(Lnet/time4j/PlainTime;Ljava/io/DataOutput;)V

    return-void
.end method

.method private static writeTime(Lnet/time4j/PlainTime;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getNanosecond()I

    move-result v0

    if-nez v0, :cond_2

    .line 336
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getSecond()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getMinute()I

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getHour()I

    move-result p0

    not-int p0, p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 341
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getMinute()I

    move-result p0

    not-int p0, p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 345
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getMinute()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 346
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getSecond()I

    move-result p0

    not-int p0, p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getHour()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 350
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getMinute()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 351
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getSecond()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 352
    invoke-virtual {p0}, Lnet/time4j/PlainTime;->getNanosecond()I

    move-result p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    return-void
.end method

.method private writeTimestamp(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/PlainTimestamp;

    .line 470
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2, p1}, Lnet/time4j/SPX;->writeDate(Lnet/time4j/PlainDate;ILjava/io/DataOutput;)V

    .line 471
    invoke-virtual {v0}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/time4j/SPX;->writeTime(Lnet/time4j/PlainTime;Ljava/io/DataOutput;)V

    return-void
.end method

.method private writeWeekmodel(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/Weekmodel;

    .line 391
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getStartOfWeekend()Lnet/time4j/Weekday;

    move-result-object v1

    sget-object v2, Lnet/time4j/Weekday;->SATURDAY:Lnet/time4j/Weekday;

    if-ne v1, v2, :cond_0

    .line 392
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getEndOfWeekend()Lnet/time4j/Weekday;

    move-result-object v1

    sget-object v2, Lnet/time4j/Weekday;->SUNDAY:Lnet/time4j/Weekday;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x30

    if-nez v1, :cond_1

    const/16 v2, 0x31

    .line 400
    :cond_1
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 402
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getFirstDayOfWeek()Lnet/time4j/Weekday;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/Weekday;->getValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    .line 404
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getMinimalDaysInFirstWeek()I

    move-result v3

    or-int/2addr v2, v3

    .line 405
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    if-nez v1, :cond_2

    .line 408
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getStartOfWeekend()Lnet/time4j/Weekday;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Weekday;->getValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    .line 410
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->getEndOfWeekend()Lnet/time4j/Weekday;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/Weekday;->getValue()I

    move-result v0

    or-int/2addr v0, v1

    .line 411
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 200
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 228
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type."

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lnet/time4j/SPX;->readTimestamp(Ljava/io/DataInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lnet/time4j/SPX;->readDayPeriod(Ljava/io/ObjectInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lnet/time4j/SPX;->readDuration(Ljava/io/ObjectInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lnet/time4j/SPX;->readMachineTime(Ljava/io/ObjectInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 213
    :pswitch_4
    invoke-direct {p0, p1, v0}, Lnet/time4j/SPX;->readMoment(Ljava/io/DataInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 210
    :pswitch_5
    invoke-direct {p0, p1, v0}, Lnet/time4j/SPX;->readWeekmodel(Ljava/io/DataInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 207
    :pswitch_6
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->readTime(Ljava/io/DataInput;)Lnet/time4j/PlainTime;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 204
    :pswitch_7
    invoke-direct {p0, p1, v0}, Lnet/time4j/SPX;->readDate(Ljava/io/DataInput;B)Lnet/time4j/PlainDate;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/SPX;->obj:Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget v0, p0, Lnet/time4j/SPX;->type:I

    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type."

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :pswitch_0
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->writeTimestamp(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->writeDayPeriod(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->writeDuration(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->writeMachineTime(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 162
    :pswitch_4
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->writeMoment(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 159
    :pswitch_5
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->writeWeekmodel(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 156
    :pswitch_6
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->writeTime(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 153
    :pswitch_7
    invoke-direct {p0, p1}, Lnet/time4j/SPX;->writeDate(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
