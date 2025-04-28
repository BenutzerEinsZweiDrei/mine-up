.class final Lnet/time4j/ValueOperator;
.super Ljava/lang/Object;
.source "ValueOperator.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lnet/time4j/engine/ChronoOperator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lnet/time4j/ValueOperator;->delegate:Lnet/time4j/engine/ChronoOperator;

    .line 48
    iput-object p2, p0, Lnet/time4j/ValueOperator;->value:Ljava/lang/Object;

    return-void
.end method

.method static of(Lnet/time4j/engine/ChronoOperator;Ljava/lang/Object;)Lnet/time4j/ValueOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lnet/time4j/ValueOperator;"
        }
    .end annotation

    .line 59
    new-instance v0, Lnet/time4j/ValueOperator;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ValueOperator;-><init>(Lnet/time4j/engine/ChronoOperator;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lnet/time4j/ValueOperator;->delegate:Lnet/time4j/engine/ChronoOperator;

    invoke-interface {v0, p1}, Lnet/time4j/engine/ChronoOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lnet/time4j/ValueOperator;->value:Ljava/lang/Object;

    return-object v0
.end method
