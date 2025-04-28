.class Lcom/facebook/react/devsupport/DevSupportManagerBase$5;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->updateJSError(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

.field final synthetic val$details:Lcom/facebook/react/bridge/ReadableArray;

.field final synthetic val$errorCookie:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iput p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$errorCookie:I

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$details:Lcom/facebook/react/bridge/ReadableArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/common/SurfaceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$errorCookie:I

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$500(Lcom/facebook/react/devsupport/DevSupportManagerBase;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$details:Lcom/facebook/react/bridge/ReadableArray;

    .line 307
    invoke-static {v2}, Lcom/facebook/react/devsupport/StackTraceHelper;->convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    move-result-object v2

    iget v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->val$errorCookie:I

    sget-object v4, Lcom/facebook/react/devsupport/interfaces/ErrorType;->JS:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    .line 306
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$600(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    .line 308
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$5;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/common/SurfaceDelegate;->show()V

    :cond_1
    :goto_0
    return-void
.end method
