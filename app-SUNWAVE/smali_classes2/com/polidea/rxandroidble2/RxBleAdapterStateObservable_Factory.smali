.class public final Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;
.super Ljava/lang/Object;
.source "RxBleAdapterStateObservable_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;",
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;->contextProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;
    .locals 1

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;->contextProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;->newInstance(Landroid/content/Context;)Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable_Factory;->get()Lcom/polidea/rxandroidble2/RxBleAdapterStateObservable;

    move-result-object v0

    return-object v0
.end method
