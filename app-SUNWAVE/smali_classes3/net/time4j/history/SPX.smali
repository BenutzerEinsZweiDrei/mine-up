.class final Lnet/time4j/history/SPX;
.super Ljava/lang/Object;
.source "SPX.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field static final VERSION_1:I = 0x1

.field static final VERSION_2:I = 0x2

.field static final VERSION_3:I = 0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient obj:Ljava/lang/Object;

.field private transient type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 57
    sput-object v0, Lnet/time4j/history/SPX;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lnet/time4j/history/SPX;->obj:Ljava/lang/Object;

    .line 89
    iput p2, p0, Lnet/time4j/history/SPX;->type:I

    return-void
.end method

.method private static getEnum(I)Lnet/time4j/history/internal/HistoricVariant;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 246
    invoke-static {}, Lnet/time4j/history/internal/HistoricVariant;->values()[Lnet/time4j/history/internal/HistoricVariant;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 247
    invoke-virtual {v3}, Lnet/time4j/history/internal/HistoricVariant;->getSerialValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_1
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown variant of chronological history."

    invoke-direct {p0, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readHistory(Ljava/io/DataInput;B)Lnet/time4j/history/ChronoHistory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0xf

    .line 224
    invoke-static {p2}, Lnet/time4j/history/SPX;->getEnum(I)Lnet/time4j/history/internal/HistoricVariant;

    move-result-object p2

    .line 226
    sget-object v0, Lnet/time4j/history/SPX$1;->$SwitchMap$net$time4j$history$internal$HistoricVariant:[I

    invoke-virtual {p2}, Lnet/time4j/history/internal/HistoricVariant;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 238
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide p1

    .line 239
    sget-object v0, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-static {p1, p2, v0}, Lnet/time4j/PlainDate;->of(JLnet/time4j/engine/EpochDays;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    return-object p1

    .line 236
    :cond_0
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofFirstGregorianReform()Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    return-object p1

    .line 234
    :cond_1
    invoke-static {}, Lnet/time4j/history/ChronoHistory;->ofSweden()Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    return-object p1

    .line 232
    :cond_2
    sget-object p1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/ChronoHistory;

    return-object p1

    .line 230
    :cond_3
    sget-object p1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    return-object p1

    .line 228
    :cond_4
    sget-object p1, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lnet/time4j/history/SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private static readTriennalState(Ljava/io/DataInput;)Lnet/time4j/history/AncientJulianLeapYears;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 261
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 263
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {v1}, Lnet/time4j/history/AncientJulianLeapYears;->of([I)Lnet/time4j/history/AncientJulianLeapYears;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private writeHistory(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lnet/time4j/history/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/history/ChronoHistory;

    .line 193
    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getHistoricVariant()Lnet/time4j/history/internal/HistoricVariant;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/history/internal/HistoricVariant;->getSerialValue()I

    move-result v1

    .line 195
    iget v2, p0, Lnet/time4j/history/SPX;->type:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    .line 198
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 200
    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getHistoricVariant()Lnet/time4j/history/internal/HistoricVariant;

    move-result-object v1

    sget-object v2, Lnet/time4j/history/internal/HistoricVariant;->SINGLE_CUTOVER_DATE:Lnet/time4j/history/internal/HistoricVariant;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 201
    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/history/CutOverEvent;

    iget-wide v1, v1, Lnet/time4j/history/CutOverEvent;->start:J

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 205
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->hasAncientJulianLeapYears()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getAncientJulianLeapYears()Lnet/time4j/history/AncientJulianLeapYears;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/history/AncientJulianLeapYears;->getPattern()[I

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/time4j/history/SPX;->EMPTY_INT_ARRAY:[I

    .line 208
    :goto_0
    array-length v2, v1

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 209
    :goto_1
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 210
    aget v2, v1, v3

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/time4j/history/NewYearStrategy;->writeToStream(Ljava/io/DataOutput;)V

    .line 214
    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->getEraPreference()Lnet/time4j/history/EraPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/time4j/history/EraPreference;->writeToStream(Ljava/io/DataOutput;)V

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 168
    invoke-direct {p0, p1, v0}, Lnet/time4j/history/SPX;->readHistory(Ljava/io/DataInput;B)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    .line 169
    invoke-static {p1}, Lnet/time4j/history/SPX;->readTriennalState(Ljava/io/DataInput;)Lnet/time4j/history/AncientJulianLeapYears;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0, v1}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/AncientJulianLeapYears;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    .line 173
    :cond_0
    invoke-static {p1}, Lnet/time4j/history/NewYearStrategy;->readFromStream(Ljava/io/DataInput;)Lnet/time4j/history/NewYearStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    .line 174
    invoke-static {p1}, Lnet/time4j/history/EraPreference;->readFromStream(Ljava/io/DataInput;)Lnet/time4j/history/EraPreference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/EraPreference;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    goto :goto_0

    .line 177
    :cond_1
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type."

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_2
    invoke-direct {p0, p1, v0}, Lnet/time4j/history/SPX;->readHistory(Ljava/io/DataInput;B)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    .line 162
    invoke-static {p1}, Lnet/time4j/history/SPX;->readTriennalState(Ljava/io/DataInput;)Lnet/time4j/history/AncientJulianLeapYears;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->with(Lnet/time4j/history/AncientJulianLeapYears;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0

    .line 158
    :cond_4
    invoke-direct {p0, p1, v0}, Lnet/time4j/history/SPX;->readHistory(Ljava/io/DataInput;B)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    .line 180
    :goto_0
    iput-object p1, p0, Lnet/time4j/history/SPX;->obj:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget v0, p0, Lnet/time4j/history/SPX;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type."

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lnet/time4j/history/SPX;->writeHistory(Ljava/io/DataOutput;)V

    return-void
.end method
