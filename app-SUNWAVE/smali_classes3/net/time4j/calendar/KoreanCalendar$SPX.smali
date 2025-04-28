.class Lnet/time4j/calendar/KoreanCalendar$SPX;
.super Ljava/lang/Object;
.source "KoreanCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/KoreanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final KOREAN:I = 0xf

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput-object p1, p0, Lnet/time4j/calendar/KoreanCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readKorean(Ljava/io/ObjectInput;)Lnet/time4j/calendar/KoreanCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1124
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 1125
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v1

    .line 1126
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v2

    .line 1127
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v3

    .line 1128
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result p1

    .line 1130
    invoke-static {v2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    if-eqz v3, :cond_0

    .line 1133
    invoke-virtual {v2}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v2

    .line 1136
    :cond_0
    invoke-static {v0, v1, v2, p1}, Lnet/time4j/calendar/KoreanCalendar;->of(IILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/KoreanCalendar;

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

    .line 1107
    iget-object v0, p0, Lnet/time4j/calendar/KoreanCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeKorean(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lnet/time4j/calendar/KoreanCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/EastAsianCalendar;

    .line 1114
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1115
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1116
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1117
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1118
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

    .line 1093
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 1097
    invoke-direct {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$SPX;->readKorean(Ljava/io/ObjectInput;)Lnet/time4j/calendar/KoreanCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/KoreanCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 1100
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

    const/16 v0, 0xf

    .line 1085
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1086
    invoke-direct {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$SPX;->writeKorean(Ljava/io/ObjectOutput;)V

    return-void
.end method
