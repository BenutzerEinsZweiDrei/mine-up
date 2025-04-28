.class Lorg/reactnative/camera/CameraModule$14;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/CameraModule;->checkIfVideoIsValid(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reactnative/camera/CameraModule;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lorg/reactnative/camera/CameraModule;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lorg/reactnative/camera/CameraModule$14;->this$0:Lorg/reactnative/camera/CameraModule;

    iput-object p3, p0, Lorg/reactnative/camera/CameraModule$14;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lorg/reactnative/camera/CameraModule$14;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0, p2}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 509
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/reactnative/camera/CameraModule$14;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 5

    .line 512
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v0, 0x1

    .line 516
    :try_start_0
    iget-object v1, p0, Lorg/reactnative/camera/CameraModule$14;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x11

    .line 529
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    .line 530
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 535
    iget-object v3, p0, Lorg/reactnative/camera/CameraModule$14;->val$promise:Lcom/facebook/react/bridge/Promise;

    if-eqz v1, :cond_0

    const-string v4, "yes"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    const-string v1, "video"

    .line 536
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 535
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 541
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-void

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 519
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    iget-object v1, p0, Lorg/reactnative/camera/CameraModule$14;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 541
    :try_start_4
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    return-void

    :goto_1
    :try_start_5
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 544
    :catchall_3
    throw v0
.end method
