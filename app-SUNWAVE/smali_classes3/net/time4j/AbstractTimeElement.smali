.class abstract Lnet/time4j/AbstractTimeElement;
.super Lnet/time4j/format/DisplayElement;
.source "AbstractTimeElement.java"

# interfaces
.implements Lnet/time4j/AdjustableElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Lnet/time4j/format/DisplayElement<",
        "TV;>;",
        "Lnet/time4j/AdjustableElement<",
        "TV;",
        "Lnet/time4j/PlainTime;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient maximizer:Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field

.field private final transient minimizer:Lnet/time4j/ElementOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance p1, Lnet/time4j/TimeOperator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    iput-object p1, p0, Lnet/time4j/AbstractTimeElement;->minimizer:Lnet/time4j/ElementOperator;

    .line 51
    new-instance p1, Lnet/time4j/TimeOperator;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    iput-object p1, p0, Lnet/time4j/AbstractTimeElement;->maximizer:Lnet/time4j/ElementOperator;

    return-void
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
            "TV;>;"
        }
    .end annotation

    .line 143
    new-instance v0, Lnet/time4j/ZonalQuery;

    invoke-direct {v0, p0, p1}, Lnet/time4j/ZonalQuery;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/ZonalOffset;)V

    return-object v0
.end method

.method public atCeiling()Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Lnet/time4j/TimeOperator;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    return-object v0
.end method

.method public atFloor()Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lnet/time4j/TimeOperator;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    return-object v0
.end method

.method public atUTC()Lnet/time4j/engine/ChronoFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/Moment;",
            "TV;>;"
        }
    .end annotation

    .line 136
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/AbstractTimeElement;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    return-object v0
.end method

.method public decremented()Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Lnet/time4j/TimeOperator;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

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
            "TV;>;"
        }
    .end annotation

    .line 129
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
            "TV;>;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/AbstractTimeElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

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
            "TV;>;"
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/AbstractTimeElement;->in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoFunction;

    move-result-object p1

    return-object p1
.end method

.method public incremented()Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lnet/time4j/TimeOperator;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;I)V

    return-object v0
.end method

.method public maximized()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lnet/time4j/AbstractTimeElement;->maximizer:Lnet/time4j/ElementOperator;

    return-object v0
.end method

.method public minimized()Lnet/time4j/ElementOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lnet/time4j/AbstractTimeElement;->minimizer:Lnet/time4j/ElementOperator;

    return-object v0
.end method

.method public newValue(Ljava/lang/Comparable;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lnet/time4j/TimeOperator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic newValue(Ljava/lang/Object;)Lnet/time4j/ElementOperator;
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lnet/time4j/AbstractTimeElement;->newValue(Ljava/lang/Comparable;)Lnet/time4j/ElementOperator;

    move-result-object p1

    return-object p1
.end method

.method public setLenient(Ljava/lang/Comparable;)Lnet/time4j/ElementOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lnet/time4j/ElementOperator<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Lnet/time4j/TimeOperator;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1}, Lnet/time4j/TimeOperator;-><init>(Lnet/time4j/engine/ChronoElement;ILjava/lang/Object;)V

    return-object v0
.end method
