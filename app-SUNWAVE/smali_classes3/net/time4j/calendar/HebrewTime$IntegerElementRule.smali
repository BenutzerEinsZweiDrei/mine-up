.class Lnet/time4j/calendar/HebrewTime$IntegerElementRule;
.super Ljava/lang/Object;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HebrewTime;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1163
    iput p1, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1151
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->getChildAtCeiling(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HebrewTime;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1270
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->getChildAtFloor(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1151
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->getChildAtFloor(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HebrewTime;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1265
    iget p1, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lnet/time4j/calendar/HebrewTime;->PART_OF_HOUR:Lnet/time4j/calendar/StdCalendarElement;

    :goto_1
    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HebrewTime;)Ljava/lang/Integer;
    .locals 2

    .line 1198
    iget p1, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x437

    .line 1204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1206
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x17

    .line 1202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0xc

    .line 1200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1151
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->getMaximum(Lnet/time4j/calendar/HebrewTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HebrewTime;)Ljava/lang/Integer;
    .locals 2

    .line 1185
    iget p1, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1192
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1187
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1151
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->getMinimum(Lnet/time4j/calendar/HebrewTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HebrewTime;)Ljava/lang/Integer;
    .locals 2

    .line 1171
    iget v0, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1177
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$700(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1179
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1175
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$600(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1173
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewTime;->getClockHour()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1151
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->getValue(Lnet/time4j/calendar/HebrewTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1151
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->isValid(Lnet/time4j/calendar/HebrewTime;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HebrewTime;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1220
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->getMinimum(Lnet/time4j/calendar/HebrewTime;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 1221
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->getMaximum(Lnet/time4j/calendar/HebrewTime;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1151
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->withValue(Lnet/time4j/calendar/HebrewTime;Ljava/lang/Integer;Z)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HebrewTime;Ljava/lang/Integer;Z)Lnet/time4j/calendar/HebrewTime;
    .locals 2

    if-eqz p2, :cond_7

    .line 1235
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1237
    iget v0, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    .line 1254
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$700(Lnet/time4j/calendar/HebrewTime;)I

    move-result p3

    invoke-static {p2, p3}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long p2, p2

    sget-object v0, Lnet/time4j/calendar/HebrewTime$Unit;->HALAKIM:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/calendar/HebrewTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    return-object p1

    .line 1256
    :cond_0
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$600(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    invoke-static {p1, p2}, Lnet/time4j/calendar/HebrewTime;->ofDigital(II)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1

    .line 1259
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/HebrewTime$IntegerElementRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p3, :cond_3

    .line 1248
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$600(Lnet/time4j/calendar/HebrewTime;)I

    move-result p3

    invoke-static {p2, p3}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long p2, p2

    sget-object v0, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/calendar/HebrewTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    return-object p1

    .line 1250
    :cond_3
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$700(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    invoke-static {p2, p1}, Lnet/time4j/calendar/HebrewTime;->ofDigital(II)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p3, :cond_5

    .line 1240
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewTime;->getClockHour()I

    move-result p3

    invoke-static {p2, p3}, Lnet/time4j/base/MathUtils;->safeSubtract(II)I

    move-result p2

    int-to-long p2, p2

    sget-object v0, Lnet/time4j/calendar/HebrewTime$Unit;->HOURS:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/calendar/HebrewTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    return-object p1

    .line 1241
    :cond_5
    invoke-virtual {p1}, Lnet/time4j/calendar/HebrewTime;->isDay()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1242
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$700(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    invoke-static {p2, p1}, Lnet/time4j/calendar/HebrewTime;->ofDay(II)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1

    .line 1244
    :cond_6
    invoke-static {p1}, Lnet/time4j/calendar/HebrewTime;->access$700(Lnet/time4j/calendar/HebrewTime;)I

    move-result p1

    invoke-static {p2, p1}, Lnet/time4j/calendar/HebrewTime;->ofNight(II)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1

    .line 1232
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
