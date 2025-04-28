.class Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;
.super Ljava/lang/Object;
.source "EthiopianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EvangelistRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/EthiopianCalendar;",
        "Lnet/time4j/calendar/Evangelist;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/EthiopianCalendar$1;)V
    .locals 0

    .line 1427
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1427
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->getChildAtCeiling(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianCalendar;",
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

    .line 1427
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->getChildAtFloor(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/EthiopianCalendar;",
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

    .line 1427
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Evangelist;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Evangelist;
    .locals 1

    .line 1449
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianCalendar;->access$900(Lnet/time4j/calendar/EthiopianCalendar;)I

    move-result p1

    const/16 v0, 0x270d

    if-lt p1, v0, :cond_0

    sget-object p1, Lnet/time4j/calendar/Evangelist;->LUKE:Lnet/time4j/calendar/Evangelist;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/time4j/calendar/Evangelist;->JOHN:Lnet/time4j/calendar/Evangelist;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1427
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Evangelist;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Evangelist;
    .locals 0

    .line 1442
    sget-object p1, Lnet/time4j/calendar/Evangelist;->MATTHEW:Lnet/time4j/calendar/Evangelist;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1427
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->getValue(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Evangelist;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Evangelist;
    .locals 1

    .line 1435
    invoke-static {}, Lnet/time4j/calendar/Evangelist;->values()[Lnet/time4j/calendar/Evangelist;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/EthiopianCalendar;->getYear()I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    rem-int/lit8 p1, p1, 0x4

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1427
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    check-cast p2, Lnet/time4j/calendar/Evangelist;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->isValid(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/Evangelist;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/Evangelist;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1459
    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->getMaximum(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Evangelist;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/time4j/calendar/Evangelist;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1427
    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    check-cast p2, Lnet/time4j/calendar/Evangelist;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->withValue(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/Evangelist;Z)Lnet/time4j/calendar/EthiopianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/EthiopianCalendar;Lnet/time4j/calendar/Evangelist;Z)Lnet/time4j/calendar/EthiopianCalendar;
    .locals 1

    if-eqz p2, :cond_0

    .line 1474
    invoke-virtual {p2}, Lnet/time4j/calendar/Evangelist;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EthiopianCalendar$EvangelistRule;->getValue(Lnet/time4j/calendar/EthiopianCalendar;)Lnet/time4j/calendar/Evangelist;

    move-result-object p3

    invoke-virtual {p3}, Lnet/time4j/calendar/Evangelist;->ordinal()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    .line 1475
    sget-object v0, Lnet/time4j/calendar/EthiopianCalendar$Unit;->YEARS:Lnet/time4j/calendar/EthiopianCalendar$Unit;

    invoke-virtual {p1, p2, p3, v0}, Lnet/time4j/calendar/EthiopianCalendar;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/EthiopianCalendar;

    return-object p1

    .line 1471
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing evangelist."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
