.class public interface abstract Lnet/time4j/WallTimeElement;
.super Ljava/lang/Object;
.source "WallTimeElement.java"

# interfaces
.implements Lnet/time4j/ZonalElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/ZonalElement<",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract roundedToFullHour()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract roundedToFullMinute()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setToNext(Lnet/time4j/PlainTime;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract setToNextFullHour()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setToNextFullMinute()Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setToNextOrSame(Lnet/time4j/PlainTime;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract setToPrevious(Lnet/time4j/PlainTime;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract setToPreviousOrSame(Lnet/time4j/PlainTime;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "*>;"
        }
    .end annotation
.end method
