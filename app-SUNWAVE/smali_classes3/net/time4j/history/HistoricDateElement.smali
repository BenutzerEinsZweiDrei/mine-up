.class final Lnet/time4j/history/HistoricDateElement;
.super Lnet/time4j/engine/BasicElement;
.source "HistoricDateElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/history/HistoricDateElement$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Lnet/time4j/history/HistoricDate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4ac118a85d3f9a2eL


# instance fields
.field private final history:Lnet/time4j/history/ChronoHistory;


# direct methods
.method constructor <init>(Lnet/time4j/history/ChronoHistory;)V
    .locals 1

    const-string v0, "HISTORIC_DATE"

    .line 62
    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lnet/time4j/history/HistoricDateElement;->history:Lnet/time4j/history/ChronoHistory;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lnet/time4j/history/HistoricDateElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0}, Lnet/time4j/history/ChronoHistory;->date()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;",
            "Lnet/time4j/history/HistoricDate;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    new-instance p1, Lnet/time4j/history/HistoricDateElement$Rule;

    iget-object v0, p0, Lnet/time4j/history/HistoricDateElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-direct {p1, v0}, Lnet/time4j/history/HistoricDateElement$Rule;-><init>(Lnet/time4j/history/ChronoHistory;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected doEquals(Lnet/time4j/engine/BasicElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/BasicElement<",
            "*>;)Z"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lnet/time4j/history/HistoricDateElement;->history:Lnet/time4j/history/ChronoHistory;

    check-cast p1, Lnet/time4j/history/HistoricDateElement;

    iget-object p1, p1, Lnet/time4j/history/HistoricDateElement;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lnet/time4j/history/HistoricDateElement;->getDefaultMaximum()Lnet/time4j/history/HistoricDate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/history/HistoricDate;
    .locals 4

    .line 87
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v1, 0x270f

    const/16 v2, 0xc

    const/16 v3, 0x1f

    invoke-static {v0, v1, v2, v3}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lnet/time4j/history/HistoricDateElement;->getDefaultMinimum()Lnet/time4j/history/HistoricDate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/history/HistoricDate;
    .locals 3

    .line 80
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    const/16 v1, 0x2d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v2}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/history/HistoricDate;",
            ">;"
        }
    .end annotation

    .line 73
    const-class v0, Lnet/time4j/history/HistoricDate;

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
