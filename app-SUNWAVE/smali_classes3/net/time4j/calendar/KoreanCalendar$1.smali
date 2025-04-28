.class final Lnet/time4j/calendar/KoreanCalendar$1;
.super Ljava/lang/Object;
.source "KoreanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/KoreanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/calendar/KoreanCalendar;",
        "Lnet/time4j/engine/CalendarSystem<",
        "Lnet/time4j/calendar/KoreanCalendar;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 466
    check-cast p1, Lnet/time4j/calendar/KoreanCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/KoreanCalendar$1;->apply(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/calendar/KoreanCalendar;)Lnet/time4j/engine/CalendarSystem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/KoreanCalendar;",
            ")",
            "Lnet/time4j/engine/CalendarSystem<",
            "Lnet/time4j/calendar/KoreanCalendar;",
            ">;"
        }
    .end annotation

    .line 469
    invoke-static {}, Lnet/time4j/calendar/KoreanCalendar;->access$100()Lnet/time4j/calendar/EastAsianCS;

    move-result-object p1

    return-object p1
.end method
