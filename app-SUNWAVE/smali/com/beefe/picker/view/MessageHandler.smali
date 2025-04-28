.class final Lcom/beefe/picker/view/MessageHandler;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# static fields
.field public static final WHAT_INVALIDATE_LOOP_VIEW:I = 0x3e8

.field public static final WHAT_ITEM_SELECTED:I = 0xbb8

.field public static final WHAT_SMOOTH_SCROLL:I = 0x7d0


# instance fields
.field final loopview:Lcom/beefe/picker/view/LoopView;


# direct methods
.method constructor <init>(Lcom/beefe/picker/view/LoopView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/beefe/picker/view/MessageHandler;->loopview:Lcom/beefe/picker/view/LoopView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/beefe/picker/view/MessageHandler;->loopview:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1}, Lcom/beefe/picker/view/LoopView;->onItemSelected()V

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/beefe/picker/view/MessageHandler;->loopview:Lcom/beefe/picker/view/LoopView;

    sget-object v0, Lcom/beefe/picker/view/LoopView$ACTION;->FLING:Lcom/beefe/picker/view/LoopView$ACTION;

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/LoopView;->smoothScroll(Lcom/beefe/picker/view/LoopView$ACTION;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/beefe/picker/view/MessageHandler;->loopview:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1}, Lcom/beefe/picker/view/LoopView;->invalidate()V

    :goto_0
    return-void
.end method
