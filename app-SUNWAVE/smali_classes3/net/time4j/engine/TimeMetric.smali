.class public interface abstract Lnet/time4j/engine/TimeMetric;
.super Ljava/lang/Object;
.source "TimeMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract between(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;TT;)TP;"
        }
    .end annotation
.end method

.method public abstract reversible()Lnet/time4j/engine/TimeMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeMetric<",
            "TU;TP;>;"
        }
    .end annotation
.end method
