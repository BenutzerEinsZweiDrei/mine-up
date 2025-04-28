.class public final Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;
.super Ljava/lang/Object;
.source "DeviceModule_ProvideConnectionStateRelayFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
        "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;
    .locals 1

    .line 26
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideConnectionStateRelay()Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/DeviceModule;->provideConnectionStateRelay()Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object v0

    invoke-static {v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/rxrelay2/BehaviorRelay;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;->provideConnectionStateRelay()Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/DeviceModule_ProvideConnectionStateRelayFactory;->get()Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object v0

    return-object v0
.end method
