.class Lnet/time4j/calendar/HebrewTime$SPX;
.super Ljava/lang/Object;
.source "HebrewTime.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final HEBREW_TIME:I = 0xd

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1395
    iput-object p1, p0, Lnet/time4j/calendar/HebrewTime$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readHebrewTime(Ljava/io/ObjectInput;)Lnet/time4j/calendar/HebrewTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1440
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 1441
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result p1

    .line 1443
    invoke-static {v0, p1}, Lnet/time4j/calendar/HebrewTime;->ofDigital(II)Lnet/time4j/calendar/HebrewTime;

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

    .line 1426
    iget-object v0, p0, Lnet/time4j/calendar/HebrewTime$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeHebrewTime(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1432
    iget-object v0, p0, Lnet/time4j/calendar/HebrewTime$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/HebrewTime;

    .line 1433
    invoke-virtual {v0}, Lnet/time4j/calendar/HebrewTime;->getDigitalHour()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1434
    invoke-virtual {v0}, Lnet/time4j/calendar/HebrewTime;->getPart()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

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

    .line 1412
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1416
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HebrewTime$SPX;->readHebrewTime(Ljava/io/ObjectInput;)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/HebrewTime$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1419
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

    const/16 v0, 0xd

    .line 1404
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1405
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HebrewTime$SPX;->writeHebrewTime(Ljava/io/ObjectOutput;)V

    return-void
.end method
