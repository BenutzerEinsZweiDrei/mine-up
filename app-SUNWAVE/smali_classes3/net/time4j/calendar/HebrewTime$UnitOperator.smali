.class Lnet/time4j/calendar/HebrewTime$UnitOperator;
.super Ljava/lang/Object;
.source "HebrewTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnitOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "Lnet/time4j/calendar/HebrewTime;",
        ">;"
    }
.end annotation


# instance fields
.field private final decrementing:Z

.field private final unit:Lnet/time4j/calendar/HebrewTime$Unit;


# direct methods
.method private constructor <init>(Lnet/time4j/calendar/HebrewTime$Unit;Z)V
    .locals 0

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-object p1, p0, Lnet/time4j/calendar/HebrewTime$UnitOperator;->unit:Lnet/time4j/calendar/HebrewTime$Unit;

    .line 1084
    iput-boolean p2, p0, Lnet/time4j/calendar/HebrewTime$UnitOperator;->decrementing:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewTime$Unit;ZLnet/time4j/calendar/HebrewTime$1;)V
    .locals 0

    .line 1067
    invoke-direct {p0, p1, p2}, Lnet/time4j/calendar/HebrewTime$UnitOperator;-><init>(Lnet/time4j/calendar/HebrewTime$Unit;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1067
    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HebrewTime$UnitOperator;->apply(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/calendar/HebrewTime;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/calendar/HebrewTime;)Lnet/time4j/calendar/HebrewTime;
    .locals 3

    .line 1093
    iget-boolean v0, p0, Lnet/time4j/calendar/HebrewTime$UnitOperator;->decrementing:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    iget-object v2, p0, Lnet/time4j/calendar/HebrewTime$UnitOperator;->unit:Lnet/time4j/calendar/HebrewTime$Unit;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/calendar/HebrewTime;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewTime;

    return-object p1
.end method
