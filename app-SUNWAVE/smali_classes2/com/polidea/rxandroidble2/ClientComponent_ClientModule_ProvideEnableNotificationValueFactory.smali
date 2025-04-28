.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideEnableNotificationValueFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;
    .locals 1

    .line 24
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideEnableNotificationValue()[B
    .locals 1

    .line 28
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideEnableNotificationValue()[B

    move-result-object v0

    invoke-static {v0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public get()[B
    .locals 1

    .line 20
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideEnableNotificationValueFactory;->provideEnableNotificationValue()[B

    move-result-object v0

    return-object v0
.end method
