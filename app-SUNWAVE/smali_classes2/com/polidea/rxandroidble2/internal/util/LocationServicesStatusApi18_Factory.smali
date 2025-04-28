.class public final Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;
.super Ljava/lang/Object;
.source "LocationServicesStatusApi18_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;",
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

.method public static create()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory$InstanceHolder;->access$000()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;
    .locals 1

    .line 27
    new-instance v0, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;
    .locals 1

    .line 19
    invoke-static {}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;->newInstance()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18_Factory;->get()Lcom/polidea/rxandroidble2/internal/util/LocationServicesStatusApi18;

    move-result-object v0

    return-object v0
.end method
