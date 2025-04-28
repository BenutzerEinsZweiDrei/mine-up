.class public Lnet/time4j/engine/Chronology;
.super Ljava/lang/Object;
.source "Chronology.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/engine/Chronology$ChronoReference;,
        Lnet/time4j/engine/Chronology$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final CHRONOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/engine/Chronology$ChronoReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUEUE:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lnet/time4j/engine/Chronology<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final chronoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final intRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Lnet/time4j/engine/IntElementRule<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final merger:Lnet/time4j/engine/ChronoMerger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final ruleMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lnet/time4j/engine/Chronology;->CHRONOS:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lnet/time4j/engine/Chronology;->QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing chronological type."

    .line 80
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lnet/time4j/engine/Chronology;->chronoType:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/engine/Chronology;->ruleMap:Ljava/util/Map;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/engine/Chronology;->extensions:Ljava/util/List;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/engine/Chronology;->intRules:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing chronological type."

    .line 114
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Missing chronological merger."

    .line 116
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iput-object p1, p0, Lnet/time4j/engine/Chronology;->chronoType:Ljava/lang/Class;

    .line 120
    iput-object p2, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    .line 121
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/engine/Chronology;->ruleMap:Ljava/util/Map;

    .line 122
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/engine/Chronology;->extensions:Ljava/util/List;

    .line 124
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/engine/ChronoElement;

    .line 128
    invoke-interface {p3}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object p4

    const-class v0, Ljava/lang/Integer;

    if-ne p4, v0, :cond_0

    .line 129
    iget-object p4, p0, Lnet/time4j/engine/Chronology;->ruleMap:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 130
    instance-of v0, p4, Lnet/time4j/engine/IntElementRule;

    if-eqz v0, :cond_0

    .line 131
    check-cast p4, Lnet/time4j/engine/IntElementRule;

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/engine/Chronology;->intRules:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lnet/time4j/engine/Chronology;)Ljava/lang/Class;
    .locals 0

    .line 50
    iget-object p0, p0, Lnet/time4j/engine/Chronology;->chronoType:Ljava/lang/Class;

    return-object p0
.end method

