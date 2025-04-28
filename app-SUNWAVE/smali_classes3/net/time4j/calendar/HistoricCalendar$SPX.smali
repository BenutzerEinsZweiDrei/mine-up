.class Lnet/time4j/calendar/HistoricCalendar$SPX;
.super Ljava/lang/Object;
.source "HistoricCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final HISTORIC:I = 0xb

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2037
    iput-object p1, p0, Lnet/time4j/calendar/HistoricCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readHistoric(Ljava/io/ObjectInput;)Lnet/time4j/calendar/HistoricCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2082
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 2083
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v1

    .line 2085
    sget-object p1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {v1, v2, p1}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    .line 2086
    const-class v1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p1, v1, v0}, Lnet/time4j/PlainDate;->transform(Ljava/lang/Class;Ljava/lang/String;)Lnet/time4j/engine/CalendarVariant;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2068
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeHistoric(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/HistoricCalendar;

    .line 2075
    invoke-virtual {v0}, Lnet/time4j/calendar/HistoricCalendar;->getHistory()Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 2076
    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/HistoricCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    invoke-virtual {v0}, Lnet/time4j/PlainDate;->getDaysSinceEpochUTC()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

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

    .line 2054
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2058
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$SPX;->readHistoric(Ljava/io/ObjectInput;)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/HistoricCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 2061
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

    const/16 v0, 0xb

    .line 2046
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2047
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$SPX;->writeHistoric(Ljava/io/ObjectOutput;)V

    return-void
.end method
