.class Lorg/reactnative/camera/CameraModule$6;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/CameraModule;->record(Lcom/facebook/react/bridge/ReadableMap;ILcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reactnative/camera/CameraModule;

.field final synthetic val$cacheDirectory:Ljava/io/File;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;

.field final synthetic val$viewTag:I


# direct methods
.method constructor <init>(Lorg/reactnative/camera/CameraModule;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$6;->this$0:Lorg/reactnative/camera/CameraModule;

    iput p2, p0, Lorg/reactnative/camera/CameraModule$6;->val$viewTag:I

    iput-object p3, p0, Lorg/reactnative/camera/CameraModule$6;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p4, p0, Lorg/reactnative/camera/CameraModule$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p5, p0, Lorg/reactnative/camera/CameraModule$6;->val$cacheDirectory:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 3

    .line 295
    :try_start_0
    iget v0, p0, Lorg/reactnative/camera/CameraModule$6;->val$viewTag:I

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/reactnative/camera/RNCameraView;

    .line 296
    invoke-virtual {p1}, Lorg/reactnative/camera/RNCameraView;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lorg/reactnative/camera/CameraModule$6;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lorg/reactnative/camera/CameraModule$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lorg/reactnative/camera/CameraModule$6;->val$cacheDirectory:Ljava/io/File;

    invoke-virtual {p1, v0, v1, v2}, Lorg/reactnative/camera/RNCameraView;->record(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Ljava/io/File;)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lorg/reactnative/camera/CameraModule$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v0, "E_CAMERA_UNAVAILABLE"

    const-string v1, "Camera is not running"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    iget-object v0, p0, Lorg/reactnative/camera/CameraModule$6;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "E_CAPTURE_FAILED"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
