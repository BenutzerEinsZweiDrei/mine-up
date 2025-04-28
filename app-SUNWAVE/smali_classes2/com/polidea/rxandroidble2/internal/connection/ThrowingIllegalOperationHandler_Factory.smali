.class public final Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;
.super Ljava/lang/Object;
.source "ThrowingIllegalOperationHandler_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final messageCreatorProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;",
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
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;->messageCreatorProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;-><init>(Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;)Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler;
    .locals 1

    .line 37
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler;-><init>(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;->messageCreatorProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;

    invoke-static {v0}, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/connection/IllegalOperationMessageCreator;)Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/ThrowingIllegalOperationHandler;

    move-result-object v0

    return-object v0
.end method
