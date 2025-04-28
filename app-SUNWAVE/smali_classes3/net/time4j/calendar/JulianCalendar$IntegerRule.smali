.class Lnet/time4j/calendar/JulianCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "JulianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/JulianCalendar;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    iput p1, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1161
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JulianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1293
    iget p1, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1294
    sget-object p1, Lnet/time4j/calendar/JulianCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1161
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JulianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1282
    iget p1, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    if-nez p1, :cond_0

    .line 1283
    sget-object p1, Lnet/time4j/calendar/JulianCalendar;->MONTH_OF_YEAR:Lnet/time4j/format/TextElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;
    .locals 2

    .line 1216
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1222
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$700(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    const/16 p1, 0x16e

    goto :goto_0

    :cond_0
    const/16 p1, 0x16d

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1224
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1220
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$700(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    invoke-static {v0, p1}, Lnet/time4j/calendar/JulianCalendar;->access$600(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const p1, 0x3b9ac9ff

    .line 1218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1161
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;
    .locals 2

    .line 1202
    iget p1, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1161
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;
    .locals 3

    .line 1182
    iget v0, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1189
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1190
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$700(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v2

    invoke-static {v2, v1}, Lnet/time4j/calendar/JulianCalendar;->access$600(II)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1192
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1194
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1186
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1184
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1161
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1161
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/JulianCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/JulianCalendar;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1239
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object v1

    .line 1240
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object p1

    .line 1241
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

    .line 1161
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/JulianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/JulianCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/JulianCalendar;
    .locals 2

    if-eqz p2, :cond_5

    .line 1256
    iget p3, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 1266
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lt p3, v0, :cond_0

    .line 1267
    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->lengthOfYear()I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 1268
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/JulianCalendar;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 1269
    invoke-static {p2, p3}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/time4j/calendar/JulianCalendar;->plus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    return-object p1

    .line 1271
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid day of year: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1274
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/JulianCalendar$IntegerRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1264
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p3

    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getYear()I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p3, v0, p1, p2}, Lnet/time4j/calendar/JulianCalendar;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1

    .line 1258
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1259
    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p3

    sget-object v1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    if-ne p3, v1, :cond_4

    move p3, p2

    goto :goto_0

    :cond_4
    invoke-static {v0, p2}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p3

    .line 1260
    :goto_0
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v0

    invoke-static {p3, v0}, Lnet/time4j/calendar/JulianCalendar;->access$600(II)I

    move-result p3

    .line 1261
    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1262
    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    invoke-static {v0, p2, p1, p3}, Lnet/time4j/calendar/JulianCalendar;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1

    .line 1253
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
