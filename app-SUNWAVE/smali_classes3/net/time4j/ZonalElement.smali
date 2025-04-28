.class public interface abstract Lnet/time4j/ZonalElement;
.super Ljava/lang/Object;
.source "ZonalElement.java"

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
.method public abstract at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract atUTC()Lnet/time4j/engine/ChronoFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/Timezone;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract inStdTimezone()Lnet/time4j/engine/ChronoFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "TV;>;"
        }
    .end annotation
.end method
