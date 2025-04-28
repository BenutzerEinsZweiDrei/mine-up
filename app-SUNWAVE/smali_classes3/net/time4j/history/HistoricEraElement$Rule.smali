.class Lnet/time4j/history/HistoricEraElement$Rule;
.super Ljava/lang/Object;
.source "HistoricEraElement.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/history/HistoricEraElement;
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
        "Lnet/time4j/history/HistoricEra;",
        ">;"
    }
.end annotation


# instance fields
.field private final history:Lnet/time4j/history/ChronoHistory;


# direct methods
.method constructor <init>(Lnet/time4j/history/ChronoHistory;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lnet/time4j/history/HistoricEraElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 200
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricEraElement$Rule;->getChildAtCeiling(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

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

    .line 305
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 200
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricEraElement$Rule;->getChildAtFloor(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoElement;

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

    .line 298
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Never called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricEraElement$Rule;->getMaximum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricEra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/history/HistoricEra;"
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricEraElement$Rule;->getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    .line 247
    sget-object v0, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_0

    .line 248
    sget-object p1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricEraElement$Rule;->getMinimum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricEra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/history/HistoricEra;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricEraElement$Rule;->getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    .line 234
    sget-object v0, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    if-ne p1, v0, :cond_0

    .line 235
    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/history/HistoricEraElement$Rule;->getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/history/HistoricEra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lnet/time4j/history/HistoricEra;"
        }
    .end annotation

    .line 222
    :try_start_0
    iget-object v0, p0, Lnet/time4j/history/HistoricEraElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v1, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {v0, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 224
    new-instance v0, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 200
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/history/HistoricEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/history/HistoricEraElement$Rule;->isValid(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/HistoricEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/HistoricEra;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lnet/time4j/history/HistoricEra;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 266
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/time4j/history/HistoricEraElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v2, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {v1, p1}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    check-cast p2, Lnet/time4j/history/HistoricEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/history/HistoricEraElement$Rule;->withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/HistoricEra;Z)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/HistoricEra;Z)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lnet/time4j/history/HistoricEra;",
            "Z)TC;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 284
    iget-object p3, p0, Lnet/time4j/history/HistoricEraElement$Rule;->history:Lnet/time4j/history/ChronoHistory;

    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/PlainDate;

    invoke-virtual {p3, v0}, Lnet/time4j/history/ChronoHistory;->convert(Lnet/time4j/PlainDate;)Lnet/time4j/history/HistoricDate;

    move-result-object p3

    .line 286
    invoke-virtual {p3}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p3

    if-ne p3, p2, :cond_0

    return-object p1

    .line 291
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lnet/time4j/history/HistoricEra;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing era value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
