.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideDeviceSdkFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideDeviceSdk()I
    .locals 1

    .line 27
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideDeviceSdk()I

    move-result v0

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 19
    invoke-static {}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->provideDeviceSdk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideDeviceSdkFactory;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
