.class Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;
.super Ljava/lang/Object;
.source "EthiopianTime.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/EthiopianTime;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iput p1, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1448
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->getChildAtCeiling(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianTime;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1448
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->getChildAtFloor(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianTime;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EthiopianTime;)Ljava/lang/Integer;
    .locals 2

    .line 1498
    iget p1, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1507
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 p1, 0x3b

    .line 1505
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0x17

    .line 1502
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 p1, 0xc

    .line 1500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1448
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->getMaximum(Lnet/time4j/calendar/EthiopianTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EthiopianTime;)Ljava/lang/Integer;
    .locals 2

    .line 1484
    iget p1, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1492
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1490
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1486
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1448
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->getMinimum(Lnet/time4j/calendar/EthiopianTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EthiopianTime;)Ljava/lang/Integer;
    .locals 2

    .line 1468
    iget v0, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1476
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$500(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1478
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1474
    :cond_1
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1472
    :cond_2
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$600(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1470
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianTime;->getHour()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1448
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->getValue(Lnet/time4j/calendar/EthiopianTime;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1448
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->isValid(Lnet/time4j/calendar/EthiopianTime;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EthiopianTime;Ljava/lang/Integer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1521
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->getMinimum(Lnet/time4j/calendar/EthiopianTime;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 1522
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->getMaximum(Lnet/time4j/calendar/EthiopianTime;)Ljava/lang/Integer;

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

    .line 1448
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->withValue(Lnet/time4j/calendar/EthiopianTime;Ljava/lang/Integer;Z)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EthiopianTime;Ljava/lang/Integer;Z)Lnet/time4j/calendar/EthiopianTime;
    .locals 2

    if-eqz p2, :cond_5

    .line 1536
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1538
    iget p3, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 1550
    new-instance p3, Lnet/time4j/calendar/EthiopianTime;

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$600(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    invoke-direct {p3, v0, p1, p2, v1}, Lnet/time4j/calendar/EthiopianTime;-><init>(IIILnet/time4j/calendar/EthiopianTime$1;)V

    return-object p3

    .line 1552
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown element index: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lnet/time4j/calendar/EthiopianTime$IntegerElementRule;->index:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1548
    :cond_1
    new-instance p3, Lnet/time4j/calendar/EthiopianTime;

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$600(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$500(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    invoke-direct {p3, v0, p2, p1, v1}, Lnet/time4j/calendar/EthiopianTime;-><init>(IIILnet/time4j/calendar/EthiopianTime$1;)V

    return-object p3

    .line 1546
    :cond_2
    new-instance p3, Lnet/time4j/calendar/EthiopianTime;

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$500(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    invoke-direct {p3, p2, v0, p1, v1}, Lnet/time4j/calendar/EthiopianTime;-><init>(IIILnet/time4j/calendar/EthiopianTime$1;)V

    return-object p3

    .line 1540
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianTime;->isDay()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1541
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p3

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$500(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    invoke-static {p2, p3, p1}, Lnet/time4j/calendar/EthiopianTime;->ofDay(III)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1

    .line 1543
    :cond_4
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p3

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$500(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    invoke-static {p2, p3, p1}, Lnet/time4j/calendar/EthiopianTime;->ofNight(III)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1

    .line 1533
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
