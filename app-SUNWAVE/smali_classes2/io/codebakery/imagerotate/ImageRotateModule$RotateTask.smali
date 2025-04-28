.class Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "ImageRotateModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/codebakery/imagerotate/ImageRotateModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/bridge/GuardedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mAngle:F

.field final mContext:Landroid/content/Context;

.field final mError:Lcom/facebook/react/bridge/Callback;

.field final mSuccess:Lcom/facebook/react/bridge/Callback;

.field final mUri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;FLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 186
    iput-object p1, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mUri:Ljava/lang/String;

    .line 188
    iput p3, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mAngle:F

    .line 189
    iput-object p4, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mSuccess:Lcom/facebook/react/bridge/Callback;

    .line 190
    iput-object p5, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mError:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;FLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;Lio/codebakery/imagerotate/ImageRotateModule$1;)V
    .locals 0

    .line 171
    invoke-direct/range {p0 .. p5}, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;FLcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method private openBitmapInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mUri:Ljava/lang/String;

    invoke-static {v0}, Lio/codebakery/imagerotate/ImageRotateModule;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 202
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rotate(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->openBitmapInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 241
    :try_start_0
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 245
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 246
    iget p1, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mAngle:F

    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 248
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    .line 243
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot decode bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 253
    :cond_2
    throw p1
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 210
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 212
    invoke-direct {p0, v1}, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->rotate(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 214
    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    iget-object v3, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lio/codebakery/imagerotate/ImageRotateModule;->access$300(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 220
    invoke-static {v2, v1, v3}, Lio/codebakery/imagerotate/ImageRotateModule;->access$400(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V

    const-string v2, "image/jpeg"

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lio/codebakery/imagerotate/ImageRotateModule;->access$500(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    .line 226
    :cond_0
    iget-object v1, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mSuccess:Lcom/facebook/react/bridge/Callback;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not determine MIME type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 229
    iget-object v2, p0, Lio/codebakery/imagerotate/ImageRotateModule$RotateTask;->mError:Lcom/facebook/react/bridge/Callback;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
