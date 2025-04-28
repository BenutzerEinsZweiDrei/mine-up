.class Lnet/time4j/calendar/JulianCalendar$SPX;
.super Ljava/lang/Object;
.source "JulianCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final JULIAN:I = 0x7

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1750
    iput-object p1, p0, Lnet/time4j/calendar/JulianCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readJulian(Ljava/io/ObjectInput;)Lnet/time4j/calendar/JulianCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1796
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 1797
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 1798
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    .line 1799
    sget-object v3, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    goto :goto_0

    :cond_0
    sget-object v3, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    :goto_0
    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 1800
    :cond_1
    invoke-static {v2, v0}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result v0

    .line 1801
    :goto_1
    invoke-static {v3, v0, v1, p1}, Lnet/time4j/calendar/JulianCalendar;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/JulianCalendar;

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

    .line 1781
    iget-object v0, p0, Lnet/time4j/calendar/JulianCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeJulian(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lnet/time4j/calendar/JulianCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/JulianCalendar;

    .line 1788
    invoke-virtual {v0}, Lnet/time4j/calendar/JulianCalendar;->getProlepticYear()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1789
    invoke-virtual {v0}, Lnet/time4j/calendar/JulianCalendar;->getMonth()Lnet/time4j/Month;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/Month;->getValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1790
    invoke-virtual {v0}, Lnet/time4j/calendar/JulianCalendar;->getDayOfMonth()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

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

    .line 1767
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1771
    invoke-direct {p0, p1}, Lnet/time4j/calendar/JulianCalendar$SPX;->readJulian(Ljava/io/ObjectInput;)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/JulianCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1774
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

    const/4 v0, 0x7

    .line 1759
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1760
    invoke-direct {p0, p1}, Lnet/time4j/calendar/JulianCalendar$SPX;->writeJulian(Ljava/io/ObjectOutput;)V

    return-void
.end method
