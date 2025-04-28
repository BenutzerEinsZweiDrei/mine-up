.class final Lcom/beefe/picker/view/SmoothScrollTimerTask;
.super Ljava/util/TimerTask;
.source "SmoothScrollTimerTask.java"


# instance fields
.field final loopView:Lcom/beefe/picker/view/LoopView;

.field offset:I

.field realOffset:I

.field realTotalOffset:I


# direct methods
.method constructor <init>(Lcom/beefe/picker/view/LoopView;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->loopView:Lcom/beefe/picker/view/LoopView;

    .line 14
    iput p2, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->offset:I

    const p1, 0x7fffffff

    .line 15
    iput p1, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realTotalOffset:I

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realOffset:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 21
    iget v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realTotalOffset:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 22
    iget v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->offset:I

    iput v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realTotalOffset:I

    .line 24
    :cond_0
    iget v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realTotalOffset:I

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realOffset:I

    if-nez v1, :cond_2

    if-gez v0, :cond_1

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realOffset:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realOffset:I

    .line 33
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->loopView:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {v0}, Lcom/beefe/picker/view/LoopView;->cancelFuture()V

    .line 35
    iget-object v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->loopView:Lcom/beefe/picker/view/LoopView;

    iget-object v0, v0, Lcom/beefe/picker/view/LoopView;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->loopView:Lcom/beefe/picker/view/LoopView;

    iget v1, v0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    iget v2, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    .line 38
    iget-object v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->loopView:Lcom/beefe/picker/view/LoopView;

    iget-object v0, v0, Lcom/beefe/picker/view/LoopView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39
    iget v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realTotalOffset:I

    iget v1, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/beefe/picker/view/SmoothScrollTimerTask;->realTotalOffset:I

    :goto_1
    return-void
.end method
