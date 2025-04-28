.class Lnet/time4j/calendar/HistoricCalendar$EraElement;
.super Lnet/time4j/format/DisplayElement;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Lnet/time4j/history/HistoricEra;",
        ">;",
        "Lnet/time4j/format/TextElement<",
        "Lnet/time4j/history/HistoricEra;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x400abec10169cd9eL


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "ERA"

    .line 1525
    invoke-direct {p0, v0}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1609
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 1514
    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar$EraElement;->getDefaultMaximum()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 1555
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 1514
    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar$EraElement;->getDefaultMinimum()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/history/HistoricEra;
    .locals 1

    .line 1548
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/history/HistoricEra;",
            ">;"
        }
    .end annotation

    .line 1534
    const-class v0, Lnet/time4j/history/HistoricEra;

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

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1514
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HistoricCalendar$EraElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/HistoricEra;
    .locals 2

    .line 1596
    invoke-static {p3}, Lnet/time4j/calendar/HistoricCalendar;->access$1100(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1601
    :cond_0
    const-class v1, Lnet/time4j/format/TextElement;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->era()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/TextElement;

    invoke-interface {v0, p1, p2, p3}, Lnet/time4j/format/TextElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object p1

    .line 1602
    const-class p2, Lnet/time4j/history/HistoricEra;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/history/HistoricEra;

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 1580
    instance-of v0, p1, Lnet/time4j/calendar/HistoricCalendar;

    if-eqz v0, :cond_0

    .line 1581
    const-class v0, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    .line 1582
    const-class v0, Lnet/time4j/format/TextElement;

    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/history/ChronoHistory;->era()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/TextElement;

    invoke-interface {v0, p1, p2, p3}, Lnet/time4j/format/TextElement;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V

    return-void

    .line 1584
    :cond_0
    new-instance p2, Lnet/time4j/engine/ChronoException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot cast to historic calendar: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
