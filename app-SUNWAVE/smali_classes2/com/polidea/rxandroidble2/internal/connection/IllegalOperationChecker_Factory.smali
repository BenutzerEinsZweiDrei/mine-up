.class public final Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;
.super Ljava/lang/Object;
.source "IllegalOperationChecker_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;",
        ">;"
    }
.end annotation


# instance fields
.field private final resultHandlerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;",
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
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;->resultHandlerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;
    .locals 1

    .line 35
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;-><init>(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;->resultHandlerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationHandler;)Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationChecker;

    move-result-object v0

    return-object v0
.end method
