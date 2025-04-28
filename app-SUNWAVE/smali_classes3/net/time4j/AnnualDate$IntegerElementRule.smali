.class Lnet/time4j/AnnualDate$IntegerElementRule;
.super Ljava/lang/Object;
.source "AnnualDate.java"

# interfaces
.implements Lnet/time4j/engine/IntElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/AnnualDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/IntElementRule<",
        "Lnet/time4j/AnnualDate;",
        ">;"
    }
.end annotation


# instance fields
.field private final daywise:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-boolean p1, p0, Lnet/time4j/AnnualDate$IntegerElementRule;->daywise:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$IntegerElementRule;->getChildAtCeiling(Lnet/time4j/AnnualDate;)Lnet/time4j/engine/ChronoElement;

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

    .line 1015
    iget-boolean p1, p0, Lnet/time4j/AnnualDate$IntegerElementRule;->daywise:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/AnnualDate;->DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$IntegerElementRule;->getChildAtFloor(Lnet/time4j/AnnualDate;)Lnet/time4j/engine/ChronoElement;

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

    .line 1008
    iget-boolean p1, p0, Lnet/time4j/AnnualDate$IntegerElementRule;->daywise:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/AnnualDate;->DAY_OF_MONTH:Lnet/time4j/engine/ChronoElement;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)I
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$IntegerElementRule;->getInt(Lnet/time4j/AnnualDate;)I

    move-result p1

    return p1
.end method

.method public getInt(Lnet/time4j/AnnualDate;)I
    .locals 1

    .line 919
    iget-boolean v0, p0, Lnet/time4j/AnnualDate$IntegerElementRule;->daywise:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$400(Lnet/time4j/AnnualDate;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$500(Lnet/time4j/AnnualDate;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getMaximum(Lnet/time4j/AnnualDate;)Ljava/lang/Integer;
    .locals 1

    .line 971
    iget-boolean v0, p0, Lnet/time4j/AnnualDate$IntegerElementRule;->daywise:Z

    if-eqz v0, :cond_0

    .line 972
    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$500(Lnet/time4j/AnnualDate;)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$200(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0xc

    .line 974
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$IntegerElementRule;->getMaximum(Lnet/time4j/AnnualDate;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/AnnualDate;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x1

    .line 964
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$IntegerElementRule;->getMinimum(Lnet/time4j/AnnualDate;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/AnnualDate;)Ljava/lang/Integer;
    .locals 0

    .line 957
    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$IntegerElementRule;->getInt(Lnet/time4j/AnnualDate;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1}, Lnet/time4j/AnnualDate$IntegerElementRule;->getValue(Lnet/time4j/AnnualDate;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;I)Z
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/AnnualDate$IntegerElementRule;->isValid(Lnet/time4j/AnnualDate;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/AnnualDate$IntegerElementRule;->isValid(Lnet/time4j/AnnualDate;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/AnnualDate;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    .line 931
    :cond_0
    iget-boolean v2, p0, Lnet/time4j/AnnualDate$IntegerElementRule;->daywise:Z

    if-eqz v2, :cond_2

    .line 932
    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$500(Lnet/time4j/AnnualDate;)I

    move-result p1

    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$200(I)I

    move-result p1

    if-gt p2, p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    const/16 p1, 0xc

    if-gt p2, p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public isValid(Lnet/time4j/AnnualDate;Ljava/lang/Integer;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 986
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/AnnualDate$IntegerElementRule;->isValid(Lnet/time4j/AnnualDate;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/AnnualDate$IntegerElementRule;->withValue(Lnet/time4j/AnnualDate;IZ)Lnet/time4j/AnnualDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 898
    check-cast p1, Lnet/time4j/AnnualDate;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/AnnualDate$IntegerElementRule;->withValue(Lnet/time4j/AnnualDate;Ljava/lang/Integer;Z)Lnet/time4j/AnnualDate;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/AnnualDate;IZ)Lnet/time4j/AnnualDate;
    .locals 0

    .line 946
    iget-boolean p3, p0, Lnet/time4j/AnnualDate$IntegerElementRule;->daywise:Z

    if-eqz p3, :cond_0

    .line 947
    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$500(Lnet/time4j/AnnualDate;)I

    move-result p1

    invoke-static {p1, p2}, Lnet/time4j/AnnualDate;->of(II)Lnet/time4j/AnnualDate;

    move-result-object p1

    return-object p1

    .line 949
    :cond_0
    invoke-static {p1}, Lnet/time4j/AnnualDate;->access$400(Lnet/time4j/AnnualDate;)I

    move-result p1

    invoke-static {p2}, Lnet/time4j/AnnualDate;->access$200(I)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Lnet/time4j/AnnualDate;->of(II)Lnet/time4j/AnnualDate;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/AnnualDate;Ljava/lang/Integer;Z)Lnet/time4j/AnnualDate;
    .locals 0

    if-eqz p2, :cond_0

    .line 1001
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/AnnualDate$IntegerElementRule;->withValue(Lnet/time4j/AnnualDate;IZ)Lnet/time4j/AnnualDate;

    move-result-object p1

    return-object p1

    .line 998
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing new value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
