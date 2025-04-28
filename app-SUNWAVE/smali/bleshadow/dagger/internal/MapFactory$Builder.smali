.class public final Lbleshadow/dagger/internal/MapFactory$Builder;
.super Lbleshadow/dagger/internal/AbstractMapFactory$Builder;
.source "MapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbleshadow/dagger/internal/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lbleshadow/dagger/internal/AbstractMapFactory$Builder<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lbleshadow/dagger/internal/AbstractMapFactory$Builder;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILbleshadow/dagger/internal/MapFactory$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lbleshadow/dagger/internal/MapFactory$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lbleshadow/dagger/internal/MapFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbleshadow/dagger/internal/MapFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lbleshadow/dagger/internal/MapFactory;

    iget-object v1, p0, Lbleshadow/dagger/internal/MapFactory$Builder;->map:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbleshadow/dagger/internal/MapFactory;-><init>(Ljava/util/Map;Lbleshadow/dagger/internal/MapFactory$1;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/AbstractMapFactory$Builder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lbleshadow/dagger/internal/MapFactory$Builder;->put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;)",
            "Lbleshadow/dagger/internal/MapFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2}, Lbleshadow/dagger/internal/AbstractMapFactory$Builder;->put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/AbstractMapFactory$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/AbstractMapFactory$Builder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lbleshadow/dagger/internal/MapFactory$Builder;->putAll(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "Lbleshadow/dagger/internal/MapFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Lbleshadow/dagger/internal/AbstractMapFactory$Builder;->putAll(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/AbstractMapFactory$Builder;

    return-object p0
.end method
