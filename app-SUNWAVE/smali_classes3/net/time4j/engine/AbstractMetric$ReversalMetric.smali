.class Lnet/time4j/engine/AbstractMetric$ReversalMetric;
.super Ljava/lang/Object;
.source "AbstractMetric.java"

# interfaces
.implements Lnet/time4j/engine/TimeMetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/AbstractMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReversalMetric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lnet/time4j/engine/ChronoUnit;",
        "P:",
        "Lnet/time4j/engine/AbstractDuration<",
        "TU;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/TimeMetric<",
        "TU;TP;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lnet/time4j/engine/AbstractMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/AbstractMetric<",
            "TU;TP;>;"
        }
    .end annotation
.end field

.field private final monthIndex:I


# direct methods
.method private constructor <init>(Lnet/time4j/engine/AbstractMetric;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AbstractMetric<",
            "TU;TP;>;)V"
        }
    .end annotation

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lnet/time4j/engine/AbstractMetric$ReversalMetric;->delegate:Lnet/time4j/engine/AbstractMetric;

    .line 522
    invoke-static {p1}, Lnet/time4j/engine/AbstractMetric;->access$100(Lnet/time4j/engine/AbstractMetric;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 523
    iget-object v0, p0, Lnet/time4j/engine/AbstractMetric$ReversalMetric;->delegate:Lnet/time4j/engine/AbstractMetric;

    invoke-static {v0}, Lnet/time4j/engine/AbstractMetric;->access$100(Lnet/time4j/engine/AbstractMetric;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoUnit;

    .line 525
    invoke-interface {v0}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide v0

    const-wide v2, 0x4132750000000000L    # 1209600.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 531
    :goto_1
    iput p1, p0, Lnet/time4j/engine/AbstractMetric$ReversalMetric;->monthIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/AbstractMetric;Lnet/time4j/engine/AbstractMetric$1;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lnet/time4j/engine/AbstractMetric$ReversalMetric;-><init>(Lnet/time4j/engine/AbstractMetric;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;
    .locals 0

    .line 506
    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/AbstractMetric$ReversalMetric;->between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/AbstractDuration;

    move-result-object p1

    return-object p1
.end method

.method public between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/AbstractDuration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;TT;)TP;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lnet/time4j/engine/AbstractMetric$ReversalMetric;->delegate:Lnet/time4j/engine/AbstractMetric;

    iget v1, p0, Lnet/time4j/engine/AbstractMetric$ReversalMetric;->monthIndex:I

    invoke-static {v0, p1, p2, v1}, Lnet/time4j/engine/AbstractMetric;->access$200(Lnet/time4j/engine/AbstractMetric;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;I)Lnet/time4j/engine/AbstractDuration;

    move-result-object p1

    return-object p1
.end method

.method public reversible()Lnet/time4j/engine/TimeMetric;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeMetric<",
            "TU;TP;>;"
        }
    .end annotation

    return-object p0
.end method
