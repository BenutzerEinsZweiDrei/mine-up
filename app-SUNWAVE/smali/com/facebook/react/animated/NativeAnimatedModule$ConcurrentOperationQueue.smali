.class Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;
.super Ljava/lang/Object;
.source "NativeAnimatedModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/animated/NativeAnimatedModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcurrentOperationQueue"
.end annotation


# instance fields
.field private mPeekedOperation:Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mSynchronizedAccess:Z

.field final synthetic this$0:Lcom/facebook/react/animated/NativeAnimatedModule;


# direct methods
.method private constructor <init>(Lcom/facebook/react/animated/NativeAnimatedModule;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mQueue:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mPeekedOperation:Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mSynchronizedAccess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/animated/NativeAnimatedModule;Lcom/facebook/react/animated/NativeAnimatedModule$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;)V

    return-void
.end method

.method private drainQueueIntoList(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mPeekedOperation:Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->getBatchNumber()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mPeekedOperation:Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 163
    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mPeekedOperation:Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    if-nez v1, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->getBatchNumber()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_3

    .line 175
    iput-object v1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mPeekedOperation:Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    :goto_1
    return-object v0

    .line 178
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method add(Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;)V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mSynchronizedAccess:Z

    if-eqz v0, :cond_0

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method executeBatch(JLcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mSynchronizedAccess:Z

    if-eqz v0, :cond_0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->drainQueueIntoList(J)Ljava/util/List;

    move-result-object p1

    .line 142
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 144
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->drainQueueIntoList(J)Ljava/util/List;

    move-result-object p1

    .line 146
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;

    .line 147
    invoke-virtual {p2, p3}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;->execute(Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method setSynchronizedAccess(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$ConcurrentOperationQueue;->mSynchronizedAccess:Z

    return-void
.end method
