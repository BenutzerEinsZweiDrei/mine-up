.class Lnet/time4j/calendar/EthiopianTime$SPX;
.super Ljava/lang/Object;
.source "EthiopianTime.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final ETHIOPIAN_TIME:I = 0x5

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1661
    iput-object p1, p0, Lnet/time4j/calendar/EthiopianTime$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readEthiopianTime(Ljava/io/ObjectInput;)Lnet/time4j/calendar/EthiopianTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1709
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    .line 1710
    rem-int/lit8 v0, p1, 0x3c

    .line 1711
    div-int/lit8 p1, p1, 0x3c

    .line 1712
    rem-int/lit8 v1, p1, 0x3c

    .line 1713
    div-int/lit8 p1, p1, 0x3c

    .line 1714
    invoke-static {p1, v1, v0}, Lnet/time4j/PlainTime;->of(III)Lnet/time4j/PlainTime;

    move-result-object p1

    .line 1715
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->from(Lnet/time4j/PlainTime;)Lnet/time4j/calendar/EthiopianTime;

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

    .line 1692
    iget-object v0, p0, Lnet/time4j/calendar/EthiopianTime$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeEthiopianTime(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Lnet/time4j/calendar/EthiopianTime$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/EthiopianTime;

    .line 1699
    sget-object v1, Lnet/time4j/calendar/EthiopianTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/engine/ChronoElement;

    .line 1700
    invoke-virtual {v0, v1}, Lnet/time4j/calendar/EthiopianTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    .line 1701
    invoke-virtual {v0}, Lnet/time4j/calendar/EthiopianTime;->getMinute()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    .line 1702
    invoke-virtual {v0}, Lnet/time4j/calendar/EthiopianTime;->getSecond()I

    move-result v0

    add-int/2addr v1, v0

    .line 1703
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

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

    .line 1678
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1682
    invoke-direct {p0, p1}, Lnet/time4j/calendar/EthiopianTime$SPX;->readEthiopianTime(Ljava/io/ObjectInput;)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/EthiopianTime$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1685
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

    const/4 v0, 0x5

    .line 1670
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1671
    invoke-direct {p0, p1}, Lnet/time4j/calendar/EthiopianTime$SPX;->writeEthiopianTime(Ljava/io/ObjectOutput;)V

    return-void
.end method
