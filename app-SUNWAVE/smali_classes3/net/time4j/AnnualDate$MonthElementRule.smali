.class Lnet/time4j/AnnualDate$MonthElementRule;
.super Ljava/lang/Object;
.source "AnnualDate.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/AnnualDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/AnnualDate;",
        "Lnet/time4j/Month;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/AnnualDate$1;)V
    .locals 0

    .line 830
    invoke-direct {p0}, Lnet/time4j/AnnualDate$MonthElementRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 830
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$MonthElementRule;->getChildAtCeiling(Lnet/time4j/AnnualDate;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/AnnualDate;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/AnnualDate;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 892
    sget-object p1, Lnet/time4j/AnnualDate;->DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 830
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$MonthElementRule;->getChildAtFloor(Lnet/time4j/AnnualDate;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/AnnualDate;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/AnnualDate;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 885
    sget-object p1, Lnet/time4j/AnnualDate;->DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 830
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$MonthElementRule;->getMaximum(Lnet/time4j/AnnualDate;)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/AnnualDate;)Lnet/time4j/Month;
    .locals 0

    .line 852
    sget-object p1, Lnet/time4j/Month;->DECEMBER:Lnet/time4j/Month;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 830
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$MonthElementRule;->getMinimum(Lnet/time4j/AnnualDate;)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/AnnualDate;)Lnet/time4j/Month;
    .locals 0

    .line 845
    sget-object p1, Lnet/time4j/Month;->JANUARY:Lnet/time4j/Month;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 830
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$MonthElementRule;->getValue(Lnet/time4j/AnnualDate;)Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/AnnualDate;)Lnet/time4j/Month;
    .locals 0

    .line 838
    invoke-virtual {p1}, Lnet/time4j/AnnualDate;->getMonth()Lnet/time4j/Month;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 830
    check-cast p1, Lnet/time4j/AnnualDate;

    check-cast p2, Lnet/time4j/Month;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/AnnualDate$MonthElementRule;->isValid(Lnet/time4j/AnnualDate;Lnet/time4j/Month;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/AnnualDate;Lnet/time4j/Month;)Z
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

    .line 830
    check-cast p1, Lnet/time4j/AnnualDate;

    check-cast p2, Lnet/time4j/Month;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/AnnualDate$MonthElementRule;->withValue(Lnet/time4j/AnnualDate;Lnet/time4j/Month;Z)Lnet/time4j/AnnualDate;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/AnnualDate;Lnet/time4j/Month;Z)Lnet/time4j/AnnualDate;
    .locals 1

    if-eqz p2, :cond_0

    .line 877
    invoke-virtual {p2}, Lnet/time4j/Month;->getValue()I

    move-result p2

    .line 878
    new-instance p3, Lnet/time4j/AnnualDate;

    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$400(Lnet/time4j/AnnualDate;)I

    move-result p1

    invoke-static {p2}, Lnet/time4j/AnnualDate;->access$200(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p3, p2, p1, v0}, Lnet/time4j/AnnualDate;-><init>(IILnet/time4j/AnnualDate$1;)V

    return-object p3

    .line 874
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing new value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
