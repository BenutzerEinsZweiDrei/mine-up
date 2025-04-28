.class Lnet/time4j/calendar/HijriAlgorithm$Transformer;
.super Ljava/lang/Object;
.source "HijriAlgorithm.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HijriAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/HijriCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final adjustment:I

.field private final civil:Z

.field private final intercalaries:[I

.field private final variant:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[IZI)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->variant:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->intercalaries:[I

    .line 245
    iput-boolean p3, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->civil:Z

    .line 246
    iput p4, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->adjustment:I

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/calendar/HijriAlgorithm$Transformer;)Ljava/lang/String;
    .locals 0

    .line 223
    iget-object p0, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->variant:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lnet/time4j/calendar/HijriAlgorithm$Transformer;)[I
    .locals 0

    .line 223
    iget-object p0, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->intercalaries:[I

    return-object p0
.end method

.method static synthetic access$200(Lnet/time4j/calendar/HijriAlgorithm$Transformer;)Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->civil:Z

    return p0
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 444
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    .line 445
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 3

    .line 279
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    if-lt p2, p1, :cond_3

    .line 281
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$300()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-lt p3, p1, :cond_3

    const/16 v0, 0xc

    if-gt p3, v0, :cond_3

    const/16 v1, 0x1d

    const/16 v2, 0x1e

    if-ne p3, v0, :cond_1

    sub-int/2addr p2, p1

    .line 286
    rem-int/2addr p2, v2

    add-int/2addr p2, p1

    .line 287
    iget-object p1, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->intercalaries:[I

    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 290
    :cond_1
    rem-int/lit8 p3, p3, 0x2

    if-ne p3, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 282
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
    .locals 2

    .line 300
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    if-lt p2, p1, :cond_1

    .line 304
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$300()I

    move-result v0

    if-gt p2, v0, :cond_1

    sub-int/2addr p2, p1

    .line 308
    rem-int/lit8 p2, p2, 0x1e

    add-int/2addr p2, p1

    .line 309
    iget-object p1, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->intercalaries:[I

    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/16 p1, 0x163

    goto :goto_0

    :cond_0
    const/16 p1, 0x162

    :goto_0
    return p1

    .line 305
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: yearOfEra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong era: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMaximumSinceUTC()J
    .locals 4

    .line 437
    iget-boolean v0, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->civil:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$600()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$700()J

    move-result-wide v0

    :goto_0
    iget v2, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->adjustment:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 4

    .line 430
    iget-boolean v0, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->civil:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$400()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$500()J

    move-result-wide v0

    :goto_0
    iget v2, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->adjustment:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 2

    .line 260
    sget-object v0, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-lt p2, v1, :cond_0

    .line 263
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$300()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-lt p3, v1, :cond_0

    const/16 v0, 0xc

    if-gt p3, v0, :cond_0

    if-lt p4, v1, :cond_0

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p1

    if-gt p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)J
    .locals 2

    .line 223
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->transform(Lnet/time4j/calendar/HijriCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/HijriCalendar;)J
    .locals 11

    .line 385
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getYear()I

    move-result v0

    .line 386
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getMonth()Lnet/time4j/calendar/HijriMonth;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/calendar/HijriMonth;->getValue()I

    move-result v1

    .line 387
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getDayOfMonth()I

    move-result v2

    const/4 v3, 0x1

    if-lt v0, v3, :cond_8

    .line 389
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$300()I

    move-result v4

    if-gt v0, v4, :cond_8

    if-lt v1, v3, :cond_8

    const/16 v4, 0xc

    if-gt v1, v4, :cond_8

    if-lt v2, v3, :cond_8

    const/16 v5, 0x1e

    if-gt v2, v5, :cond_8

    sub-int/2addr v0, v3

    .line 393
    div-int/lit8 v6, v0, 0x1e

    int-to-long v6, v6

    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$800()J

    move-result-wide v8

    mul-long/2addr v6, v8

    .line 394
    rem-int/2addr v0, v5

    add-int/2addr v0, v3

    move v8, v3

    :goto_0
    if-ge v8, v0, :cond_1

    .line 397
    iget-object v9, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->intercalaries:[I

    invoke-static {v9, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-ltz v9, :cond_0

    const-wide/16 v9, 0x163

    goto :goto_1

    :cond_0
    const-wide/16 v9, 0x162

    :goto_1
    add-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v3, v1, :cond_3

    .line 405
    rem-int/lit8 v8, v3, 0x2

    if-nez v8, :cond_2

    const-wide/16 v8, 0x1d

    goto :goto_3

    :cond_2
    const-wide/16 v8, 0x1e

    :goto_3
    add-long/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-ne v2, v5, :cond_6

    if-ne v1, v4, :cond_4

    .line 413
    iget-object v3, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->intercalaries:[I

    .line 414
    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_5

    :cond_4
    if-eq v1, v4, :cond_6

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    goto :goto_4

    .line 417
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day-of-month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    int-to-long v0, v2

    add-long/2addr v6, v0

    .line 422
    iget-boolean p1, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->civil:Z

    if-eqz p1, :cond_7

    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$400()J

    move-result-wide v0

    goto :goto_5

    :cond_7
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$500()J

    move-result-wide v0

    :goto_5
    add-long/2addr v0, v6

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 423
    iget p1, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->adjustment:I

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    return-wide v0

    .line 390
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of supported range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 223
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->transform(J)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/HijriCalendar;
    .locals 7

    .line 316
    iget v0, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->adjustment:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 317
    iget-boolean v2, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->civil:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$400()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$500()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    .line 319
    iget-boolean v4, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->civil:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$600()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$700()J

    move-result-wide v4

    :goto_1
    cmp-long v4, v0, v4

    if-gtz v4, :cond_a

    .line 323
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide p1

    .line 329
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$800()J

    move-result-wide v0

    div-long v0, p1, v0

    const-wide/16 v2, 0x1e

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 330
    invoke-static {}, Lnet/time4j/calendar/HijriAlgorithm;->access$800()J

    move-result-wide v2

    rem-long/2addr p1, v2

    long-to-int p1, p1

    move p2, v1

    :goto_2
    const/16 v2, 0x1e

    if-ge p2, v2, :cond_3

    const/16 v3, 0x162

    .line 334
    iget-object v4, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->intercalaries:[I

    invoke-static {v4, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_2

    const/16 v3, 0x163

    :cond_2
    if-le p1, v3, :cond_3

    sub-int/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    move p2, v1

    move v3, p2

    :goto_3
    const/16 v4, 0x1d

    const/16 v5, 0xc

    if-ge p2, v5, :cond_5

    .line 347
    rem-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_4

    move v6, v4

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    if-le p1, v6, :cond_5

    sub-int/2addr p1, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr p1, v1

    if-ne v3, v5, :cond_7

    add-int/lit8 p2, v0, -0x1

    .line 362
    rem-int/2addr p2, v2

    add-int/2addr p2, v1

    .line 363
    iget-object v6, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->intercalaries:[I

    invoke-static {v6, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    if-ltz p2, :cond_6

    goto :goto_5

    :cond_6
    move v2, v4

    goto :goto_5

    .line 365
    :cond_7
    rem-int/lit8 p2, v3, 0x2

    if-ne p2, v1, :cond_6

    :goto_5
    if-le p1, v2, :cond_9

    add-int/lit8 v3, v3, 0x1

    if-le v3, v5, :cond_8

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_6

    :cond_8
    move p1, v1

    :cond_9
    move v1, v3

    .line 378
    :goto_6
    iget-object p2, p0, Lnet/time4j/calendar/HijriAlgorithm$Transformer;->variant:Ljava/lang/String;

    invoke-static {p2, v0, v1, p1}, Lnet/time4j/calendar/HijriCalendar;->of(Ljava/lang/String;III)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1

    .line 320
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of supported range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
