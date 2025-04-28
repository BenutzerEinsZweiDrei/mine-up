.class final Lnet/time4j/TimeElement;
.super Lnet/time4j/engine/BasicElement;
.source "TimeElement.java"

# interfaces
.implements Lnet/time4j/WallTimeElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Lnet/time4j/PlainTime;",
        ">;",
        "Lnet/time4j/WallTimeElement;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lnet/time4j/TimeElement;

.field private static final serialVersionUID:J = -0x33849585978fb8e4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lnet/time4j/TimeElement;

    invoke-direct {v0}, Lnet/time4j/TimeElement;-><init>()V

    sput-object v0, Lnet/time4j/TimeElement;->INSTANCE:Lnet/time4j/TimeElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "WALL_TIME"

    .line 52
    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 195
    sget-object v0, Lnet/time4j/TimeElement;->INSTANCE:Lnet/time4j/TimeElement;

    return-object v0
.end method


# virtual methods
.method public at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Lnet/time4j/ZonalQuery;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalQuery;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/ZonalOffset;)V

    return-object v0
.end method

.method public atUTC()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/TimeElement;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lnet/time4j/TimeElement;->getDefaultMaximum()Lnet/time4j/PlainTime;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaximum()Lnet/time4j/PlainTime;
    .locals 3

    const/16 v0, 0x17

    const/16 v1, 0x3b

    const v2, 0x3b9ac9ff

    .line 75
    invoke-static {v0, v1, v1, v2}, Lnet/time4j/PlainTime;->of(IIII)Lnet/time4j/PlainTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lnet/time4j/TimeElement;->getDefaultMinimum()Lnet/time4j/PlainTime;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Lnet/time4j/PlainTime;
    .locals 1

    .line 68
    sget-object v0, Lnet/time4j/PlainTime;->MIN:Lnet/time4j/PlainTime;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 61
    const-class v0, Lnet/time4j/PlainTime;

    return-object v0
.end method

.method public in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/Timezone;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Lnet/time4j/ZonalQuery;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalQuery;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method public inStdTimezone()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/TimeElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/TimeElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p1

    return-object p1
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public roundedToFullHour()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 126
    sget-object v0, Lnet/time4j/FullValueOperator;->ROUNDING_FULL_HOUR:Lnet/time4j/FullValueOperator;

    return-object v0
.end method

.method public roundedToFullMinute()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 133
    sget-object v0, Lnet/time4j/FullValueOperator;->ROUNDING_FULL_MINUTE:Lnet/time4j/FullValueOperator;

    return-object v0
.end method

.method public setToNext(Lnet/time4j/PlainTime;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "*>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lnet/time4j/WallTimeOperator;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lnet/time4j/WallTimeOperator;-><init>(ILnet/time4j/PlainTime;)V

    return-object v0
.end method

.method public setToNextFullHour()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lnet/time4j/FullValueOperator;->NEXT_FULL_HOUR:Lnet/time4j/FullValueOperator;

    return-object v0
.end method

.method public setToNextFullMinute()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 147
    sget-object v0, Lnet/time4j/FullValueOperator;->NEXT_FULL_MINUTE:Lnet/time4j/FullValueOperator;

    return-object v0
.end method

.method public setToNextOrSame(Lnet/time4j/PlainTime;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "*>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lnet/time4j/WallTimeOperator;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lnet/time4j/WallTimeOperator;-><init>(ILnet/time4j/PlainTime;)V

    return-object v0
.end method

.method public setToPrevious(Lnet/time4j/PlainTime;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "*>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lnet/time4j/WallTimeOperator;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lnet/time4j/WallTimeOperator;-><init>(ILnet/time4j/PlainTime;)V

    return-object v0
.end method

.method public setToPreviousOrSame(Lnet/time4j/PlainTime;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/ElementOperator<",
            "*>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lnet/time4j/WallTimeOperator;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1}, Lnet/time4j/WallTimeOperator;-><init>(ILnet/time4j/PlainTime;)V

    return-object v0
.end method
