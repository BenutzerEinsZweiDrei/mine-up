.class Lnet/time4j/calendar/HistoricCalendar$SimpleElement;
.super Lnet/time4j/format/DisplayElement;
.source "HistoricCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34db7113aa33706eL


# instance fields
.field private final transient max:Ljava/lang/Integer;

.field private final transient min:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1634
    invoke-direct {p0, p1}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    .line 1636
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->min:Ljava/lang/Integer;

    .line 1637
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->max:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 1615
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1688
    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HC_CONTINUOUS_DOM"

    .line 1690
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1691
    invoke-static {}, Lnet/time4j/calendar/HistoricCalendar;->access$1200()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "CENTURY_OF_ERA"

    .line 1692
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1693
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->CENTURY_OF_ERA:Lnet/time4j/engine/ChronoElement;

    return-object v0

    .line 1695
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected doEquals(Lnet/time4j/engine/BasicElement;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/BasicElement<",
            "*>;)Z"
        }
    .end annotation

    .line 1681
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;

    .line 1682
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->min:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->min:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->max:Ljava/lang/Integer;

    iget-object p1, p1, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->max:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    .line 1660
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->max:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 1615
    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    .line 1653
    iget-object v0, p0, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->min:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 1615
    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1646
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
