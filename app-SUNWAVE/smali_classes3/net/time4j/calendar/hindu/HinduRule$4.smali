.class final enum Lnet/time4j/calendar/hindu/HinduRule$4;
.super Lnet/time4j/calendar/hindu/HinduRule;
.source "HinduRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/HinduRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/calendar/hindu/HinduRule;-><init>(Ljava/lang/String;ILnet/time4j/calendar/hindu/HinduRule$1;)V

    return-void
.end method


# virtual methods
.method getDefaultEra()Lnet/time4j/calendar/hindu/HinduEra;
    .locals 1

    .line 122
    sget-object v0, Lnet/time4j/calendar/hindu/HinduEra;->SAKA:Lnet/time4j/calendar/hindu/HinduEra;

    return-object v0
.end method
