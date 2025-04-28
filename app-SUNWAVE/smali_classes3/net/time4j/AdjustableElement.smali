.class public interface abstract Lnet/time4j/AdjustableElement;
.super Ljava/lang/Object;
.source "AdjustableElement.java"

# interfaces
.implements Lnet/time4j/ZonalElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/ZonalElement<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract atCeiling()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract atFloor()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract decremented()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract incremented()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract maximized()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract minimized()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract newValue(Ljava/lang/Object;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "TT;>;"
        }
    .end annotation
.end method
