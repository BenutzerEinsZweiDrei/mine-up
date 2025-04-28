.class public interface abstract Lnet/time4j/calendar/hindu/AdjustableTextElement;
.super Ljava/lang/Object;
.source "AdjustableTextElement.java"

# interfaces
.implements Lnet/time4j/format/TextElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lnet/time4j/calendar/hindu/HinduPrimitive;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/format/TextElement<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract maximized()Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract minimized()Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/calendar/hindu/HinduCalendar;",
            ">;"
        }
    .end annotation
.end method
