.class public interface abstract Lnet/time4j/NavigableElement;
.super Ljava/lang/Object;
.source "NavigableElement.java"

# interfaces
.implements Lnet/time4j/AdjustableElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lnet/time4j/AdjustableElement<",
        "TV;",
        "Lnet/time4j/PlainDate;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract setToNext(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setToNextOrSame(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setToPrevious(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setToPreviousOrSame(Ljava/lang/Enum;)Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation
.end method
