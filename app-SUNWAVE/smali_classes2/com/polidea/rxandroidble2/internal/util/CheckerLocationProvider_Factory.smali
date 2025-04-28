.class public final Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;
.super Ljava/lang/Object;
.source "CheckerLocationProvider_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final contentResolverProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final locationManagerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/location/LocationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/location/LocationManager;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->contentResolverProvider:Lbleshadow/javax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->locationManagerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/location/LocationManager;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/ContentResolver;Landroid/location/LocationManager;)Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;
    .locals 1

    .line 43
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;-><init>(Landroid/content/ContentResolver;Landroid/location/LocationManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->contentResolverProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->locationManagerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->newInstance(Landroid/content/ContentResolver;Landroid/location/LocationManager;)Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/CheckerLocationProvider;

    move-result-object v0

    return-object v0
.end method
