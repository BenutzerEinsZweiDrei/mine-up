.class Lnet/time4j/format/expert/ParsedValue;
.super Lnet/time4j/format/expert/ParsedEntity;
.source "ParsedValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/expert/ParsedEntity<",
        "Lnet/time4j/format/expert/ParsedValue;",
        ">;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lnet/time4j/format/expert/ParsedEntity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    .line 55
    iput-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Lnet/time4j/engine/ChronoElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    new-instance v0, Lnet/time4j/engine/ChronoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Lnet/time4j/engine/ChronoElement;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
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

    .line 109
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->result:Ljava/lang/Object;

    return-object v0
.end method

.method put(Lnet/time4j/engine/ChronoElement;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;I)V"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    iput-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    .line 129
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 141
    iget-object p2, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    if-eqz p2, :cond_2

    .line 142
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p1, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    iput-object v0, p0, Lnet/time4j/format/expert/ParsedValue;->map:Ljava/util/Map;

    .line 153
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method setResult(Ljava/lang/Object;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lnet/time4j/format/expert/ParsedValue;->result:Ljava/lang/Object;

    return-void
.end method
