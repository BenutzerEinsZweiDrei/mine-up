.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilReq.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;


# direct methods
.method constructor <init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->access$100(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 300
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 301
    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-wide v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    const-string v4, "downloadManagerId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v1, 0x522

    .line 303
    iput v1, v0, Landroid/os/Message;->what:I

    .line 304
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-static {v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->access$100(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
