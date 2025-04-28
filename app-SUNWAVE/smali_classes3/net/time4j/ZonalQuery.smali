.class Lnet/time4j/ZonalQuery;
.super Ljava/lang/Object;
.source "ZonalQuery.java"

# interfaces
.implements Lnet/time4j/engine/ChronoFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoFunction<",
        "Lnet/time4j/Moment;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final offset:Lnet/time4j/tz/ZonalOffset;

.field private final tz:Lnet/time4j/tz/Timezone;


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/Timezone;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Lnet/time4j/tz/Timezone;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing timezone."

    .line 46
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lnet/time4j/ZonalQuery;->element:Lnet/time4j/engine/ChronoElement;

    .line 50
    iput-object p2, p0, Lnet/time4j/ZonalQuery;->tz:Lnet/time4j/tz/Timezone;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lnet/time4j/ZonalQuery;->offset:Lnet/time4j/tz/ZonalOffset;

    return-void
.end method

.method constructor <init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/tz/ZonalOffset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Lnet/time4j/tz/ZonalOffset;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing timezone offset."

    .line 62
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lnet/time4j/ZonalQuery;->element:Lnet/time4j/engine/ChronoElement;

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lnet/time4j/ZonalQuery;->tz:Lnet/time4j/tz/Timezone;

    .line 67
    iput-object p2, p0, Lnet/time4j/ZonalQuery;->offset:Lnet/time4j/tz/ZonalOffset;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/ZonalQuery;->apply(Lnet/time4j/Moment;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lnet/time4j/Moment;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/Moment;",
            ")TV;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lnet/time4j/ZonalQuery;->offset:Lnet/time4j/tz/ZonalOffset;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/ZonalQuery;->tz:Lnet/time4j/tz/Timezone;

    .line 78
    invoke-virtual {v0, p1}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    .line 81
    :cond_0
    iget-object v1, p0, Lnet/time4j/ZonalQuery;->element:Lnet/time4j/engine/ChronoElement;

    sget-object v2, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne v1, v2, :cond_1

    .line 83
    invoke-virtual {p1}, Lnet/time4j/Moment;->isLeapSecond()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->getAbsoluteSeconds()I

    move-result v1

    const/16 v2, 0x3c

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 87
    iget-object p1, p0, Lnet/time4j/ZonalQuery;->element:Lnet/time4j/engine/ChronoElement;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 90
    :cond_1
    invoke-static {p1, v0}, Lnet/time4j/PlainTimestamp;->from(Lnet/time4j/base/UnixTime;Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/PlainTimestamp;

    move-result-object p1

    iget-object v0, p0, Lnet/time4j/ZonalQuery;->element:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/PlainTimestamp;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
