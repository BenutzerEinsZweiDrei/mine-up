.class final Lnet/time4j/RoundingOperator;
.super Ljava/lang/Object;
.source "RoundingOperator.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/ProportionalElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ProportionalElement<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private final longBased:Z

.field private final stepwidth:D

.field private final up:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lnet/time4j/ProportionalElement;Ljava/lang/Boolean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/ProportionalElement<",
            "*TT;>;",
            "Ljava/lang/Boolean;",
            "I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lnet/time4j/RoundingOperator;->element:Lnet/time4j/ProportionalElement;

    .line 60
    iput-object p2, p0, Lnet/time4j/RoundingOperator;->up:Ljava/lang/Boolean;

    int-to-double p2, p3

    .line 61
    iput-wide p2, p0, Lnet/time4j/RoundingOperator;->stepwidth:D

    .line 62
    invoke-interface {p1}, Lnet/time4j/ProportionalElement;->getType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/RoundingOperator;->longBased:Z

    return-void
.end method

.method private static lenient(Lnet/time4j/ProportionalElement;Ljava/lang/Number;)Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/ProportionalElement<",
            "TV;TT;>;",
            "Ljava/lang/Number;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Lnet/time4j/ProportionalElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-interface {p0, p1}, Lnet/time4j/ProportionalElement;->setLenient(Ljava/lang/Number;)Lnet/time4j/ElementOperator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0, p1}, Lnet/time4j/RoundingOperator;->apply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lnet/time4j/RoundingOperator;->element:Lnet/time4j/ProportionalElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 74
    iget-object v2, p0, Lnet/time4j/RoundingOperator;->up:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 75
    iget-wide v2, p0, Lnet/time4j/RoundingOperator;->stepwidth:D

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    iget-wide v4, p0, Lnet/time4j/RoundingOperator;->stepwidth:D

    mul-double/2addr v2, v4

    div-double v4, v0, v4

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    iget-wide v6, p0, Lnet/time4j/RoundingOperator;->stepwidth:D

    mul-double/2addr v4, v6

    sub-double v6, v0, v4

    sub-double v0, v2, v0

    cmpg-double v0, v6, v0

    if-gez v0, :cond_2

    move-wide v2, v4

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-wide v2, p0, Lnet/time4j/RoundingOperator;->stepwidth:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget-wide v2, p0, Lnet/time4j/RoundingOperator;->stepwidth:D

    goto :goto_0

    .line 81
    :cond_1
    iget-wide v2, p0, Lnet/time4j/RoundingOperator;->stepwidth:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iget-wide v2, p0, Lnet/time4j/RoundingOperator;->stepwidth:D

    :goto_0
    mul-double/2addr v2, v0

    .line 86
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lnet/time4j/RoundingOperator;->longBased:Z

    if-eqz v0, :cond_3

    double-to-long v0, v2

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    :cond_3
    double-to-int v0, v2

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 92
    :goto_2
    iget-object v1, p0, Lnet/time4j/RoundingOperator;->element:Lnet/time4j/ProportionalElement;

    invoke-static {v1, v0}, Lnet/time4j/RoundingOperator;->lenient(Lnet/time4j/ProportionalElement;Ljava/lang/Number;)Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoOperator;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method
