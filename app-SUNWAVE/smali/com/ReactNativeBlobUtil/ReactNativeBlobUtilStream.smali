.class public Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;
.super Ljava/lang/Object;
.source "ReactNativeBlobUtilStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final fileStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

.field private encoding:Ljava/lang/String;

.field private writeStreamInstance:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "base64"

    .line 32
    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    .line 37
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    iput-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-void
.end method

.method static closeStream(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    const/4 v0, 0x0

    .line 232
    :try_start_0
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;

    .line 234
    iget-object v2, v2, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    .line 235
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    new-array p0, v0, [Ljava/lang/Object;

    .line 237
    invoke-interface {p1, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2

    .line 260
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "event"

    .line 261
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "detail"

    .line 262
    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    const-string/jumbo p2, "streamId"

    .line 263
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "ReactNativeBlobUtilFilesystem"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 251
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "event"

    .line 252
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "detail"

    .line 253
    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "streamId"

    .line 254
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "ReactNativeBlobUtilFilesystem"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 269
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "event"

    .line 270
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    .line 271
    invoke-interface {v0, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "detail"

    .line 272
    invoke-interface {v0, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "streamId"

    .line 273
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "ReactNativeBlobUtilFilesystem"

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static inputStreamFromPath(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bundle-assets://"

    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 289
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method static writeArrayChunk(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;)V
    .locals 4

    const/4 v0, 0x0

    .line 210
    :try_start_0
    sget-object v1, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;

    .line 212
    iget-object p0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    .line 213
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-array v1, v1, [B

    move v2, v0

    .line 214
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 215
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    new-array p0, v0, [Ljava/lang/Object;

    .line 218
    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static writeChunk(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 189
    sget-object v0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;

    .line 191
    iget-object v0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    .line 192
    iget-object p0, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->encoding:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 194
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    new-array p0, p1, [Ljava/lang/Object;

    .line 195
    invoke-interface {p2, p0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 197
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method readStream(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v0, p4

    move-object/from16 v3, p5

    const-string v4, "bundle-assets://"

    const-string v5, "base64"

    const-string v6, "error"

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilUtils;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v8, v7

    goto :goto_0

    :cond_0
    move-object/from16 v8, p1

    .line 53
    :goto_0
    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_1

    const/16 v9, 0xfff

    goto :goto_1

    :cond_1
    const/16 v9, 0x1000

    :goto_1
    if-lez p3, :cond_2

    move/from16 v9, p3

    :cond_2
    const-string v10, ""

    if-eqz v7, :cond_3

    .line 59
    :try_start_1
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 60
    sget-object v7, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v7}, Lcom/facebook/react/bridge/ReactApplicationContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_2

    :cond_3
    if-nez v7, :cond_4

    .line 64
    sget-object v4, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilImpl;->RCTContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_2

    .line 66
    :cond_4
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_2
    const-string/jumbo v7, "utf8"

    .line 72
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v11, -0x1

    const-string v12, "data"

    const/4 v13, 0x0

    if-eqz v7, :cond_7

    .line 73
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 74
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 75
    new-array v14, v9, [C

    .line 77
    :goto_3
    invoke-virtual {v7, v14, v13, v9}, Ljava/io/BufferedReader;->read([CII)I

    move-result v15

    if-eq v15, v11, :cond_6

    .line 78
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/String;-><init>([C)V

    .line 79
    invoke-direct {v1, v3, v12, v15}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_5

    move-object v15, v14

    int-to-long v13, v0

    .line 81
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    :cond_5
    move-object v15, v14

    :goto_4
    move-object v14, v15

    const/4 v13, 0x0

    goto :goto_3

    .line 84
    :cond_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 85
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    goto :goto_7

    :cond_7
    const-string v7, "ascii"

    .line 86
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 87
    new-array v5, v9, [B

    .line 88
    :cond_8
    :goto_5
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v11, :cond_a

    .line 89
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v9

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v7, :cond_9

    .line 91
    aget-byte v14, v5, v13

    invoke-interface {v9, v14}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 93
    :cond_9
    invoke-direct {v1, v3, v12, v9}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    if-lez v0, :cond_8

    int-to-long v13, v0

    .line 95
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_5

    :cond_a
    :goto_7
    const/4 v15, 0x0

    goto :goto_a

    .line 97
    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 98
    new-array v5, v9, [B

    .line 99
    :cond_c
    :goto_8
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v11, :cond_a

    const/4 v13, 0x2

    if-ge v7, v9, :cond_d

    .line 101
    new-array v14, v7, [B

    const/4 v15, 0x0

    .line 102
    invoke-static {v5, v15, v14, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-static {v14, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v12, v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    const/4 v15, 0x0

    .line 105
    invoke-static {v5, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v12, v7}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    if-lez v0, :cond_c

    int-to-long v13, v0

    .line 107
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_8

    :goto_a
    move v13, v15

    goto :goto_b

    :cond_e
    const-string v0, "EINVAL"

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized encoding `"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "`, should be one of `base64`, `utf8`, `ascii`"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v6, v0, v5}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    :goto_b
    if-nez v13, :cond_f

    const-string v0, "end"

    .line 120
    invoke-direct {v1, v3, v0, v10}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to convert data to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoded string. This might be because this encoding cannot be used for this data."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EUNSPECIFIED"

    invoke-direct {v1, v3, v6, v4, v2}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 124
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such file \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ENOENT"

    invoke-direct {v1, v3, v6, v2, v0}, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->emitStreamEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method writeStream(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/react/bridge/Callback;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 151
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "ENOTDIR"

    aput-object p3, p2, v1

    .line 157
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create parent directory of \'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 161
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "ENOENT"

    aput-object p3, p2, v1

    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File \'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' does not exist and could not be created"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "EISDIR"

    aput-object p3, p2, v1

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting a file but \'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is a directory"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 170
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 171
    iput-object p2, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->encoding:Ljava/lang/String;

    .line 172
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    .line 173
    sget-object p3, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->fileStreams:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iput-object v3, p0, Lcom/ReactNativeBlobUtil/ReactNativeBlobUtilStream;->writeStreamInstance:Ljava/io/OutputStream;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, p3, v1

    aput-object v3, p3, v0

    aput-object p2, p3, v2

    .line 175
    invoke-interface {p4, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-array p3, v2, [Ljava/lang/Object;

    const-string v2, "EUNSPECIFIED"

    aput-object v2, p3, v1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create write stream at path `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`; "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-interface {p4, p3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
