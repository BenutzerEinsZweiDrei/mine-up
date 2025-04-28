.class Lnet/time4j/calendar/CopticCalendar$SPX;
.super Ljava/lang/Object;
.source "CopticCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/CopticCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final COPTIC:I = 0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1563
    iput-object p1, p0, Lnet/time4j/calendar/CopticCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readCoptic(Ljava/io/ObjectInput;)Lnet/time4j/calendar/CopticCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1609
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 1610
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 1611
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 1612
    invoke-static {v0, v1, p1}, Lnet/time4j/calendar/CopticCalendar;->of(III)Lnet/time4j/calendar/CopticCalendar;

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

    .line 1594
    iget-object v0, p0, Lnet/time4j/calendar/CopticCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeCoptic(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1600
    iget-object v0, p0, Lnet/time4j/calendar/CopticCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/CopticCalendar;

    .line 1601
    invoke-virtual {v0}, Lnet/time4j/calendar/CopticCalendar;->getYear()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1602
    invoke-virtual {v0}, Lnet/time4j/calendar/CopticCalendar;->getMonth()Lnet/time4j/calendar/CopticMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/CopticMonth;->getValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1603
    invoke-virtual {v0}, Lnet/time4j/calendar/CopticCalendar;->getDayOfMonth()I

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

    .line 1580
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1584
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CopticCalendar$SPX;->readCoptic(Ljava/io/ObjectInput;)Lnet/time4j/calendar/CopticCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/CopticCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1587
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

    const/4 v0, 0x3

    .line 1572
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1573
    invoke-direct {p0, p1}, Lnet/time4j/calendar/CopticCalendar$SPX;->writeCoptic(Ljava/io/ObjectOutput;)V

    return-void
.end method
