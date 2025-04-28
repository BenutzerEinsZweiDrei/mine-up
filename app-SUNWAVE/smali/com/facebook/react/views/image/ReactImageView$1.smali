.class Lcom/facebook/react/views/image/ReactImageView$1;
.super Lcom/facebook/react/views/image/ReactImageDownloadListener;
.source "ReactImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/image/ReactImageView;->setShouldNotifyLoadEvents(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/image/ReactImageDownloadListener<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/views/image/ReactImageView;

.field final synthetic val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/facebook/react/views/image/ReactImageView;Lcom/facebook/react/uimanager/events/EventDispatcher;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    iput-object p2, p0, Lcom/facebook/react/views/image/ReactImageView$1;->val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView$1;->val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 213
    invoke-static {v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v1}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v1

    .line 212
    invoke-static {v0, v1, p2}, Lcom/facebook/react/views/image/ImageLoadEvent;->createErrorEvent(IILjava/lang/Throwable;)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object p2

    .line 211
    invoke-interface {p1, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 196
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView$1;->val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object p3, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 198
    invoke-static {p3}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 199
    invoke-virtual {v0}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 200
    invoke-static {v1}, Lcom/facebook/react/views/image/ReactImageView;->access$300(Lcom/facebook/react/views/image/ReactImageView;)Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result v2

    .line 202
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result p2

    .line 197
    invoke-static {p3, v0, v1, v2, p2}, Lcom/facebook/react/views/image/ImageLoadEvent;->createLoadEvent(IILjava/lang/String;II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object p2

    .line 196
    invoke-interface {p1, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 203
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView$1;->val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object p2, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 205
    invoke-static {p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {p3}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result p3

    .line 204
    invoke-static {p2, p3}, Lcom/facebook/react/views/image/ImageLoadEvent;->createLoadEndEvent(II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object p2

    .line 203
    invoke-interface {p1, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 172
    check-cast p2, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/image/ReactImageView$1;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public onProgressChange(II)V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$1;->val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v1, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 178
    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 179
    invoke-virtual {v2}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 180
    invoke-static {v3}, Lcom/facebook/react/views/image/ReactImageView;->access$300(Lcom/facebook/react/views/image/ReactImageView;)Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v1, v2, v3, p1, p2}, Lcom/facebook/react/views/image/ImageLoadEvent;->createProgressEvent(IILjava/lang/String;II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object p1

    .line 176
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/facebook/react/views/image/ReactImageView$1;->val$mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object p2, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 189
    invoke-static {p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v0}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v0

    .line 188
    invoke-static {p2, v0}, Lcom/facebook/react/views/image/ImageLoadEvent;->createLoadStartEvent(II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object p2

    .line 187
    invoke-interface {p1, p2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
