.class Lnet/time4j/calendar/EthiopianTime$MeridiemRule;
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
    name = "MeridiemRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/EthiopianTime;",
        "Lnet/time4j/Meridiem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/EthiopianTime$1;)V
    .locals 0

    .line 1332
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1332
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;->getChildAtCeiling(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/engine/ChronoElement;

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

    .line 1332
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;->getChildAtFloor(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/engine/ChronoElement;

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

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1332
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;->getMaximum(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/Meridiem;
    .locals 0

    .line 1380
    sget-object p1, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1332
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;->getMinimum(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/Meridiem;
    .locals 0

    .line 1375
    sget-object p1, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1332
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;->getValue(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EthiopianTime;)Lnet/time4j/Meridiem;
    .locals 1

    .line 1339
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$600(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    const/16 v0, 0xc

    if-ge p1, v0, :cond_0

    sget-object p1, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1332
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    check-cast p2, Lnet/time4j/Meridiem;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;->isValid(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/Meridiem;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/Meridiem;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1332
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    check-cast p2, Lnet/time4j/Meridiem;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianTime$MeridiemRule;->withValue(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/Meridiem;Z)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/Meridiem;Z)Lnet/time4j/calendar/EthiopianTime;
    .locals 2

    .line 1348
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$600(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p3

    if-eqz p2, :cond_2

    .line 1352
    sget-object v0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    const/16 v1, 0xc

    if-ne p2, v0, :cond_0

    if-lt p3, v1, :cond_1

    add-int/lit8 p3, p3, -0xc

    goto :goto_0

    .line 1356
    :cond_0
    sget-object v0, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    if-ne p2, v0, :cond_1

    if-ge p3, v1, :cond_1

    add-int/lit8 p3, p3, 0xc

    .line 1362
    :cond_1
    :goto_0
    new-instance p2, Lnet/time4j/calendar/EthiopianTime;

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$400(Lnet/time4j/calendar/EthiopianTime;)I

    move-result v0

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->access$500(Lnet/time4j/calendar/EthiopianTime;)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, p1, v1}, Lnet/time4j/calendar/EthiopianTime;-><init>(IIILnet/time4j/calendar/EthiopianTime$1;)V

    return-object p2

    .line 1351
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing am/pm-value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
