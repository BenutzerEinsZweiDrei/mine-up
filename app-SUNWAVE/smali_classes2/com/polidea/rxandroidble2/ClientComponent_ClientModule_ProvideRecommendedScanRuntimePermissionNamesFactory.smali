.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "[[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceSdkProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isNearbyServicesNeverForLocationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final targetSdkProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->targetSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->isNearbyServicesNeverForLocationProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRecommendedScanRuntimePermissionNames(IIZ)[[Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0, p1, p2}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideRecommendedScanRuntimePermissionNames(IIZ)[[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->get()[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()[[Ljava/lang/String;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->targetSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->isNearbyServicesNeverForLocationProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedScanRuntimePermissionNamesFactory;->provideRecommendedScanRuntimePermissionNames(IIZ)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