.method private static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method private getDerivedRule(Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/engine/ElementRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;Z)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;*>;"
        }
    .end annotation

    .line 513
    instance-of v0, p1, Lnet/time4j/engine/BasicElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-class v0, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    const-class v0, Lnet/time4j/engine/BasicElement;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/BasicElement;

    if-eqz p2, :cond_0

    .line 516
    invoke-virtual {p1, p0}, Lnet/time4j/engine/BasicElement;->getVeto(Lnet/time4j/engine/Chronology;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 519
    invoke-static {p0}, Lnet/time4j/engine/Chronology;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/Chronology;

    .line 520
    invoke-virtual {p1, p2}, Lnet/time4j/engine/BasicElement;->derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    .line 521
    invoke-static {p1}, Lnet/time4j/engine/Chronology;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ElementRule;

    return-object p1

    .line 523
    :cond_1
    new-instance p1, Lnet/time4j/engine/RuleNotFoundException;

    invoke-direct {p1, v1}, Lnet/time4j/engine/RuleNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v1
.end method

.method public static lookup(Ljava/lang/Class;)Lnet/time4j/engine/Chronology;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;"
        }
    .end annotation

    .line 420
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    .line 419
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 430
    sget-object v3, Lnet/time4j/engine/Chronology;->CHRONOS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/Chronology$ChronoReference;

    .line 431
    invoke-virtual {v4}, Lnet/time4j/engine/Chronology$ChronoReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/Chronology;

    if-nez v4, :cond_1

    move v1, v2

    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {v4}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_2
    if-eqz v1, :cond_3

    .line 442
    invoke-static {}, Lnet/time4j/engine/Chronology;->purgeQueue()V

    .line 445
    :cond_3
    invoke-static {v0}, Lnet/time4j/engine/Chronology;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/time4j/engine/Chronology;

    return-object p0

    :catch_0
    move-exception p0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static purgeQueue()V
    .locals 5

    .line 536
    :cond_0
    :goto_0
    sget-object v0, Lnet/time4j/engine/Chronology;->QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/Chronology$ChronoReference;

    if-eqz v0, :cond_2

    .line 537
    sget-object v1, Lnet/time4j/engine/Chronology;->CHRONOS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/Chronology$ChronoReference;

    .line 538
    invoke-static {v2}, Lnet/time4j/engine/Chronology$ChronoReference;->access$000(Lnet/time4j/engine/Chronology$ChronoReference;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lnet/time4j/engine/Chronology$ChronoReference;->access$000(Lnet/time4j/engine/Chronology$ChronoReference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    sget-object v0, Lnet/time4j/engine/Chronology;->CHRONOS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method static register(Lnet/time4j/engine/Chronology;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;)V"
        }
    .end annotation

    .line 460
    sget-object v0, Lnet/time4j/engine/Chronology;->CHRONOS:Ljava/util/List;

    new-instance v1, Lnet/time4j/engine/Chronology$ChronoReference;

    sget-object v2, Lnet/time4j/engine/Chronology;->QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, v2}, Lnet/time4j/engine/Chronology$ChronoReference;-><init>(Lnet/time4j/engine/Chronology;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Missing attributes."

    .line 234
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    invoke-interface {v0, p1, p2}, Lnet/time4j/engine/ChronoMerger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
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

    .line 249
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/time4j/engine/ChronoMerger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCalendarSystem()Lnet/time4j/engine/CalendarSystem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;"
        }
    .end annotation

    .line 351
    new-instance v0, Lnet/time4j/engine/ChronoException;

    const-string v1, "Calendar system is not available."

    invoke-direct {v0, v1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;"
        }
    .end annotation

    .line 375
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar variant is not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCalendarSystem(Lnet/time4j/engine/VariantSource;)Lnet/time4j/engine/CalendarSystem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/VariantSource;",
            ")",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;"
        }
    .end annotation

    .line 397
    invoke-interface {p1}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/engine/Chronology;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    return-object p1
.end method

.method public getChronoType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->chronoType:Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 290
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoMerger;->getDefaultPivotYear()I

    move-result v0

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 283
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoMerger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    invoke-interface {v0, p1, p2}, Lnet/time4j/engine/ChronoMerger;->getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getIntegerRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/IntElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lnet/time4j/engine/IntElementRule<",
            "TT;>;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->intRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/IntElementRule;

    return-object p1
.end method

.method public getRegisteredElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->ruleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;TV;>;"
        }
    .end annotation

    const-string v0, "Missing chronological element."

    .line 477
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->ruleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ElementRule;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 483
    invoke-direct {p0, p1, v0}, Lnet/time4j/engine/Chronology;->getDerivedRule(Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/engine/ElementRule;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    new-instance v0, Lnet/time4j/engine/RuleNotFoundException;

    invoke-direct {v0, p0, p1}, Lnet/time4j/engine/RuleNotFoundException;-><init>(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/ChronoElement;)V

    throw v0

    .line 490
    :cond_1
    :goto_0
    invoke-static {v0}, Lnet/time4j/engine/Chronology;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ElementRule;

    return-object p1
.end method

.method public hasCalendarSystem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRegistered(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->ruleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupported(Lnet/time4j/engine/ChronoElement;)Z
    .locals 2
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

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-direct {p0, p1, v0}, Lnet/time4j/engine/Chronology;->getDerivedRule(Lnet/time4j/engine/ChronoElement;Z)Lnet/time4j/engine/ElementRule;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/engine/ChronoDisplay;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    invoke-interface {v0, p1, p2}, Lnet/time4j/engine/ChronoMerger;->preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

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

    .line 266
    iget-object v0, p0, Lnet/time4j/engine/Chronology;->merger:Lnet/time4j/engine/ChronoMerger;

    invoke-interface {v0}, Lnet/time4j/engine/ChronoMerger;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object v0

    return-object v0
.end method
