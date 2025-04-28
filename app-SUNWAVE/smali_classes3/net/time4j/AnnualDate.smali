.class public final Lnet/time4j/AnnualDate;
.super Lnet/time4j/engine/ChronoEntity;
.source "AnnualDate.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lnet/time4j/engine/Temporal;
.implements Lnet/time4j/format/LocalizedPatternSupport;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/AnnualDate$IntegerElementRule;,
        Lnet/time4j/AnnualDate$MonthElementRule;,
        Lnet/time4j/AnnualDate$Merger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/ChronoEntity<",
        "Lnet/time4j/AnnualDate;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lnet/time4j/AnnualDate;",
        ">;",
        "Lnet/time4j/engine/Temporal<",
        "Lnet/time4j/AnnualDate;",
        ">;",
        "Lnet/time4j/format/LocalizedPatternSupport;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lnet/time4j/format/CalendarType;
    value = "iso8601"
.end annotation


# static fields
.field public static final DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        format = "d"
    .end annotation
.end field

.field private static final ENGINE:Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Chronology<",
            "Lnet/time4j/AnnualDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final MONTH_AS_NUMBER:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MONTH_OF_YEAR:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Lnet/time4j/Month;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/time4j/engine/FormattableElement;
        alt = "L"
        format = "M"
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x683b2e9226a82df7L


# instance fields
.field private final dayOfMonth:I

.field private final month:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 136
    sget-object v0, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    sput-object v0, Lnet/time4j/AnnualDate;->MONTH_OF_YEAR:Lnet/time4j/engine/ChronoElement;

    .line 155
    sget-object v1, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    sput-object v1, Lnet/time4j/AnnualDate;->MONTH_AS_NUMBER:Lnet/time4j/engine/ChronoElement;

    .line 164
    sget-object v2, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    sput-object v2, Lnet/time4j/AnnualDate;->DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;

    .line 166
    const-class v3, Lnet/time4j/AnnualDate;

    new-instance v4, Lnet/time4j/AnnualDate$Merger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lnet/time4j/AnnualDate$Merger;-><init>(Lnet/time4j/AnnualDate$1;)V

    .line 168
    invoke-static {v3, v4}, Lnet/time4j/engine/Chronology$Builder;->setUp(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;)Lnet/time4j/engine/Chronology$Builder;

    move-result-object v3

    new-instance v4, Lnet/time4j/AnnualDate$IntegerElementRule;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lnet/time4j/AnnualDate$IntegerElementRule;-><init>(Z)V

    .line 169
    invoke-virtual {v3, v2, v4}, Lnet/time4j/engine/Chronology$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;

    move-result-object v2

    new-instance v3, Lnet/time4j/AnnualDate$MonthElementRule;

    invoke-direct {v3, v5}, Lnet/time4j/AnnualDate$MonthElementRule;-><init>(Lnet/time4j/AnnualDate$1;)V

    .line 170
    invoke-virtual {v2, v0, v3}, Lnet/time4j/engine/Chronology$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;

    move-result-object v0

    new-instance v2, Lnet/time4j/AnnualDate$IntegerElementRule;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lnet/time4j/AnnualDate$IntegerElementRule;-><init>(Z)V

    .line 171
    invoke-virtual {v0, v1, v2}, Lnet/time4j/engine/Chronology$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lnet/time4j/engine/Chronology$Builder;->build()Lnet/time4j/engine/Chronology;

    move-result-object v0

    sput-object v0, Lnet/time4j/AnnualDate;->ENGINE:Lnet/time4j/engine/Chronology;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lnet/time4j/engine/ChronoEntity;-><init>()V

    .line 196
    iput p1, p0, Lnet/time4j/AnnualDate;->month:I

    .line 197
    iput p2, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    return-void
.end method

