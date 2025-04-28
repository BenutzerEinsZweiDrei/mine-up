.class Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "JapaneseCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JapaneseCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/calendar/JapaneseCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2197
    iput p1, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    return-void
.end method

.method private static yearsAdded(Lnet/time4j/calendar/JapaneseCalendar;I)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 4

    .line 2411
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    .line 2412
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v1

    const/16 v2, 0x751

    if-lt p1, v2, :cond_0

    .line 2415
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2416
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v0

    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    goto :goto_0

    .line 2418
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->isLeap()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v2

    add-int/lit16 v3, p1, -0x2bd

    aget-byte v2, v2, v3

    add-int/lit8 v1, v1, 0x1

    if-eq v2, v1, :cond_1

    .line 2419
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->getNumber()I

    move-result v0

    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    .line 2422
    :cond_1
    :goto_0
    invoke-static {p0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v1

    invoke-static {p1, v0}, Lnet/time4j/calendar/JapaneseCalendar;->access$1600(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2423
    invoke-static {p0, p1, v0, v1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1700(Lnet/time4j/calendar/JapaneseCalendar;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2402
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JapaneseCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2383
    iget p1, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2394
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 2392
    :cond_2
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    .line 2385
    :cond_3
    sget-object p1, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/JapaneseCalendar;)I
    .locals 2

    .line 2206
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2218
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    add-int/lit16 p1, p1, 0x294

    return p1

    .line 2220
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2216
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    return p1

    .line 2212
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1200(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    return p1

    .line 2210
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1500(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    return p1

    .line 2214
    :cond_4
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1800(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result p1

    return p1

    .line 2208
    :cond_5
    invoke-virtual {p1}, Lnet/time4j/calendar/JapaneseCalendar;->getYear()I

    move-result p1

    return p1
.end method

.method getMax(Lnet/time4j/calendar/JapaneseCalendar;)I
    .locals 2

    .line 2245
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    const p1, 0x3b9acc93

    return p1

    .line 2266
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p1, 0x3b9ac9ff

    return p1

    .line 2258
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$2100(I)I

    move-result p1

    return p1

    .line 2256
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1600(ILnet/time4j/calendar/EastAsianMonth;)I

    move-result p1

    return p1

    .line 2260
    :cond_4
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    const/16 v1, 0x751

    if-ge v0, v1, :cond_6

    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    add-int/lit16 p1, p1, -0x2bd

    aget-byte p1, v0, p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0xd

    goto :goto_1

    :cond_6
    :goto_0
    const/16 p1, 0xc

    :goto_1
    return p1

    .line 2247
    :cond_7
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object p1

    .line 2248
    invoke-virtual {p1}, Lnet/time4j/calendar/Nengo;->findNext()Lnet/time4j/calendar/Nengo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2251
    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v0

    invoke-virtual {p1}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    return v0

    :cond_8
    const p1, 0x3b9aca00

    .line 2253
    sget-object v0, Lnet/time4j/calendar/Nengo$Element;->SINGLETON:Lnet/time4j/calendar/Nengo$Element;

    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo$Element;->getDefaultMaximum()Lnet/time4j/calendar/Nengo;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public getMaximum(Lnet/time4j/calendar/JapaneseCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 2354
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/JapaneseCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method getMin()I
    .locals 3

    .line 2227
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/16 v0, 0x551

    return v0

    .line 2238
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x2bd

    return v0

    :cond_2
    return v1
.end method

.method public getMinimum(Lnet/time4j/calendar/JapaneseCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 2347
    invoke-virtual {p0}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getMin()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/JapaneseCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/JapaneseCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 2340
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/JapaneseCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/JapaneseCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/JapaneseCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/JapaneseCalendar;I)Z
    .locals 4

    .line 2277
    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 2287
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown element index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2285
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    if-ne p1, p2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    if-lt p2, v2, :cond_4

    .line 2283
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    if-gt p2, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public isValid(Lnet/time4j/calendar/JapaneseCalendar;Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 2361
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/JapaneseCalendar;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/JapaneseCalendar;IZ)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 2185
    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/JapaneseCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/JapaneseCalendar;IZ)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 2

    .line 2299
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/JapaneseCalendar;I)Z

    move-result p3

    const/4 v0, 0x4

    if-eqz p3, :cond_a

    .line 2300
    iget p3, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    if-eq p3, v1, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    add-int/lit16 p2, p2, -0x294

    .line 2325
    invoke-static {p1, p2}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->yearsAdded(Lnet/time4j/calendar/JapaneseCalendar;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1

    .line 2327
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p1

    .line 2306
    :cond_2
    new-instance p3, Lnet/time4j/calendar/JapaneseCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, p2, v1}, Lnet/time4j/calendar/JapaneseCalendar;-><init>(Lnet/time4j/calendar/Nengo;IILnet/time4j/calendar/JapaneseCalendar$1;)V

    return-object p3

    .line 2304
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p3

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1300(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    invoke-static {p1, p3, v0, p2}, Lnet/time4j/calendar/JapaneseCalendar;->access$1700(Lnet/time4j/calendar/JapaneseCalendar;ILnet/time4j/calendar/EastAsianMonth;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1

    .line 2309
    :cond_4
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result p3

    const/16 v0, 0x751

    if-lt p3, v0, :cond_5

    .line 2310
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    goto :goto_1

    .line 2312
    :cond_5
    invoke-static {}, Lnet/time4j/calendar/JapaneseCalendar;->access$1400()[B

    move-result-object p3

    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1100(Lnet/time4j/calendar/JapaneseCalendar;)I

    move-result v0

    add-int/lit16 v0, v0, -0x2bd

    aget-byte p3, p3, v0

    if-eqz p3, :cond_8

    if-le p3, p2, :cond_6

    goto :goto_0

    :cond_6
    if-ne p2, p3, :cond_7

    sub-int/2addr p2, v1

    .line 2316
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    goto :goto_1

    :cond_7
    sub-int/2addr p2, v1

    .line 2318
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    goto :goto_1

    .line 2314
    :cond_8
    :goto_0
    invoke-static {p2}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object p2

    .line 2321
    :goto_1
    sget-object p3, Lnet/time4j/calendar/JapaneseCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, p3, p2}, Lnet/time4j/calendar/JapaneseCalendar;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/JapaneseCalendar;

    return-object p1

    .line 2302
    :cond_9
    invoke-static {p1}, Lnet/time4j/calendar/JapaneseCalendar;->access$1900(Lnet/time4j/calendar/JapaneseCalendar;)Lnet/time4j/calendar/Nengo;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/calendar/Nengo;->getFirstRelatedGregorianYear()I

    move-result p3

    add-int/2addr p3, p2

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->yearsAdded(Lnet/time4j/calendar/JapaneseCalendar;I)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1

    .line 2329
    :cond_a
    iget p1, p0, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->index:I

    if-ne p1, v0, :cond_b

    .line 2330
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The related gregorian year is read-only."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2332
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValue(Lnet/time4j/calendar/JapaneseCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/JapaneseCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 2376
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JapaneseCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/JapaneseCalendar;IZ)Lnet/time4j/calendar/JapaneseCalendar;

    move-result-object p1

    return-object p1

    .line 2373
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not nullable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
