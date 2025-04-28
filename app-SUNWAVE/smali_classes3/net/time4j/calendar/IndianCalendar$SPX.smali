.class Lnet/time4j/calendar/IndianCalendar$SPX;
.super Ljava/lang/Object;
.source "IndianCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/IndianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final INDIAN:I = 0xa

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1645
    iput-object p1, p0, Lnet/time4j/calendar/IndianCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readIndian(Ljava/io/ObjectInput;)Lnet/time4j/calendar/IndianCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1691
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 1692
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 1693
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 1694
    invoke-static {v0, v1, p1}, Lnet/time4j/calendar/IndianCalendar;->of(III)Lnet/time4j/calendar/IndianCalendar;

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

    .line 1676
    iget-object v0, p0, Lnet/time4j/calendar/IndianCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeIndian(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1682
    iget-object v0, p0, Lnet/time4j/calendar/IndianCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/IndianCalendar;

    .line 1683
    invoke-virtual {v0}, Lnet/time4j/calendar/IndianCalendar;->getYear()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1684
    invoke-virtual {v0}, Lnet/time4j/calendar/IndianCalendar;->getMonth()Lnet/time4j/calendar/IndianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/IndianMonth;->getValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1685
    invoke-virtual {v0}, Lnet/time4j/calendar/IndianCalendar;->getDayOfMonth()I

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

    .line 1662
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1666
    invoke-direct {p0, p1}, Lnet/time4j/calendar/IndianCalendar$SPX;->readIndian(Ljava/io/ObjectInput;)Lnet/time4j/calendar/IndianCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/IndianCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1669
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

    const/16 v0, 0xa

    .line 1654
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1655
    invoke-direct {p0, p1}, Lnet/time4j/calendar/IndianCalendar$SPX;->writeIndian(Ljava/io/ObjectOutput;)V

    return-void
.end method
