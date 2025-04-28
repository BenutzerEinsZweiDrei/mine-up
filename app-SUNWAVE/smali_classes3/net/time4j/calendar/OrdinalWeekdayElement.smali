.class public interface abstract Lnet/time4j/calendar/OrdinalWeekdayElement;
.super Ljava/lang/Object;
.source "OrdinalWeekdayElement.java"

# interfaces
.implements Lnet/time4j/calendar/StdCalendarElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/calendar/StdCalendarElement<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract setTo(ILnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setToFirst(Lnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setToLast(Lnet/time4j/Weekday;)Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Weekday;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "TT;>;"
        }
    .end annotation
.end method
