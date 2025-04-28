.class final Lnet/time4j/calendar/frenchrev/SPX;
.super Ljava/lang/Object;
.source "SPX.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final FRENCH_REV:I = 0x12

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;

.field private transient type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lnet/time4j/calendar/frenchrev/SPX;->obj:Ljava/lang/Object;

    .line 76
    iput p2, p0, Lnet/time4j/calendar/frenchrev/SPX;->type:I

    return-void
.end method

.method private readFrenchRev(Ljava/io/ObjectInput;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 169
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result p1

    const/16 v1, 0x168

    if-gt p1, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 172
    div-int/lit8 v1, p1, 0x1e

    add-int/lit8 v1, v1, 0x1

    .line 173
    rem-int/lit8 p1, p1, 0x1e

    add-int/lit8 p1, p1, 0x1

    .line 174
    invoke-static {v0, v1, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(III)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v1

    .line 176
    invoke-static {p1}, Lnet/time4j/calendar/frenchrev/Sansculottides;->valueOf(I)Lnet/time4j/calendar/frenchrev/Sansculottides;

    move-result-object p1

    .line 177
    invoke-static {v0, p1}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(ILnet/time4j/calendar/frenchrev/Sansculottides;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

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

    .line 152
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeFrenchRev(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lnet/time4j/calendar/frenchrev/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    .line 160
    invoke-virtual {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getYear()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 161
    invoke-virtual {v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDayOfYear()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

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

    .line 138
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lnet/time4j/calendar/frenchrev/SPX;->readFrenchRev(Ljava/io/ObjectInput;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/frenchrev/SPX;->obj:Ljava/lang/Object;

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Unknown calendar type."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lnet/time4j/calendar/frenchrev/SPX;->type:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 110
    iget v0, p0, Lnet/time4j/calendar/frenchrev/SPX;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lnet/time4j/calendar/frenchrev/SPX;->writeFrenchRev(Ljava/io/ObjectOutput;)V

    return-void

    .line 115
    :cond_0
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unsupported calendar type."

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
