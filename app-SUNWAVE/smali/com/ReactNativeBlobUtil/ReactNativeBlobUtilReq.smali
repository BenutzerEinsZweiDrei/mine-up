.class public Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;
.super Landroid/content/BroadcastReceiver;
.source "ReactNativeBlobUtilReq.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;,
        Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;,
        Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;
    }
.end annotation


# static fields
.field public static androidDownloadManagerTaskTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static pool:Lokhttp3/ConnectionPool;

.field static progressReport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static taskTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field static uploadProgressReport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final QUERY:I

.field callback:Lcom/facebook/react/bridge/Callback;

.field callbackfired:Z

.field client:Lokhttp3/OkHttpClient;

.field contentLength:J

.field destPath:Ljava/lang/String;

.field downloadManagerId:J

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field headers:Lcom/facebook/react/bridge/ReadableMap;

.field private mHandler:Landroid/os/Handler;

.field method:Ljava/lang/String;

.field options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

.field rawRequestBody:Ljava/lang/String;

.field rawRequestBodyArray:Lcom/facebook/react/bridge/ReadableArray;

.field redirects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

.field requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

.field respInfo:Lcom/facebook/react/bridge/WritableMap;

.field responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

.field responseType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field taskId:Ljava/lang/String;

.field timeout:Z

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    .line 109
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->pool:Lokhttp3/ConnectionPool;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lokhttp3/OkHttpClient;Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 132
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 125
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->Auto:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->timeout:Z

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->redirects:Ljava/util/ArrayList;

    const/16 v1, 0x522

    .line 181
    iput v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->QUERY:I

    const/4 v1, 0x1

    .line 182
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 184
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;

    invoke-direct {v2, p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$1;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->mHandler:Landroid/os/Handler;

    .line 133
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    .line 134
    new-instance p3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    invoke-direct {p3, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object p3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    .line 135
    iput-object p2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    .line 138
    iput-object p9, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callback:Lcom/facebook/react/bridge/Callback;

    .line 139
    iput-object p6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    .line 140
    iput-object p7, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBodyArray:Lcom/facebook/react/bridge/ReadableArray;

    .line 141
    iput-object p8, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->client:Lokhttp3/OkHttpClient;

    .line 142
    iput-boolean v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callbackfired:Z

    .line 146
    iget-object p1, p3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->fileCache:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->shouldTransformFile()Z

    move-result p1

    if-nez p1, :cond_1

    .line 147
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;->FileStorage:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    goto :goto_0

    .line 149
    :cond_1
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;->KeepInMemory:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    :goto_0
    if-eqz p6, :cond_2

    .line 153
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_1

    :cond_2
    if-eqz p7, :cond_3

    .line 155
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->Form:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_1

    .line 157
    :cond_3
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->WithoutBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)Ljava/util/concurrent/Future;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->future:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;[Ljava/lang/Object;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    return-void
.end method

.method static synthetic access$400(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;Lokhttp3/Response;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->done(Lokhttp3/Response;)V

    return-void
.end method

.method public static cancelTask(Ljava/lang/String;)V
    .locals 4

    .line 161
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 164
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 169
    sget-object p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "download"

    .line 170
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    .line 171
    invoke-virtual {p0, v2}, Landroid/app/DownloadManager;->remove([J)I

    :cond_1
    return-void
.end method

.method private done(Lokhttp3/Response;)V
    .locals 12

    .line 636
    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->isBlobResponse(Lokhttp3/Response;)Z

    move-result v0

    .line 637
    invoke-direct {p0, p1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getResponseInfo(Lokhttp3/Response;Z)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->emitStateEvent(Lcom/facebook/react/bridge/WritableMap;)V

    .line 638
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$6;->$SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$ResponseType:[I

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;

    invoke-virtual {v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "UTF-8"

    const-string v3, ""

    const-string v4, "?append=true"

    const-string v5, "path"

    const-string/jumbo v6, "utf8"

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v1, v11, :cond_6

    if-eq v1, v10, :cond_0

    :try_start_0
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v8, v0, v9

    aput-object v6, v0, v11

    .line 754
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v1, v0, v10

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "ReactNativeBlobUtil failed to encode response data to UTF8 string."

    aput-object v1, v0, v9

    aput-object v8, v0, v11

    .line 756
    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 709
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 715
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    :catch_1
    :try_start_2
    check-cast v0, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1

    .line 744
    invoke-virtual {v0}, Lcom/ReactNativeBlobUtil/Response/ReactNativeBlobUtilFileResp;->isDownloadComplete()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "Download interrupted."

    aput-object v1, v0, v9

    aput-object v8, v0, v11

    .line 745
    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v9

    aput-object v5, v1, v11

    aput-object v0, v1, v10

    .line 748
    invoke-direct {p0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_2
    if-eqz v0, :cond_5

    .line 729
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    move p1, v11

    goto :goto_0

    :cond_2
    move p1, v9

    .line 730
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    move v1, v11

    goto :goto_1

    :cond_3
    move v1, v9

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 732
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 735
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    move-object p1, v8

    :goto_2
    new-array v0, v10, [Ljava/lang/Object;

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected FileStorage response file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v9

    aput-object v8, v0, v11

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-array p1, v10, [Ljava/lang/Object;

    const-string v0, "Unexpected FileStorage response with no file."

    aput-object v0, p1, v9

    aput-object v8, p1, v11

    .line 739
    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_6
    if-eqz v0, :cond_8

    .line 643
    :try_start_4
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->auto:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 644
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getTmpPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 646
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2800

    new-array v3, v3, [B

    .line 649
    :goto_4
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7

    .line 650
    invoke-virtual {v2, v3, v9, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 652
    :cond_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 653
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 654
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v9

    aput-object v5, v1, v11

    aput-object v0, v1, v10

    .line 655
    invoke-direct {p0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 659
    :cond_8
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    .line 662
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->shouldTransformFile()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 663
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer;->sharedFileTransformer:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer$FileTransformer;

    if-eqz v1, :cond_a

    .line 666
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    .line 667
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    .line 669
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 671
    :cond_9
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 672
    :try_start_6
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer;->sharedFileTransformer:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer$FileTransformer;

    invoke-interface {v1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFileTransformer$FileTransformer;->onWriteFile([B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 673
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :try_start_8
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v8, v0, v9

    aput-object v5, v0, v11

    .line 677
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    aput-object v1, v0, v10

    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    return-void

    :catchall_0
    move-exception v0

    .line 671
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_4
    move-exception v0

    :try_start_b
    new-array v1, v10, [Ljava/lang/Object;

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error from file transformer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    aput-object v8, v1, v11

    invoke-direct {p0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void

    .line 664
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write file with transform was specified but the shared file transformer is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_b
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    sget-object v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->BASE64:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    const-string v4, "base64"

    if-ne v1, v3, :cond_c

    :try_start_c
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v9

    aput-object v4, v1, v11

    .line 681
    invoke-static {v0, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    invoke-direct {p0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    return-void

    .line 686
    :cond_c
    :try_start_d
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 687
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 688
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 690
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v9

    aput-object v6, v1, v11

    aput-object v2, v1, v10

    .line 691
    invoke-direct {p0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_6

    .line 696
    :catch_5
    :try_start_e
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->UTF8:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    if-ne v1, v2, :cond_d

    .line 697
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v8, v0, v9

    aput-object v6, v0, v11

    aput-object v1, v0, v10

    .line 698
    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v9

    aput-object v4, v1, v11

    .line 700
    invoke-static {v0, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    invoke-direct {p0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_6

    :catch_6
    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "ReactNativeBlobUtil failed to encode response data to BASE64 string."

    aput-object v1, v0, v9

    aput-object v8, v0, v11

    .line 705
    invoke-direct {p0, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    .line 761
    :goto_6
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 762
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    return-void
.end method

.method private emitStateEvent(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 860
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "ReactNativeBlobUtilState"

    .line 861
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static enableTls12OnPreLollipop(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 944
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    :try_start_0
    const-string v0, "TLSv1.2"

    .line 947
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 948
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 949
    new-instance v1, Lcom/ReactNativeBlobUtil/Utils/Tls12SocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ReactNativeBlobUtil/Utils/Tls12SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 951
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lokhttp3/TlsVersion;

    const/4 v2, 0x0

    sget-object v3, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v3, v1, v2

    .line 952
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 953
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    .line 955
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 956
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    sget-object v0, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    sget-object v0, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OkHttpTLSCompat"

    const-string v2, "Error while setting TLS 1.2"

    .line 962
    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p0
.end method

.method private getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 853
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 855
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private getHeaderIgnoreCases(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 847
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 849
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getReportProgress(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;
    .locals 1

    .line 772
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 773
    :cond_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;

    return-object p0
.end method

.method public static getReportUploadProgress(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;
    .locals 1

    .line 783
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 784
    :cond_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;

    return-object p0
.end method

.method private getResponseInfo(Lokhttp3/Response;Z)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 795
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 796
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    const-string v2, "status"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "state"

    const-string v2, "2"

    .line 797
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    const-string/jumbo v2, "taskId"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-boolean v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->timeout:Z

    const-string/jumbo v2, "timeout"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 800
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const/4 v2, 0x0

    .line 801
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 802
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v4, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 804
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 805
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->redirects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 806
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "redirects"

    .line 808
    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v2, "headers"

    .line 809
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 810
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v1, "respType"

    if-eqz p2, :cond_2

    const-string p1, "blob"

    .line 812
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p2, "content-type"

    .line 813
    invoke-direct {p0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo p1, "text"

    .line 814
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 815
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/json"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "json"

    .line 816
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p1, ""

    .line 818
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method private varargs invoke_callback([Ljava/lang/Object;)V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callbackfired:Z

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callbackfired:Z

    return-void
.end method

.method private isBlobResponse(Lokhttp3/Response;)Z
    .locals 8

    .line 830
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "Content-Type"

    .line 831
    invoke-direct {p0, p1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "text/"

    .line 832
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "application/json"

    .line 833
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 835
    iget-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    .line 836
    :goto_0
    iget-object v5, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v5, v5, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 837
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v6, v6, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v6, v3}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_1
    if-nez v2, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :cond_4
    :goto_2
    return v1
.end method

.method private releaseTaskResource()V
    .locals 2

    .line 618
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :cond_0
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_1
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_2
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    if-eqz v0, :cond_4

    .line 627
    invoke-virtual {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->clearRequestBody()Z

    :cond_4
    return-void
.end method

.method private shouldTransformFile()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->transformFile:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->fileCache:Ljava/lang/Boolean;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 866
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 867
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 868
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "extra_download_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 870
    iget-wide v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_b

    .line 871
    invoke-direct {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    .line 873
    new-instance p2, Landroid/app/DownloadManager$Query;

    invoke-direct {p2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [J

    .line 874
    iget-wide v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {p2, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const-string v1, "download"

    .line 875
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 876
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 877
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p2

    const-string v2, "Download manager failed to download from  "

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    .line 879
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Query was unsuccessful "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    aput-object v6, p1, v0

    aput-object v6, p1, v5

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void

    .line 886
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "status"

    .line 887
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_2

    new-array p1, v3, [Ljava/lang/Object;

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Status Code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    aput-object v6, p1, v0

    aput-object v6, p1, v5

    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 906
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v2, "local_uri"

    .line 892
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 894
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 895
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 898
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 899
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 900
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move-object v2, v6

    :goto_0
    if-eqz p2, :cond_4

    .line 906
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 911
    :cond_4
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string p2, "path"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 913
    :try_start_2
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 914
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v6, v1, v4

    aput-object p2, v1, v0

    aput-object p1, v1, v5

    .line 918
    invoke-direct {p0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 916
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Download manager download failed, the file does not downloaded to destination."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 921
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v5, [Ljava/lang/Object;

    .line 922
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    aput-object v6, p2, v0

    invoke-direct {p0, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_1

    .line 925
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt p1, v7, :cond_8

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v7, "storeInDownloads"

    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object p1, p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 926
    iget-wide v7, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    invoke-virtual {v1, v7, v8}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_7

    .line 928
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Download manager could not resolve downloaded file uri."

    aput-object v2, v1, v4

    aput-object p2, v1, v0

    aput-object v6, v1, v5

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    .line 930
    :cond_7
    iget-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->callback:Lcom/facebook/react/bridge/Callback;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v6, v2, v4

    aput-object p2, v2, v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    if-nez v2, :cond_9

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "Download manager could not resolve downloaded file path."

    aput-object v1, p1, v4

    aput-object p2, p1, v0

    aput-object v6, p1, v5

    .line 934
    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v6, p1, v4

    aput-object p2, p1, v0

    aput-object v2, p1, v5

    .line 936
    invoke-direct {p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_a

    .line 906
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 908
    :cond_a
    throw p1

    :cond_b
    :goto_1
    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, ";base64"

    const-string v3, "post"

    const-string v4, "Content-Type"

    .line 239
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "."

    const-string v6, "path"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v9, "useDownloadManager"

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 241
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v9}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 243
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 244
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "notification"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v2, v8}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v2, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 249
    :goto_0
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v3, "title"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 252
    :cond_1
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "description"

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 255
    :cond_2
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v4, v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 258
    :cond_3
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "mime"

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 261
    :cond_4
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "mediaScannable"

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 264
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_9

    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    const-string/jumbo v4, "storeInDownloads"

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 267
    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_7
    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v3, v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_8
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 275
    :cond_9
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v0

    .line 276
    :goto_1
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 277
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v3

    .line 278
    iget-object v4, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_1

    .line 284
    :cond_a
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Cookie"

    .line 287
    invoke-virtual {v2, v3, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 291
    :goto_2
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "download"

    .line 292
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 293
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->downloadManagerId:J

    .line 294
    sget-object v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->androidDownloadManagerTaskTable:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    iget-object v4, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;

    invoke-direct {v5, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$2;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x64

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->future:Ljava/util/concurrent/Future;

    return-void

    .line 313
    :cond_b
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    .line 314
    iget-object v9, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v9, v9, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    const-string v10, ""

    if-eqz v9, :cond_d

    iget-object v9, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v9, v9, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_3

    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v5, v5, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_d
    :goto_3
    move-object v5, v10

    .line 316
    :goto_4
    iget-object v9, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v9, v9, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->key:Ljava/lang/String;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v9, :cond_f

    .line 317
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 319
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    .line 322
    :cond_e
    new-instance v9, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getTmpPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_f

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v12, v0, v13

    aput-object v6, v0, v8

    .line 325
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    invoke-direct {v1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    return-void

    .line 330
    :cond_f
    iget-object v6, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v6, v6, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 331
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    iput-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    goto :goto_5

    .line 332
    :cond_10
    iget-object v6, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v6, v6, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->fileCache:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getTmpPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->destPath:Ljava/lang/String;

    .line 340
    :cond_11
    :goto_5
    :try_start_1
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->trusty:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 341
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->client:Lokhttp3/OkHttpClient;

    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->getUnsafeOkHttpClient(Lokhttp3/OkHttpClient;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    goto :goto_6

    .line 343
    :cond_12
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    :goto_6
    move-object v5, v0

    .line 348
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v0, v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->wifiOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v0, v6, :cond_17

    .line 353
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object v6, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v6, "connectivity"

    invoke-virtual {v0, v6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 354
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v6

    .line 356
    array-length v9, v6

    move v14, v13

    :goto_7
    if-ge v14, v9, :cond_16

    aget-object v15, v6, v14

    .line 358
    invoke-virtual {v0, v15}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v16

    .line 359
    invoke-virtual {v0, v15}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    if-eqz v7, :cond_15

    if-nez v16, :cond_13

    goto :goto_8

    .line 365
    :cond_13
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v16

    if-nez v16, :cond_14

    goto :goto_8

    .line 369
    :cond_14
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 370
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 371
    invoke-virtual {v15}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move v0, v8

    goto :goto_9

    :cond_15
    :goto_8
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    goto :goto_7

    :cond_16
    move v0, v13

    :goto_9
    if-nez v0, :cond_18

    new-array v0, v11, [Ljava/lang/Object;

    const-string v2, "No available WiFi connections."

    aput-object v2, v0, v13

    aput-object v12, v0, v8

    const/4 v2, 0x2

    aput-object v12, v0, v2

    .line 379
    invoke-direct {v1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    return-void

    :cond_17
    const-string v0, "ReactNativeBlobUtil: wifiOnly was set, but SDK < 21. wifiOnly was ignored."

    .line 384
    invoke-static {v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->emitWarningEvent(Ljava/lang/String;)V

    .line 388
    :cond_18
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 390
    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v7, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->url:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_1
    move-exception v0

    .line 392
    :try_start_3
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 395
    :goto_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 397
    iget-object v7, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v7, :cond_1c

    .line 398
    invoke-interface {v7}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v7

    .line 399
    :cond_19
    :goto_b
    invoke-interface {v7}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 400
    invoke-interface {v7}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v9

    .line 401
    iget-object v14, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->headers:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v14, v9}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "RNFB-Response"

    .line 402
    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1b

    const-string v9, "base64"

    .line 403
    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 404
    sget-object v9, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->BASE64:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    iput-object v9, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    goto :goto_b

    :cond_1a
    const-string/jumbo v9, "utf8"

    .line 405
    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 406
    sget-object v9, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;->UTF8:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    iput-object v9, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->responseFormat:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$ResponseFormat;

    goto :goto_b

    .line 408
    :cond_1b
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15, v14}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 409
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 414
    :cond_1c
    iget-object v7, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v9, "patch"

    const-string v14, "put"

    const-string v15, "content-type"

    if-nez v7, :cond_1e

    :try_start_4
    iget-object v7, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1e

    iget-object v7, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_c

    .line 441
    :cond_1d
    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->WithoutBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto/16 :goto_10

    .line 415
    :cond_1e
    :goto_c
    invoke-direct {v1, v0, v4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 417
    iget-object v13, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBodyArray:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v13, :cond_1f

    .line 418
    sget-object v13, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->Form:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v13, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_d

    :cond_1f
    if-eqz v7, :cond_20

    .line 419
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_22

    .line 420
    :cond_20
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_21

    const-string v13, "application/octet-stream"

    .line 421
    invoke-virtual {v6, v4, v13}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 423
    :cond_21
    sget-object v13, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v13, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 425
    :cond_22
    :goto_d
    iget-object v13, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    if-eqz v13, :cond_29

    const-string v12, "ReactNativeBlobUtil-file://"

    .line 426
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_28

    iget-object v12, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    const-string v13, "ReactNativeBlobUtil-content://"

    .line 427
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    goto :goto_f

    .line 429
    :cond_23
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_25

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "application/octet"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    goto :goto_e

    .line 437
    :cond_24
    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->AsIs:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_10

    .line 430
    :cond_25
    :goto_e
    invoke-virtual {v7, v2, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ";BASE64"

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 432
    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_26
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 434
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_27
    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    goto :goto_10

    .line 428
    :cond_28
    :goto_f
    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->SingleFile:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    iput-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    :cond_29
    :goto_10
    const-string v2, "Transfer-Encoding"

    .line 444
    invoke-direct {v1, v0, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "chunked"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 447
    sget-object v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$6;->$SwitchMap$com$ReactNativeBlobUtil$ReactNativeBlobUtilReq$RequestType:[I

    iget-object v7, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    invoke-virtual {v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v8, :cond_2f

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2e

    if-eq v4, v11, :cond_2d

    const/4 v0, 0x4

    if-eq v4, v0, :cond_2a

    goto/16 :goto_12

    .line 475
    :cond_2a
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_11

    .line 478
    :cond_2b
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto/16 :goto_12

    .line 476
    :cond_2c
    :goto_11
    iget-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [B

    const/4 v2, 0x0

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto/16 :goto_12

    .line 465
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReactNativeBlobUtil-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    iget-object v4, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v3, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->chunkedEncoding(Z)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 468
    invoke-virtual {v2, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setRequestType(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBodyArray:Lcom/facebook/react/bridge/ReadableArray;

    .line 469
    invoke-virtual {v2, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setBody(Lcom/facebook/react/bridge/ReadableArray;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/form-data; boundary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setMIME(Lokhttp3/MediaType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iput-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    .line 471
    iget-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_12

    .line 457
    :cond_2e
    new-instance v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    iget-object v4, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v3, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->chunkedEncoding(Z)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 459
    invoke-virtual {v2, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setRequestType(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    .line 460
    invoke-virtual {v2, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setBody(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    .line 461
    invoke-direct {v1, v0, v15}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setMIME(Lokhttp3/MediaType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iput-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    .line 462
    iget-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_12

    .line 449
    :cond_2f
    new-instance v3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    iget-object v4, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v3, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->chunkedEncoding(Z)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestType:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;

    .line 451
    invoke-virtual {v2, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setRequestType(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$RequestType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->rawRequestBody:Ljava/lang/String;

    .line 452
    invoke-virtual {v2, v3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setBody(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v2

    .line 453
    invoke-direct {v1, v0, v15}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->getHeaderIgnoreCases(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;->setMIME(Lokhttp3/MediaType;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    move-result-object v0

    iput-object v0, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->requestBody:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilBody;

    .line 454
    iget-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->method:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 483
    :goto_12
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 484
    new-instance v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$3;

    invoke-direct {v2, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$3;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 493
    new-instance v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$4;

    invoke-direct {v2, v1, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$4;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;Lokhttp3/Request;)V

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 548
    iget-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-wide v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->timeout:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-ltz v2, :cond_30

    .line 549
    iget-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-wide v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->timeout:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 550
    iget-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-wide v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->timeout:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 553
    :cond_30
    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->pool:Lokhttp3/ConnectionPool;

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    const/4 v2, 0x0

    .line 554
    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 555
    iget-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->followRedirect:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 556
    iget-object v2, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->options:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;

    iget-object v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->followRedirect:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 557
    invoke-virtual {v5, v8}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 559
    invoke-static {v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->enableTls12OnPreLollipop(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 561
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 562
    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskTable:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    new-instance v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;

    invoke-direct {v2, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq$5;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;)V

    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->releaseTaskResource()V

    new-array v2, v8, [Ljava/lang/Object;

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReactNativeBlobUtil request error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->invoke_callback([Ljava/lang/Object;)V

    :goto_13
    return-void
.end method
