.class Lnet/time4j/calendar/EthiopianCalendar$SPX;
.super Ljava/lang/Object;
.source "EthiopianCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final ETHIOPIAN_DATE:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1796
    iput-object p1, p0, Lnet/time4j/calendar/EthiopianCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readEthiopianDate(Ljava/io/ObjectInput;)Lnet/time4j/calendar/EthiopianCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1843
    invoke-static {}, Lnet/time4j/calendar/EthiopianEra;->values()[Lnet/time4j/calendar/EthiopianEra;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    aget-object v0, v0, v1

    .line 1844
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 1845
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 1846
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 1847
    invoke-static {v0, v1, v2, p1}, Lnet/time4j/calendar/EthiopianCalendar;->of(Lnet/time4j/calendar/EthiopianEra;III)Lnet/time4j/calendar/EthiopianCalendar;

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

    .line 1827
    iget-object v0, p0, Lnet/time4j/calendar/EthiopianCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeEthiopianDate(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1833
    iget-object v0, p0, Lnet/time4j/calendar/EthiopianCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/EthiopianCalendar;

    .line 1834
    invoke-virtual {v0}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/EthiopianEra;->ordinal()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1835
    invoke-virtual {v0}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1836
    invoke-virtual {v0}, Lnet/time4j/calendar/EthiopianCalendar;->getMonth()Lnet/time4j/calendar/EthiopianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/EthiopianMonth;->getValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1837
    invoke-virtual {v0}, Lnet/time4j/calendar/EthiopianCalendar;->getDayOfMonth()I

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

    .line 1813
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1817
    invoke-direct {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$SPX;->readEthiopianDate(Ljava/io/ObjectInput;)Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/EthiopianCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1820
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

    const/4 v0, 0x4

    .line 1805
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1806
    invoke-direct {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$SPX;->writeEthiopianDate(Ljava/io/ObjectOutput;)V

    return-void
.end method
