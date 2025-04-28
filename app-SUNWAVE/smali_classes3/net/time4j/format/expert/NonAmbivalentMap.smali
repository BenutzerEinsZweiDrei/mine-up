.class Lnet/time4j/format/expert/NonAmbivalentMap;
.super Ljava/util/HashMap;
.source "NonAmbivalentMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lnet/time4j/engine/ChronoElement<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1147382474e40a0bL


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;*>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/NonAmbivalentMap;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance p2, Lnet/time4j/format/expert/AmbivalentValueException;

    invoke-direct {p2, p1}, Lnet/time4j/format/expert/AmbivalentValueException;-><init>(Lnet/time4j/engine/ChronoElement;)V

    throw p2

    :cond_1
    :goto_0
    return-object v0
.end method
