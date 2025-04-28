.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;->contextProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIsNearbyPermissionNeverForLocation(Landroid/content/Context;)Z
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideIsNearbyPermissionNeverForLocation(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;->contextProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;->provideIsNearbyPermissionNeverForLocation(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsNearbyPermissionNeverForLocationFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
