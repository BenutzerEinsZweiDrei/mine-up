.class public interface abstract Lnet/time4j/engine/TimeSpan;
.super Ljava/lang/Object;
.source "TimeSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/engine/TimeSpan$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addTo(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)Z"
        }
    .end annotation
.end method

.method public abstract getPartialAmount(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)J"
        }
    .end annotation
.end method

.method public abstract getTotalLength()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;>;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isNegative()Z
.end method

.method public abstract isPositive()Z
.end method

.method public abstract subtractFrom(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/TimePoint<",
            "-TU;TT;>;>(TT;)TT;"
        }
    .end annotation
.end method
