.class Lnet/time4j/PlainDate$DateElementRule;
.super Ljava/lang/Object;
.source "PlainDate.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateElementRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainDate;",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainDate$1;)V
    .locals 0

    .line 2627
    invoke-direct {p0}, Lnet/time4j/PlainDate$DateElementRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2627
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$DateElementRule;->getChildAtCeiling(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
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

    .line 2627
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$DateElementRule;->getChildAtFloor(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/PlainDate;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
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

    .line 2627
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$DateElementRule;->getMaximum(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 0

    .line 2674
    sget-object p1, Lnet/time4j/PlainDate;->MAX:Lnet/time4j/PlainDate;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2627
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$DateElementRule;->getMinimum(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 0

    .line 2667
    sget-object p1, Lnet/time4j/PlainDate;->MIN:Lnet/time4j/PlainDate;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2627
    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainDate$DateElementRule;->getValue(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainDate;)Lnet/time4j/PlainDate;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2627
    check-cast p1, Lnet/time4j/PlainDate;

    check-cast p2, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainDate$DateElementRule;->isValid(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;)Z
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

    .line 2627
    check-cast p1, Lnet/time4j/PlainDate;

    check-cast p2, Lnet/time4j/PlainDate;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainDate$DateElementRule;->withValue(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;Z)Lnet/time4j/PlainDate;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainDate;Lnet/time4j/PlainDate;Z)Lnet/time4j/PlainDate;
    .locals 0

    if-eqz p2, :cond_0

    return-object p2

    .line 2647
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing date value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
