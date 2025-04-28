.class Lnet/time4j/calendar/HebrewCalendar$Transformer;
.super Ljava/lang/Object;
.source "HebrewCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/HebrewCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewCalendar$1;)V
    .locals 0

    .line 1307
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewCalendar$Transformer;-><init>()V

    return-void
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

    .line 1444
    sget-object v0, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    .line 1445
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 2

    .line 1339
    sget-object v0, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-lt p2, p1, :cond_0

    const/16 v0, 0x270f

    if-gt p2, v0, :cond_0

    if-lt p3, p1, :cond_0

    const/16 p1, 0xd

    if-gt p3, p1, :cond_0

    .line 1349
    invoke-static {p3}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result p1

    return p1

    .line 1352
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", month="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    invoke-static {p3}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1340
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid era: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
    .locals 2

    .line 1363
    sget-object v0, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-lt p2, p1, :cond_0

    const/16 p1, 0x270f

    if-gt p2, p1, :cond_0

    .line 1368
    invoke-static {p2}, Lnet/time4j/calendar/HebrewCalendar;->access$500(I)I

    move-result p1

    return p1

    .line 1371
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1364
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid era: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getMaximumSinceUTC()J
    .locals 5

    .line 1436
    new-instance v0, Lnet/time4j/calendar/HebrewCalendar;

    sget-object v1, Lnet/time4j/calendar/HebrewMonth;->ELUL:Lnet/time4j/calendar/HebrewMonth;

    const/16 v2, 0x270f

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lnet/time4j/calendar/HebrewCalendar;-><init>(ILnet/time4j/calendar/HebrewMonth;ILnet/time4j/calendar/HebrewCalendar$1;)V

    .line 1437
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HebrewCalendar$Transformer;->transform(Lnet/time4j/calendar/HebrewCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 4

    .line 1428
    new-instance v0, Lnet/time4j/calendar/HebrewCalendar;

    sget-object v1, Lnet/time4j/calendar/HebrewMonth;->TISHRI:Lnet/time4j/calendar/HebrewMonth;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v2, v3}, Lnet/time4j/calendar/HebrewCalendar;-><init>(ILnet/time4j/calendar/HebrewMonth;ILnet/time4j/calendar/HebrewCalendar$1;)V

    .line 1429
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/HebrewCalendar$Transformer;->transform(Lnet/time4j/calendar/HebrewCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 2

    .line 1320
    sget-object v0, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-lt p2, v1, :cond_0

    const/16 v0, 0x270f

    if-gt p2, v0, :cond_0

    if-lt p3, v1, :cond_0

    const/16 v0, 0xd

    if-gt p3, v0, :cond_0

    if-lt p4, v1, :cond_0

    .line 1327
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewCalendar$Transformer;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

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

    .line 1307
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewCalendar$Transformer;->transform(Lnet/time4j/calendar/HebrewCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/HebrewCalendar;)J
    .locals 7

    .line 1412
    sget-object v0, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v1

    invoke-static {v1}, Lnet/time4j/calendar/HebrewCalendar;->access$700(I)J

    move-result-wide v1

    sget-object v3, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$900(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1413
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v2

    invoke-static {v2}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v2

    .line 1415
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$1000(Lnet/time4j/calendar/HebrewCalendar;)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_2

    if-nez v2, :cond_0

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    .line 1417
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/HebrewCalendar;->access$800(Lnet/time4j/calendar/HebrewCalendar;)I

    move-result v5

    invoke-static {v4}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 1307
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$Transformer;->transform(J)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/HebrewCalendar;
    .locals 9

    .line 1378
    sget-object v0, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    sget-object v1, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, p1, p2, v1}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide p1

    .line 1379
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$600()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0x180c0

    mul-long/2addr v0, v2

    const v2, 0x224f0b7

    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 1382
    :goto_0
    invoke-static {v0}, Lnet/time4j/calendar/HebrewCalendar;->access$700(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_0

    .line 1387
    :cond_0
    invoke-static {v1}, Lnet/time4j/calendar/HebrewCalendar;->access$700(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 1388
    invoke-static {v1}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    const/16 v4, 0xd

    if-ge v2, v4, :cond_3

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    if-nez v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    .line 1396
    :cond_1
    invoke-static {v2}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v4

    invoke-static {v1, v4}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result v4

    int-to-long v4, v4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p1, v2, 0x1

    move v3, p1

    move-wide p1, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1405
    :cond_3
    :goto_3
    invoke-static {v3}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v0

    long-to-int p1, p1

    invoke-static {v1, v0, p1}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method
