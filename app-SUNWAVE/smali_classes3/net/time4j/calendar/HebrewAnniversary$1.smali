.class final enum Lnet/time4j/calendar/HebrewAnniversary$1;
.super Lnet/time4j/calendar/HebrewAnniversary;
.source "HebrewAnniversary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewAnniversary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/HebrewAnniversary;-><init>(Ljava/lang/String;ILnet/time4j/calendar/HebrewAnniversary$1;)V

    return-void
.end method


# virtual methods
.method public inHebrewYear(I)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "Lnet/time4j/calendar/HebrewCalendar;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lnet/time4j/calendar/HebrewAnniversary$1$1;

    invoke-direct {v0, p0, p1}, Lnet/time4j/calendar/HebrewAnniversary$1$1;-><init>(Lnet/time4j/calendar/HebrewAnniversary$1;I)V

    return-object v0
.end method
