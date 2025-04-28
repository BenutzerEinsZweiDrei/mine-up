.class Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilConfig.java"


# instance fields
.field public addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

.field public appendExt:Ljava/lang/String;

.field public auto:Ljava/lang/Boolean;

.field public binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

.field public fileCache:Ljava/lang/Boolean;

.field public followRedirect:Ljava/lang/Boolean;

.field public increment:Ljava/lang/Boolean;

.field public key:Ljava/lang/String;

.field public mime:Ljava/lang/String;

.field public overwrite:Ljava/lang/Boolean;

.field public path:Ljava/lang/String;

.field public timeout:J

.field public transformFile:Ljava/lang/Boolean;

.field public trusty:Ljava/lang/Boolean;

.field public wifiOnly:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->wifiOnly:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->overwrite:Ljava/lang/Boolean;

    const-wide/32 v4, 0xea60

    .line 21
    iput-wide v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->timeout:J

    .line 22
    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->increment:Ljava/lang/Boolean;

    .line 23
    iput-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->followRedirect:Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 24
    iput-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v4, "fileCache"

    .line 29
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->fileCache:Ljava/lang/Boolean;

    const-string/jumbo v4, "transformFile"

    .line 30
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->transformFile:Ljava/lang/Boolean;

    const-string v4, "path"

    .line 31
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    iput-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    const-string v4, "appendExt"

    .line 32
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    const-string v4, ""

    :goto_3
    iput-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->appendExt:Ljava/lang/String;

    const-string/jumbo v4, "trusty"

    .line 33
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->trusty:Ljava/lang/Boolean;

    const-string/jumbo v4, "wifiOnly"

    .line 34
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_5

    :cond_6
    move v4, v0

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->wifiOnly:Ljava/lang/Boolean;

    const-string v4, "addAndroidDownloads"

    .line 35
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 36
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    iput-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->addAndroidDownloads:Lcom/facebook/react/bridge/ReadableMap;

    :cond_7
    const-string v4, "binaryContentTypes"

    .line 38
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 39
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v4

    iput-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->binaryContentTypes:Lcom/facebook/react/bridge/ReadableArray;

    .line 40
    :cond_8
    iget-object v4, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->path:Ljava/lang/String;

    if-eqz v4, :cond_9

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "?append=true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 41
    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->overwrite:Ljava/lang/Boolean;

    :cond_9
    const-string v1, "overwrite"

    .line 43
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 44
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->overwrite:Ljava/lang/Boolean;

    :cond_a
    const-string v1, "followRedirect"

    .line 45
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 46
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->followRedirect:Ljava/lang/Boolean;

    :cond_b
    const-string v1, "key"

    .line 48
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_c
    move-object v1, v3

    :goto_6
    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->key:Ljava/lang/String;

    const-string v1, "contentType"

    .line 49
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_d
    iput-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->mime:Ljava/lang/String;

    const-string v1, "increment"

    .line 50
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_7

    :cond_e
    move v1, v0

    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->increment:Ljava/lang/Boolean;

    const-string v1, "auto"

    .line 51
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v0, v2

    :cond_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->auto:Ljava/lang/Boolean;

    const-string/jumbo v0, "timeout"

    .line 52
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 53
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilConfig;->timeout:J

    :cond_10
    return-void
.end method
