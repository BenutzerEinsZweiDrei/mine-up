.class public final Lnet/time4j/history/HistoricDate;
.super Ljava/lang/Object;
.source "HistoricDate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/history/HistoricDate;",
        ">;"
    }
.end annotation


# instance fields
.field private final dom:I

.field private final era:Lnet/time4j/history/HistoricEra;

.field private final month:I

.field private final yearOfEra:I


# direct methods
.method constructor <init>(Lnet/time4j/history/HistoricEra;III)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lnet/time4j/history/HistoricDate;->era:Lnet/time4j/history/HistoricEra;

    .line 72
    iput p2, p0, Lnet/time4j/history/HistoricDate;->yearOfEra:I

    .line 73
    iput p3, p0, Lnet/time4j/history/HistoricDate;->month:I

    .line 74
    iput p4, p0, Lnet/time4j/history/HistoricDate;->dom:I

    return-void
.end method

.method public static of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;
    .locals 6

    .line 113
    sget-object v4, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    sget-object v5, Lnet/time4j/history/NewYearStrategy;->DEFAULT:Lnet/time4j/history/NewYearStrategy;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;IIILnet/time4j/history/YearDefinition;Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/HistoricDate;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lnet/time4j/history/HistoricEra;IIILnet/time4j/history/YearDefinition;Lnet/time4j/history/NewYearStrategy;)Lnet/time4j/history/HistoricDate;
    .locals 9

    const-string v0, "Missing historic era."

    .line 161
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p3, v0, :cond_7

    const/16 v1, 0x1f

    if-gt p3, v1, :cond_7

    if-lt p2, v0, :cond_6

    const/16 v1, 0xc

    if-gt p2, v1, :cond_6

    .line 168
    sget-object v1, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    if-ne p0, v1, :cond_1

    if-ltz p1, :cond_0

    if-nez p1, :cond_2

    const/16 v1, 0x9

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Before creation of the world: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/history/HistoricDate;->toString(Lnet/time4j/history/HistoricEra;III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_1
    if-lt p1, v0, :cond_5

    .line 178
    :cond_2
    :goto_0
    sget-object v1, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    invoke-virtual {p4, v1}, Lnet/time4j/history/YearDefinition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 180
    invoke-virtual {p5, p0, p1}, Lnet/time4j/history/NewYearStrategy;->rule(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/NewYearRule;

    move-result-object v2

    .line 181
    sget-object v1, Lnet/time4j/history/YearDefinition;->AFTER_NEW_YEAR:Lnet/time4j/history/YearDefinition;

    if-ne p4, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v3, v0

    move-object v4, p5

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    .line 182
    invoke-virtual/range {v2 .. v8}, Lnet/time4j/history/NewYearRule;->standardYear(ZLnet/time4j/history/NewYearStrategy;Lnet/time4j/history/HistoricEra;III)I

    move-result p1

    .line 186
    :cond_4
    new-instance p4, Lnet/time4j/history/HistoricDate;

    invoke-direct {p4, p0, p1, p2, p3}, Lnet/time4j/history/HistoricDate;-><init>(Lnet/time4j/history/HistoricEra;III)V

    return-object p4

    .line 174
    :cond_5
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Year of era must be positive: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/history/HistoricDate;->toString(Lnet/time4j/history/HistoricEra;III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 166
    :cond_6
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Month out of range: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/history/HistoricDate;->toString(Lnet/time4j/history/HistoricEra;III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 163
    :cond_7
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day of month out of range: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p0, p1, p2, p3}, Lnet/time4j/history/HistoricDate;->toString(Lnet/time4j/history/HistoricEra;III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method private static toString(Lnet/time4j/history/HistoricEra;III)Ljava/lang/String;
    .locals 3

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    .line 356
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4

    :goto_0
    const/16 v2, 0x30

    if-lez v1, :cond_0

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    if-ge p2, p1, :cond_1

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p3, p1, :cond_2

    .line 369
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lnet/time4j/history/HistoricDate;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricDate;->compareTo(Lnet/time4j/history/HistoricDate;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/history/HistoricDate;)I
    .locals 4

    .line 294
    iget-object v0, p0, Lnet/time4j/history/HistoricDate;->era:Lnet/time4j/history/HistoricEra;

    iget v1, p0, Lnet/time4j/history/HistoricDate;->yearOfEra:I

    invoke-virtual {v0, v1}, Lnet/time4j/history/HistoricEra;->annoDomini(I)I

    move-result v0

    .line 295
    iget-object v1, p1, Lnet/time4j/history/HistoricDate;->era:Lnet/time4j/history/HistoricEra;

    iget v2, p1, Lnet/time4j/history/HistoricDate;->yearOfEra:I

    invoke-virtual {v1, v2}, Lnet/time4j/history/HistoricEra;->annoDomini(I)I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 303
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 306
    invoke-virtual {p0}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_2
    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 318
    :cond_0
    instance-of v1, p1, Lnet/time4j/history/HistoricDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 319
    check-cast p1, Lnet/time4j/history/HistoricDate;

    .line 320
    iget-object v1, p0, Lnet/time4j/history/HistoricDate;->era:Lnet/time4j/history/HistoricEra;

    iget-object v3, p1, Lnet/time4j/history/HistoricDate;->era:Lnet/time4j/history/HistoricEra;

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/history/HistoricDate;->yearOfEra:I

    iget v3, p1, Lnet/time4j/history/HistoricDate;->yearOfEra:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/history/HistoricDate;->month:I

    iget v3, p1, Lnet/time4j/history/HistoricDate;->month:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/history/HistoricDate;->dom:I

    iget p1, p1, Lnet/time4j/history/HistoricDate;->dom:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 287
    iget v0, p0, Lnet/time4j/history/HistoricDate;->dom:I

    return v0
.end method

.method public getEra()Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 204
    iget-object v0, p0, Lnet/time4j/history/HistoricDate;->era:Lnet/time4j/history/HistoricEra;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .line 269
    iget v0, p0, Lnet/time4j/history/HistoricDate;->month:I

    return v0
.end method

.method public getYearOfEra()I
    .locals 1

    .line 226
    iget v0, p0, Lnet/time4j/history/HistoricDate;->yearOfEra:I

    return v0
.end method

.method public getYearOfEra(Lnet/time4j/history/NewYearStrategy;)I
    .locals 0

    .line 251
    invoke-virtual {p1, p0}, Lnet/time4j/history/NewYearStrategy;->displayedYear(Lnet/time4j/history/HistoricDate;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 335
    iget v0, p0, Lnet/time4j/history/HistoricDate;->yearOfEra:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lnet/time4j/history/HistoricDate;->month:I

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    iget v1, p0, Lnet/time4j/history/HistoricDate;->dom:I

    add-int/2addr v0, v1

    .line 336
    iget-object v1, p0, Lnet/time4j/history/HistoricDate;->era:Lnet/time4j/history/HistoricEra;

    sget-object v2, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 343
    iget-object v0, p0, Lnet/time4j/history/HistoricDate;->era:Lnet/time4j/history/HistoricEra;

    iget v1, p0, Lnet/time4j/history/HistoricDate;->yearOfEra:I

    iget v2, p0, Lnet/time4j/history/HistoricDate;->month:I

    iget v3, p0, Lnet/time4j/history/HistoricDate;->dom:I

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/history/HistoricDate;->toString(Lnet/time4j/history/HistoricEra;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
