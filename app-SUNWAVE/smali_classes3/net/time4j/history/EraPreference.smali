.class public final Lnet/time4j/history/EraPreference;
.super Ljava/lang/Object;
.source "EraPreference.java"


# static fields
.field private static final AD1:Lnet/time4j/history/HistoricDate;

.field private static final BC38:Lnet/time4j/history/HistoricDate;

.field static final DEFAULT:Lnet/time4j/history/EraPreference;

.field private static final NON_DEFAULT_MARKER:I = 0x7f

.field private static final PROTOTYPE:Lnet/time4j/PlainDate;


# instance fields
.field private final end:Lnet/time4j/PlainDate;

.field private final era:Lnet/time4j/history/HistoricEra;

.field private final start:Lnet/time4j/PlainDate;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lnet/time4j/history/EraPreference;

    invoke-direct {v0}, Lnet/time4j/history/EraPreference;-><init>()V

    sput-object v0, Lnet/time4j/history/EraPreference;->DEFAULT:Lnet/time4j/history/EraPreference;

    .line 49
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    sput-object v0, Lnet/time4j/history/EraPreference;->AD1:Lnet/time4j/history/HistoricDate;

    .line 50
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    const/16 v2, 0x26

    invoke-static {v0, v2, v1, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    sput-object v0, Lnet/time4j/history/EraPreference;->BC38:Lnet/time4j/history/HistoricDate;

    const/16 v0, 0x7d0

    .line 52
    invoke-static {v0, v1}, Lnet/time4j/PlainDate;->of(II)Lnet/time4j/PlainDate;

    move-result-object v0

    sput-object v0, Lnet/time4j/history/EraPreference;->PROTOTYPE:Lnet/time4j/PlainDate;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    .line 66
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    iput-object v0, p0, Lnet/time4j/history/EraPreference;->start:Lnet/time4j/PlainDate;

    .line 67
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMaximum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    iput-object v0, p0, Lnet/time4j/history/EraPreference;->end:Lnet/time4j/PlainDate;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/history/HistoricEra;Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    invoke-virtual {p1, v0}, Lnet/time4j/history/HistoricEra;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_1

    .line 80
    invoke-virtual {p3, p2}, Lnet/time4j/PlainDate;->isBefore(Lnet/time4j/engine/CalendarDate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iput-object p1, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    .line 85
    iput-object p2, p0, Lnet/time4j/history/EraPreference;->start:Lnet/time4j/PlainDate;

    .line 86
    iput-object p3, p0, Lnet/time4j/history/EraPreference;->end:Lnet/time4j/PlainDate;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End before start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Lnet/time4j/history/HistoricEra;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static abUrbeCondita()Lnet/time4j/history/EraPreference;
    .locals 1

    .line 208
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMaximum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    invoke-static {v0}, Lnet/time4j/history/EraPreference;->abUrbeConditaUntil(Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object v0

    return-object v0
.end method

.method public static abUrbeConditaBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;
    .locals 2

    .line 258
    new-instance v0, Lnet/time4j/history/EraPreference;

    sget-object v1, Lnet/time4j/history/HistoricEra;->AB_URBE_CONDITA:Lnet/time4j/history/HistoricEra;

    invoke-direct {v0, v1, p0, p1}, Lnet/time4j/history/EraPreference;-><init>(Lnet/time4j/history/HistoricEra;Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)V

    return-object v0
.end method

.method public static abUrbeConditaUntil(Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;
    .locals 1

    .line 231
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    invoke-static {v0, p0}, Lnet/time4j/history/EraPreference;->abUrbeConditaBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object p0

    return-object p0
.end method

.method public static byzantineBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;
    .locals 2

    .line 188
    new-instance v0, Lnet/time4j/history/EraPreference;

    sget-object v1, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    invoke-direct {v0, v1, p0, p1}, Lnet/time4j/history/EraPreference;-><init>(Lnet/time4j/history/HistoricEra;Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)V

    return-object v0
.end method

.method public static byzantineUntil(Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;
    .locals 1

    .line 161
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    invoke-static {v0, p0}, Lnet/time4j/history/EraPreference;->byzantineBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object p0

    return-object p0
.end method

.method public static hispanicBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;
    .locals 2

    .line 138
    new-instance v0, Lnet/time4j/history/EraPreference;

    sget-object v1, Lnet/time4j/history/HistoricEra;->HISPANIC:Lnet/time4j/history/HistoricEra;

    invoke-direct {v0, v1, p0, p1}, Lnet/time4j/history/EraPreference;-><init>(Lnet/time4j/history/HistoricEra;Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)V

    return-object v0
.end method

.method public static hispanicUntil(Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;
    .locals 1

    .line 111
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    invoke-static {v0, p0}, Lnet/time4j/history/EraPreference;->hispanicBetween(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/EraPreference;

    move-result-object p0

    return-object p0
.end method

.method static readFromStream(Ljava/io/DataInput;)Lnet/time4j/history/EraPreference;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 357
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/history/HistoricEra;->valueOf(Ljava/lang/String;)Lnet/time4j/history/HistoricEra;

    move-result-object v0

    .line 358
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    .line 359
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    .line 361
    new-instance p0, Lnet/time4j/history/EraPreference;

    sget-object v5, Lnet/time4j/history/EraPreference;->PROTOTYPE:Lnet/time4j/PlainDate;

    sget-object v6, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 363
    invoke-virtual {v5, v6, v1, v2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    check-cast v1, Lnet/time4j/PlainDate;

    sget-object v2, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    .line 364
    invoke-virtual {v5, v2, v3, v4}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;J)Lnet/time4j/engine/ChronoEntity;

    move-result-object v2

    check-cast v2, Lnet/time4j/PlainDate;

    invoke-direct {p0, v0, v1, v2}, Lnet/time4j/history/EraPreference;-><init>(Lnet/time4j/history/HistoricEra;Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)V

    return-object p0

    .line 367
    :cond_0
    sget-object p0, Lnet/time4j/history/EraPreference;->DEFAULT:Lnet/time4j/history/EraPreference;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 267
    :cond_0
    instance-of v1, p1, Lnet/time4j/history/EraPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 268
    check-cast p1, Lnet/time4j/history/EraPreference;

    .line 269
    sget-object v1, Lnet/time4j/history/EraPreference;->DEFAULT:Lnet/time4j/history/EraPreference;

    if-ne p0, v1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 272
    :cond_2
    iget-object v1, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    iget-object v3, p1, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lnet/time4j/history/EraPreference;->start:Lnet/time4j/PlainDate;

    iget-object v3, p1, Lnet/time4j/history/EraPreference;->start:Lnet/time4j/PlainDate;

    .line 274
    invoke-virtual {v1, v3}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/time4j/history/EraPreference;->end:Lnet/time4j/PlainDate;

    iget-object p1, p1, Lnet/time4j/history/EraPreference;->end:Lnet/time4j/PlainDate;

    .line 275
    invoke-virtual {v1, p1}, Lnet/time4j/PlainDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method getPreferredEra(Lnet/time4j/history/HistoricDate;Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 327
    iget-object v0, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/time4j/history/EraPreference;->start:Lnet/time4j/PlainDate;

    invoke-virtual {p2, v0}, Lnet/time4j/PlainDate;->isBefore(Lnet/time4j/engine/CalendarDate;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/time4j/history/EraPreference;->end:Lnet/time4j/PlainDate;

    invoke-virtual {p2, v0}, Lnet/time4j/PlainDate;->isAfter(Lnet/time4j/engine/CalendarDate;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object p2, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    sget-object v0, Lnet/time4j/history/HistoricEra;->HISPANIC:Lnet/time4j/history/HistoricEra;

    if-ne p2, v0, :cond_1

    sget-object p2, Lnet/time4j/history/EraPreference;->BC38:Lnet/time4j/history/HistoricDate;

    invoke-virtual {p1, p2}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p1

    if-gez p1, :cond_1

    .line 330
    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    return-object p1

    .line 332
    :cond_1
    iget-object p1, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    return-object p1

    .line 328
    :cond_2
    :goto_0
    sget-object p2, Lnet/time4j/history/EraPreference;->AD1:Lnet/time4j/history/HistoricDate;

    invoke-virtual {p1, p2}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p1

    if-gez p1, :cond_3

    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    goto :goto_1

    :cond_3
    sget-object p1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 287
    iget-object v0, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v0}, Lnet/time4j/history/HistoricEra;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lnet/time4j/history/EraPreference;->start:Lnet/time4j/PlainDate;

    invoke-virtual {v1}, Lnet/time4j/PlainDate;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/time4j/history/EraPreference;->end:Lnet/time4j/PlainDate;

    invoke-virtual {v1}, Lnet/time4j/PlainDate;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    sget-object v1, Lnet/time4j/history/EraPreference;->DEFAULT:Lnet/time4j/history/EraPreference;

    if-ne p0, v1, :cond_0

    const-string v1, "default"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "era->"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",start->"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lnet/time4j/history/EraPreference;->start:Lnet/time4j/PlainDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",end->"

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-object v1, p0, Lnet/time4j/history/EraPreference;->end:Lnet/time4j/PlainDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x5d

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToStream(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    sget-object v0, Lnet/time4j/history/EraPreference;->DEFAULT:Lnet/time4j/history/EraPreference;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    .line 341
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    .line 343
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 344
    iget-object v0, p0, Lnet/time4j/history/EraPreference;->era:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v0}, Lnet/time4j/history/HistoricEra;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lnet/time4j/history/EraPreference;->start:Lnet/time4j/PlainDate;

    sget-object v1, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 346
    iget-object v0, p0, Lnet/time4j/history/EraPreference;->end:Lnet/time4j/PlainDate;

    sget-object v1, Lnet/time4j/engine/EpochDays;->MODIFIED_JULIAN_DATE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :goto_0
    return-void
.end method
