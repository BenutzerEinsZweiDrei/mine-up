.class final Leightbitlab/com/blurview/PreDrawBlurController;
.super Ljava/lang/Object;
.source "PreDrawBlurController.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurController;


# static fields
.field static final TRANSPARENT:I


# instance fields
.field private final blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

.field private blurEnabled:Z

.field private blurRadius:F

.field final blurView:Leightbitlab/com/blurview/BlurView;

.field private final blurViewLocation:[I

.field private final drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private frameClearDrawable:Landroid/graphics/drawable/Drawable;

.field private initialized:Z

.field private internalBitmap:Landroid/graphics/Bitmap;

.field private internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

.field private overlayColor:I

.field private final rootLocation:[I

.field private final rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 30
    iput v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 40
    iput-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    new-array v0, v0, [I

    .line 41
    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    .line 43
    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController$1;

    invoke-direct {v0, p0}, Leightbitlab/com/blurview/PreDrawBlurController$1;-><init>(Leightbitlab/com/blurview/PreDrawBlurController;)V

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    .line 68
    iput-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    .line 69
    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 70
    iput p3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    .line 71
    iput-object p4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    .line 73
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->getMeasuredWidth()I

    move-result p2

    .line 74
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->getMeasuredHeight()I

    move-result p1

    .line 76
    invoke-virtual {p0, p2, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method

.method private blurAndSave()V
    .locals 3

    .line 168
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    invoke-interface {v0, v1, v2}, Leightbitlab/com/blurview/BlurAlgorithm;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v0}, Leightbitlab/com/blurview/BlurAlgorithm;->canModifyBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurViewCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setupInternalCanvasMatrix()V
    .locals 5

    .line 125
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 126
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->getLocationOnScreen([I)V

    .line 128
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    .line 129
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 132
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1}, Leightbitlab/com/blurview/BlurView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 133
    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v3}, Leightbitlab/com/blurview/BlurView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 138
    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v4, v2, v0}, Leightbitlab/com/blurview/BlurViewCanvas;->translate(FF)V

    .line 139
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Leightbitlab/com/blurview/BlurViewCanvas;->scale(FF)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 185
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->destroy()V

    .line 186
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    .line 144
    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    instance-of v0, p1, Leightbitlab/com/blurview/BlurViewCanvas;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 154
    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 155
    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2}, Leightbitlab/com/blurview/BlurView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 159
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v2}, Leightbitlab/com/blurview/BlurAlgorithm;->render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method init(II)V
    .locals 4

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 82
    new-instance v1, Leightbitlab/com/blurview/SizeScaler;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v2}, Leightbitlab/com/blurview/BlurAlgorithm;->scaleFactor()F

    move-result v2

    invoke-direct {v1, v2}, Leightbitlab/com/blurview/SizeScaler;-><init>(F)V

    .line 83
    invoke-virtual {v1, p1, p2}, Leightbitlab/com/blurview/SizeScaler;->isZeroSized(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setWillNotDraw(Z)V

    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setWillNotDraw(Z)V

    .line 90
    invoke-virtual {v1, p1, p2}, Leightbitlab/com/blurview/SizeScaler;->scale(II)Leightbitlab/com/blurview/SizeScaler$Size;

    move-result-object p1

    .line 91
    iget p2, p1, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    iget p1, p1, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 92
    new-instance p1, Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Leightbitlab/com/blurview/BlurViewCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    .line 93
    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    .line 98
    invoke-virtual {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->updateBlur()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2

    .line 210
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 203
    iput-boolean p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    .line 204
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 205
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-object p0
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 191
    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    .line 197
    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    .line 219
    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eq v0, p1, :cond_0

    .line 220
    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    .line 221
    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    :cond_0
    return-object p0
.end method

.method updateBlur()V
    .locals 2

    .line 103
    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    :goto_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurViewCanvas;->save()I

    .line 114
    invoke-direct {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->setupInternalCanvasMatrix()V

    .line 115
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurViewCanvas;->restore()V

    .line 118
    invoke-direct {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->blurAndSave()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateBlurViewSize()V
    .locals 2

    .line 176
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->getMeasuredWidth()I

    move-result v0

    .line 177
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1}, Leightbitlab/com/blurview/BlurView;->getMeasuredHeight()I

    move-result v1

    .line 179
    invoke-virtual {p0, v0, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method
