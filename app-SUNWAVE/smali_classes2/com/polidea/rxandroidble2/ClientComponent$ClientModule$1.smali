.class Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;
.super Ljava/lang/Object;
.source "ClientComponent.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2/ClientComponent$ClientModule;->provideFinalizationCloseable(Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;Ljava/util/concurrent/ExecutorService;)Lcom/polidea/rxandroidble2/ClientComponent$ClientComponentFinalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacksScheduler:Lio/reactivex/Scheduler;

.field final synthetic val$connectionQueueExecutorService:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$interactionExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lio/reactivex/Scheduler;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$interactionExecutorService:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$callbacksScheduler:Lio/reactivex/Scheduler;

    iput-object p3, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$connectionQueueExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalize()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$interactionExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 281
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$callbacksScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->shutdown()V

    .line 282
    iget-object v0, p0, Lcom/polidea/rxandroidble2/ClientComponent$ClientModule$1;->val$connectionQueueExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
