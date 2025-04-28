.class Lnet/time4j/calendar/PersianCalendar$Transformer;
.super Ljava/lang/Object;
.source "PersianCalendar.java"

# interfaces
.implements Lnet/time4j/calendar/EraYearMonthDaySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/PersianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/EraYearMonthDaySystem<",
        "Lnet/time4j/calendar/PersianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/PersianCalendar$1;)V
    .locals 0

    .line 1345
    invoke-direct {p0}, Lnet/time4j/calendar/PersianCalendar$Transformer;-><init>()V

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

    .line 1448
    sget-object v0, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    .line 1449
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
    .locals 2

    .line 1377
    sget-object v0, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    if-ne p1, v0, :cond_4

    .line 1381
    sget-object v0, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v1, 0xbb8

    if-gt p2, v1, :cond_3

    if-lt p3, v0, :cond_3

    const/16 v0, 0xc

    if-gt p3, v0, :cond_3

    const/4 v0, 0x6

    if-gt p3, v0, :cond_0

    const/16 p1, 0x1f

    return p1

    :cond_0
    const/16 v0, 0xb

    const/16 v1, 0x1e

    if-gt p3, v0, :cond_1

    return v1

    .line 1393
    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/PersianCalendar$Transformer;->getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I

    move-result p1

    const/16 p2, 0x16d

    if-ne p1, p2, :cond_2

    const/16 v1, 0x1d

    :cond_2
    return v1

    .line 1397
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of bounds: year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", month="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1378
    :cond_4
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

    .line 1407
    sget-object v0, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    if-ne p1, v0, :cond_1

    .line 1411
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/PersianAlgorithm;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    return p1

    .line 1408
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
    .locals 4

    .line 1440
    new-instance v0, Lnet/time4j/calendar/PersianCalendar;

    const/16 v1, 0xbb9

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    .line 1441
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/PersianCalendar$Transformer;->transform(Lnet/time4j/calendar/PersianCalendar;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    .line 1432
    new-instance v0, Lnet/time4j/calendar/PersianCalendar;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    .line 1433
    invoke-virtual {p0, v0}, Lnet/time4j/calendar/PersianCalendar$Transformer;->transform(Lnet/time4j/calendar/PersianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValid(Lnet/time4j/engine/CalendarEra;III)Z
    .locals 2

    .line 1358
    sget-object v0, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    if-lt p2, v1, :cond_0

    const/16 v0, 0xbb8

    if-gt p2, v0, :cond_0

    if-lt p3, v1, :cond_0

    const/16 v0, 0xc

    if-gt p3, v0, :cond_0

    if-lt p4, v1, :cond_0

    .line 1365
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/PersianCalendar$Transformer;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

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

    .line 1345
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$Transformer;->transform(Lnet/time4j/calendar/PersianCalendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Lnet/time4j/calendar/PersianCalendar;)J
    .locals 2

    .line 1425
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, p1, v1}, Lnet/time4j/calendar/PersianAlgorithm;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic transform(J)Ljava/lang/Object;
    .locals 0

    .line 1345
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/PersianCalendar$Transformer;->transform(J)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public transform(J)Lnet/time4j/calendar/PersianCalendar;
    .locals 2

    .line 1418
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, p1, p2, v1}, Lnet/time4j/calendar/PersianAlgorithm;->transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    return-object p1
.end method
