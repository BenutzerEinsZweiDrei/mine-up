.class final Lnet/time4j/WallTimeOperator;
.super Lnet/time4j/ElementOperator;
.source "WallTimeOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/ElementOperator<",
        "Lnet/time4j/PlainTimestamp;",
        ">;"
    }
.end annotation


# instance fields
.field private final mode:I

.field private final value:Lnet/time4j/PlainTime;


# direct methods
.method constructor <init>(ILnet/time4j/PlainTime;)V
    .locals 1

    .line 50
    sget-object v0, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    invoke-direct {p0, v0, p1}, Lnet/time4j/ElementOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    const-string v0, "Missing target wall time."

    .line 53
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iput p1, p0, Lnet/time4j/WallTimeOperator;->mode:I

    .line 57
    iput-object p2, p0, Lnet/time4j/WallTimeOperator;->value:Lnet/time4j/PlainTime;

    return-void
.end method

.method private handleEarlier(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 3

    .line 138
    iget v0, p0, Lnet/time4j/WallTimeOperator;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/WallTimeOperator;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 144
    :pswitch_0
    iget-object v0, p0, Lnet/time4j/WallTimeOperator;->value:Lnet/time4j/PlainTime;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/16 v0, 0x1

    .line 141
    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/PlainTimestamp;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    iget-object v0, p0, Lnet/time4j/WallTimeOperator;->value:Lnet/time4j/PlainTime;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleLater(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 3

    .line 123
    iget v0, p0, Lnet/time4j/WallTimeOperator;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/WallTimeOperator;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    const-wide/16 v0, 0x1

    .line 129
    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/PlainTimestamp;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    iget-object v0, p0, Lnet/time4j/WallTimeOperator;->value:Lnet/time4j/PlainTime;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 126
    :pswitch_1
    iget-object v0, p0, Lnet/time4j/WallTimeOperator;->value:Lnet/time4j/PlainTime;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->with(Lnet/time4j/PlainTime;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleMidnight24(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 3

    .line 106
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getCalendarDate()Lnet/time4j/PlainDate;

    move-result-object p1

    .line 108
    iget v0, p0, Lnet/time4j/WallTimeOperator;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/WallTimeOperator;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 114
    :pswitch_0
    invoke-virtual {p1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/16 v0, 0x1

    .line 111
    sget-object v2, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v0, v1, v2}, Lnet/time4j/PlainDate;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-virtual {p1}, Lnet/time4j/PlainDate;->atStartOfDay()Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSameTimes(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 3

    .line 89
    iget v0, p0, Lnet/time4j/WallTimeOperator;->mode:I

    const-wide/16 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/WallTimeOperator;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return-object p1

    .line 93
    :pswitch_1
    sget-object v0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v1, v2, v0}, Lnet/time4j/PlainTimestamp;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    return-object p1

    .line 91
    :pswitch_2
    sget-object v0, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {p1, v1, v2, v0}, Lnet/time4j/PlainTimestamp;->plus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTimestamp;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lnet/time4j/PlainTimestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/WallTimeOperator;->apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;
    .locals 3

    .line 66
    invoke-virtual {p1}, Lnet/time4j/PlainTimestamp;->getWallTime()Lnet/time4j/PlainTime;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lnet/time4j/WallTimeOperator;->value:Lnet/time4j/PlainTime;

    invoke-virtual {v1, v0}, Lnet/time4j/PlainTime;->isSimultaneous(Lnet/time4j/PlainTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lnet/time4j/WallTimeOperator;->handleSameTimes(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    iget-object v1, p0, Lnet/time4j/WallTimeOperator;->value:Lnet/time4j/PlainTime;

    invoke-virtual {v1}, Lnet/time4j/PlainTime;->getHour()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lnet/time4j/WallTimeOperator;->handleMidnight24(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1
    iget-object v1, p0, Lnet/time4j/WallTimeOperator;->value:Lnet/time4j/PlainTime;

    invoke-virtual {v1, v0}, Lnet/time4j/PlainTime;->isAfter(Lnet/time4j/PlainTime;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-direct {p0, p1}, Lnet/time4j/WallTimeOperator;->handleLater(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1

    .line 75
    :cond_2
    invoke-direct {p0, p1}, Lnet/time4j/WallTimeOperator;->handleEarlier(Lnet/time4j/PlainTimestamp;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    return-object p1
.end method

.method onTimestamp()Lnet/time4j/engine/ChronoOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
