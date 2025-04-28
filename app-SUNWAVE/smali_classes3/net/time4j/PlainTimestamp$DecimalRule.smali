.class Lnet/time4j/PlainTimestamp$DecimalRule;
.super Lnet/time4j/PlainTimestamp$FieldRule;
.source "PlainTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecimalRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/PlainTimestamp$FieldRule<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1730
    invoke-direct {p0, p1, v0}, Lnet/time4j/PlainTimestamp$FieldRule;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/PlainTimestamp$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1724
    check-cast p1, Lnet/time4j/PlainTimestamp;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTimestamp$DecimalRule;->isValid(Lnet/time4j/PlainTimestamp;Ljava/math/BigDecimal;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isValid(Lnet/time4j/PlainTimestamp;Ljava/lang/Object;)Z
    .locals 0

    .line 1724
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTimestamp$DecimalRule;->isValid(Lnet/time4j/PlainTimestamp;Ljava/math/BigDecimal;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainTimestamp;Ljava/math/BigDecimal;)Z
    .locals 2

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 1746
    :cond_0
    invoke-static {p0}, Lnet/time4j/PlainTimestamp$FieldRule;->access$600(Lnet/time4j/PlainTimestamp$FieldRule;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    .line 1747
    invoke-static {p0}, Lnet/time4j/PlainTimestamp$FieldRule;->access$600(Lnet/time4j/PlainTimestamp$FieldRule;)Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    .line 1750
    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1751
    invoke-virtual {p2, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-gtz p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1724
    check-cast p1, Lnet/time4j/PlainTimestamp;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTimestamp$DecimalRule;->withValue(Lnet/time4j/PlainTimestamp;Ljava/math/BigDecimal;Z)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValue(Lnet/time4j/PlainTimestamp;Ljava/lang/Object;Z)Lnet/time4j/PlainTimestamp;
    .locals 0

    .line 1724
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTimestamp$DecimalRule;->withValue(Lnet/time4j/PlainTimestamp;Ljava/math/BigDecimal;Z)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainTimestamp;Ljava/math/BigDecimal;Z)Lnet/time4j/PlainTimestamp;
    .locals 1

    .line 1763
    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTimestamp$DecimalRule;->isValid(Lnet/time4j/PlainTimestamp;Ljava/math/BigDecimal;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1767
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p3

    invoke-static {p0}, Lnet/time4j/PlainTimestamp$FieldRule;->access$600(Lnet/time4j/PlainTimestamp$FieldRule;)Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lnet/time4j/PlainTime;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p2

    check-cast p2, Lnet/time4j/PlainTime;

    .line 1768
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-static {p1, p2}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 1764
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
