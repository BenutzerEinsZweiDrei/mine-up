.class Lnet/time4j/calendar/ChineseCalendar$SPX;
.super Ljava/lang/Object;
.source "ChineseCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ChineseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final CHINESE:I = 0xe

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    iput-object p1, p0, Lnet/time4j/calendar/ChineseCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readChinese(Ljava/io/ObjectInput;)Lnet/time4j/calendar/ChineseCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1453
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 1454
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 1455
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 1456
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v3

    .line 1457
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 1459
    invoke-static {v2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    if-eqz v3, :cond_0

    .line 1462
    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    .line 1465
    :cond_0
    invoke-static {v0, v1, v2, p1}, Lnet/time4j/calendar/ChineseCalendar;->of(IILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/ChineseCalendar;

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

    .line 1436
    iget-object v0, p0, Lnet/time4j/calendar/ChineseCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeChinese(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1442
    iget-object v0, p0, Lnet/time4j/calendar/ChineseCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/EastAsianCalendar;

    .line 1443
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1444
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1445
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1446
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1447
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1424
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 1427
    invoke-direct {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$SPX;->readChinese(Ljava/io/ObjectInput;)Lnet/time4j/calendar/ChineseCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/ChineseCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1429
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Unknown calendar type."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1416
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1417
    invoke-direct {p0, p1}, Lnet/time4j/calendar/ChineseCalendar$SPX;->writeChinese(Ljava/io/ObjectOutput;)V

    return-void
.end method
