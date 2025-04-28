.class public Lnet/time4j/engine/Chronology$Builder;
.super Ljava/lang/Object;
.source "Chronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/Chronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final chronoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;"
        }
    .end annotation
.end field

.field final merger:Lnet/time4j/engine/ChronoMerger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;"
        }
    .end annotation
.end field

.field final ruleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/ElementRule<",
            "TT;*>;>;"
        }
    .end annotation
.end field

.field final time4j:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;)V"
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing chronological merger."

    .line 599
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 602
    iput-object p1, p0, Lnet/time4j/engine/Chronology$Builder;->chronoType:Ljava/lang/Class;

    .line 603
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "net.time4j."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/engine/Chronology$Builder;->time4j:Z

    .line 604
    iput-object p2, p0, Lnet/time4j/engine/Chronology$Builder;->merger:Lnet/time4j/engine/ChronoMerger;

    .line 605
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/time4j/engine/Chronology$Builder;->ruleMap:Ljava/util/Map;

    .line 606
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/time4j/engine/Chronology$Builder;->extensions:Ljava/util/List;

    return-void
.end method

.method private checkElementDuplicates(Lnet/time4j/engine/ChronoElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)V"
        }
    .end annotation

    .line 750
    iget-boolean v0, p0, Lnet/time4j/engine/Chronology$Builder;->time4j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Static initialization problem: Check if given element statically refer to any chronology causing premature class loading."

    .line 753
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 759
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v0

    .line 761
    iget-object v1, p0, Lnet/time4j/engine/Chronology$Builder;->ruleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoElement;

    .line 763
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 764
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 766
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element duplicate found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public static setUp(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;)Lnet/time4j/engine/Chronology$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;)",
            "Lnet/time4j/engine/Chronology$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 640
    const-class v0, Lnet/time4j/engine/TimePoint;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Lnet/time4j/engine/Chronology$Builder;

    invoke-direct {v0, p0, p1}, Lnet/time4j/engine/Chronology$Builder;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;)V

    return-object v0

    .line 641
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This builder cannot construct a chronology with a time axis, use TimeAxis.Builder instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Lnet/time4j/engine/ElementRule<",
            "TT;TV;>;)",
            "Lnet/time4j/engine/Chronology$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 676
    invoke-direct {p0, p1}, Lnet/time4j/engine/Chronology$Builder;->checkElementDuplicates(Lnet/time4j/engine/ChronoElement;)V

    .line 677
    iget-object v0, p0, Lnet/time4j/engine/Chronology$Builder;->ruleMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/Chronology$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoExtension;",
            ")",
            "Lnet/time4j/engine/Chronology$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing chronological extension."

    .line 699
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 701
    iget-object v0, p0, Lnet/time4j/engine/Chronology$Builder;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lnet/time4j/engine/Chronology$Builder;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Lnet/time4j/engine/Chronology;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;"
        }
    .end annotation

    .line 735
    new-instance v0, Lnet/time4j/engine/Chronology;

    iget-object v1, p0, Lnet/time4j/engine/Chronology$Builder;->chronoType:Ljava/lang/Class;

    iget-object v2, p0, Lnet/time4j/engine/Chronology$Builder;->merger:Lnet/time4j/engine/ChronoMerger;

    iget-object v3, p0, Lnet/time4j/engine/Chronology$Builder;->ruleMap:Ljava/util/Map;

    iget-object v4, p0, Lnet/time4j/engine/Chronology$Builder;->extensions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/engine/Chronology;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/List;)V

    .line 743
    invoke-static {v0}, Lnet/time4j/engine/Chronology;->register(Lnet/time4j/engine/Chronology;)V

    return-object v0
.end method
