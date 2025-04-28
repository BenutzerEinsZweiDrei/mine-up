.class Lcom/google/android/cameraview/Camera1$1;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Lcom/google/android/cameraview/PreviewImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera1;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera1;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v1}, Lcom/google/android/cameraview/Camera1;->access$000(Lcom/google/android/cameraview/Camera1;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v1}, Lcom/google/android/cameraview/Camera1;->access$100(Lcom/google/android/cameraview/Camera1;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/cameraview/Camera1$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera1$1$1;-><init>(Lcom/google/android/cameraview/Camera1$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/cameraview/Camera1;->access$002(Lcom/google/android/cameraview/Camera1;Z)Z

    .line 179
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/cameraview/Camera1$1$2;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera1$1$2;-><init>(Lcom/google/android/cameraview/Camera1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
