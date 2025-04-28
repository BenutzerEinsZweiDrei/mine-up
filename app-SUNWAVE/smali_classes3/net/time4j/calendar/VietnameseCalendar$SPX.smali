.class Lnet/time4j/calendar/VietnameseCalendar$SPX;
.super Ljava/lang/Object;
.source "VietnameseCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/VietnameseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final VIETNAMESE:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p1, p0, Lnet/time4j/calendar/VietnameseCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lnet/time4j/calendar/VietnameseCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private readVietnamese(Ljava/io/ObjectInput;)Lnet/time4j/calendar/VietnameseCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 945
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 946
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 947
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v3

    .line 948
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 950
    invoke-static {v2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    if-eqz v3, :cond_0

    .line 953
    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    .line 956
    :cond_0
    invoke-static {v0, v1, v2, p1}, Lnet/time4j/calendar/VietnameseCalendar;->of(IILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/VietnameseCalendar;

    move-result-object p1

    return-object p1
.end method

.method private writeVietnamese(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lnet/time4j/calendar/VietnameseCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/EastAsianCalendar;

    .line 934
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 935
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 936
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 937
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 938
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getDayOfMonth()I

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

    .line 913
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 917
    invoke-direct {p0, p1}, Lnet/time4j/calendar/VietnameseCalendar$SPX;->readVietnamese(Ljava/io/ObjectInput;)Lnet/time4j/calendar/VietnameseCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/VietnameseCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 920
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

    const/16 v0, 0x10

    .line 905
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 906
    invoke-direct {p0, p1}, Lnet/time4j/calendar/VietnameseCalendar$SPX;->writeVietnamese(Ljava/io/ObjectOutput;)V

    return-void
.end method
