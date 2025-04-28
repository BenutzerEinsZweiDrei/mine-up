.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory.java"

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
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;->targetSdkProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRecommendedConnectRuntimePermissionNames(II)[[Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideRecommendedConnectRuntimePermissionNames(II)[[Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;->get()[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()[[Ljava/lang/String;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;->targetSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideRecommendedConnectRuntimePermissionNamesFactory;->provideRecommendedConnectRuntimePermissionNames(II)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
