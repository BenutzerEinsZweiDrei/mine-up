.class public interface abstract Lnet/time4j/ProportionalElement;
.super Ljava/lang/Object;
.source "ProportionalElement.java"

# interfaces
.implements Lnet/time4j/AdjustableElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Number;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/AdjustableElement<",
        "TV;TT;>;"
    }
.end annotation


# virtual methods
.method public abstract ratio()Lnet/time4j/engine/ChronoFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract roundedDown(I)Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract roundedHalf(I)Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract roundedUp(I)Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setLenient(Ljava/lang/Number;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "TT;>;"
        }
    .end annotation
.end method
