.class Lnet/time4j/history/HistoricDateElement$Rule;
.super Ljava/lang/Object;
.source "HistoricDateElement.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/history/HistoricDateElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TC;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "TC;",
        "Lnet/time4j/history/HistoricDate;",
        ">;"
    }
.end annotation


# instance fields
.field private final history:Lnet/time4j/history/ChronoHistory;


# direct methods
.method constructor <init>(Lnet/time4j/history/ChronoHistory;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricDateElement$Rule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 226
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricDateElement$Rule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 219
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricDateElement$Rule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricDate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/history/HistoricDate;"
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/ChronoHistory;

    const/16 v1, 0x1f

    if-ne p1, v0, :cond_0

    .line 179
    sget-object p1, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    const v0, 0x3b9a8f4d

    const/16 v2, 0x8

    invoke-static {p1, v0, v2, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    iget-object p1, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    const/16 v2, 0xc

    if-ne p1, v0, :cond_1

    .line 181
    sget-object p1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const v0, 0x3b9a79c9

    invoke-static {p1, v0, v2, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1

    .line 182
    :cond_1
    iget-object p1, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

    if-ne p1, v0, :cond_2

    .line 183
    sget-object p1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const v0, 0x3b9ac9ff

    invoke-static {p1, v0, v2, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1

    .line 185
    :cond_2
    sget-object p1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const/16 v0, 0x270f

    invoke-static {p1, v0, v2, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricDateElement$Rule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricDate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/history/HistoricDate;"
        }
    .end annotation

    .line 163
    iget-object p1, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_BYZANTINE:Lnet/time4j/history/ChronoHistory;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 164
    sget-object p1, Lnet/time4j/history/HistoricEra;->BYZANTINE:Lnet/time4j/history/HistoricEra;

    const/4 v0, 0x0

    const/16 v2, 0x9

    invoke-static {p1, v0, v2, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    iget-object p1, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_JULIAN:Lnet/time4j/history/ChronoHistory;

    if-ne p1, v0, :cond_1

    .line 166
    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    const v0, 0x3b9a79ca

    invoke-static {p1, v0, v1, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1

    .line 167
    :cond_1
    iget-object p1, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v0, Lnet/time4j/history/ChronoHistory;->PROLEPTIC_GREGORIAN:Lnet/time4j/history/ChronoHistory;

    if-ne p1, v0, :cond_2

    .line 168
    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    const v0, 0x3b9aca00

    invoke-static {p1, v0, v1, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1

    .line 170
    :cond_2
    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    const/16 v0, 0x2d

    invoke-static {p1, v0, v1, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricDateElement$Rule;->getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricDate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/history/HistoricDate;"
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object v0, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 155
    new-instance v0, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/history/HistoricDate;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/history/HistoricDateElement$Rule;->isValid(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/HistoricDate;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/HistoricDate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lnet/time4j/history/HistoricDate;",
            ")Z"
        }
    .end annotation

    .line 196
    iget-object p1, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p1, p2}, Lnet/time4j/history/ChronoHistory;->isValid(Lnet/time4j/history/HistoricDate;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/history/HistoricDate;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/history/HistoricDateElement$Rule;->withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/HistoricDate;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/HistoricDate;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lnet/time4j/history/HistoricDate;",
            "Z)TC;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 208
    iget-object p3, p0, Lnet/time4j/history/HistoricDateElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    invoke-virtual {p3, p2}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/history/HistoricDate;)Lnet/time4j/PlainDate;

    move-result-object p2

    .line 209
    sget-object p3, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, p3, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing historic date."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