.method synthetic constructor <init>(IILnet/time4j/AnnualDate$1;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lnet/time4j/AnnualDate;-><init>(II)V

    return-void
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 123
    invoke-static {p0}, Lnet/time4j/AnnualDate;->getMaxDay(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lnet/time4j/AnnualDate;)I
    .locals 0

    .line 123
    iget p0, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    return p0
.end method

.method static synthetic access$500(Lnet/time4j/AnnualDate;)I
    .locals 0

    .line 123
    iget p0, p0, Lnet/time4j/AnnualDate;->month:I

    return p0
.end method

.method private static check(II)V
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/16 v1, 0xc

    if-gt p0, v1, :cond_1

    if-lt p1, v0, :cond_0

    .line 631
    invoke-static {p0}, Lnet/time4j/AnnualDate;->getMaxDay(I)I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lnet/time4j/AnnualDate;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Month not in range 1-12: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static chronology()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "Lnet/time4j/AnnualDate;",
            ">;"
        }
    .end annotation

    .line 606
    sget-object v0, Lnet/time4j/AnnualDate;->ENGINE:Lnet/time4j/engine/Chronology;

    return-object v0
.end method

.method public static from(Lnet/time4j/base/GregorianDate;)Lnet/time4j/AnnualDate;
    .locals 2

    .line 268
    invoke-static {p0}, Lnet/time4j/PlainDate;->from(Lnet/time4j/base/GregorianDate;)Lnet/time4j/PlainDate;

    move-result-object p0

    .line 269
    new-instance v0, Lnet/time4j/AnnualDate;

    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getMonth()I

    move-result v1

    invoke-virtual {p0}, Lnet/time4j/PlainDate;->getDayOfMonth()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lnet/time4j/AnnualDate;-><init>(II)V

    return-object v0
.end method

