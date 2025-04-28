.class Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;
.super Lcom/facebook/react/bridge/GuardedAsyncTask;
.source "ImageRotateModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/codebakery/imagerotate/ImageRotateModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanTask"
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
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/GuardedAsyncTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 111
    iput-object p1, p0, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/bridge/ReactContext;Lio/codebakery/imagerotate/ImageRotateModule$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method private cleanDirectory(Ljava/io/File;)V
    .locals 3

    .line 124
    new-instance v0, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask$1;

    invoke-direct {v0, p0}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask$1;-><init>(Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 133
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackgroundGuarded([Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->doInBackgroundGuarded([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs doInBackgroundGuarded([Ljava/lang/Void;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->cleanDirectory(Ljava/io/File;)V

    .line 117
    iget-object p1, p0, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->cleanDirectory(Ljava/io/File;)V

    :cond_0
    return-void
.end method
