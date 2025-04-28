.class Lnet/time4j/calendar/EthiopianTime$Merger;
.super Ljava/lang/Object;
.source "EthiopianTime.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/EthiopianTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/EthiopianTime;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/EthiopianTime$1;)V
    .locals 0

    .line 1568
    invoke-direct {p0}, Lnet/time4j/calendar/EthiopianTime$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1568
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianTime$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 1568
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/EthiopianTime$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/EthiopianTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/EthiopianTime;"
        }
    .end annotation

    .line 1586
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/time4j/engine/TimeAxis;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->from(Lnet/time4j/PlainTime;)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/EthiopianTime;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/EthiopianTime;"
        }
    .end annotation

    .line 1596
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Lnet/time4j/engine/TimeAxis;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    if-eqz p1, :cond_0

    .line 1599
    invoke-static {p1}, Lnet/time4j/calendar/EthiopianTime;->from(Lnet/time4j/PlainTime;)Lnet/time4j/calendar/EthiopianTime;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultPivotYear()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 1620
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MORNING:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1578
    invoke-interface {p1}, Lnet/time4j/engine/DisplayStyle;->getStyleValue()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const-string p1, "h:mm a"

    goto :goto_0

    :cond_0
    const-string p1, "h:mm:ss a"

    :goto_0
    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 1568
    check-cast p1, Lnet/time4j/calendar/EthiopianTime;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/EthiopianTime$Merger;->preformat(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/EthiopianTime;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    return-object p1
.end method

.method public preparser()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
