.class public final Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;
.super Ljava/lang/Object;
.source "LocationServicesOkObservableApi23Factory_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;",
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

.field private final locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
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
            "Landroid/content/Context;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;->contextProvider:Lbleshadow/javax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;->locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;
    .locals 1

    .line 42
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;-><init>(Landroid/content/Context;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;->contextProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;->locationServicesStatusProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;->newInstance(Landroid/content/Context;Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesOkObservableApi23Factory;

    move-result-object v0

    return-object v0
.end method
