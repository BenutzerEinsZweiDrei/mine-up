.class public interface abstract Lnet/time4j/format/NumericalElement;
.super Ljava/lang/Object;
.source "NumericalElement.java"

# interfaces
.implements Lnet/time4j/engine/ChronoElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoElement<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract numerical(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public abstract parseFromInt(Lnet/time4j/engine/ChronoEntity;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;I)Z"
        }
    .end annotation
.end method

.method public abstract printToInt(Ljava/lang/Object;Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/AttributeQuery;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")I"
        }
    .end annotation
.end method
