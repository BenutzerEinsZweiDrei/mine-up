.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilReq.java"

# interfaces
.implements Lokhttp3/Callback;


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

    .line 563
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 5

    .line 567
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->cancelTask(Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->respInfo:Lcom/facebook/react/bridge/WritableMap;

    if-nez p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->respInfo:Lcom/facebook/react/bridge/WritableMap;

    .line 573
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 574
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->respInfo:Lcom/facebook/react/bridge/WritableMap;

    const-string/jumbo p2, "timeout"

    invoke-interface {p1, p2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "The request timed out."

    aput-object v2, p2, v1

    aput-object v4, p2, v3

    aput-object v4, p2, v0

    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->access$200(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;[Ljava/lang/Object;)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    invoke-static {p1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->access$200(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;[Ljava/lang/Object;)V

    .line 578
    :goto_0
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-static {p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->access$300(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz p1, :cond_5

    const-string/jumbo v0, "title"

    .line 588
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-object v1, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v1, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    const-string v0, "description"

    .line 590
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v5, v2

    const-string v0, "mime"

    .line 592
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "text/plain"

    :goto_1
    move-object v7, v0

    const-string v0, "mediaScannable"

    .line 594
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 595
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    const-string v0, "notification"

    .line 596
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 597
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    move v11, p1

    goto :goto_3

    :cond_4
    move v11, v2

    .line 598
    :goto_3
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/DownloadManager;

    .line 599
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-object v8, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-wide v9, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->contentLength:J

    invoke-virtual/range {v3 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 602
    :cond_5
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->access$400(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;Lokhttp3/Response;)V

    return-void
.end method
