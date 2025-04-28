.class Lnet/time4j/calendar/HebrewCalendar$SPX;
.super Ljava/lang/Object;
.source "HebrewCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final HEBREW_DATE:I = 0xc

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2118
    iput-object p1, p0, Lnet/time4j/calendar/HebrewCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readHebrewDate(Ljava/io/ObjectInput;)Lnet/time4j/calendar/HebrewCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2164
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 2165
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    invoke-static {v1}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    .line 2166
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 2167
    invoke-static {v0, v1, p1}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

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

    .line 2149
    iget-object v0, p0, Lnet/time4j/calendar/HebrewCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeHebrewDate(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2155
    iget-object v0, p0, Lnet/time4j/calendar/HebrewCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/HebrewCalendar;

    .line 2156
    invoke-virtual {v0}, Lnet/time4j/calendar/HebrewCalendar;->getYear()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 2157
    invoke-virtual {v0}, Lnet/time4j/calendar/HebrewCalendar;->getMonth()Lnet/time4j/calendar/HebrewMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2158
    invoke-virtual {v0}, Lnet/time4j/calendar/HebrewCalendar;->getDayOfMonth()I

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

    .line 2135
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2139
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$SPX;->readHebrewDate(Ljava/io/ObjectInput;)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/HebrewCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 2142
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

    const/16 v0, 0xc

    .line 2127
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2128
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$SPX;->writeHebrewDate(Ljava/io/ObjectOutput;)V

    return-void
.end method
