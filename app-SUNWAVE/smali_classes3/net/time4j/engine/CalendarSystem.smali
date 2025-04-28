.class public interface abstract Lnet/time4j/engine/CalendarSystem;
.super Ljava/lang/Object;
.source "CalendarSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getEras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaximumSinceUTC()J
.end method

.method public abstract getMinimumSinceUTC()J
.end method

.method public abstract transform(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)J"
        }
    .end annotation
.end method

.method public abstract transform(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TD;"
        }
    .end annotation
.end method
