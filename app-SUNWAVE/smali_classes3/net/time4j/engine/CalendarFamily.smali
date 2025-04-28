.class public final Lnet/time4j/engine/CalendarFamily;
.super Lnet/time4j/engine/Chronology;
.source "CalendarFamily.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;,
        Lnet/time4j/engine/CalendarFamily$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/CalendarVariant<",
        "TT;>;>",
        "Lnet/time4j/engine/Chronology<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final calendars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ElementRule<",
            "TT;*>;>;",
            "Ljava/util/List<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/engine/Chronology;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/List;)V

    .line 60
    iput-object p5, p0, Lnet/time4j/engine/CalendarFamily;->calendars:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Lnet/time4j/engine/CalendarFamily$1;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lnet/time4j/engine/CalendarFamily;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getCalendarSystem()Lnet/time4j/engine/CalendarSystem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lnet/time4j/engine/ChronoException;

    const-string v1, "Cannot determine calendar system without variant."

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarFamily;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    iget-object v0, p0, Lnet/time4j/engine/CalendarFamily;->calendars:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/CalendarSystem;

    if-nez v0, :cond_1

    .line 106
    invoke-super {p0, p1}, Lnet/time4j/engine/Chronology;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getTimeLine(Ljava/lang/String;)Lnet/time4j/engine/TimeLine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/engine/TimeLine<",
            "TT;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/time4j/engine/CalendarFamily$CalendarTimeLine;-><init>(Lnet/time4j/engine/Chronology;Ljava/lang/String;Lnet/time4j/engine/CalendarFamily$1;)V

    return-object v0
.end method

.method public getTimeLine(Lnet/time4j/engine/VariantSource;)Lnet/time4j/engine/TimeLine;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/VariantSource;",
            ")",
            "Lnet/time4j/engine/TimeLine<",
            "TT;>;"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarFamily;->getTimeLine(Ljava/lang/String;)Lnet/time4j/engine/TimeLine;

    move-result-object p1

    return-object p1
.end method

.method public hasCalendarSystem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupported(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lnet/time4j/engine/Chronology;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of p1, p1, Lnet/time4j/engine/EpochDays;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
