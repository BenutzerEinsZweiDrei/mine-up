.class public final Lnet/time4j/engine/TimeAxis;
.super Lnet/time4j/engine/Chronology;
.source "TimeAxis.java"

# interfaces
.implements Lnet/time4j/engine/TimeLine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/engine/TimeAxis$DefaultTimeLine;,
        Lnet/time4j/engine/TimeAxis$SelfElement;,
        Lnet/time4j/engine/TimeAxis$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T:",
        "Lnet/time4j/engine/TimePoint<",
        "TU;TT;>;>",
        "Lnet/time4j/engine/Chronology<",
        "TT;>;",
        "Lnet/time4j/engine/TimeLine<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final baseUnits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;TU;>;"
        }
    .end annotation
.end field

.field private final calendarSystem:Lnet/time4j/engine/CalendarSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final convertibleUnits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TU;",
            "Ljava/util/Set<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final max:Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final min:Lnet/time4j/engine/TimePoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final self:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final timeline:Lnet/time4j/engine/TimeLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/TimeLine<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final unitLengths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TU;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final unitRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TU;",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final unitType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/TimeLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TU;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ElementRule<",
            "TT;*>;>;",
            "Ljava/util/Map<",
            "TU;",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;>;",
            "Ljava/util/Map<",
            "TU;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map<",
            "TU;",
            "Ljava/util/Set<",
            "TU;>;>;",
            "Ljava/util/List<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;TU;>;TT;TT;",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;",
            "Lnet/time4j/engine/TimeLine<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p3, p4, p8}, Lnet/time4j/engine/Chronology;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/List;)V

    .line 86
    iput-object p2, p0, Lnet/time4j/engine/TimeAxis;->unitType:Ljava/lang/Class;

    .line 87
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/engine/TimeAxis;->unitRules:Ljava/util/Map;

    .line 88
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/engine/TimeAxis;->unitLengths:Ljava/util/Map;

    .line 89
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/engine/TimeAxis;->convertibleUnits:Ljava/util/Map;

    .line 90
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/engine/TimeAxis;->baseUnits:Ljava/util/Map;

    .line 91
    iput-object p10, p0, Lnet/time4j/engine/TimeAxis;->min:Lnet/time4j/engine/TimePoint;

    .line 92
    iput-object p11, p0, Lnet/time4j/engine/TimeAxis;->max:Lnet/time4j/engine/TimePoint;

    .line 93
    iput-object p12, p0, Lnet/time4j/engine/TimeAxis;->calendarSystem:Lnet/time4j/engine/CalendarSystem;

    .line 94
    new-instance p2, Lnet/time4j/engine/TimeAxis$SelfElement;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p10, p11, p3}, Lnet/time4j/engine/TimeAxis$SelfElement;-><init>(Ljava/lang/Class;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimeAxis$1;)V

    iput-object p2, p0, Lnet/time4j/engine/TimeAxis;->self:Lnet/time4j/engine/ChronoElement;

    if-nez p13, :cond_0

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    new-instance p2, Lnet/time4j/engine/TimeAxis$1;

    invoke-direct {p2, p0, p6}, Lnet/time4j/engine/TimeAxis$1;-><init>(Lnet/time4j/engine/TimeAxis;Ljava/util/Map;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p2, 0x0

    .line 111
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 112
    new-instance p2, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;

    invoke-direct {p2, p1, p10, p11}, Lnet/time4j/engine/TimeAxis$DefaultTimeLine;-><init>(Ljava/lang/Object;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)V

    iput-object p2, p0, Lnet/time4j/engine/TimeAxis;->timeline:Lnet/time4j/engine/TimeLine;

    goto :goto_0

    .line 114
    :cond_0
    iput-object p13, p0, Lnet/time4j/engine/TimeAxis;->timeline:Lnet/time4j/engine/TimeLine;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/TimeLine;Lnet/time4j/engine/TimeAxis$1;)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p13}, Lnet/time4j/engine/TimeAxis;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/TimeLine;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Map;Ljava/lang/Object;)D
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lnet/time4j/engine/TimeAxis;->getLength(Ljava/util/Map;Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getLength(Ljava/util/Map;Ljava/lang/Object;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TU;",
            "Ljava/lang/Double;",
            ">;TU;)D"
        }
    .end annotation

    .line 585
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    if-nez p0, :cond_1

    .line 588
    instance-of p0, p1, Lnet/time4j/engine/ChronoUnit;

    if-eqz p0, :cond_0

    .line 589
    const-class p0, Lnet/time4j/engine/ChronoUnit;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/engine/ChronoUnit;

    invoke-interface {p0}, Lnet/time4j/engine/ChronoUnit;->getLength()D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x7ff8000000000000L    # NaN

    return-wide p0

    .line 594
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 50
    check-cast p1, Lnet/time4j/engine/TimePoint;

    check-cast p2, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/TimeAxis;->compare(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 349
    invoke-virtual {p1, p2}, Lnet/time4j/engine/TimePoint;->compareTo(Lnet/time4j/engine/TimePoint;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/engine/TimeAxis;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)TT;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->self:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object p2, p0, Lnet/time4j/engine/TimeAxis;->self:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/TimePoint;

    return-object p1

    .line 519
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lnet/time4j/engine/Chronology;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/TimePoint;

    return-object p1
.end method

.method public element()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "TT;>;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->self:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method public getBaseUnit(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)TU;"
        }
    .end annotation

    const-string v0, "Missing element."

    .line 417
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->baseUnits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 422
    instance-of v1, p1, Lnet/time4j/engine/BasicElement;

    if-eqz v1, :cond_0

    .line 426
    move-object v0, p1

    check-cast v0, Lnet/time4j/engine/BasicElement;

    invoke-virtual {v0}, Lnet/time4j/engine/BasicElement;->getParent()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lnet/time4j/engine/TimeAxis;->baseUnits:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 431
    :cond_1
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base unit not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarSystem()Lnet/time4j/engine/CalendarSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->calendarSystem:Lnet/time4j/engine/CalendarSystem;

    if-nez v0, :cond_0

    .line 489
    invoke-super {p0}, Lnet/time4j/engine/Chronology;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    :cond_0
    return-object v0
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

    .line 499
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lnet/time4j/engine/TimeAxis;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1

    .line 503
    :cond_0
    invoke-super {p0, p1}, Lnet/time4j/engine/Chronology;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1
.end method

.method public getLength(Ljava/lang/Object;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)D"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->unitLengths:Ljava/util/Map;

    invoke-static {v0, p1}, Lnet/time4j/engine/TimeAxis;->getLength(Ljava/util/Map;Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximum()Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->max:Lnet/time4j/engine/TimePoint;

    return-object v0
.end method

.method public getMinimum()Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->min:Lnet/time4j/engine/TimePoint;

    return-object v0
.end method

.method public getRegisteredUnits()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TU;>;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->unitRules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getRule(Ljava/lang/Object;)Lnet/time4j/engine/UnitRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing chronological unit."

    .line 564
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 567
    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->unitRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/UnitRule;

    return-object p1

    .line 569
    :cond_0
    instance-of v0, p1, Lnet/time4j/engine/BasicUnit;

    if-eqz v0, :cond_1

    .line 570
    const-class v0, Lnet/time4j/engine/BasicUnit;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/BasicUnit;

    invoke-virtual {v0, p0}, Lnet/time4j/engine/BasicUnit;->derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/UnitRule;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 576
    :cond_1
    new-instance v0, Lnet/time4j/engine/RuleNotFoundException;

    invoke-direct {v0, p0, p1}, Lnet/time4j/engine/RuleNotFoundException;-><init>(Lnet/time4j/engine/Chronology;Ljava/lang/Object;)V

    throw v0
.end method

.method public getUnitType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TU;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->unitType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasBaseUnit(Lnet/time4j/engine/ChronoElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 373
    :cond_0
    iget-object v1, p0, Lnet/time4j/engine/TimeAxis;->baseUnits:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 375
    instance-of v2, p1, Lnet/time4j/engine/BasicElement;

    if-eqz v2, :cond_2

    .line 379
    check-cast p1, Lnet/time4j/engine/BasicElement;

    invoke-virtual {p1}, Lnet/time4j/engine/BasicElement;->getParent()Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 380
    iget-object v1, p0, Lnet/time4j/engine/TimeAxis;->baseUnits:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public hasCalendarSystem()Z
    .locals 1

    .line 481
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->calendarSystem:Lnet/time4j/engine/CalendarSystem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCalendrical()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->calendarSystem:Lnet/time4j/engine/CalendarSystem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConvertible(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TU;)Z"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->convertibleUnits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 291
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRegistered(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)Z"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->unitRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)Z"
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 195
    :cond_0
    instance-of v0, p1, Lnet/time4j/engine/BasicUnit;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 196
    const-class v0, Lnet/time4j/engine/BasicUnit;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/BasicUnit;

    invoke-virtual {p1, p0}, Lnet/time4j/engine/BasicUnit;->derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/UnitRule;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public bridge synthetic stepBackwards(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis;->stepBackwards(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public stepBackwards(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->timeline:Lnet/time4j/engine/TimeLine;

    invoke-interface {v0, p1}, Lnet/time4j/engine/TimeLine;->stepBackwards(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/TimePoint;

    return-object p1
.end method

.method public bridge synthetic stepForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Lnet/time4j/engine/TimePoint;

    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis;->stepForward(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    return-object p1
.end method

.method public stepForward(Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis;->timeline:Lnet/time4j/engine/TimeLine;

    invoke-interface {v0, p1}, Lnet/time4j/engine/TimeLine;->stepForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/TimePoint;

    return-object p1
.end method

.method public unitComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TU;>;"
        }
    .end annotation

    .line 318
    new-instance v0, Lnet/time4j/engine/TimeAxis$2;

    invoke-direct {v0, p0}, Lnet/time4j/engine/TimeAxis$2;-><init>(Lnet/time4j/engine/TimeAxis;)V

    return-object v0
.end method
