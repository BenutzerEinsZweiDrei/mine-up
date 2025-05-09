.class public final Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;
.super Ljava/lang/Object;
.source "LongWriteOperationBuilderImpl_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultMaxBatchSizeProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;",
            ">;"
        }
    .end annotation
.end field

.field private final operationQueueProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final operationsProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleConnectionProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->defaultMaxBatchSizeProvider:Lbleshadow/javax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->rxBleConnectionProvider:Lbleshadow/javax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->operationsProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/RxBleConnection;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Ljava/lang/Object;Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;
    .locals 1

    .line 56
    new-instance v0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;

    check-cast p1, Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;-><init>(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2/internal/connection/MtuBasedPayloadSizeLimit;Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->operationQueueProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->defaultMaxBatchSizeProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->rxBleConnectionProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2/RxBleConnection;

    iget-object v3, p0, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->operationsProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v3}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;

    invoke-static {v0, v1, v2, v3}, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/serialization/ConnectionOperationQueue;Ljava/lang/Object;Lcom/polidea/rxandroidble2/RxBleConnection;Lcom/polidea/rxandroidble2/internal/operations/OperationsProvider;)Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl_Factory;->get()Lcom/polidea/rxandroidble2/internal/connection/LongWriteOperationBuilderImpl;

    move-result-object v0

    return-object v0
.end method
