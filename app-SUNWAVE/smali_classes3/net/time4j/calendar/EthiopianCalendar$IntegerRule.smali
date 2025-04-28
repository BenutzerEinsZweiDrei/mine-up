.class Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "EthiopianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/EthiopianCalendar;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    iput p1, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1153
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1280
    iget p1, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1281
    sget-object p1, Lnet/time4j/calendar/EthiopianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1153
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1269
    iget p1, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1270
    sget-object p1, Lnet/time4j/calendar/EthiopianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;
    .locals 3

    .line 1208
    iget v0, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1214
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->access$300()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object v1

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1216
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1212
    :cond_1
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->access$300()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object v1

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1000(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1210
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object p1

    sget-object v0, Lnet/time4j/calendar/EthiopianEra;->AMETE_ALEM:Lnet/time4j/calendar/EthiopianEra;

    if-ne p1, v0, :cond_3

    const/16 p1, 0x3c8b

    goto :goto_0

    :cond_3
    const/16 p1, 0x270f

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1153
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;
    .locals 2

    .line 1194
    iget p1, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1200
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1153
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;
    .locals 5

    .line 1174
    iget v0, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1181
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1000(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1182
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->access$300()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v2

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object v3

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1184
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1100(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1186
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1178
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1100(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1176
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1153
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1153
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/EthiopianCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EthiopianCalendar;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1231
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;

    move-result-object v1

    .line 1232
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    .line 1233
    invoke-virtual {v1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1153
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/EthiopianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EthiopianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/EthiopianCalendar;
    .locals 2

    .line 1244
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/EthiopianCalendar;Ljava/lang/Integer;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1248
    iget p3, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    if-eqz p3, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1258
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/EthiopianCalendar;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 1259
    invoke-static {p2, p3}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/EthiopianCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    return-object p1

    .line 1261
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/EthiopianCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1256
    :cond_1
    new-instance p3, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$900(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1000(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p3, v0, p1, p2, v1}, Lnet/time4j/calendar/EthiopianCalendar;-><init>(IIILnet/time4j/calendar/EthiopianCalendar$1;)V

    return-object p3

    .line 1250
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getEra()Lnet/time4j/calendar/EthiopianEra;

    move-result-object p3

    .line 1251
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1252
    invoke-static {}, Lnet/time4j/calendar/EthiopianCalendar;->access$300()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1000(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result v1

    invoke-interface {v0, p3, p2, v1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v0

    .line 1253
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1100(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1254
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$1000(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result p1

    invoke-static {p3, p2, p1, v0}, Lnet/time4j/calendar/EthiopianCalendar;->of(Lnet/time4j/calendar/EthiopianEra;III)Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object p1

    return-object p1

    .line 1245
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
