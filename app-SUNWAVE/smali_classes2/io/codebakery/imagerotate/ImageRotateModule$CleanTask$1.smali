.class Lio/codebakery/imagerotate/ImageRotateModule$CleanTask$1;
.super Ljava/lang/Object;
.source "ImageRotateModule.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;->cleanDirectory(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;


# direct methods
.method constructor <init>(Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lio/codebakery/imagerotate/ImageRotateModule$CleanTask$1;->this$0:Lio/codebakery/imagerotate/ImageRotateModule$CleanTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "ReactNative_rotated_image_"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
