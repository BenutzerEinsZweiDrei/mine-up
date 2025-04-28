.class public final Lnet/time4j/engine/TimeAxis$Builder;
.super Lnet/time4j/engine/Chronology$Builder;
.source "TimeAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/TimeAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T:",
        "Lnet/time4j/engine/TimePoint<",
        "TU;TT;>;>",
        "Lnet/time4j/engine/Chronology$Builder<",
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

.field private timeline:Lnet/time4j/engine/TimeLine;
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
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/TimeLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;TT;TT;",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;",
            "Lnet/time4j/engine/TimeLine<",
            "TT;>;)V"
        }
    .end annotation

    .line 656
    invoke-direct {p0, p2, p3}, Lnet/time4j/engine/Chronology$Builder;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;)V

    const/4 p3, 0x0

    .line 643
    iput-object p3, p0, Lnet/time4j/engine/TimeAxis$Builder;->timeline:Lnet/time4j/engine/TimeLine;

    const-string p3, "Missing unit type."

    .line 659
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "Missing minimum of range."

    .line 661
    invoke-static {p4, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "Missing maximum of range."

    .line 663
    invoke-static {p5, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 664
    const-class p3, Lnet/time4j/engine/Calendrical;

    .line 665
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Missing calendar system."

    .line 668
    invoke-static {p6, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 671
    :cond_0
    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$Builder;->unitType:Ljava/lang/Class;

    .line 672
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$Builder;->unitRules:Ljava/util/Map;

    .line 673
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$Builder;->unitLengths:Ljava/util/Map;

    .line 674
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$Builder;->convertibleUnits:Ljava/util/Map;

    .line 675
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$Builder;->baseUnits:Ljava/util/Map;

    .line 676
    iput-object p4, p0, Lnet/time4j/engine/TimeAxis$Builder;->min:Lnet/time4j/engine/TimePoint;

    .line 677
    iput-object p5, p0, Lnet/time4j/engine/TimeAxis$Builder;->max:Lnet/time4j/engine/TimePoint;

    .line 678
    iput-object p6, p0, Lnet/time4j/engine/TimeAxis$Builder;->calendarSystem:Lnet/time4j/engine/CalendarSystem;

    .line 679
    iput-object p7, p0, Lnet/time4j/engine/TimeAxis$Builder;->timeline:Lnet/time4j/engine/TimeLine;

    return-void
.end method

.method private checkUnitDuplicates(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1081
    iget-boolean v0, p0, Lnet/time4j/engine/TimeAxis$Builder;->time4j:Z

    if-eqz v0, :cond_0

    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$Builder;->unitRules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Unit duplicate found: "

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1087
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :cond_2
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_5

    .line 1095
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 1097
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$Builder;->unitRules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1098
    instance-of v3, v1, Ljava/lang/Enum;

    if-eqz v3, :cond_3

    const-class v3, Ljava/lang/Enum;

    .line 1100
    invoke-virtual {v3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 1102
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public static setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/TimeAxis$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "D:",
            "Lnet/time4j/engine/Calendrical<",
            "TU;TD;>;>(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/Class<",
            "TD;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TD;>;",
            "Lnet/time4j/engine/CalendarSystem<",
            "TD;>;)",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "TU;TD;>;"
        }
    .end annotation

    .line 767
    new-instance v8, Lnet/time4j/engine/TimeAxis$Builder;

    .line 772
    invoke-interface {p3}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnet/time4j/engine/TimePoint;

    .line 773
    invoke-interface {p3}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lnet/time4j/engine/TimePoint;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lnet/time4j/engine/TimeAxis$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/TimeLine;)V

    .line 778
    invoke-static {}, Lnet/time4j/engine/EpochDays;->values()[Lnet/time4j/engine/EpochDays;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p0, p2

    .line 779
    invoke-virtual {v0, p3}, Lnet/time4j/engine/EpochDays;->derive(Lnet/time4j/engine/CalendarSystem;)Lnet/time4j/engine/ElementRule;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v8
.end method

.method public static setUp(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;)Lnet/time4j/engine/TimeAxis$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T:",
            "Lnet/time4j/engine/TimePoint<",
            "TU;TT;>;>(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;TT;TT;)",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "TU;TT;>;"
        }
    .end annotation

    .line 721
    new-instance v8, Lnet/time4j/engine/TimeAxis$Builder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lnet/time4j/engine/TimeAxis$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/TimeLine;)V

    return-object v8
.end method


# virtual methods
.method public bridge synthetic appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;
    .locals 0

    .line 630
    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/TimeAxis$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/TimeAxis$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Lnet/time4j/engine/ElementRule<",
            "TT;TV;>;)",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "TU;TT;>;"
        }
    .end annotation

    .line 792
    invoke-super {p0, p1, p2}, Lnet/time4j/engine/Chronology$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;

    return-object p0
.end method

.method public appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;Ljava/lang/Object;)Lnet/time4j/engine/TimeAxis$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Lnet/time4j/engine/ElementRule<",
            "TT;TV;>;TU;)",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "TU;TT;>;"
        }
    .end annotation

    const-string v0, "Missing base unit."

    .line 828
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 831
    invoke-super {p0, p1, p2}, Lnet/time4j/engine/Chronology$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;

    .line 832
    iget-object p2, p0, Lnet/time4j/engine/TimeAxis$Builder;->baseUnits:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/Chronology$Builder;
    .locals 0

    .line 630
    invoke-virtual {p0, p1}, Lnet/time4j/engine/TimeAxis$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/TimeAxis$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoExtension;",
            ")",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "TU;TT;>;"
        }
    .end annotation

    .line 1004
    invoke-super {p0, p1}, Lnet/time4j/engine/Chronology$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/Chronology$Builder;

    return-object p0
