.class final Lnet/time4j/history/HistoricIntegerElement;
.super Lnet/time4j/history/internal/StdHistoricalElement;
.source "HistoricIntegerElement.java"

# interfaces
.implements Lnet/time4j/format/internal/DualFormatElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/history/HistoricIntegerElement$Rule;
    }
.end annotation


# static fields
.field static final CENTURY_INDEX:I = 0x8

.field static final DAY_OF_MONTH_INDEX:I = 0x4

.field static final DAY_OF_YEAR_INDEX:I = 0x5

.field static final MONTH_INDEX:I = 0x3

.field static final YEAR_AFTER_INDEX:I = 0x6

.field static final YEAR_BEFORE_INDEX:I = 0x7

.field static final YEAR_OF_ERA_INDEX:I = 0x2

.field private static final serialVersionUID:J = -0x57320d091e13d96cL


# instance fields
.field private final history:Lnet/time4j/history/ChronoHistory;

.field private final transient index:I


# direct methods
.method constructor <init>(CIILnet/time4j/history/ChronoHistory;I)V
    .locals 1

    .line 96
    invoke-static {p5}, Lnet/time4j/history/HistoricIntegerElement;->toName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/time4j/history/internal/StdHistoricalElement;-><init>(Ljava/lang/String;CII)V

    .line 98
    iput-object p4, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    .line 99
    iput p5, p0, Lnet/time4j/history/HistoricIntegerElement;->index:I

    return-void
.end method

