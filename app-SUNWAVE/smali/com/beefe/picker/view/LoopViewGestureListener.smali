.class final Lcom/beefe/picker/view/LoopViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field final loopView:Lcom/beefe/picker/view/LoopView;


# direct methods
.method constructor <init>(Lcom/beefe/picker/view/LoopView;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/beefe/picker/view/LoopViewGestureListener;->loopView:Lcom/beefe/picker/view/LoopView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/beefe/picker/view/LoopViewGestureListener;->loopView:Lcom/beefe/picker/view/LoopView;

    invoke-virtual {p1, p4}, Lcom/beefe/picker/view/LoopView;->scrollBy(F)V

    const/4 p1, 0x1

    return p1
.end method
