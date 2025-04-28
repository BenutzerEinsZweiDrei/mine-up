.class Lcom/facebook/react/views/slider/ReactSliderManager$1;
.super Ljava/lang/Object;
.source "ReactSliderManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/slider/ReactSliderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 100
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lcom/facebook/react/views/slider/ReactSliderEvent;

    .line 105
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    check-cast p1, Lcom/facebook/react/views/slider/ReactSlider;

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/slider/ReactSlider;->toRealProgress(I)D

    move-result-wide p1

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/facebook/react/views/slider/ReactSliderEvent;-><init>(IDZ)V

    .line 103
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 114
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 116
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;

    .line 121
    invoke-static {p1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v2

    .line 122
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    move-object v4, p1

    check-cast v4, Lcom/facebook/react/views/slider/ReactSlider;

    .line 123
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/facebook/react/views/slider/ReactSlider;->toRealProgress(I)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/react/views/slider/ReactSlidingCompleteEvent;-><init>(IID)V

    .line 119
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method
