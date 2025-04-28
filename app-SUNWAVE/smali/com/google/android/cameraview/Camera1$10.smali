.class Lcom/google/android/cameraview/Camera1$10;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->setFocusArea(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera1;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera1;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1223
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    iput p2, p0, Lcom/google/android/cameraview/Camera1$10;->val$x:F

    iput p3, p0, Lcom/google/android/cameraview/Camera1$10;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1226
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    monitor-enter v0

    .line 1227
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_7

    .line 1230
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v1}, Lcom/google/android/cameraview/Camera1;->access$1200(Lcom/google/android/cameraview/Camera1;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1232
    monitor-exit v0

    return-void

    .line 1234
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 1235
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    iget v4, p0, Lcom/google/android/cameraview/Camera1$10;->val$x:F

    iget v5, p0, Lcom/google/android/cameraview/Camera1$10;->val$y:F

    invoke-static {v3, v4, v5}, Lcom/google/android/cameraview/Camera1;->access$1300(Lcom/google/android/cameraview/Camera1;FF)Landroid/graphics/Rect;

    move-result-object v3

    .line 1237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    new-instance v5, Landroid/hardware/Camera$Area;

    const/16 v6, 0x3e8

    invoke-direct {v5, v3, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    const-string v3, "auto"

    .line 1241
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "macro"

    .line 1242
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "continuous-picture"

    .line 1243
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "continuous-video"

    .line 1244
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const-string v2, "auto"

    .line 1246
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1248
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-lez v2, :cond_2

    .line 1249
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1251
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "auto"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1255
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v2, v2, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "CAMERA_1::"

    const-string v3, "setParameters failed"

    .line 1257
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1261
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/google/android/cameraview/Camera1$10$1;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera1$10$1;-><init>(Lcom/google/android/cameraview/Camera1$10;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "CAMERA_1::"

    const-string v3, "autoFocus failed"

    .line 1268
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1270
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-lez v2, :cond_6

    .line 1271
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "auto"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1272
    monitor-exit v0

    return-void

    :cond_5
    const-string v2, "auto"

    .line 1274
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1276
    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1279
    :try_start_5
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v2, v2, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    const-string v2, "CAMERA_1::"

    const-string v3, "setParameters failed"

    .line 1281
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1285
    :goto_1
    :try_start_7
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/google/android/cameraview/Camera1$10$2;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera1$10$2;-><init>(Lcom/google/android/cameraview/Camera1$10;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_8
    const-string v2, "CAMERA_1::"

    const-string v3, "autoFocus failed"

    .line 1292
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1296
    :cond_6
    :try_start_9
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1$10;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/google/android/cameraview/Camera1$10$3;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera1$10$3;-><init>(Lcom/google/android/cameraview/Camera1$10;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_a
    const-string v2, "CAMERA_1::"

    const-string v3, "autoFocus failed"

    .line 1303
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1307
    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v1
.end method
