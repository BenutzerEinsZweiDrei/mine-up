.class Lcom/reactnativecommunity/blurview/BlurViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "BlurViewManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Leightbitlab/com/blurview/BlurView;",
        ">;"
    }
.end annotation


# static fields
.field private static final REACT_CLASS:Ljava/lang/String; = "BlurView"

.field private static final defaultRadius:I = 0xa

.field private static final defaultSampling:I = 0xa


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/blurview/BlurViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Leightbitlab/com/blurview/BlurView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Leightbitlab/com/blurview/BlurView;
    .locals 6
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 33
    new-instance v0, Leightbitlab/com/blurview/BlurView;

    invoke-direct {v0, p1}, Leightbitlab/com/blurview/BlurView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    .line 36
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 40
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v4, 0x41200000    # 10.0f

    const/16 v5, 0x1f

    if-lt v3, v5, :cond_0

    .line 41
    new-instance p1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {p1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    .line 42
    invoke-virtual {v0, v2, p1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    .line 43
    invoke-interface {p1, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    .line 44
    invoke-interface {p1, v4}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    goto :goto_0

    .line 46
    :cond_0
    new-instance v3, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-direct {v3, p1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0, v2, v3}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    .line 48
    invoke-interface {p1, v1}, Leightbitlab/com/blurview/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    .line 49
    invoke-interface {p1, v4}, Leightbitlab/com/blurview/BlurViewFacade;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "BlurView"

    return-object v0
.end method

.method public setColor(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "overlayColor"
    .end annotation

    .line 62
    invoke-virtual {p1, p2}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    .line 63
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-void
.end method

.method public setDownsampleFactor(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0xa
        name = "downsampleFactor"
    .end annotation

    return-void
.end method

.method public setRadius(Leightbitlab/com/blurview/BlurView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0xa
        name = "blurRadius"
    .end annotation

    int-to-float p2, p2

    .line 56
    invoke-virtual {p1, p2}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    .line 57
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-void
.end method
