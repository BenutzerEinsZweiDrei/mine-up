.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideLocationServicesStatusFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;",
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

.field private final locationServicesStatusApi18Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;",
            ">;"
        }
    .end annotation
.end field

.field private final locationServicesStatusApi23Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;",
            ">;"
        }
    .end annotation
.end field

.field private final locationServicesStatusApi31Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->locationServicesStatusApi18Provider:Lbleshadow/javax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->locationServicesStatusApi23Provider:Lbleshadow/javax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->locationServicesStatusApi31Provider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideLocationServicesStatus(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi23;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi31;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideLocationServicesStatus(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->locationServicesStatusApi18Provider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->locationServicesStatusApi23Provider:Lbleshadow/javax/inject/Provider;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->locationServicesStatusApi31Provider:Lbleshadow/javax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->provideLocationServicesStatus(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideLocationServicesStatusFactory;->get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatus;

    move-result-object v0

    return-object v0
.end method
