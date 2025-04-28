.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilReq.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;
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

    .line 184
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x522

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "downloadManagerId"

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 192
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-wide v4, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    .line 194
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "download"

    .line 196
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 198
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v2, v1, [J

    const/4 v3, 0x0

    .line 199
    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-wide v4, v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 201
    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 203
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bytes_so_far"

    .line 205
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    const-string/jumbo v0, "total_size"

    .line 207
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 209
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 211
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getReportProgress(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;

    move-result-object p1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 212
    div-long v6, v2, v4

    long-to-float v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 214
    invoke-virtual {p1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;->shouldReport(F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 215
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "taskId"

    invoke-interface {p1, v6, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "written"

    invoke-interface {p1, v6, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "total"

    invoke-interface {p1, v6, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "chunk"

    const-string v6, ""

    .line 219
    invoke-interface {p1, v0, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v6, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v6, "ReactNativeBlobUtilProgress"

    .line 221
    invoke-interface {v0, v6, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    cmp-long p1, v4, v2

    if-nez p1, :cond_3

    .line 226
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;->this$0:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    invoke-static {p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->access$000(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    :goto_1
    return v1
.end method
