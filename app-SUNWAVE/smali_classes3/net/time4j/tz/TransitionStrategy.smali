.class public interface abstract Lnet/time4j/tz/TransitionStrategy;
.super Ljava/lang/Object;
.source "TransitionStrategy.java"


# virtual methods
.method public abstract getOffset(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)Lnet/time4j/tz/ZonalOffset;
.end method

.method public abstract resolve(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/Timezone;)J
.end method

.method public abstract using(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;
.end method
