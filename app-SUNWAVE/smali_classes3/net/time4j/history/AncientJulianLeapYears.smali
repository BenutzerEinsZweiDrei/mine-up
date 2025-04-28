.class public final Lnet/time4j/history/AncientJulianLeapYears;
.super Ljava/lang/Object;
.source "AncientJulianLeapYears.java"


# static fields
.field private static final AD8:Lnet/time4j/history/HistoricDate;

.field private static final BC45:Lnet/time4j/history/HistoricDate;

.field private static final MJD_OF_AD8:J = -0xa50b5L

.field public static final SCALIGER:Lnet/time4j/history/AncientJulianLeapYears;

.field private static final SEQUENCE_SCALIGER:[I


# instance fields
.field private final calculus:Lnet/time4j/history/Calculus;

.field private final leaps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lnet/time4j/history/AncientJulianLeapYears;->SEQUENCE_SCALIGER:[I

    .line 53
    sget-object v1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v3}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v1

    sput-object v1, Lnet/time4j/history/AncientJulianLeapYears;->AD8:Lnet/time4j/history/HistoricDate;

    .line 54
    sget-object v1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    const/16 v2, 0x2d

    invoke-static {v1, v2, v3, v3}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v1

    sput-object v1, Lnet/time4j/history/AncientJulianLeapYears;->BC45:Lnet/time4j/history/HistoricDate;

    .line 69
    new-instance v1, Lnet/time4j/history/AncientJulianLeapYears;

    invoke-direct {v1, v0}, Lnet/time4j/history/AncientJulianLeapYears;-><init>([I)V

    sput-object v1, Lnet/time4j/history/AncientJulianLeapYears;->SCALIGER:Lnet/time4j/history/AncientJulianLeapYears;

    return-void

    :array_0
    .array-data 4
        0x2a
        0x27
        0x24
        0x21
        0x1e
        0x1b
        0x18
        0x15
        0x12
        0xf
        0xc
        0x9
    .end array-data
.end method

.method private varargs constructor <init>([I)V
    .locals 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 83
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 84
    aget v3, p1, v2

    sub-int/2addr v4, v3

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 88
    iput-object v0, p0, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    .line 90
    array-length v2, v0

    if-eqz v2, :cond_4

    .line 92
    aget v2, v0, v1

    const/16 v3, -0x2c

    if-lt v2, v3, :cond_3

    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_3

    .line 96
    aget v1, v0, v1

    .line 98
    :goto_1
    array-length v2, p1

    if-ge v4, v2, :cond_2

    .line 99
    aget v2, v0, v4

    if-eq v2, v1, :cond_1

    .line 102
    aget v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contains duplicates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    new-instance p1, Lnet/time4j/history/AncientJulianLeapYears$1;

    invoke-direct {p1, p0}, Lnet/time4j/history/AncientJulianLeapYears$1;-><init>(Lnet/time4j/history/AncientJulianLeapYears;)V

    iput-object p1, p0, Lnet/time4j/history/AncientJulianLeapYears;->calculus:Lnet/time4j/history/Calculus;

    return-void

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing leap years."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lnet/time4j/history/HistoricDate;
    .locals 1

    .line 48
    sget-object v0, Lnet/time4j/history/AncientJulianLeapYears;->AD8:Lnet/time4j/history/HistoricDate;

    return-object v0
.end method

.method static synthetic access$100()Lnet/time4j/history/HistoricDate;
    .locals 1

    .line 48
    sget-object v0, Lnet/time4j/history/AncientJulianLeapYears;->BC45:Lnet/time4j/history/HistoricDate;

    return-object v0
.end method

.method static synthetic access$200(Lnet/time4j/history/AncientJulianLeapYears;)[I
    .locals 0

    .line 48
    iget-object p0, p0, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    return-object p0
.end method

.method public static varargs of([I)Lnet/time4j/history/AncientJulianLeapYears;
    .locals 1

    .line 251
    sget-object v0, Lnet/time4j/history/AncientJulianLeapYears;->SEQUENCE_SCALIGER:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object p0, Lnet/time4j/history/AncientJulianLeapYears;->SCALIGER:Lnet/time4j/history/AncientJulianLeapYears;

    return-object p0

    .line 255
    :cond_0
    new-instance v0, Lnet/time4j/history/AncientJulianLeapYears;

    invoke-direct {v0, p0}, Lnet/time4j/history/AncientJulianLeapYears;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 264
    :cond_0
    instance-of v1, p1, Lnet/time4j/history/AncientJulianLeapYears;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 265
    check-cast p1, Lnet/time4j/history/AncientJulianLeapYears;

    .line 266
    iget-object v1, p0, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    iget-object p1, p1, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getCalculus()Lnet/time4j/history/Calculus;
    .locals 1

    .line 321
    iget-object v0, p0, Lnet/time4j/history/AncientJulianLeapYears;->calculus:Lnet/time4j/history/Calculus;

    return-object v0
.end method

.method getPattern()[I
    .locals 1

    .line 310
    iget-object v0, p0, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 276
    iget-object v0, p0, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 285
    :goto_0
    iget-object v2, p0, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_0
    iget-object v2, p0, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    aget v2, v2, v1

    rsub-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    const-string v3, "BC "

    .line 291
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "AD "

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v2, p0, Lnet/time4j/history/AncientJulianLeapYears;->leaps:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
