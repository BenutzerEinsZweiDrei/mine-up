.class Lnet/time4j/calendar/JucheCalendar$SPX;
.super Ljava/lang/Object;
.source "JucheCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JucheCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final JUCHE:I = 0x11

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    iput-object p1, p0, Lnet/time4j/calendar/JucheCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readJuche(Ljava/io/ObjectInput;)Lnet/time4j/calendar/JucheCalendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1263
    const-class v0, Lnet/time4j/PlainDate;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    .line 1264
    new-instance v0, Lnet/time4j/calendar/JucheCalendar;

    invoke-direct {v0, p1}, Lnet/time4j/calendar/JucheCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeJuche(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lnet/time4j/calendar/JucheCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/JucheCalendar;

    .line 1256
    invoke-virtual {v0}, Lnet/time4j/calendar/JucheCalendar;->toISO()Lnet/time4j/PlainDate;

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

    .line 1235
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 1239
    invoke-direct {p0, p1}, Lnet/time4j/calendar/JucheCalendar$SPX;->readJuche(Ljava/io/ObjectInput;)Lnet/time4j/calendar/JucheCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/JucheCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1242
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

    const/16 v0, 0x11

    .line 1227
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1228
    invoke-direct {p0, p1}, Lnet/time4j/calendar/JucheCalendar$SPX;->writeJuche(Ljava/io/ObjectOutput;)V

    return-void
.end method
