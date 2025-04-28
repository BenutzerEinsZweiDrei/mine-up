.class Lcom/facebook/react/devsupport/DevSupportManagerBase$6;
.super Ljava/lang/Object;
.source "DevSupportManagerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerBase;->showNewError(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

.field final synthetic val$errorCookie:I

.field final synthetic val$errorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$stack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$stack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    iput p4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorCookie:I

    iput-object p5, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    iget-object v1, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$stack:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    iget v3, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorCookie:I

    iget-object v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->val$errorType:Lcom/facebook/react/devsupport/interfaces/ErrorType;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$600(Lcom/facebook/react/devsupport/DevSupportManagerBase;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;ILcom/facebook/react/devsupport/interfaces/ErrorType;)V

    .line 349
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    const-string v1, "RedBox"

    invoke-virtual {v0, v1}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->createSurfaceDelegate(Ljava/lang/String;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v2, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v2, v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$402(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/common/SurfaceDelegate;)Lcom/facebook/react/common/SurfaceDelegate;

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    new-instance v2, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;

    invoke-direct {v2, v0}, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;-><init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    invoke-static {v0, v2}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$402(Lcom/facebook/react/devsupport/DevSupportManagerBase;Lcom/facebook/react/common/SurfaceDelegate;)Lcom/facebook/react/common/SurfaceDelegate;

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/react/common/SurfaceDelegate;->createContentView(Ljava/lang/String;)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/common/SurfaceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerBase$6;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerBase;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerBase;->access$400(Lcom/facebook/react/devsupport/DevSupportManagerBase;)Lcom/facebook/react/common/SurfaceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/common/SurfaceDelegate;->show()V

    return-void
.end method
