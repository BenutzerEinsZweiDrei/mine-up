.class Lcom/google/android/cameraview/Camera1$11;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->resetFocus(ZLandroid/hardware/Camera;)V
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

    .line 1314
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$11;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1317
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$11;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$11;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1321
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$11;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v0}, Lcom/google/android/cameraview/Camera1;->access$1200(Lcom/google/android/cameraview/Camera1;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1325
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous-picture"

    if-eq v1, v2, :cond_1

    .line 1326
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1327
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1328
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1330
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$11;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CAMERA_1::"

    const-string v2, "setParameters failed"

    .line 1332
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1336
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$11;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_2
    return-void
.end method
