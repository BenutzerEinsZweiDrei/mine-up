.class public interface abstract Lnet/time4j/calendar/astro/SolarTime$Calculator;
.super Ljava/lang/Object;
.source "SolarTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/astro/SolarTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Calculator"
.end annotation


# virtual methods
.method public abstract equationOfTime(D)D
.end method

.method public abstract getFeature(DLjava/lang/String;)D
.end method

.method public abstract getGeodeticAngle(DI)D
.end method

.method public abstract getZenithAngle(DI)D
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract sunrise(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;
.end method

.method public abstract sunset(Lnet/time4j/engine/CalendarDate;DDD)Lnet/time4j/Moment;
.end method
