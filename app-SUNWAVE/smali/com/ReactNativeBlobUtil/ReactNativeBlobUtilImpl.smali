.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilImpl.java"


# static fields
.field private static ActionViewVisible:Z = false

.field public static final NAME:Ljava/lang/String; = "ReactNativeBlobUtil"

.field static RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field static fsTaskQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final fsThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final promiseTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/bridge/Promise;",
            ">;"
        }
    .end annotation
.end field

.field private static final taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final mClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 47
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v7, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->taskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const/16 v2, 0xa

    const-wide/16 v3, 0x1388

    move-object v0, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v8, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->fsTaskQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 50
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v8, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->fsThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->ActionViewVisible:Z

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->promiseTable:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->mClient:Lokhttp3/OkHttpClient;

    .line 56
    new-instance v1, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v1, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 57
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/network/CookieJarContainer;

    .line 58
    new-instance v2, Lokhttp3/JavaNetCookieJar;

    invoke-direct {v2, v1}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-interface {v0, v2}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 60
    sput-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 61
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$1;

    invoke-direct {v0, p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$1;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;)V

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .line 40
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->promiseTable:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->ActionViewVisible:Z

    return v0
.end method


# virtual methods
.method public actionViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    :try_start_0
    invoke-static {p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 101
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/high16 v4, 0x10000000

    const/4 v5, 0x1

    if-lt v2, v3, :cond_1

    .line 108
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_1
    if-eqz p3, :cond_2

    .line 119
    invoke-static {v1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :cond_2
    :try_start_1
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :try_start_2
    const-string p1, "ENOAPP"

    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No app installed for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_2
    sput-boolean v5, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->ActionViewVisible:Z

    .line 131
    new-instance p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$4;

    invoke-direct {p1, p0, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$4;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Lcom/facebook/react/bridge/Promise;)V

    .line 150
    sget-object p2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p2, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EUNSPECIFIED"

    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public addCompleteDownload(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "showNotification"

    const-string v3, "mime"

    const-string v4, "description"

    const-string/jumbo v5, "title"

    .line 341
    sget-object v6, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v7, "download"

    invoke-virtual {v6, v7}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/app/DownloadManager;

    const-string v6, "EINVAL"

    if-eqz v0, :cond_6

    const-string v8, "path"

    .line 342
    invoke-interface {v0, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_4

    .line 346
    :cond_0
    invoke-interface {v0, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReactNativeBlobUtil.addCompleteDownload can not resolve URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_1
    :try_start_0
    invoke-static {v12}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->statFile(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    .line 354
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, ""

    if-eqz v8, :cond_2

    :try_start_1
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_0

    :cond_2
    move-object v8, v9

    .line 355
    :goto_0
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    :cond_3
    const/4 v10, 0x1

    .line 357
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    :cond_4
    move-object v11, v5

    :goto_1
    const-string v3, "size"

    .line 359
    invoke-interface {v6, v3}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 360
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    move v15, v0

    .line 353
    invoke-virtual/range {v7 .. v15}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 362
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EUNSPECIFIED"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_6
    :goto_4
    const-string v0, "ReactNativeBlobUtil.addCompleteDownload config or path missing."

    .line 343
    invoke-interface {v1, v6, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelRequest(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 290
    :try_start_0
    invoke-static {p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->cancelTask(Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    .line 291
    invoke-interface {p2, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v3, v3, [Ljava/lang/Object;

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 198
    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public copyToInternal(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 397
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection;->copyToInternal(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public copyToMediaStore(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 5

    const-string v0, "name"

    .line 406
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ReactNativeBlobUtil.createMediaFile"

    if-eqz v1, :cond_5

    const-string v1, "parentFolder"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "mimeType"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "invalid mediatype"

    .line 411
    invoke-interface {p4, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "invalid path"

    .line 415
    invoke-interface {p4, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 419
    :cond_2
    new-instance v4, Lcom/ReactNativeBlobUtil/Utils/FileDescription;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v0, v3, p1}, Lcom/ReactNativeBlobUtil/Utils/FileDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->valueOf(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    move-result-object p1

    sget-object p2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v4, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection;->createNewMediaFile(Lcom/ReactNativeBlobUtil/Utils/FileDescription;Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;Lcom/facebook/react/bridge/ReactApplicationContext;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "File could not be created"

    .line 423
    invoke-interface {p4, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 p2, 0x0

    .line 427
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p1, p3, p2, p4, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection;->writeToMediaFile(Landroid/net/Uri;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReactApplicationContext;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 428
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 407
    :cond_5
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid filedata: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    .line 173
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$5;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8

    .line 79
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$2;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createFileASCII(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 88
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$3;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createMediaFile(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 5

    const-string v0, "name"

    .line 378
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ReactNativeBlobUtil.createMediaFile"

    if-eqz v1, :cond_3

    const-string v1, "parentFolder"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "mimeType"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string v4, "invalid mediatype"

    .line 382
    invoke-interface {p3, v2, v4}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_1
    new-instance v4, Lcom/ReactNativeBlobUtil/Utils/FileDescription;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v0, v3, p1}, Lcom/ReactNativeBlobUtil/Utils/FileDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;->valueOf(Ljava/lang/String;)Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;

    move-result-object p1

    sget-object p2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v4, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection;->createNewMediaFile(Lcom/ReactNativeBlobUtil/Utils/FileDescription;Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection$MediaType;Lcom/facebook/react/bridge/ReactApplicationContext;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 386
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "File could not be created"

    .line 387
    invoke-interface {p3, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 379
    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid filedata: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public df(Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    .line 307
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->fsThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$12;

    invoke-direct {v1, p0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$12;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableProgressReport(Ljava/lang/String;II)V
    .locals 3

    .line 302
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig$ReportType;->Download:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig$ReportType;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2, p3, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;-><init>(ZIILcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig$ReportType;)V

    .line 303
    sget-object p2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->progressReport:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enableUploadProgressReport(Ljava/lang/String;II)V
    .locals 3

    .line 317
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig$ReportType;->Upload:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig$ReportType;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p2, p3, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig;-><init>(ZIILcom/ReactNativeBlobUtil/ReactNativeBlobUtilProgressConfig$ReportType;)V

    .line 318
    sget-object p2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->uploadProgressReport:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public exists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 169
    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->exists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public fetchBlob(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 12

    .line 322
    new-instance v10, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    move-object v11, p0

    iget-object v8, v11, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->mClient:Lokhttp3/OkHttpClient;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;-><init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lokhttp3/OkHttpClient;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v10}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->run()V

    return-void
.end method

.method public fetchBlobForm(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 12

    .line 326
    new-instance v10, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;

    move-object v11, p0

    iget-object v8, v11, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->mClient:Lokhttp3/OkHttpClient;

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;-><init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lokhttp3/OkHttpClient;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v10}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilReq;->run()V

    return-void
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 402
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection;->getBlob(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getContentIntent(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "*/*"

    .line 334
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :goto_0
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->promiseTable:Landroid/util/SparseArray;

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConst;->GET_CONTENT_INTENT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    sget-object p1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    sget-object p2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConst;->GET_CONTENT_INTENT:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public getSDCardApplicationDir(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 374
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getSDCardApplicationDir(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getSDCardDir(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 370
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getSDCardDir(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public hash(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 264
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$10;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ls(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 186
    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->ls(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public lstat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 233
    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->lstat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 165
    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 182
    invoke-static {p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->mv(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public readFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 8

    .line 206
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$6;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    .line 278
    sget-object v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 279
    sget-object v8, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->fsThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$11;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSession(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 202
    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->removeSession(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public scanFile(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 241
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 242
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$9;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$9;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public slice(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/bridge/Promise;)V
    .locals 6

    const-string v4, ""

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    .line 298
    invoke-static/range {v0 .. v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->slice(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public stat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 237
    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->stat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 161
    invoke-static {p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 157
    invoke-static {p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 194
    invoke-static {p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V
    .locals 10

    .line 224
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$8;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public writeFileArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
    .locals 8

    .line 215
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl$7;-><init>(Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V
    .locals 2

    .line 190
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;

    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v0, v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeToMediaFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 391
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilMediaCollection;->writeToMediaFile(Landroid/net/Uri;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;Lcom/facebook/react/bridge/ReactApplicationContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Success"

    .line 392
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
