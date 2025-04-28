.class final Lnet/time4j/calendar/bahai/SPX;
.super Ljava/lang/Object;
.source "SPX.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final BAHAI:I = 0x13

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
    iput-object p1, p0, Lnet/time4j/calendar/bahai/SPX;->obj:Ljava/lang/Object;

    .line 76
    iput p2, p0, Lnet/time4j/calendar/bahai/SPX;->type:I

    return-void
.end method

.method private readBahai(Ljava/io/ObjectInput;)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 170
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 172
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    .line 173
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    if-nez v3, :cond_0

    .line 175
    sget-object v3, Lnet/time4j/calendar/bahai/BadiIntercalaryDays;->AYYAM_I_HA:Lnet/time4j/calendar/bahai/BadiIntercalaryDays;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lnet/time4j/calendar/bahai/BadiMonth;->valueOf(I)Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object v3

    :goto_0
    check-cast v3, Lnet/time4j/calendar/bahai/BadiDivision;

    .line 176
    invoke-static {v0, v1, v2, v3, p1}, Lnet/time4j/calendar/bahai/BadiCalendar;->ofComplete(IIILnet/time4j/calendar/bahai/BadiDivision;I)Lnet/time4j/calendar/bahai/BadiCalendar;

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

    .line 150
    iget-object v0, p0, Lnet/time4j/calendar/bahai/SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeBahai(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lnet/time4j/calendar/bahai/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/bahai/BadiCalendar;

    .line 158
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getKullishai()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 159
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getVahid()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 160
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getYearOfVahid()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 161
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar;->hasMonth()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getMonth()Lnet/time4j/calendar/bahai/BadiMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/bahai/BadiMonth;->getValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 162
    invoke-virtual {v0}, Lnet/time4j/calendar/bahai/BadiCalendar;->getDayOfDivision()I

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

    .line 136
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lnet/time4j/calendar/bahai/SPX;->readBahai(Ljava/io/ObjectInput;)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/bahai/SPX;->obj:Ljava/lang/Object;

    return-void

    .line 143
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
    iget v0, p0, Lnet/time4j/calendar/bahai/SPX;->type:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 110
    iget v0, p0, Lnet/time4j/calendar/bahai/SPX;->type:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lnet/time4j/calendar/bahai/SPX;->writeBahai(Ljava/io/ObjectOutput;)V

    return-void

    .line 115
    :cond_0
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unsupported calendar type."

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
