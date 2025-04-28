.class Lnet/time4j/PlainTimestamp$FieldRule;
.super Ljava/lang/Object;
.source "PlainTimestamp.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/PlainTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/PlainTimestamp;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/time4j/engine/ChronoElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)V"
        }
    .end annotation

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    iput-object p1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/PlainTimestamp$1;)V
    .locals 0

    .line 1555
    invoke-direct {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    return-void
.end method

.method static synthetic access$600(Lnet/time4j/PlainTimestamp$FieldRule;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1555
    iget-object p0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    return-object p0
.end method

.method static of(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/PlainTimestamp$FieldRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/PlainTimestamp$FieldRule<",
            "TV;>;"
        }
    .end annotation

    .line 1575
    new-instance v0, Lnet/time4j/PlainTimestamp$FieldRule;

    invoke-direct {v0, p0}, Lnet/time4j/PlainTimestamp$FieldRule;-><init>(Lnet/time4j/engine/ChronoElement;)V

    return-object v0
.end method

.method private toNumber(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)J"
        }
    .end annotation

    .line 1718
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1555
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->getChildAtCeiling(Lnet/time4j/PlainTimestamp;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/PlainTimestamp;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTimestamp;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1712
    invoke-static {}, Lnet/time4j/PlainTimestamp;->access$400()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1555
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->getChildAtFloor(Lnet/time4j/PlainTimestamp;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/PlainTimestamp;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTimestamp;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1704
    invoke-static {}, Lnet/time4j/PlainTimestamp;->access$400()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1555
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->getMaximum(Lnet/time4j/PlainTimestamp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/PlainTimestamp;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTimestamp;",
            ")TV;"
        }
    .end annotation

    .line 1610
    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1612
    :cond_0
    iget-object p1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isTimeElement()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1613
    iget-object p1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1616
    :cond_1
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 1617
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1555
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->getMinimum(Lnet/time4j/PlainTimestamp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/PlainTimestamp;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTimestamp;",
            ")TV;"
        }
    .end annotation

    .line 1596
    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1598
    :cond_0
    iget-object p1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->isTimeElement()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1599
    iget-object p1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1602
    :cond_1
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 1603
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1555
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->getValue(Lnet/time4j/PlainTimestamp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/PlainTimestamp;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTimestamp;",
            ")TV;"
        }
    .end annotation

    .line 1582
    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainDate;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1584
    :cond_0
    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->isTimeElement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1585
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTime;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1588
    :cond_1
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing rule for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 1589
    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1555
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/PlainTimestamp$FieldRule;->isValid(Lnet/time4j/PlainTimestamp;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/PlainTimestamp;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTimestamp;",
            "TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1631
    :cond_0
    iget-object v1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1632
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0, p2}, Lnet/time4j/PlainDate;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1633
    :cond_1
    iget-object v1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v1}, Lnet/time4j/engine/ChronoElement;->isTimeElement()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1634
    const-class v1, Ljava/lang/Number;

    iget-object v2, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1635
    iget-object p1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->toNumber(Ljava/lang/Object;)J

    move-result-wide v1

    .line 1636
    iget-object p1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->toNumber(Ljava/lang/Object;)J

    move-result-wide v3

    .line 1637
    invoke-direct {p0, p2}, Lnet/time4j/PlainTimestamp$FieldRule;->toNumber(Ljava/lang/Object;)J

    move-result-wide p1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    cmp-long p1, v3, p1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 1639
    :cond_3
    iget-object v1, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    .line 1640
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    .line 1641
    invoke-virtual {v1, p2}, Lnet/time4j/PlainTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 1645
    :cond_4
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0, p2}, Lnet/time4j/PlainTime;->isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1649
    :cond_5
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing rule for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 1650
    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1555
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/PlainTimestamp$FieldRule;->withValue(Lnet/time4j/PlainTimestamp;Ljava/lang/Object;Z)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/PlainTimestamp;Ljava/lang/Object;Z)Lnet/time4j/PlainTimestamp;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTimestamp;",
            "TV;Z)",
            "Lnet/time4j/PlainTimestamp;"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 1665
    invoke-virtual {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->getValue(Lnet/time4j/PlainTimestamp;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 1668
    invoke-static {}, Lnet/time4j/PlainTimestamp;->access$300()Lnet/time4j/engine/TimeAxis;

    move-result-object p3

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p3, v0}, Lnet/time4j/engine/TimeAxis;->getBaseUnit(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/IsoUnit;

    .line 1669
    invoke-virtual {p0, p1}, Lnet/time4j/PlainTimestamp$FieldRule;->getValue(Lnet/time4j/PlainTimestamp;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/time4j/PlainTimestamp$FieldRule;->toNumber(Ljava/lang/Object;)J

    move-result-wide v0

    .line 1670
    invoke-direct {p0, p2}, Lnet/time4j/PlainTimestamp$FieldRule;->toNumber(Ljava/lang/Object;)J

    move-result-wide v2

    .line 1671
    invoke-static {v2, v3, v0, v1}, Lnet/time4j/base/MathUtils;->safeSubtract(JJ)J

    move-result-wide v0

    .line 1672
    invoke-virtual {p1, v0, v1, p3}, Lnet/time4j/PlainTimestamp;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    return-object p1

    .line 1673
    :cond_1
    iget-object p3, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1674
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object p3

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p3, v0, p2}, Lnet/time4j/PlainDate;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p2

    check-cast p2, Lnet/time4j/PlainDate;

    .line 1675
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 1676
    :cond_2
    iget-object p3, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->isTimeElement()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1677
    const-class p3, Ljava/lang/Number;

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string v0, "Out of range: "

    if-eqz p3, :cond_4

    .line 1678
    iget-object p3, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3}, Lnet/time4j/PlainTimestamp$FieldRule;->toNumber(Ljava/lang/Object;)J

    move-result-wide v1

    .line 1679
    iget-object p3, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3}, Lnet/time4j/PlainTimestamp$FieldRule;->toNumber(Ljava/lang/Object;)J

    move-result-wide v3

    .line 1680
    invoke-direct {p0, p2}, Lnet/time4j/PlainTimestamp$FieldRule;->toNumber(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long p3, v1, v5

    if-gtz p3, :cond_3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_3

    goto :goto_0

    .line 1682
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1684
    :cond_4
    iget-object p3, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v1, Lnet/time4j/PlainTime;->WALL_TIME:Lnet/time4j/engine/ChronoElement;

    .line 1685
    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Lnet/time4j/PlainTime;->MAX:Lnet/time4j/PlainTime;

    .line 1686
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    .line 1688
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1691
    :cond_6
    :goto_0
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$200(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTime;

    move-result-object p3

    iget-object v0, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p3, v0, p2}, Lnet/time4j/PlainTime;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p2

    check-cast p2, Lnet/time4j/PlainTime;

    .line 1692
    invoke-static {p1}, Lnet/time4j/PlainTimestamp;->access$100(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainDate;

    move-result-object p1

    invoke-static {p1, p2}, Lnet/time4j/PlainTimestamp;->of(Lnet/time4j/PlainDate;Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 1695
    :cond_7
    new-instance p1, Lnet/time4j/engine/ChronoException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing rule for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/time4j/PlainTimestamp$FieldRule;->element:Lnet/time4j/engine/ChronoElement;

    .line 1696
    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1662
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing element value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
