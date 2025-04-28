.class public Leightbitlab/com/blurview/RenderEffectBlur;
.super Ljava/lang/Object;
.source "RenderEffectBlur.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurAlgorithm;


# instance fields
.field private height:I

.field private final node:Landroid/graphics/RenderNode;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "BlurViewNode"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->width:I

    if-eq v0, v1, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->width:I

    .line 35
    iget-object v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    iget v2, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 37
    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 39
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 40
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-static {p2, p2, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    return-object p1
.end method

.method public canModifyBitmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 1

    .line 47
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    return-void
.end method

.method public getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 58
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 68
    iget-object p2, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    return-void
.end method

.method public scaleFactor()F
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    return v0
.end method
