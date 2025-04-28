.class final Lnet/time4j/calendar/hindu/SPX;
.super Ljava/lang/Object;
.source "SPX.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final HINDU_CAL:I = 0x14

.field static final HINDU_VAR:I = 0x15

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;

.field private transient type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lnet/time4j/calendar/hindu/SPX;->obj:Ljava/lang/Object;

    .line 79
    iput p2, p0, Lnet/time4j/calendar/hindu/SPX;->type:I

    return-void
.end method

.method private readHinduCalendar(Ljava/io/ObjectInput;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->from(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v0

    .line 176
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v1

    .line 177
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lnet/time4j/calendar/hindu/HinduCS;->transform(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method private readHinduVariant(Ljava/io/ObjectInput;)Lnet/time4j/calendar/hindu/HinduVariant;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/calendar/hindu/HinduVariant;->from(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduVariant;

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

    .line 159
    iget-object v0, p0, Lnet/time4j/calendar/hindu/SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeHinduCalendar(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lnet/time4j/calendar/hindu/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/hindu/HinduCalendar;

    .line 167
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    return-void
.end method

.method private writeHinduVariant(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lnet/time4j/calendar/hindu/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/hindu/HinduVariant;

    .line 185
    invoke-virtual {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

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

    .line 142
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/SPX;->readHinduVariant(Ljava/io/ObjectInput;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/hindu/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Unknown calendar type."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/SPX;->readHinduCalendar(Ljava/io/ObjectInput;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/hindu/SPX;->obj:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget v0, p0, Lnet/time4j/calendar/hindu/SPX;->type:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 113
    iget v0, p0, Lnet/time4j/calendar/hindu/SPX;->type:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/SPX;->writeHinduVariant(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unsupported calendar type."

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    invoke-direct {p0, p1}, Lnet/time4j/calendar/hindu/SPX;->writeHinduCalendar(Ljava/io/ObjectOutput;)V

    :goto_0
    return-void
.end method
