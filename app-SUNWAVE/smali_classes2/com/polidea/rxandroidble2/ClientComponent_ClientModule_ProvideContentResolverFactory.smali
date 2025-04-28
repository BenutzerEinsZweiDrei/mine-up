.class public final Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;
.super Ljava/lang/Object;
.source "ClientComponent_ClientModule_ProvideContentResolverFactory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Landroid/content/ContentResolver;",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;->contextProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static provideContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lbleshadow/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentResolver;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/ContentResolver;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;->contextProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;->provideContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/ClientComponent_ClientModule_ProvideContentResolverFactory;->get()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
