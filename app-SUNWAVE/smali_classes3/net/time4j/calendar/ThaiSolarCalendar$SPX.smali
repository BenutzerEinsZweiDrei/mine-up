.class Lnet/time4j/calendar/ThaiSolarCalendar$SPX;
.super Ljava/lang/Object;
.source "ThaiSolarCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ThaiSolarCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final THAI_SOLAR:I = 0x8

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    iput-object p1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private readThaiSolar(Ljava/io/ObjectInput;)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1424
    const-class v0, Lnet/time4j/PlainDate;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1425
    const-class v0, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->transform(Ljava/lang/Class;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    return-object p1
.end method

.method private writeThaiSolar(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Lnet/time4j/calendar/ThaiSolarCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/ThaiSolarCalendar;

    .line 1417
    invoke-virtual {v0}, Lnet/time4j/calendar/ThaiSolarCalendar;->toISO()Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

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

    .line 1396
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1400
    invoke-direct {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$SPX;->readThaiSolar(Ljava/io/ObjectInput;)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/ThaiSolarCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1403
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

    const/16 v0, 0x8

    .line 1388
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1389
    invoke-direct {p0, p1}, Lnet/time4j/calendar/ThaiSolarCalendar$SPX;->writeThaiSolar(Ljava/io/ObjectOutput;)V

    return-void
.end method
