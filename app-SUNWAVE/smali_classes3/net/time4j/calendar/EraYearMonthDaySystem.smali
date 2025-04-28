.class interface abstract Lnet/time4j/calendar/EraYearMonthDaySystem;
.super Ljava/lang/Object;
.source "EraYearMonthDaySystem.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "TD;>;"
    }
.end annotation


# virtual methods
.method public abstract getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I
.end method

.method public abstract getLengthOfYear(Lnet/time4j/engine/CalendarEra;I)I
.end method

.method public abstract isValid(Lnet/time4j/engine/CalendarEra;III)Z
.end method
