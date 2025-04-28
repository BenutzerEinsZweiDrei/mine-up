.class Lnet/time4j/PlainTime$MeridiemRule;
.super Ljava/lang/Object;
.source "PlainTime.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeridiemRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainTime;",
        "Lnet/time4j/Meridiem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainTime$1;)V
    .locals 0

    .line 2366
    invoke-direct {p0}, Lnet/time4j/PlainTime$MeridiemRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2366
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$MeridiemRule;->getChildAtCeiling(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2442
    sget-object p1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2366
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$MeridiemRule;->getChildAtFloor(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 2435
    sget-object p1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_AMPM:Lnet/time4j/ProportionalElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2366
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$MeridiemRule;->getMaximum(Lnet/time4j/PlainTime;)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/PlainTime;)Lnet/time4j/Meridiem;
    .locals 0

    .line 2428
    sget-object p1, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2366
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$MeridiemRule;->getMinimum(Lnet/time4j/PlainTime;)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainTime;)Lnet/time4j/Meridiem;
    .locals 0

    .line 2421
    sget-object p1, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2366
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$MeridiemRule;->getValue(Lnet/time4j/PlainTime;)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainTime;)Lnet/time4j/Meridiem;
    .locals 0

    .line 2374
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p1

    invoke-static {p1}, Lnet/time4j/Meridiem;->ofHour(I)Lnet/time4j/Meridiem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2366
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Lnet/time4j/Meridiem;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$MeridiemRule;->isValid(Lnet/time4j/PlainTime;Lnet/time4j/Meridiem;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainTime;Lnet/time4j/Meridiem;)Z
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

    .line 2366
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Lnet/time4j/Meridiem;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTime$MeridiemRule;->withValue(Lnet/time4j/PlainTime;Lnet/time4j/Meridiem;Z)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainTime;Lnet/time4j/Meridiem;Z)Lnet/time4j/PlainTime;
    .locals 2

    .line 2385
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p3

    const/16 v0, 0x18

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$700(Lnet/time4j/PlainTime;)B

    move-result p3

    :goto_0
    if-eqz p2, :cond_3

    .line 2389
    sget-object v0, Lnet/time4j/Meridiem;->AM:Lnet/time4j/Meridiem;

    const/16 v1, 0xc

    if-ne p2, v0, :cond_1

    if-lt p3, v1, :cond_2

    add-int/lit8 p3, p3, -0xc

    goto :goto_1

    .line 2393
    :cond_1
    sget-object v0, Lnet/time4j/Meridiem;->PM:Lnet/time4j/Meridiem;

    if-ne p2, v0, :cond_2

    if-ge p3, v1, :cond_2

    add-int/lit8 p3, p3, 0xc

    .line 2401
    :cond_2
    :goto_1
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$800(Lnet/time4j/PlainTime;)B

    move-result p2

    .line 2402
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$900(Lnet/time4j/PlainTime;)B

    move-result v0

    .line 2403
    invoke-static {p1}, Lnet/time4j/PlainTime;->access$1000(Lnet/time4j/PlainTime;)I

    move-result p1

    .line 2399
    invoke-static {p3, p2, v0, p1}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1

    .line 2388
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing am/pm-value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
