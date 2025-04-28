.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;",
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

.field private final isConnectableCheckerApi18Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi18;",
            ">;"
        }
    .end annotation
.end field

.field private final isConnectableCheckerApi26Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi26;",
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
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi26;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->isConnectableCheckerApi18Provider:Lbleshadow/javax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->isConnectableCheckerApi26Provider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi26;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIsConnectableChecker(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableCheckerApi26;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;"
        }
    .end annotation

    .line 52
    invoke-static {p0, p1, p2}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideIsConnectableChecker(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->deviceSdkProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->isConnectableCheckerApi18Provider:Lbleshadow/javax/inject/Provider;

    iget-object v2, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->isConnectableCheckerApi26Provider:Lbleshadow/javax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->provideIsConnectableChecker(ILbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideIsConnectableCheckerFactory;->get()Lcom/polidea/rxandroidble2/internal/scan/IsConnectableChecker;

    move-result-object v0

    return-object v0
.end method
