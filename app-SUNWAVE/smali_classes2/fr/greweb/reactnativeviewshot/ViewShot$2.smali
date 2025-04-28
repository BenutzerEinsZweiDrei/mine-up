.class Lfr/greweb/reactnativeviewshot/ViewShot$2;
.super Ljava/lang/Object;
.source "ViewShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/greweb/reactnativeviewshot/ViewShot;->execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

.field final synthetic val$nativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;


# direct methods
.method constructor <init>(Lfr/greweb/reactnativeviewshot/ViewShot;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    iput-object p2, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->val$nativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "tmpfile"

    .line 220
    iget-object v1, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v1}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$100(Lfr/greweb/reactnativeviewshot/ViewShot;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 221
    iget-object v1, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v1}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$200(Lfr/greweb/reactnativeviewshot/ViewShot;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 223
    :cond_0
    iget-object v1, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->val$nativeViewHierarchyManager:Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    iget-object v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v3}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$100(Lfr/greweb/reactnativeviewshot/ViewShot;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    const-string v3, "E_UNABLE_TO_SNAPSHOT"

    if-nez v1, :cond_1

    .line 227
    invoke-static {}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found with reactTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v4}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$100(Lfr/greweb/reactnativeviewshot/ViewShot;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v0}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$400(Lfr/greweb/reactnativeviewshot/ViewShot;)Lcom/facebook/react/bridge/Promise;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v2}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$100(Lfr/greweb/reactnativeviewshot/ViewShot;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_1
    :try_start_0
    new-instance v4, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;

    invoke-static {}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$500()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;-><init>([B)V

    .line 234
    invoke-static {v1}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$600(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->setSize(I)V

    .line 235
    invoke-virtual {v4}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->innerBuffer()[B

    move-result-object v4

    invoke-static {v4}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$502([B)[B

    .line 237
    iget-object v4, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v4}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$700(Lfr/greweb/reactnativeviewshot/ViewShot;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v4}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$800(Lfr/greweb/reactnativeviewshot/ViewShot;)I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 238
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v0, v1}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$900(Lfr/greweb/reactnativeviewshot/ViewShot;Landroid/view/View;)V

    goto :goto_2

    .line 239
    :cond_2
    iget-object v4, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v4}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$700(Lfr/greweb/reactnativeviewshot/ViewShot;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v0}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$800(Lfr/greweb/reactnativeviewshot/ViewShot;)I

    move-result v0

    if-eq v2, v0, :cond_3

    .line 240
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v0, v1}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$1000(Lfr/greweb/reactnativeviewshot/ViewShot;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    const-string v0, "base64"

    .line 241
    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v2}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$700(Lfr/greweb/reactnativeviewshot/ViewShot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "zip-base64"

    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v2}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$700(Lfr/greweb/reactnativeviewshot/ViewShot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "data-uri"

    .line 243
    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v2}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$700(Lfr/greweb/reactnativeviewshot/ViewShot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v0, v1}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$1200(Lfr/greweb/reactnativeviewshot/ViewShot;Landroid/view/View;)V

    goto :goto_2

    .line 242
    :cond_5
    :goto_1
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v0, v1}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$1100(Lfr/greweb/reactnativeviewshot/ViewShot;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 247
    invoke-static {}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to capture view snapshot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot$2;->this$0:Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-static {v0}, Lfr/greweb/reactnativeviewshot/ViewShot;->access$400(Lfr/greweb/reactnativeviewshot/ViewShot;)Lcom/facebook/react/bridge/Promise;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
