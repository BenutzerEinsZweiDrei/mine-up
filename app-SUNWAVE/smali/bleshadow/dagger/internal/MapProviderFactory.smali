.class public final Lbleshadow/dagger/internal/MapProviderFactory;
.super Lbleshadow/dagger/internal/AbstractMapFactory;
.source "MapProviderFactory.java"

# interfaces
.implements Lbleshadow/dagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbleshadow/dagger/internal/MapProviderFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lbleshadow/dagger/internal/AbstractMapFactory<",
        "TK;TV;",
        "Lbleshadow/javax/inject/Provider<",
        "TV;>;>;",
        "Lbleshadow/dagger/Lazy<",
        "Ljava/util/Map<",
        "TK;",
        "Lbleshadow/javax/inject/Provider<",
        "TV;>;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lbleshadow/dagger/internal/AbstractMapFactory;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lbleshadow/dagger/internal/MapProviderFactory$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lbleshadow/dagger/internal/MapProviderFactory;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static builder(I)Lbleshadow/dagger/internal/MapProviderFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lbleshadow/dagger/internal/MapProviderFactory$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lbleshadow/dagger/internal/MapProviderFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbleshadow/dagger/internal/MapProviderFactory$Builder;-><init>(ILbleshadow/dagger/internal/MapProviderFactory$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lbleshadow/dagger/internal/MapProviderFactory;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lbleshadow/javax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lbleshadow/dagger/internal/MapProviderFactory;->contributingMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