.method private static getMaxDay(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 p0, 0x1f

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    :cond_1
    const/16 p0, 0x1d

    return p0
.end method

.method public static nowInSystemTime()Lnet/time4j/AnnualDate;
    .locals 2

    .line 295
    invoke-static {}, Lnet/time4j/SystemClock;->inLocalView()Lnet/time4j/ZonalClock;

    move-result-object v0

    sget-object v1, Lnet/time4j/AnnualDate;->ENGINE:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, v1}, Lnet/time4j/ZonalClock;->now(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/AnnualDate;

    return-object v0
.end method

.method public static of(II)Lnet/time4j/AnnualDate;
    .locals 1

    .line 245
    invoke-static {p0, p1}, Lnet/time4j/AnnualDate;->check(II)V

    .line 246
    new-instance v0, Lnet/time4j/AnnualDate;

    invoke-direct {v0, p0, p1}, Lnet/time4j/AnnualDate;-><init>(II)V

    return-object v0
.end method

.method public static of(Lnet/time4j/Month;I)Lnet/time4j/AnnualDate;
    .locals 0

    .line 222
    invoke-virtual {p0}, Lnet/time4j/Month;->getValue()I

    move-result p0

    invoke-static {p0, p1}, Lnet/time4j/AnnualDate;->of(II)Lnet/time4j/AnnualDate;

    move-result-object p0

    return-object p0
.end method

.method public static parseXML(Ljava/lang/String;)Lnet/time4j/AnnualDate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 428
    invoke-static {p0, v0}, Lnet/time4j/AnnualDate;->toDigit(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    .line 429
    invoke-static {p0, v1}, Lnet/time4j/AnnualDate;->toDigit(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    .line 430
    invoke-static {p0, v2}, Lnet/time4j/AnnualDate;->toDigit(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x6

    .line 431
    invoke-static {p0, v3}, Lnet/time4j/AnnualDate;->toDigit(Ljava/lang/String;I)I

    move-result p0

    .line 432
    new-instance v3, Lnet/time4j/AnnualDate;

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, p0

    invoke-direct {v3, v0, v2}, Lnet/time4j/AnnualDate;-><init>(II)V

    return-object v3

    .line 434
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not compatible to standard XML-format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 696
    :try_start_0
    iget v0, p0, Lnet/time4j/AnnualDate;->month:I

    iget v1, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    invoke-static {v0, v1}, Lnet/time4j/AnnualDate;->check(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 699
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toDigit(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 658
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 663
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digit expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static toString(II)Ljava/lang/String;
    .locals 3

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    const/16 v2, 0xa

    if-ge p0, v2, :cond_0

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 678
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    .line 679
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p1, v2, :cond_1

    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asNextExactEvent()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Lnet/time4j/AnnualDate$1;

    invoke-direct {v0, p0}, Lnet/time4j/AnnualDate$1;-><init>(Lnet/time4j/AnnualDate;)V

    return-object v0
.end method

.method public asNextRoundedEvent()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 575
    new-instance v0, Lnet/time4j/AnnualDate$2;

    invoke-direct {v0, p0}, Lnet/time4j/AnnualDate$2;-><init>(Lnet/time4j/AnnualDate;)V

    return-object v0
.end method

.method public atYear(I)Lnet/time4j/PlainDate;
    .locals 2

    .line 459
    iget v0, p0, Lnet/time4j/AnnualDate;->month:I

    iget v1, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    invoke-static {p1, v0, v1}, Lnet/time4j/PlainDate;->of(III)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 122
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate;->compareTo(Lnet/time4j/AnnualDate;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/time4j/AnnualDate;)I
    .locals 4

    .line 355
    iget v0, p0, Lnet/time4j/AnnualDate;->month:I

    iget v1, p1, Lnet/time4j/AnnualDate;->month:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    .line 359
    :cond_1
    iget v0, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    iget p1, p1, Lnet/time4j/AnnualDate;->dayOfMonth:I

    if-ge v0, p1, :cond_2

    return v2

    :cond_2
    if-le v0, p1, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 374
    :cond_0
    instance-of v1, p1, Lnet/time4j/AnnualDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 375
    check-cast p1, Lnet/time4j/AnnualDate;

    .line 376
    iget v1, p0, Lnet/time4j/AnnualDate;->month:I

    iget v3, p1, Lnet/time4j/AnnualDate;->month:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    iget p1, p1, Lnet/time4j/AnnualDate;->dayOfMonth:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method protected getChronology()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "Lnet/time4j/AnnualDate;",
            ">;"
        }
    .end annotation

    .line 613
    sget-object v0, Lnet/time4j/AnnualDate;->ENGINE:Lnet/time4j/engine/Chronology;

    return-object v0
.end method

.method protected getContext()Lnet/time4j/AnnualDate;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getContext()Lnet/time4j/engine/ChronoEntity;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lnet/time4j/AnnualDate;->getContext()Lnet/time4j/AnnualDate;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 327
    iget v0, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    return v0
.end method

.method public getMonth()Lnet/time4j/Month;
    .locals 1

    .line 311
    iget v0, p0, Lnet/time4j/AnnualDate;->month:I

    invoke-static {v0}, Lnet/time4j/Month;->valueOf(I)Lnet/time4j/Month;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 386
    iget v0, p0, Lnet/time4j/AnnualDate;->month:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic isAfter(Ljava/lang/Object;)Z
    .locals 0

    .line 122
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate;->isAfter(Lnet/time4j/AnnualDate;)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lnet/time4j/AnnualDate;)Z
    .locals 0

    .line 334
    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate;->compareTo(Lnet/time4j/AnnualDate;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isBefore(Ljava/lang/Object;)Z
    .locals 0

    .line 122
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate;->isBefore(Lnet/time4j/AnnualDate;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lnet/time4j/AnnualDate;)Z
    .locals 0

    .line 341
    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate;->compareTo(Lnet/time4j/AnnualDate;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isSimultaneous(Ljava/lang/Object;)Z
    .locals 0

    .line 122
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate;->isSimultaneous(Lnet/time4j/AnnualDate;)Z

    move-result p1

    return p1
.end method

.method public isSimultaneous(Lnet/time4j/AnnualDate;)Z
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate;->compareTo(Lnet/time4j/AnnualDate;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValidDate(I)Z
    .locals 2

    const v0, -0x3b9ac9ff

    if-lt p1, v0, :cond_1

    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_1

    .line 482
    iget v0, p0, Lnet/time4j/AnnualDate;->month:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 484
    invoke-static {p1}, Lnet/time4j/base/GregorianMath;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 405
    iget v0, p0, Lnet/time4j/AnnualDate;->month:I

    iget v1, p0, Lnet/time4j/AnnualDate;->dayOfMonth:I

    invoke-static {v0, v1}, Lnet/time4j/AnnualDate;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
