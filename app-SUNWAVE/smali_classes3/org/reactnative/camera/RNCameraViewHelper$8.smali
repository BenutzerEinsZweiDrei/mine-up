.class Lorg/reactnative/camera/RNCameraViewHelper$8;
.super Ljava/lang/Object;
.source "RNCameraViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/RNCameraViewHelper;->emitFacesDetectedEvent(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Lcom/facebook/react/bridge/WritableArray;

.field final synthetic val$reactContext:Lcom/facebook/react/bridge/ReactContext;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lorg/reactnative/camera/RNCameraViewHelper$8;->val$view:Landroid/view/ViewGroup;

    iput-object p2, p0, Lorg/reactnative/camera/RNCameraViewHelper$8;->val$data:Lcom/facebook/react/bridge/WritableArray;

    iput-object p3, p0, Lorg/reactnative/camera/RNCameraViewHelper$8;->val$reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    iget-object v0, p0, Lorg/reactnative/camera/RNCameraViewHelper$8;->val$view:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lorg/reactnative/camera/RNCameraViewHelper$8;->val$data:Lcom/facebook/react/bridge/WritableArray;

    invoke-static {v0, v1}, Lorg/reactnative/camera/events/FacesDetectedEvent;->obtain(ILcom/facebook/react/bridge/WritableArray;)Lorg/reactnative/camera/events/FacesDetectedEvent;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lorg/reactnative/camera/RNCameraViewHelper$8;->val$reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v2, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method
