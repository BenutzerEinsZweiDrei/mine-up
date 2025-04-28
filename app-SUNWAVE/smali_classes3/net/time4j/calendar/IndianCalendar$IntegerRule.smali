.class Lnet/time4j/calendar/IndianCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "IndianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/IndianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/calendar/IndianCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput p1, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    return-void
.end method

.method private getMax(Lnet/time4j/calendar/IndianCalendar;)I
    .locals 3

    .line 1268
    iget v0, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1274
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$500(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I

    move-result p1

    return p1

    .line 1276
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1272
    :cond_1
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    sget-object v1, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$500(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$600(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p1

    return p1

    :cond_2
    const p1, 0x3b9ac9b1

    return p1
.end method

.method private getMin()I
    .locals 3

    .line 1255
    iget v0, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1261
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/IndianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1245
    iget p1, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1246
    sget-object p1, Lnet/time4j/calendar/IndianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/IndianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/IndianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1234
    iget p1, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1235
    sget-object p1, Lnet/time4j/calendar/IndianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/IndianCalendar;)I
    .locals 5

    .line 1136
    iget v0, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1143
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$600(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1144
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v2

    sget-object v3, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$500(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$700(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 1148
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1140
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$700(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    return p1

    .line 1138
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$500(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    return p1
.end method

.method public getMaximum(Lnet/time4j/calendar/IndianCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1202
    invoke-direct {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/IndianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/IndianCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1195
    invoke-direct {p0}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getMin()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/IndianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/IndianCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1188
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/IndianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/IndianCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/IndianCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/IndianCalendar;I)Z
    .locals 1

    .line 1156
    invoke-direct {p0}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getMin()I

    move-result v0

    .line 1157
    invoke-direct {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getMax(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    if-gt v0, p2, :cond_0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValid(Lnet/time4j/calendar/IndianCalendar;Ljava/lang/Integer;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1212
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/IndianCalendar;I)Z

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

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/IndianCalendar;IZ)Lnet/time4j/calendar/IndianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1115
    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/IndianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/IndianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/IndianCalendar;IZ)Lnet/time4j/calendar/IndianCalendar;
    .locals 3

    .line 1165
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/IndianCalendar;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1169
    iget p3, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1177
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/IndianCalendar;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 1178
    invoke-static {p2, p3}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/IndianCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/IndianCalendar;

    return-object p1

    .line 1180
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1175
    :cond_1
    new-instance p3, Lnet/time4j/calendar/IndianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$500(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$600(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    invoke-direct {p3, v1, p1, p2, v0}, Lnet/time4j/calendar/IndianCalendar;-><init>(IIILnet/time4j/calendar/IndianCalendar$1;)V

    return-object p3

    .line 1171
    :cond_2
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    sget-object v1, Lnet/time4j/calendar/IndianEra;->SAKA:Lnet/time4j/calendar/IndianEra;

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$600(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v2

    invoke-interface {p3, v1, p2, v2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p3

    .line 1172
    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$700(Lnet/time4j/calendar/IndianCalendar;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1173
    new-instance v1, Lnet/time4j/calendar/IndianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/IndianCalendar;->access$600(Lnet/time4j/calendar/IndianCalendar;)I

    move-result p1

    invoke-direct {v1, p2, p1, p3, v0}, Lnet/time4j/calendar/IndianCalendar;-><init>(IIILnet/time4j/calendar/IndianCalendar$1;)V

    return-object v1

    .line 1166
    :cond_3
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

.method public withValue(Lnet/time4j/calendar/IndianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/IndianCalendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 1227
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/IndianCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/IndianCalendar;IZ)Lnet/time4j/calendar/IndianCalendar;

    move-result-object p1

    return-object p1

    .line 1224
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing new value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
