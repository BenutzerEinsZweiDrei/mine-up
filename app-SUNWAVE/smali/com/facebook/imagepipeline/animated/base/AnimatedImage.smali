.class public interface abstract Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
.super Ljava/lang/Object;
.source "AnimatedImage.java"


# static fields
.field public static final LOOP_COUNT_INFINITE:I


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract doesRenderSupportScaling()Z
.end method

.method public abstract getAnimatedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDuration()I
.end method

.method public abstract getFrame(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation
.end method

.method public abstract getFrameCount()I
.end method

.method public abstract getFrameDurations()[I
.end method

.method public abstract getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLoopCount()I
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract getWidth()I
.end method
