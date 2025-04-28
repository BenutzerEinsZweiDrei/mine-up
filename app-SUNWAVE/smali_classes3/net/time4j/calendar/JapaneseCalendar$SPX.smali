.class Lnet/time4j/calendar/JapaneseCalendar$SPX;
.super Ljava/lang/Object;
.source "JapaneseCalendar.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SPX"
.end annotation


# static fields
.field private static final JAPANESE:I = 0x9

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2914
    iput-object p1, p0, Lnet/time4j/calendar/JapaneseCalendar$SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method private readJapanese(Ljava/io/ObjectInput;)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2959
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 2960
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    .line 2961
    invoke-static {v0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->transform(II)J

    move-result-wide v0

    .line 2962
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/TimeAxis;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2945
    iget-object v0, p0, Lnet/time4j/calendar/JapaneseCalendar$SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private writeJapanese(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2951
    iget-object v0, p0, Lnet/time4j/calendar/JapaneseCalendar$SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/calendar/JapaneseCalendar;

    .line 2952
    invoke-virtual {v0}, Lnet/time4j/calendar/JapaneseCalendar;->getYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lnet/time4j/calendar/JapaneseCalendar;->getEra()Lnet/time4j/calendar/Nengo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 2953
    invoke-virtual {v0}, Lnet/time4j/calendar/JapaneseCalendar;->getDayOfYear()I

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

    .line 2931
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2935
    invoke-direct {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$SPX;->readJapanese(Ljava/io/ObjectInput;)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/JapaneseCalendar$SPX;->obj:Ljava/lang/Object;

    return-void

    .line 2938
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

    const/16 v0, 0x9

    .line 2923
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 2924
    invoke-direct {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$SPX;->writeJapanese(Ljava/io/ObjectOutput;)V

    return-void
.end method