.end method

.method public appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;D)Lnet/time4j/engine/TimeAxis$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;D)",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "TU;TT;>;"
        }
    .end annotation

    .line 873
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 874
    invoke-virtual/range {v0 .. v5}, Lnet/time4j/engine/TimeAxis$Builder;->appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendUnit(Ljava/lang/Object;Lnet/time4j/engine/UnitRule;DLjava/util/Set;)Lnet/time4j/engine/TimeAxis$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;D",
            "Ljava/util/Set<",
            "+TU;>;)",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "TU;TT;>;"
        }
    .end annotation

    const-string v0, "Missing time unit."

    .line 973
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing unit rule."

    .line 975
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 978
    invoke-direct {p0, p1}, Lnet/time4j/engine/TimeAxis$Builder;->checkUnitDuplicates(Ljava/lang/Object;)V

    .line 980
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Found convertible unit which is null."

    .line 982
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 986
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 988
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    iget-object v0, p0, Lnet/time4j/engine/TimeAxis$Builder;->unitRules:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object p2, p0, Lnet/time4j/engine/TimeAxis$Builder;->unitLengths:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 995
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 996
    iget-object p3, p0, Lnet/time4j/engine/TimeAxis$Builder;->convertibleUnits:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 989
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Infinite: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 987
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Not a number: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic build()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lnet/time4j/engine/TimeAxis$Builder;->build()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    return-object v0
.end method

.method public build()Lnet/time4j/engine/TimeAxis;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/TimeAxis<",
            "TU;TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1053
    iget-object v1, v0, Lnet/time4j/engine/TimeAxis$Builder;->unitRules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1057
    new-instance v1, Lnet/time4j/engine/TimeAxis;

    iget-object v3, v0, Lnet/time4j/engine/TimeAxis$Builder;->chronoType:Ljava/lang/Class;

    iget-object v4, v0, Lnet/time4j/engine/TimeAxis$Builder;->unitType:Ljava/lang/Class;

    iget-object v5, v0, Lnet/time4j/engine/TimeAxis$Builder;->merger:Lnet/time4j/engine/ChronoMerger;

    iget-object v6, v0, Lnet/time4j/engine/TimeAxis$Builder;->ruleMap:Ljava/util/Map;

    iget-object v7, v0, Lnet/time4j/engine/TimeAxis$Builder;->unitRules:Ljava/util/Map;

    iget-object v8, v0, Lnet/time4j/engine/TimeAxis$Builder;->unitLengths:Ljava/util/Map;

    iget-object v9, v0, Lnet/time4j/engine/TimeAxis$Builder;->convertibleUnits:Ljava/util/Map;

    iget-object v10, v0, Lnet/time4j/engine/TimeAxis$Builder;->extensions:Ljava/util/List;

    iget-object v11, v0, Lnet/time4j/engine/TimeAxis$Builder;->baseUnits:Ljava/util/Map;

    iget-object v12, v0, Lnet/time4j/engine/TimeAxis$Builder;->min:Lnet/time4j/engine/TimePoint;

    iget-object v13, v0, Lnet/time4j/engine/TimeAxis$Builder;->max:Lnet/time4j/engine/TimePoint;

    iget-object v14, v0, Lnet/time4j/engine/TimeAxis$Builder;->calendarSystem:Lnet/time4j/engine/CalendarSystem;

    iget-object v15, v0, Lnet/time4j/engine/TimeAxis$Builder;->timeline:Lnet/time4j/engine/TimeLine;

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lnet/time4j/engine/TimeAxis;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/TimePoint;Lnet/time4j/engine/CalendarSystem;Lnet/time4j/engine/TimeLine;Lnet/time4j/engine/TimeAxis$1;)V

    .line 1074
    invoke-static {v1}, Lnet/time4j/engine/Chronology;->register(Lnet/time4j/engine/Chronology;)V

    return-object v1

    .line 1054
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No time unit was registered."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public withTimeLine(Lnet/time4j/engine/TimeLine;)Lnet/time4j/engine/TimeAxis$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeLine<",
            "TT;>;)",
            "Lnet/time4j/engine/TimeAxis$Builder<",
            "TU;TT;>;"
        }
    .end annotation

    const-string v0, "Missing time line."

    .line 1028
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1031
    iput-object p1, p0, Lnet/time4j/engine/TimeAxis$Builder;->timeline:Lnet/time4j/engine/TimeLine;

    return-object p0
.end method
