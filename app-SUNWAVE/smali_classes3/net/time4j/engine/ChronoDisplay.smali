.class public interface abstract Lnet/time4j/engine/ChronoDisplay;
.super Ljava/lang/Object;
.source "ChronoDisplay.java"


# virtual methods
.method public abstract contains(Lnet/time4j/engine/ChronoElement;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract getInt(Lnet/time4j/engine/ChronoElement;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract getTimezone()Lnet/time4j/tz/TZID;
.end method

.method public abstract hasTimezone()Z
.end method
