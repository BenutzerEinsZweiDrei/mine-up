.class Lnet/time4j/calendar/HijriCalendar$SPX;
.super Ljava/lang/Object;
.source "HijriCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HijriCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final HIJRI:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    iput-object p1, p0, Lnet/time4j/calendar/HijriCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readHijri(Ljava/io/ObjectInput;)Lnet/time4j/calendar/HijriCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2176
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 2177
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 2179
    invoke-static {v0}, Lnet/time4j/calendar/HijriCalendar;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2187
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 2188
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 2189
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 2190
    invoke-static {v0, v1, v2, p1}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1

    .line 2180
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hijri calendar object with different data version not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2159
    iget-object v0, p0, Lnet/time4j/calendar/HijriCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeHijri(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2165
    iget-object v0, p0, Lnet/time4j/calendar/HijriCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/HijriCalendar;

    .line 2166
    invoke-virtual {v0}, Lnet/time4j/calendar/HijriCalendar;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v0}, Lnet/time4j/calendar/HijriCalendar;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/calendar/HijriCalendar;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {v0}, Lnet/time4j/calendar/HijriCalendar;->getYear()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 2169
    invoke-virtual {v0}, Lnet/time4j/calendar/HijriCalendar;->getMonth()Lnet/time4j/calendar/HijriMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HijriMonth;->getValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2170
    invoke-virtual {v0}, Lnet/time4j/calendar/HijriCalendar;->getDayOfMonth()I

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

    .line 2145
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2149
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HijriCalendar$SPX;->readHijri(Ljava/io/ObjectInput;)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/HijriCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 2152
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

    const/4 v0, 0x1

    .line 2137
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2138
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HijriCalendar$SPX;->writeHijri(Ljava/io/ObjectOutput;)V

    return-void
.end method
