.class public final Lio/legere/pdfiumandroid/util/InitLock;
.super Ljava/lang/Object;
.source "InitLock.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/util/InitLock;",
        "",
        "<init>",
        "()V",
        "semaphore",
        "Ljava/util/concurrent/Semaphore;",
        "isInitialized",
        "",
        "markReady",
        "",
        "waitForReady",
        "pdfiumandroid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isInitialized:Z

.field private final semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lio/legere/pdfiumandroid/util/InitLock;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final markReady()V
    .locals 1

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/legere/pdfiumandroid/util/InitLock;->isInitialized:Z

    .line 11
    iget-object v0, p0, Lio/legere/pdfiumandroid/util/InitLock;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final declared-synchronized waitForReady()V
    .locals 1

    monitor-enter p0

    .line 18
    :try_start_0
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/util/InitLock;->isInitialized:Z

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lio/legere/pdfiumandroid/util/InitLock;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
