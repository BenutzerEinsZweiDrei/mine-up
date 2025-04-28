.class Lnet/time4j/PlainTime$TimeRule;
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
    name = "TimeRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainTime;",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/PlainTime$1;)V
    .locals 0

    .line 2188
    invoke-direct {p0}, Lnet/time4j/PlainTime$TimeRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2188
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$TimeRule;->getChildAtCeiling(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 2188
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$TimeRule;->getChildAtFloor(Lnet/time4j/PlainTime;)Lnet/time4j/engine/ChronoElement;

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2188
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$TimeRule;->getMaximum(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 0

    .line 2235
    sget-object p1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2188
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$TimeRule;->getMinimum(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 0

    .line 2228
    sget-object p1, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2188
    check-cast p1, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTime$TimeRule;->getValue(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTime;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2188
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTime$TimeRule;->isValid(Lnet/time4j/PlainTime;Lnet/time4j/PlainTime;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainTime;Lnet/time4j/PlainTime;)Z
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

    .line 2188
    check-cast p1, Lnet/time4j/PlainTime;

    check-cast p2, Lnet/time4j/PlainTime;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTime$TimeRule;->withValue(Lnet/time4j/PlainTime;Lnet/time4j/PlainTime;Z)Lnet/time4j/PlainTime;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainTime;Lnet/time4j/PlainTime;Z)Lnet/time4j/PlainTime;
    .locals 0

    if-eqz p2, :cond_0

    return-object p2

    .line 2208
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing time value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
