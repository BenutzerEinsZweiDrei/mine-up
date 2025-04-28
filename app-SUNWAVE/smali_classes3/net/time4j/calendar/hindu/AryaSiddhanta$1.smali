.class final enum Lnet/time4j/calendar/hindu/AryaSiddhanta$1;
.super Lnet/time4j/calendar/hindu/AryaSiddhanta;
.source "AryaSiddhanta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/AryaSiddhanta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/hindu/AryaSiddhanta;-><init>(Ljava/lang/String;ILnet/time4j/calendar/hindu/AryaSiddhanta$1;)V

    return-void
.end method


# virtual methods
.method public getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;
    .locals 2

    .line 60
    new-instance v0, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/time4j/calendar/hindu/AryaSiddhanta$OldCS;-><init>(Z)V

    return-object v0
.end method
