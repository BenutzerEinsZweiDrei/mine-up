.class Lnet/time4j/calendar/HistoricCalendar$IntegerRule;
.super Ljava/lang/Object;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput p1, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    return-void
.end method

.method private getElement(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1221
    iget v0, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1229
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->centuryOfEra()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1

    .line 1231
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1227
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->dayOfYear()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1

    .line 1225
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->dayOfMonth()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1

    .line 1223
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getChildAtCeiling(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1209
    iget p1, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1214
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getChildAtFloor(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HistoricCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1196
    iget p1, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1201
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/HistoricCalendar;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/calendar/HistoricCalendar;)I
    .locals 8

    .line 1239
    iget v0, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1258
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getElement(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HistoricCalendar;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p1

    return p1

    .line 1245
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v0

    .line 1246
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v1

    .line 1247
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v2

    .line 1248
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_2

    .line 1251
    invoke-static {v1, v2, v3, v5}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v6

    .line 1252
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v4

    return v0

    .line 1243
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p1

    return p1

    .line 1241
    :cond_4
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p1

    return p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HistoricCalendar;)Ljava/lang/Integer;
    .locals 8

    .line 1149
    iget v0, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1150
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->dayOfMonth()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HistoricCalendar;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1151
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v1

    .line 1152
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v2

    .line 1153
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-gt v5, v0, :cond_1

    .line 1156
    invoke-static {v1, v2, v3, v5}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v6

    .line 1157
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v4

    .line 1161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1164
    :cond_2
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getElement(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HistoricCalendar;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getMaximum(Lnet/time4j/calendar/HistoricCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HistoricCalendar;)Ljava/lang/Integer;
    .locals 7

    .line 1129
    iget v0, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1130
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result v0

    .line 1131
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v1

    .line 1132
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v2

    .line 1133
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$900(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v0, :cond_1

    .line 1135
    invoke-static {v1, v2, v3, v4}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v5

    .line 1136
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v6

    invoke-virtual {v6, v5}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1137
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1142
    :cond_1
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getElement(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/calendar/HistoricCalendar;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getMinimum(Lnet/time4j/calendar/HistoricCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HistoricCalendar;)Ljava/lang/Integer;
    .locals 0

    .line 1122
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getInt(Lnet/time4j/calendar/HistoricCalendar;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getValue(Lnet/time4j/calendar/HistoricCalendar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/HistoricCalendar;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->isValid(Lnet/time4j/calendar/HistoricCalendar;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HistoricCalendar;I)Z
    .locals 2

    .line 1269
    iget v0, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1273
    :cond_0
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getElement(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lnet/time4j/calendar/HistoricCalendar;->isValid(Lnet/time4j/engine/ChronoElement;I)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HistoricCalendar;Ljava/lang/Integer;)Z
    .locals 2

    if-eqz p2, :cond_1

    .line 1174
    iget v0, p0, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1178
    :cond_0
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getElement(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lnet/time4j/calendar/HistoricCalendar;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/HistoricCalendar;IZ)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1101
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->withValue(Lnet/time4j/calendar/HistoricCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HistoricCalendar;IZ)Lnet/time4j/calendar/HistoricCalendar;
    .locals 0

    .line 1284
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getElement(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lnet/time4j/calendar/HistoricCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HistoricCalendar;Ljava/lang/Integer;Z)Lnet/time4j/calendar/HistoricCalendar;
    .locals 0

    .line 1189
    invoke-direct {p0, p1}, Lnet/time4j/calendar/HistoricCalendar$IntegerRule;->getElement(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lnet/time4j/calendar/HistoricCalendar;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    return-object p1
.end method
