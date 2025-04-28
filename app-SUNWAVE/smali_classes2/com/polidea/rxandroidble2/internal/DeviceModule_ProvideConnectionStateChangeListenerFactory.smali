.class public final Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;
.super Ljava/lang/Object;
.source "DeviceModule_ProvideConnectionStateChangeListenerFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionStateBehaviorRelayProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;>;"
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
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;->connectionStateBehaviorRelayProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;>;)",
            "Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideConnectionStateChangeListener(Lcom/jakewharton/rxrelay2/BehaviorRelay;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule;->provideConnectionStateChangeListener(Lcom/jakewharton/rxrelay2/BehaviorRelay;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;->connectionStateBehaviorRelayProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/rxrelay2/BehaviorRelay;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;->provideConnectionStateChangeListener(Lcom/jakewharton/rxrelay2/BehaviorRelay;)Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateChangeListenerFactory;->get()Lcom/polidea/rxandroidble2/internal/connection/ConnectionStateChangeListener;

    move-result-object v0

    return-object v0
.end method
