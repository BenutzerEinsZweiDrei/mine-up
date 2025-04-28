.class Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilFileResp.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressReportingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;


# direct methods
.method private constructor <init>(Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;-><init>(Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;)V

    return-void
.end method

.method private reportProgress(Ljava/lang/String;JJ)V
    .locals 2

    .line 137
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string/jumbo v1, "taskId"

    .line 138
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "written"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "total"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->rctContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class p2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "ReactNativeBlobUtilProgress"

    .line 142
    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->ofStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p1, p2

    const-wide/16 p2, -0x1

    .line 97
    :try_start_0
    new-array v0, p1, [B

    .line 98
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-object v1, v1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->originalBody:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    int-to-long v3, p1

    .line 99
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-wide v5, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->bytesDownloaded:J

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-lez v1, :cond_0

    move-wide v9, v3

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    add-long/2addr v5, v9

    iput-wide v5, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->bytesDownloaded:J

    if-lez v1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->ofStream:Ljava/io/FileOutputStream;

    long-to-int v1, v3

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    invoke-virtual {p1}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->contentLength()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_2

    cmp-long p1, v3, p2

    if-nez p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->isEndMarkerReceived:Z

    .line 106
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->mTaskId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getReportProgress(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    invoke-virtual {v0}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->contentLength()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    invoke-virtual {v0}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->contentLength()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-wide v0, v0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->bytesDownloaded:J

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    invoke-virtual {v2}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->contentLength()J

    move-result-wide v5

    div-long/2addr v0, v5

    long-to-float v0, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-boolean v0, v0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->isEndMarkerReceived:Z

    int-to-float v0, v0

    :goto_2
    if-eqz p1, :cond_6

    .line 114
    invoke-virtual {p1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;->shouldReport(F)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 115
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    invoke-virtual {p1}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->contentLength()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_4

    .line 117
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-object v6, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->mTaskId:Ljava/lang/String;

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-wide v7, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->bytesDownloaded:J

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    invoke-virtual {p1}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->contentLength()J

    move-result-wide v9

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->reportProgress(Ljava/lang/String;JJ)V

    goto :goto_3

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-boolean p1, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->isEndMarkerReceived:Z

    if-nez p1, :cond_5

    .line 121
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-object v6, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->mTaskId:Ljava/lang/String;

    const-wide/16 v7, 0x0

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    invoke-virtual {p1}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->contentLength()J

    move-result-wide v9

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->reportProgress(Ljava/lang/String;JJ)V

    goto :goto_3

    .line 123
    :cond_5
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-object v6, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->mTaskId:Ljava/lang/String;

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-wide v7, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->bytesDownloaded:J

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->this$0:Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;

    iget-wide v9, p1, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->bytesDownloaded:J

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp$ProgressReportingSource;->reportProgress(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    return-wide v3

    :catch_0
    return-wide p2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
