.class Lnet/time4j/Weekmodel$CalendarWeekElement;
.super Lnet/time4j/AbstractDateElement;
.source "Weekmodel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/Weekmodel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarWeekElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/AbstractDateElement<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5261d00674a7c3d2L


# instance fields
.field private final category:I

.field final synthetic this$0:Lnet/time4j/Weekmodel;


# direct methods
.method constructor <init>(Lnet/time4j/Weekmodel;Ljava/lang/String;I)V
    .locals 0

    .line 1342
    iput-object p1, p0, Lnet/time4j/Weekmodel$CalendarWeekElement;->this$0:Lnet/time4j/Weekmodel;

    .line 1343
    invoke-direct {p0, p2}, Lnet/time4j/AbstractDateElement;-><init>(Ljava/lang/String;)V

    .line 1345
    iput p3, p0, Lnet/time4j/Weekmodel$CalendarWeekElement;->category:I

    return-void
.end method

.method static synthetic access$400(Lnet/time4j/Weekmodel$CalendarWeekElement;)Lnet/time4j/Weekmodel;
    .locals 0

    .line 1322
    invoke-direct {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->getModel()Lnet/time4j/Weekmodel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lnet/time4j/Weekmodel$CalendarWeekElement;)Z
    .locals 0

    .line 1322
    invoke-direct {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->isYearRelated()Z

    move-result p0

    return p0
.end method

.method private getModel()Lnet/time4j/Weekmodel;
    .locals 1

    .line 1467
    iget-object v0, p0, Lnet/time4j/Weekmodel$CalendarWeekElement;->this$0:Lnet/time4j/Weekmodel;

    return-object v0
.end method

.method private isBounded()Z
    .locals 2

    .line 1479
    iget v0, p0, Lnet/time4j/Weekmodel$CalendarWeekElement;->category:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isYearRelated()Z
    .locals 1

    .line 1473
    iget v0, p0, Lnet/time4j/Weekmodel$CalendarWeekElement;->category:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1447
    invoke-direct {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->getModel()Lnet/time4j/Weekmodel;

    move-result-object v0

    .line 1449
    iget v1, p0, Lnet/time4j/Weekmodel$CalendarWeekElement;->category:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1457
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->boundedWeekOfMonth()Lnet/time4j/AdjustableElement;

    move-result-object v0

    return-object v0

    .line 1459
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/time4j/Weekmodel$CalendarWeekElement;->category:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    :cond_1
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->boundedWeekOfYear()Lnet/time4j/AdjustableElement;

    move-result-object v0

    return-object v0

    .line 1453
    :cond_2
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->weekOfMonth()Lnet/time4j/AdjustableElement;

    move-result-object v0

    return-object v0

    .line 1451
    :cond_3
    invoke-virtual {v0}, Lnet/time4j/Weekmodel;->weekOfYear()Lnet/time4j/AdjustableElement;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1433
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1434
    invoke-direct {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->isBounded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1435
    new-instance p1, Lnet/time4j/Weekmodel$BWRule;

    invoke-direct {p1, p0, v0}, Lnet/time4j/Weekmodel$BWRule;-><init>(Lnet/time4j/Weekmodel$CalendarWeekElement;Lnet/time4j/Weekmodel$1;)V

    return-object p1

    .line 1437
    :cond_0
    new-instance p1, Lnet/time4j/Weekmodel$CWRule;

    invoke-direct {p1, p0, v0}, Lnet/time4j/Weekmodel$CWRule;-><init>(Lnet/time4j/Weekmodel$CalendarWeekElement;Lnet/time4j/Weekmodel$1;)V

    return-object p1

    :cond_1
    return-object v0
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

    .line 1418
    invoke-direct {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->getModel()Lnet/time4j/Weekmodel;

    move-result-object v0

    check-cast p1, Lnet/time4j/Weekmodel$CalendarWeekElement;

    invoke-direct {p1}, Lnet/time4j/Weekmodel$CalendarWeekElement;->getModel()Lnet/time4j/Weekmodel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/time4j/Weekmodel;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    .line 1382
    invoke-direct {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->isYearRelated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 1375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1410
    invoke-static {p1}, Lnet/time4j/format/CalendarText;->getIsoInstance(Ljava/util/Locale;)Lnet/time4j/format/CalendarText;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/format/CalendarText;->getTextForms()Ljava/util/Map;

    move-result-object p1

    const-string v0, "L_week"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1411
    invoke-virtual {p0}, Lnet/time4j/Weekmodel$CalendarWeekElement;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected getParent()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1425
    sget-object v0, Lnet/time4j/PlainDate;->WEEKDAY_IN_MONTH:Lnet/time4j/OrdinalWeekdayElement;

    return-object v0
.end method

.method public getSymbol()C
    .locals 2

    .line 1354
    iget v0, p0, Lnet/time4j/Weekmodel$CalendarWeekElement;->category:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1360
    invoke-super {p0}, Lnet/time4j/AbstractDateElement;->getSymbol()C

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x57

    return v0

    :cond_1
    const/16 v0, 0x77

    return v0
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

    .line 1368
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLenient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
