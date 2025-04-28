.class Lnet/time4j/calendar/PersianCalendar$SPX;
.super Ljava/lang/Object;
.source "PersianCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/PersianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final PERSIAN:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1999
    iput-object p1, p0, Lnet/time4j/calendar/PersianCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readPersian(Ljava/io/ObjectInput;)Lnet/time4j/calendar/PersianCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2045
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 2046
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 2047
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 2048
    invoke-static {v0, v1, p1}, Lnet/time4j/calendar/PersianCalendar;->of(III)Lnet/time4j/calendar/PersianCalendar;

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

    .line 2030
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writePersian(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2036
    iget-object v0, p0, Lnet/time4j/calendar/PersianCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/PersianCalendar;

    .line 2037
    invoke-virtual {v0}, Lnet/time4j/calendar/PersianCalendar;->getYear()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 2038
    invoke-virtual {v0}, Lnet/time4j/calendar/PersianCalendar;->getMonth()Lnet/time4j/calendar/PersianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/PersianMonth;->getValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2039
    invoke-virtual {v0}, Lnet/time4j/calendar/PersianCalendar;->getDayOfMonth()I

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

    .line 2016
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2020
    invoke-direct {p0, p1}, Lnet/time4j/calendar/PersianCalendar$SPX;->readPersian(Ljava/io/ObjectInput;)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/PersianCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 2023
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

    const/4 v0, 0x2

    .line 2008
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2009
    invoke-direct {p0, p1}, Lnet/time4j/calendar/PersianCalendar$SPX;->writePersian(Ljava/io/ObjectOutput;)V

    return-void
.end method
