.class public Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ReactNativeBlobUtil.java"


# instance fields
.field private final delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 27
    new-instance v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-direct {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    return-void
.end method


# virtual methods
.method public actionViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->actionViewIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public addCompleteDownload(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->addCompleteDownload(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public cancelRequest(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->cancelRequest(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public copyToInternal(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->copyToInternal(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public copyToMediaStore(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->copyToMediaStore(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public cp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->cp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public createFileASCII(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->createFileASCII(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public createMediaFile(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->createMediaFile(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public df(Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->df(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public enableProgressReport(Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->enableProgressReport(Ljava/lang/String;II)V

    return-void
.end method

.method public enableUploadProgressReport(Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->enableUploadProgressReport(Ljava/lang/String;II)V

    return-void
.end method

.method public exists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->exists(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public fetchBlob(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->fetchBlob(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public fetchBlobForm(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->fetchBlobForm(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->getBlob(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getSystemfolders(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51
    invoke-virtual {p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilFS;->getLegacySystemfolders(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getContentIntent(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->getContentIntent(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReactNativeBlobUtil"

    return-object v0
.end method

.method public getSDCardApplicationDir(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->getSDCardApplicationDir(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getSDCardDir(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->getSDCardDir(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public hash(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->hash(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public ls(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->ls(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public lstat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->lstat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->mkdir(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public mv(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->mv(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public readFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->readFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public removeSession(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->removeSession(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public scanFile(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->scanFile(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public slice(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->slice(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public stat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->stat(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->unlink(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public writeFileArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeFileArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;ZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public writeToMediaFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtil;->delegate:Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->writeToMediaFile(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Promise;)V

    return-void
.end method
