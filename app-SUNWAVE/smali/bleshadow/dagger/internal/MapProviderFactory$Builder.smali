.class public final Lbleshadow/dagger/internal/MapProviderFactory$Builder;
.super Lbleshadow/dagger/internal/AbstractMapFactory$Builder;
.source "MapProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbleshadow/dagger/internal/MapProviderFactory;
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
        "TK;TV;",
        "Lbleshadow/javax/inject/Provider<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lbleshadow/dagger/internal/AbstractMapFactory$Builder;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILbleshadow/dagger/internal/MapProviderFactory$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lbleshadow/dagger/internal/MapProviderFactory$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lbleshadow/dagger/internal/MapProviderFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbleshadow/dagger/internal/MapProviderFactory<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lbleshadow/dagger/internal/MapProviderFactory;

    iget-object v1, p0, Lbleshadow/dagger/internal/MapProviderFactory$Builder;->map:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbleshadow/dagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;Lbleshadow/dagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/AbstractMapFactory$Builder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lbleshadow/dagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapProviderFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;)",
            "Lbleshadow/dagger/internal/MapProviderFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1, p2}, Lbleshadow/dagger/internal/AbstractMapFactory$Builder;->put(Ljava/lang/Object;Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/AbstractMapFactory$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/AbstractMapFactory$Builder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lbleshadow/dagger/internal/MapProviderFactory$Builder;->putAll(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/MapProviderFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/util/Map<",
            "TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;>;>;)",
            "Lbleshadow/dagger/internal/MapProviderFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 62
    invoke-super {p0, p1}, Lbleshadow/dagger/internal/AbstractMapFactory$Builder;->putAll(Lbleshadow/javax/inject/Provider;)Lbleshadow/dagger/internal/AbstractMapFactory$Builder;

    return-object p0
.end method
