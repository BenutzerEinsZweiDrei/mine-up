.class Lnet/time4j/calendar/HistoricCalendar$YearElement;
.super Lnet/time4j/calendar/HistoricCalendar$SimpleElement;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/format/internal/DualFormatElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearElement"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x58d2b73062e125dfL


# direct methods
.method private constructor <init>()V
    .locals 4

    const-string v0, "YEAR_OF_ERA"

    const/4 v1, 0x1

    const v2, 0x3b9ac9ff

    const/4 v3, 0x0

    .line 1713
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/time4j/calendar/HistoricCalendar$SimpleElement;-><init>(Ljava/lang/String;IILnet/time4j/calendar/HistoricCalendar$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 1702
    invoke-direct {p0}, Lnet/time4j/calendar/HistoricCalendar$YearElement;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1803
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->RELATED_STANDARD_YEAR:Lnet/time4j/format/TextElement;

    return-object v0
.end method


# virtual methods
.method public getSymbol()C
    .locals 1

    const/16 v0, 0x79

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;
    .locals 1

    .line 1750
    invoke-static {p3}, Lnet/time4j/calendar/HistoricCalendar;->access$1100(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1755
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v0

    .line 1756
    invoke-interface {v0, p1, p2, p3}, Lnet/time4j/format/TextElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/ParsePosition;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1790
    invoke-static {p3}, Lnet/time4j/calendar/HistoricCalendar;->access$1100(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1795
    :cond_0
    const-class v1, Lnet/time4j/format/internal/DualFormatElement;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/internal/DualFormatElement;

    .line 1796
    invoke-interface {v0, p1, p2, p3, p4}, Lnet/time4j/format/internal/DualFormatElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoEntity;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1702
    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HistoricCalendar$YearElement;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 1733
    instance-of v0, p1, Lnet/time4j/calendar/HistoricCalendar;

    if-eqz v0, :cond_0

    .line 1734
    const-class v0, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    .line 1735
    invoke-static {p1}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v0

    .line 1736
    invoke-interface {v0, p1, p2, p3}, Lnet/time4j/format/TextElement;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)V

    return-void

    .line 1738
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

.method public print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/NumberSystem;CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/time4j/engine/ChronoException;
        }
    .end annotation

    .line 1772
    instance-of v0, p1, Lnet/time4j/calendar/HistoricCalendar;

    if-eqz v0, :cond_0

    .line 1773
    const-class v0, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/HistoricCalendar;

    .line 1774
    const-class v2, Lnet/time4j/format/internal/DualFormatElement;

    invoke-static {v0}, Lnet/time4j/calendar/HistoricCalendar;->access$1000(Lnet/time4j/calendar/HistoricCalendar;)Lnet/time4j/history/ChronoHistory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/internal/DualFormatElement;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 1775
    invoke-interface/range {v0 .. v7}, Lnet/time4j/format/internal/DualFormatElement;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/NumberSystem;CII)V

    return-void

    .line 1777
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot cast to historic calendar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
