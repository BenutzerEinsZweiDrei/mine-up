.class public interface abstract Lnet/time4j/engine/ChronoElement;
.super Ljava/lang/Object;
.source "ChronoElement.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/time4j/engine/ChronoDisplay;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract compare(Lnet/time4j/engine/ChronoDisplay;Lnet/time4j/engine/ChronoDisplay;)I
.end method

.method public abstract getDefaultMaximum()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract getDefaultMinimum()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getSymbol()C
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract isDateElement()Z
.end method

.method public abstract isLenient()Z
.end method

.method public abstract isTimeElement()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method