.method private checkLength(Ljava/lang/String;I)V
    .locals 3

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Lnet/time4j/history/HistoricIntegerElement;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be printed as the formatted value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exceeds the maximum width of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dual(Lnet/time4j/format/NumberSystem;CIII)Ljava/lang/String;
    .locals 3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    invoke-virtual {p1, p3}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p1}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x64

    if-lt p4, v1, :cond_1

    .line 370
    invoke-static {p3, v1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p3

    invoke-static {p4, v1}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 372
    invoke-static {p4, v1}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result p3

    const/16 p4, 0xa

    if-ge p3, p4, :cond_0

    .line 374
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    invoke-virtual {p1, p3}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p1, p4}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :goto_0
    invoke-virtual {p1}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p5, p2}, Lnet/time4j/history/HistoricIntegerElement;->pad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 384
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAncientYear(III)I
    .locals 2

    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    if-lt p1, v0, :cond_1

    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    move v0, v1

    .line 346
    :cond_0
    invoke-static {p1, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p3, :cond_1

    .line 347
    invoke-static {p1, v0}, Lnet/time4j/base/MathUtils;->floorDivide(II)I

    move-result p1

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method private monthAccessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;
    .locals 3

    .line 433
    sget-object v0, Lnet/time4j/format/Attributes;->LANGUAGE:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {p1, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object v0

    .line 434
    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    invoke-interface {p1, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/format/TextWidth;

    .line 435
    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/CalendarText;->getStdMonths(Lnet/time4j/format/TextWidth;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object p1

    return-object p1
.end method

.method private static pad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3

    .line 395
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-object p0

    .line 401
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 404
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseNum(Lnet/time4j/format/NumberSystem;CLjava/lang/CharSequence;ILjava/text/ParsePosition;Lnet/time4j/format/Leniency;)I
    .locals 9

    .line 451
    invoke-virtual {p0}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_7

    .line 454
    sget-object v0, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    if-ne p0, v0, :cond_0

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_0

    add-int/lit8 v0, p3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v0, p3

    move v4, v1

    .line 459
    :goto_0
    invoke-virtual {p5}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    add-int/lit8 p0, v0, 0x9

    .line 461
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p5

    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p0

    move p5, v0

    :goto_2
    if-ge v0, p0, :cond_3

    .line 462
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v5, p1

    const-wide/16 v6, 0xa

    const/16 v8, 0x9

    if-ltz v5, :cond_2

    if-gt v5, v8, :cond_2

    mul-long/2addr v2, v6

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    if-eq p1, v1, :cond_3

    .line 467
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    sub-int/2addr p1, v1

    if-ltz p1, :cond_3

    if-gt p1, v8, :cond_3

    mul-long/2addr v2, v6

    int-to-long v5, p1

    add-long/2addr v2, v5

    add-int/lit8 p5, p5, 0x1

    move p1, v1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v2, p0

    if-lez p0, :cond_4

    .line 481
    invoke-virtual {p4, p3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/high16 p0, -0x80000000

    return p0

    :cond_4
    if-eqz v4, :cond_6

    add-int/lit8 p0, p3, 0x1

    if-ne p5, p0, :cond_5

    goto :goto_5

    .line 487
    :cond_5
    invoke-static {v2, v3}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide p0

    move-wide v2, p0

    :cond_6
    move p3, p5

    goto :goto_5

    .line 493
    :cond_7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    move v0, p3

    :goto_4
    if-ge v0, p1, :cond_8

    .line 494
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lnet/time4j/format/NumberSystem;->contains(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    if-lez v1, :cond_9

    add-int/2addr v1, p3

    .line 502
    invoke-interface {p2, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, Lnet/time4j/format/NumberSystem;->toInteger(Ljava/lang/String;Lnet/time4j/format/Leniency;)I

    move-result p0

    int-to-long v2, p0

    move p3, v1

    .line 507
    :cond_9
    :goto_5
    invoke-virtual {p4, p3}, Ljava/text/ParsePosition;->setIndex(I)V

    long-to-int p0, v2

    return p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lnet/time4j/history/HistoricIntegerElement;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YEAR_OF_ERA"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "HISTORIC_MONTH"

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "HISTORIC_DAY_OF_MONTH"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->dayOfMonth()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "HISTORIC_DAY_OF_YEAR"

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 546
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->dayOfYear()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "YEAR_AFTER"

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 548
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/history/YearDefinition;->AFTER_NEW_YEAR:Lnet/time4j/history/YearDefinition;

    invoke-virtual {v0, v1}, Lnet/time4j/history/ChronoHistory;->yearOfEra(Lnet/time4j/history/YearDefinition;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v1, "YEAR_BEFORE"

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 550
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/history/YearDefinition;->BEFORE_NEW_YEAR:Lnet/time4j/history/YearDefinition;

    invoke-virtual {v0, v1}, Lnet/time4j/history/ChronoHistory;->yearOfEra(Lnet/time4j/history/YearDefinition;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v1, "CENTURY_OF_ERA"

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 552
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->centuryOfEra()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0

    .line 554
    :cond_6
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toName(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 530
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "CENTURY_OF_ERA"

    return-object p0

    :pswitch_1
    const-string p0, "YEAR_BEFORE"

    return-object p0

    :pswitch_2
    const-string p0, "YEAR_AFTER"

    return-object p0

    :pswitch_3
    const-string p0, "HISTORIC_DAY_OF_YEAR"

    return-object p0

    :pswitch_4
    const-string p0, "HISTORIC_DAY_OF_MONTH"

    return-object p0

    :pswitch_5
    const-string p0, "HISTORIC_MONTH"

    return-object p0

    :pswitch_6
    const-string p0, "YEAR_OF_ERA"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 315
    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    new-instance p1, Lnet/time4j/history/HistoricIntegerElement$Rule;

    iget v0, p0, Lnet/time4j/history/HistoricIntegerElement;->index:I

    iget-object v1, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-direct {p1, v0, v1}, Lnet/time4j/history/HistoricIntegerElement$Rule;-><init>(ILnet/time4j/history/ChronoHistory;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected doEquals(Lnet/time4j/engine/BasicElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/BasicElement<",
            "*>;)Z"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    check-cast p1, Lnet/time4j/history/HistoricIntegerElement;

    iget-object p1, p1, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/time4j/history/HistoricIntegerElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 228
    iget v1, v0, Lnet/time4j/history/HistoricIntegerElement;->index:I

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 229
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 230
    sget-object v3, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_4

    .line 232
    sget-object v2, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {v9, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/OutputContext;

    .line 233
    invoke-direct {v0, v9, v2}, Lnet/time4j/history/HistoricIntegerElement;->monthAccessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v3

    const-class v4, Lnet/time4j/Month;

    invoke-virtual {v3, v7, v8, v4, v9}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lnet/time4j/Month;

    if-nez v3, :cond_1

    .line 234
    sget-object v4, Lnet/time4j/format/Attributes;->PARSE_MULTIPLE_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, -0x1

    .line 235
    invoke-virtual {v8, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 236
    invoke-virtual {v8, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 237
    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    if-ne v2, v1, :cond_0

    sget-object v1, Lnet/time4j/format/OutputContext;->STANDALONE:Lnet/time4j/format/OutputContext;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    .line 238
    :goto_0
    invoke-direct {v0, v9, v1}, Lnet/time4j/history/HistoricIntegerElement;->monthAccessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v1

    const-class v2, Lnet/time4j/Month;

    invoke-virtual {v1, v7, v8, v2, v9}, Lnet/time4j/format/TextAccessor;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Ljava/lang/Class;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Enum;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lnet/time4j/Month;

    :cond_1
    if-nez v3, :cond_2

    return-object v11

    .line 243
    :cond_2
    invoke-virtual {v3}, Lnet/time4j/Month;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_3
    const/4 v3, 0x6

    if-eq v1, v3, :cond_10

    const/4 v3, 0x7

    if-eq v1, v3, :cond_10

    const/16 v3, 0x8

    if-eq v1, v3, :cond_10

    .line 254
    :cond_4
    sget-object v1, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {v9, v1, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lnet/time4j/format/NumberSystem;

    .line 255
    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 256
    invoke-interface {v9, v1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 257
    invoke-interface {v9, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    :goto_1
    move v13, v1

    goto :goto_2

    .line 258
    :cond_5
    invoke-virtual {v12}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v12}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_6
    const/16 v1, 0x30

    goto :goto_1

    .line 259
    :goto_2
    invoke-virtual {v12}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    goto :goto_3

    :cond_7
    sget-object v1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {v9, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/Leniency;

    :goto_3
    move-object v14, v1

    .line 260
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    move-object v1, v12

    move v2, v13

    move-object/from16 v3, p1

    move v4, v15

    move-object/from16 v5, p2

    move-object v6, v14

    .line 262
    invoke-static/range {v1 .. v6}, Lnet/time4j/history/HistoricIntegerElement;->parseNum(Lnet/time4j/format/NumberSystem;CLjava/lang/CharSequence;ILjava/text/ParsePosition;Lnet/time4j/format/Leniency;)I

    move-result v6

    .line 263
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    .line 265
    iget v1, v0, Lnet/time4j/history/HistoricIntegerElement;->index:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_d

    if-le v5, v15, :cond_d

    sget-object v1, Lnet/time4j/history/NewYearStrategy;->DEFAULT:Lnet/time4j/history/NewYearStrategy;

    iget-object v2, v0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    .line 268
    invoke-virtual {v2}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/time4j/history/NewYearStrategy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 269
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v5, v1, :cond_d

    .line 270
    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_d

    sget-object v1, Lnet/time4j/history/ChronoHistory;->YEAR_DEFINITION:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    .line 271
    invoke-interface {v9, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    if-ne v1, v2, :cond_d

    add-int/lit8 v9, v5, 0x1

    move-object v1, v12

    move v2, v13

    move-object/from16 v3, p1

    move v7, v4

    move v4, v9

    move v13, v5

    move-object/from16 v5, p2

    move v7, v6

    move-object v6, v14

    .line 274
    invoke-static/range {v1 .. v6}, Lnet/time4j/history/HistoricIntegerElement;->parseNum(Lnet/time4j/format/NumberSystem;CLjava/lang/CharSequence;ILjava/text/ParsePosition;Lnet/time4j/format/Leniency;)I

    move-result v6

    .line 275
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-ne v5, v9, :cond_8

    .line 277
    invoke-virtual {v8, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_5

    .line 281
    :cond_8
    iget-object v1, v0, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    .line 282
    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v1

    sget-object v2, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    invoke-virtual {v1, v2, v7}, Lnet/time4j/history/NewYearStrategy;->rule(Lnet/time4j/history/HistoricEra;I)Lnet/time4j/history/NewYearRule;

    move-result-object v1

    sget-object v2, Lnet/time4j/history/NewYearRule;->CALCULUS_PISANUS:Lnet/time4j/history/NewYearRule;

    if-ne v1, v2, :cond_9

    const/4 v4, 0x2

    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    .line 284
    :goto_4
    invoke-direct {v0, v7, v6, v4}, Lnet/time4j/history/HistoricIntegerElement;->getAncientYear(III)I

    move-result v1

    .line 285
    invoke-virtual {v12}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_b

    if-eqz v10, :cond_a

    .line 288
    sget-object v2, Lnet/time4j/history/internal/StdHistoricalElement;->YEAR_OF_DISPLAY:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {v10, v2, v7}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    :cond_a
    move v6, v1

    goto :goto_6

    :cond_b
    sub-int v1, v6, v7

    .line 290
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v4, :cond_c

    if-eqz v10, :cond_e

    .line 293
    sget-object v1, Lnet/time4j/history/internal/StdHistoricalElement;->YEAR_OF_DISPLAY:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {v10, v1, v7}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    goto :goto_6

    .line 298
    :cond_c
    invoke-virtual {v8, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_5

    :cond_d
    move v13, v5

    move v7, v6

    :goto_5
    move v6, v7

    move v5, v13

    :cond_e
    :goto_6
    if-ne v5, v15, :cond_f

    .line 304
    invoke-virtual {v8, v15}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    .line 307
    :cond_f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 251
    :cond_10
    new-instance v1, Lnet/time4j/engine/ChronoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not parseable as text element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/time4j/history/HistoricIntegerElement;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/history/HistoricIntegerElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    sget-object v0, Lnet/time4j/format/Attributes;->NUMBER_SYSTEM:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/NumberSystem;->ARABIC:Lnet/time4j/format/NumberSystem;

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lnet/time4j/format/NumberSystem;

    .line 113
    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 114
    invoke-interface {p3, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/time4j/format/Attributes;->ZERO_DIGIT:Lnet/time4j/engine/AttributeKey;

    .line 115
    invoke-interface {p3, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    :goto_0
    move v6, v0

    goto :goto_1

    .line 116
    :cond_0
    invoke-virtual {v5}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    goto :goto_0

    :goto_1
    const/4 v7, 0x1

    const/16 v8, 0xa

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 117
    invoke-virtual/range {v1 .. v8}, Lnet/time4j/history/HistoricIntegerElement;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/NumberSystem;CII)V

    return-void
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/NumberSystem;CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v6, p0

    move-object v0, p1

    move-object v7, p2

    move-object v1, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    .line 132
    iget v2, v6, Lnet/time4j/history/HistoricIntegerElement;->index:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 133
    iget-object v1, v6, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->dayOfYear()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-interface {p1, v1}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 139
    :cond_0
    instance-of v2, v0, Lnet/time4j/base/GregorianDate;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, v6, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    check-cast v0, Lnet/time4j/base/GregorianDate;

    invoke-static {v0}, Lnet/time4j/PlainDate;->from(Lnet/time4j/base/GregorianDate;)Lnet/time4j/PlainDate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    iget-object v2, v6, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v2}, Lnet/time4j/history/ChronoHistory;->date()Lnet/time4j/engine/ChronoElement;

    move-result-object v2

    invoke-interface {p1, v2}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/history/HistoricDate;

    .line 145
    :goto_0
    iget v2, v6, Lnet/time4j/history/HistoricIntegerElement;->index:I

    const/4 v3, 0x2

    const/4 v10, 0x0

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 201
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_5

    .line 204
    :cond_2
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not printable as text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/time4j/history/HistoricIntegerElement;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    sget-object v2, Lnet/time4j/format/internal/DualFormatElement;->COUNT_OF_PATTERN_SYMBOLS:Lnet/time4j/engine/AttributeKey;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 188
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v0

    if-nez v2, :cond_4

    .line 190
    sget-object v2, Lnet/time4j/format/Attributes;->OUTPUT_CONTEXT:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/OutputContext;->FORMAT:Lnet/time4j/format/OutputContext;

    invoke-interface {p3, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/OutputContext;

    .line 191
    invoke-direct {p0, p3, v2}, Lnet/time4j/history/HistoricIntegerElement;->monthAccessor(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/OutputContext;)Lnet/time4j/format/TextAccessor;

    move-result-object v1

    invoke-static {v0}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/time4j/format/TextAccessor;->print(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_5

    .line 193
    :cond_4
    invoke-virtual {v8, v0}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    invoke-static {v0, v2, v9}, Lnet/time4j/history/HistoricIntegerElement;->pad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_5
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_5

    .line 147
    :cond_6
    iget-object v2, v6, Lnet/time4j/history/HistoricIntegerElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v2}, Lnet/time4j/history/ChronoHistory;->getNewYearStrategy()Lnet/time4j/history/NewYearStrategy;

    move-result-object v2

    .line 148
    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v11

    const/4 v3, 0x0

    .line 150
    sget-object v4, Lnet/time4j/history/NewYearStrategy;->DEFAULT:Lnet/time4j/history/NewYearStrategy;

    invoke-virtual {v4, v2}, Lnet/time4j/history/NewYearStrategy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 151
    invoke-virtual {v0, v2}, Lnet/time4j/history/HistoricDate;->getYearOfEra(Lnet/time4j/history/NewYearStrategy;)I

    move-result v4

    if-eq v4, v11, :cond_8

    .line 153
    sget-object v0, Lnet/time4j/history/ChronoHistory;->YEAR_DEFINITION:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    invoke-interface {p3, v0, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnet/time4j/history/YearDefinition;->DUAL_DATING:Lnet/time4j/history/YearDefinition;

    if-ne v0, v1, :cond_7

    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move v3, v4

    move v4, v11

    move/from16 v5, p6

    .line 154
    invoke-direct/range {v0 .. v5}, Lnet/time4j/history/HistoricIntegerElement;->dual(Lnet/time4j/format/NumberSystem;CIII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    move v11, v4

    :cond_8
    :goto_1
    if-nez v3, :cond_a

    .line 161
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 162
    invoke-virtual {v8, v11}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p6

    invoke-static {v0, v1, v9}, Lnet/time4j/history/HistoricIntegerElement;->pad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 164
    :cond_9
    invoke-virtual {v8, v11}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    :cond_a
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/NumberSystem;->getDigits()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v9, v0, :cond_d

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    :goto_3
    if-ge v10, v2, :cond_c

    .line 172
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 173
    invoke-virtual {v8, v4}, Lnet/time4j/format/NumberSystem;->contains(C)Z

    move-result v5

    if-eqz v5, :cond_b

    sub-int v5, v9, v0

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 175
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 177
    :cond_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 180
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_d
    move/from16 v0, p7

    .line 182
    invoke-direct {p0, v3, v0}, Lnet/time4j/history/HistoricIntegerElement;->checkLength(Ljava/lang/String;I)V

    .line 184
    :cond_e
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_5
    return-void
.end method
