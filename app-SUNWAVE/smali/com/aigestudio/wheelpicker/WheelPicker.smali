.class public Lcom/aigestudio/wheelpicker/WheelPicker;
.super Landroid/view/View;
.source "WheelPicker.java"

# interfaces
.implements Lcom/aigestudio/wheelpicker/IDebug;
.implements Lcom/aigestudio/wheelpicker/IWheelPicker;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;,
        Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SCROLLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WheelPicker"


# instance fields
.field private fontPath:Ljava/lang/String;

.field private hasAtmospheric:Z

.field private hasCurtain:Z

.field private hasIndicator:Z

.field private hasSameWidth:Z

.field private isClick:Z

.field private isCurved:Z

.field private isCyclic:Z

.field private isDebug:Z

.field private isForceFinishScroll:Z

.field private isTouchTriggered:Z

.field private mCamera:Landroid/graphics/Camera;

.field private mCurrentItemPosition:I

.field private mCurtainColor:I

.field private mData:Ljava/util/List;

.field private mDownPointY:I

.field private mDrawnCenterX:I

.field private mDrawnCenterY:I

.field private mDrawnItemCount:I

.field private mHalfDrawnItemCount:I

.field private mHalfItemHeight:I

.field private mHalfWheelHeight:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorColor:I

.field private mIndicatorSize:I

.field private mItemAlign:I

.field private mItemHeight:I

.field private mItemSpace:I

.field private mItemTextColor:I

.field private mItemTextSize:I

.field private mLastPointY:I

.field private mMatrixDepth:Landroid/graphics/Matrix;

.field private mMatrixRotate:Landroid/graphics/Matrix;

.field private mMaxFlingY:I

.field private mMaxWidthText:Ljava/lang/String;

.field private mMaximumVelocity:I

.field private mMinFlingY:I

.field private mMinimumVelocity:I

.field private mOnItemSelectedListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;

.field private mOnWheelChangeListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectCurrentItem:Landroid/graphics/Rect;

.field private mRectDrawn:Landroid/graphics/Rect;

.field private mRectIndicatorFoot:Landroid/graphics/Rect;

.field private mRectIndicatorHead:Landroid/graphics/Rect;

.field private mScrollOffsetY:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedItemPosition:I

.field private mSelectedItemTextColor:I

.field private mTextMaxHeight:I

.field private mTextMaxWidth:I

.field private mTextMaxWidthPosition:I

.field private mTouchSlop:I

.field private mTracker:Landroid/view/VelocityTracker;

.field private mVisibleItemCount:I

.field private mWheelCenterX:I

.field private mWheelCenterY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/aigestudio/wheelpicker/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x32

    .line 194
    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMinimumVelocity:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaximumVelocity:I

    const/16 v0, 0x8

    .line 229
    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTouchSlop:I

    .line 297
    sget-object v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 298
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_data:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 299
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v0, :cond_0

    sget v0, Lcom/aigestudio/wheelpicker/R$array;->WheelArrayDefault:I

    .line 300
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    .line 301
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_item_text_size:I

    .line 302
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/aigestudio/wheelpicker/R$dimen;->WheelItemTextSize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 301
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemTextSize:I

    .line 303
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_visible_item_count:I

    const/4 v2, 0x7

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mVisibleItemCount:I

    .line 304
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_selected_item_position:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    .line 305
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_same_width:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasSameWidth:Z

    .line 306
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_maximum_width_text_position:I

    const/4 v2, -0x1

    .line 307
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidthPosition:I

    .line 308
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_maximum_width_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    .line 309
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_selected_item_text_color:I

    .line 310
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemTextColor:I

    .line 311
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_item_text_color:I

    const v2, -0x777778

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemTextColor:I

    .line 312
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_item_space:I

    .line 313
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/aigestudio/wheelpicker/R$dimen;->WheelItemSpace:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 312
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemSpace:I

    .line 314
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_cyclic:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCyclic:Z

    .line 315
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_indicator:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasIndicator:Z

    .line 316
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_indicator_color:I

    const v2, -0x11cccd

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mIndicatorColor:I

    .line 317
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_indicator_size:I

    .line 318
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/aigestudio/wheelpicker/R$dimen;->WheelIndicatorSize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 317
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mIndicatorSize:I

    .line 319
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_curtain:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasCurtain:Z

    .line 320
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_curtain_color:I

    const v2, -0x77000001

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurtainColor:I

    .line 321
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_atmospheric:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasAtmospheric:Z

    .line 322
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_curved:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    .line 323
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_item_align:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemAlign:I

    .line 324
    sget v0, Lcom/aigestudio/wheelpicker/R$styleable;->WheelPicker_wheel_font_path:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->fontPath:Ljava/lang/String;

    .line 325
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->updateVisibleItemCount()V

    .line 331
    new-instance p2, Landroid/graphics/Paint;

    const/16 v0, 0x45

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    .line 332
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemTextSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 334
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->fontPath:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->fontPath:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 336
    invoke-virtual {p0, p1}, Lcom/aigestudio/wheelpicker/WheelPicker;->setTypeface(Landroid/graphics/Typeface;)V

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->updateItemTextAlign()V

    .line 345
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeTextSize()V

    .line 347
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    .line 349
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x4

    if-lt p1, p2, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMinimumVelocity:I

    .line 352
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaximumVelocity:I

    .line 353
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTouchSlop:I

    .line 355
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    .line 357
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectIndicatorHead:Landroid/graphics/Rect;

    .line 358
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectIndicatorFoot:Landroid/graphics/Rect;

    .line 360
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    .line 362
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    .line 364
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    .line 365
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    return-void
.end method

.method private computeCurrentItemRect()V
    .locals 6

    .line 534
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasCurtain:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterY:I

    iget v3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfItemHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterY:I

    iget v5, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfItemHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private computeDepth(I)I
    .locals 6

    .line 691
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfWheelHeight:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfWheelHeight:I

    int-to-double v4, p1

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private computeDistanceToEndPoint(I)I
    .locals 2

    .line 779
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfItemHeight:I

    if-le v0, v1, :cond_1

    .line 780
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    if-gez v0, :cond_0

    .line 781
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    neg-int v0, v0

    :goto_0
    sub-int/2addr v0, p1

    return v0

    .line 783
    :cond_0
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    goto :goto_0

    :cond_1
    neg-int p1, p1

    return p1
.end method

.method private computeDrawnCenter()V
    .locals 3

    .line 501
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemAlign:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 509
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterX:I

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterX:I

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterX:I

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterX:I

    .line 512
    :goto_0
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterY:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterY:I

    return-void
.end method

.method private computeFlingLimitY()V
    .locals 3

    .line 516
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    iget v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    mul-int/2addr v0, v1

    .line 517
    iget-boolean v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCyclic:Z

    if-eqz v2, :cond_0

    const/high16 v1, -0x80000000

    goto :goto_0

    :cond_0
    neg-int v1, v1

    iget-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    .line 518
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMinFlingY:I

    .line 519
    iget-boolean v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCyclic:Z

    if-eqz v1, :cond_1

    const v0, 0x7fffffff

    :cond_1
    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaxFlingY:I

    return-void
.end method

.method private computeIndicatorRect()V
    .locals 7

    .line 523
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasIndicator:Z

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mIndicatorSize:I

    div-int/lit8 v0, v0, 0x2

    .line 525
    iget v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterY:I

    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfItemHeight:I

    add-int v3, v1, v2

    sub-int/2addr v1, v2

    .line 527
    iget-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectIndicatorHead:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v0

    iget-object v6, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 529
    iget-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectIndicatorFoot:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v0

    iget-object v5, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private computeSpace(I)I
    .locals 4

    int-to-double v0, p1

    .line 687
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfWheelHeight:I

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private computeTextSize()V
    .locals 3

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxHeight:I

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidth:I

    .line 382
    iget-boolean v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasSameWidth:Z

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidth:I

    goto :goto_1

    .line 384
    :cond_0
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidthPosition:I

    invoke-direct {p0, v0}, Lcom/aigestudio/wheelpicker/WheelPicker;->isPosInRang(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidthPosition:I

    .line 386
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidth:I

    goto :goto_1

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidth:I

    goto :goto_1

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 391
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 393
    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidth:I

    goto :goto_0

    .line 396
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 397
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxHeight:I

    return-void
.end method

.method private isPosInRang(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private measureSize(III)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 457
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    return p2
.end method

.method private updateItemTextAlign()V
    .locals 2

    .line 401
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemAlign:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method

.method private updateVisibleItemCount()V
    .locals 3

    .line 369
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mVisibleItemCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 374
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 375
    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mVisibleItemCount:I

    .line 376
    :cond_0
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mVisibleItemCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnItemCount:I

    .line 377
    div-int/2addr v0, v1

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfDrawnItemCount:I

    return-void

    .line 370
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Wheel\'s visible item count can not be less than 2!"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurrentItemPosition()I
    .locals 1

    .line 886
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurrentItemPosition:I

    return v0
.end method

.method public getCurtainColor()I
    .locals 1

    .line 1059
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurtainColor:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1036
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    .line 1024
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mIndicatorSize:I

    return v0
.end method

.method public getItemAlign()I
    .locals 1

    .line 1093
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemAlign:I

    return v0
.end method

.method public getItemSpace()I
    .locals 1

    .line 1000
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemSpace:I

    return v0
.end method

.method public getItemTextColor()I
    .locals 1

    .line 975
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemTextColor:I

    return v0
.end method

.method public getItemTextSize()I
    .locals 1

    .line 986
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemTextSize:I

    return v0
.end method

.method public getMaximumWidthText()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumWidthTextPosition()I
    .locals 1

    .line 947
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidthPosition:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 850
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    return v0
.end method

.method public getSelectedItemTextColor()I
    .locals 1

    .line 963
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemTextColor:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .line 821
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mVisibleItemCount:I

    return v0
.end method

.method public hasAtmospheric()Z
    .locals 1

    .line 1076
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasAtmospheric:Z

    return v0
.end method

.method public hasCurtain()Z
    .locals 1

    .line 1054
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasCurtain:Z

    return v0
.end method

.method public hasIndicator()Z
    .locals 1

    .line 1019
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasIndicator:Z

    return v0
.end method

.method public hasSameWidth()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasSameWidth:Z

    return v0
.end method

.method public isCurved()Z
    .locals 1

    .line 1081
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .line 833
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCyclic:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 541
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mOnWheelChangeListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;

    if-eqz v1, :cond_0

    .line 542
    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    invoke-interface {v1, v2}, Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;->onWheelScrolled(I)V

    .line 543
    :cond_0
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 545
    :cond_1
    iget v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    neg-int v1, v1

    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    div-int/2addr v1, v2

    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfDrawnItemCount:I

    sub-int v8, v1, v2

    .line 546
    iget v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    add-int/2addr v1, v8

    neg-int v2, v2

    move v9, v1

    move v10, v2

    .line 548
    :goto_0
    iget v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    add-int/2addr v1, v8

    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnItemCount:I

    add-int/2addr v1, v2

    if-ge v9, v1, :cond_14

    .line 551
    iget-boolean v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCyclic:Z

    if-eqz v1, :cond_3

    .line 552
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, v9, v1

    if-gez v1, :cond_2

    .line 553
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 554
    :cond_2
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 556
    :cond_3
    invoke-direct {v0, v9}, Lcom/aigestudio/wheelpicker/WheelPicker;->isPosInRang(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 557
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    .line 559
    :goto_1
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 561
    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterY:I

    iget v3, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    mul-int v4, v10, v3

    add-int/2addr v4, v2

    iget v5, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    rem-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 565
    iget-boolean v3, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_b

    sub-int v3, v2, v4

    .line 568
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v3, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterY:I

    iget-object v12, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v12

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 574
    iget v3, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterY:I

    const/4 v12, 0x1

    if-le v4, v3, :cond_5

    move v3, v12

    goto :goto_2

    :cond_5
    if-ge v4, v3, :cond_6

    const/4 v3, -0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    sub-float v2, v6, v2

    neg-float v2, v2

    const/high16 v13, 0x42b40000    # 90.0f

    mul-float/2addr v2, v13

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, -0x3d4c0000    # -90.0f

    cmpg-float v14, v2, v3

    if-gez v14, :cond_7

    move v2, v3

    :cond_7
    cmpl-float v3, v2, v13

    if-lez v3, :cond_8

    goto :goto_3

    :cond_8
    move v13, v2

    :goto_3
    float-to-int v2, v13

    .line 582
    invoke-direct {v0, v2}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeSpace(I)I

    move-result v3

    .line 584
    iget v14, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterX:I

    .line 585
    iget v15, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemAlign:I

    if-eq v15, v12, :cond_a

    const/4 v12, 0x2

    if-eq v15, v12, :cond_9

    goto :goto_4

    .line 590
    :cond_9
    iget-object v12, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v14, v12, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 587
    :cond_a
    iget-object v12, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    .line 593
    :goto_4
    iget v12, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterY:I

    sub-int/2addr v12, v3

    .line 595
    iget-object v15, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v15}, Landroid/graphics/Camera;->save()V

    .line 596
    iget-object v15, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v15, v13}, Landroid/graphics/Camera;->rotateX(F)V

    .line 597
    iget-object v13, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    iget-object v15, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v13, v15}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 598
    iget-object v13, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v13}, Landroid/graphics/Camera;->restore()V

    .line 599
    iget-object v13, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    neg-int v15, v14

    int-to-float v15, v15

    neg-int v11, v12

    int-to-float v11, v11

    invoke-virtual {v13, v15, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 600
    iget-object v13, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    int-to-float v14, v14

    int-to-float v12, v12

    invoke-virtual {v13, v14, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 602
    iget-object v13, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v13}, Landroid/graphics/Camera;->save()V

    .line 603
    iget-object v13, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    invoke-direct {v0, v2}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeDepth(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x0

    invoke-virtual {v13, v5, v5, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 604
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    iget-object v5, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 605
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 606
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v2, v15, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 607
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v2, v14, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 609
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixDepth:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 611
    :goto_5
    iget-boolean v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasAtmospheric:Z

    if-eqz v2, :cond_d

    .line 612
    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterY:I

    sub-int v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v5, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterY:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    if-gez v2, :cond_c

    const/4 v11, 0x0

    goto :goto_6

    :cond_c
    move v11, v2

    .line 615
    :goto_6
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 619
    :cond_d
    iget-boolean v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    if-eqz v2, :cond_e

    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterY:I

    sub-int v4, v2, v3

    .line 623
    :cond_e
    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemTextColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 625
    iget-boolean v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 626
    :cond_f
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 627
    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterX:I

    int-to-float v2, v2

    int-to-float v3, v4

    iget-object v4, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 630
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemTextColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 632
    iget-boolean v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 633
    :cond_10
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 634
    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterX:I

    int-to-float v2, v2

    iget-object v4, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 637
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 638
    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 639
    iget-boolean v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMatrixRotate:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 640
    :cond_12
    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDrawnCenterX:I

    int-to-float v2, v2

    int-to-float v3, v4

    iget-object v4, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 641
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 643
    :goto_7
    iget-boolean v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->isDebug:Z

    if-eqz v1, :cond_13

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 645
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 646
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    const v2, -0x11cccd

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    iget v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterY:I

    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    mul-int/2addr v2, v10

    add-int v11, v1, v2

    .line 648
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    int-to-float v5, v11

    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget-object v6, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 650
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    const v2, -0xcccc12

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 652
    iget v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfItemHeight:I

    sub-int/2addr v11, v1

    .line 653
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    int-to-float v3, v11

    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    add-int/2addr v11, v1

    int-to-float v5, v11

    iget-object v6, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 659
    :cond_14
    iget-boolean v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasCurtain:Z

    if-eqz v1, :cond_15

    .line 660
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurtainColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 661
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 662
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectCurrentItem:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 666
    :cond_15
    iget-boolean v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasIndicator:Z

    if-eqz v1, :cond_16

    .line 667
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 668
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 669
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectIndicatorHead:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 670
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectIndicatorFoot:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 672
    :cond_16
    iget-boolean v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->isDebug:Z

    if-eqz v1, :cond_17

    .line 673
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    const v2, 0x4433ee33

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    iget-object v1, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingLeft()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingTop()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_17
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 416
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 417
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 419
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 420
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 424
    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidth:I

    .line 425
    iget v3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxHeight:I

    iget v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mVisibleItemCount:I

    mul-int/2addr v3, v4

    iget v5, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemSpace:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 429
    iget-boolean v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    if-eqz v4, :cond_0

    mul-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 432
    :cond_0
    iget-boolean v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isDebug:Z

    const-string v5, ")"

    const-string v6, ":"

    if-eqz v4, :cond_1

    .line 433
    sget-object v4, Lcom/aigestudio/wheelpicker/WheelPicker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wheel\'s content size is ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v2, v4

    .line 438
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 439
    iget-boolean v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isDebug:Z

    if-eqz v4, :cond_2

    .line 440
    sget-object v4, Lcom/aigestudio/wheelpicker/WheelPicker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wheel\'s size is ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_2
    invoke-direct {p0, v0, p1, v2}, Lcom/aigestudio/wheelpicker/WheelPicker;->measureSize(III)I

    move-result p1

    .line 445
    invoke-direct {p0, v1, p2, v3}, Lcom/aigestudio/wheelpicker/WheelPicker;->measureSize(III)I

    move-result p2

    .line 447
    invoke-virtual {p0, p1, p2}, Lcom/aigestudio/wheelpicker/WheelPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 466
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 467
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 466
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 468
    iget-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isDebug:Z

    if-eqz p1, :cond_0

    .line 469
    sget-object p1, Lcom/aigestudio/wheelpicker/WheelPicker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Wheel\'s drawn rect size is ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    .line 470
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ") and location is ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 469
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterX:I

    .line 476
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mWheelCenterY:I

    .line 480
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeDrawnCenter()V

    .line 482
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfWheelHeight:I

    .line 484
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mRectDrawn:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mVisibleItemCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    .line 485
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHalfItemHeight:I

    .line 489
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeFlingLimitY()V

    .line 493
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeIndicatorRect()V

    .line 497
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeCurrentItemRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 769
    :cond_1
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_11

    .line 770
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 771
    iput-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_4

    .line 713
    :cond_2
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDownPointY:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 714
    iput-boolean v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isClick:Z

    goto/16 :goto_4

    .line 717
    :cond_3
    iput-boolean v3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isClick:Z

    .line 718
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 719
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mOnWheelChangeListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;

    if-eqz v0, :cond_4

    .line 720
    invoke-interface {v0, v1}, Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 724
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mLastPointY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 725
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    goto/16 :goto_4

    .line 726
    :cond_5
    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mLastPointY:I

    .line 728
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    goto/16 :goto_4

    .line 731
    :cond_6
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 732
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 733
    :cond_7
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isClick:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isForceFinishScroll:Z

    if-nez v0, :cond_8

    goto/16 :goto_4

    .line 734
    :cond_8
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 736
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x4

    const/16 v4, 0x3e8

    if-lt p1, v0, :cond_9

    .line 737
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaximumVelocity:I

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    goto :goto_0

    .line 739
    :cond_9
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 743
    :goto_0
    iput-boolean v3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isForceFinishScroll:Z

    .line 744
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int v8, p1

    .line 745
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMinimumVelocity:I

    if-le p1, v0, :cond_a

    .line 746
    iget-object v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    iget v6, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMinFlingY:I

    iget v12, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaxFlingY:I

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 747
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    .line 748
    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    iget v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    rem-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeDistanceToEndPoint(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 747
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_1

    .line 750
    :cond_a
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    iget v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    rem-int v4, v0, v4

    .line 751
    invoke-direct {p0, v4}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeDistanceToEndPoint(I)I

    move-result v4

    .line 750
    invoke-virtual {p1, v3, v0, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 755
    :goto_1
    iget-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCyclic:Z

    if-nez p1, :cond_c

    .line 756
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaxFlingY:I

    if-le p1, v0, :cond_b

    .line 757
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    goto :goto_2

    .line 758
    :cond_b
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMinFlingY:I

    if-ge p1, v0, :cond_c

    .line 759
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 760
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_11

    .line 762
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 763
    iput-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    .line 698
    :cond_d
    iput-boolean v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isTouchTriggered:Z

    .line 699
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 700
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 701
    :cond_e
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    .line 702
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    goto :goto_3

    .line 704
    :cond_f
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 705
    :goto_3
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 706
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_10

    .line 707
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 708
    iput-boolean v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isForceFinishScroll:Z

    .line 710
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mLastPointY:I

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mDownPointY:I

    :cond_11
    :goto_4
    return v1
.end method

.method public run()V
    .locals 5

    .line 790
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isForceFinishScroll:Z

    if-nez v0, :cond_5

    .line 792
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    if-nez v0, :cond_1

    return-void

    .line 793
    :cond_1
    iget v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    neg-int v1, v1

    div-int/2addr v1, v0

    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v1, v0

    if-gez v1, :cond_2

    .line 794
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 795
    :cond_2
    iget-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isDebug:Z

    if-eqz v0, :cond_3

    .line 796
    sget-object v0, Lcom/aigestudio/wheelpicker/WheelPicker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_3
    iput v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurrentItemPosition:I

    .line 798
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mOnItemSelectedListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isTouchTriggered:Z

    if-eqz v2, :cond_4

    .line 799
    iget-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, v2, v1}, Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;->onItemSelected(Lcom/aigestudio/wheelpicker/WheelPicker;Ljava/lang/Object;I)V

    .line 800
    :cond_4
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mOnWheelChangeListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isTouchTriggered:Z

    if-eqz v2, :cond_5

    .line 801
    invoke-interface {v0, v1}, Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;->onWheelSelected(I)V

    .line 802
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mOnWheelChangeListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 805
    :cond_5
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 806
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mOnWheelChangeListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    .line 807
    invoke-interface {v0, v1}, Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;->onWheelScrollStateChanged(I)V

    .line 808
    :cond_6
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    .line 809
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->postInvalidate()V

    .line 810
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public setAtmospheric(Z)V
    .locals 0

    .line 1070
    iput-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasAtmospheric:Z

    .line 1071
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setCurtain(Z)V
    .locals 0

    .line 1047
    iput-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasCurtain:Z

    .line 1048
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeCurrentItemRect()V

    .line 1049
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setCurtainColor(I)V
    .locals 0

    .line 1064
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurtainColor:I

    .line 1065
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setCurved(Z)V
    .locals 0

    .line 1086
    iput-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCurved:Z

    .line 1087
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 1088
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 838
    iput-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCyclic:Z

    .line 839
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeFlingLimitY()V

    .line 840
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 2

    const-string v0, "WheelPicker\'s data can not be null!"

    .line 897
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 898
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    .line 901
    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurrentItemPosition:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    iget p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurrentItemPosition:I

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    goto :goto_1

    .line 902
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurrentItemPosition:I

    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    :goto_1
    const/4 p1, 0x0

    .line 906
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    .line 907
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeTextSize()V

    .line 908
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeFlingLimitY()V

    .line 909
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 910
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 816
    iput-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isDebug:Z

    return-void
.end method

.method public setIndicator(Z)V
    .locals 0

    .line 1012
    iput-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasIndicator:Z

    .line 1013
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeIndicatorRect()V

    .line 1014
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1041
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mIndicatorColor:I

    .line 1042
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 0

    .line 1029
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mIndicatorSize:I

    .line 1030
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeIndicatorRect()V

    .line 1031
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setItemAlign(I)V
    .locals 0

    .line 1098
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemAlign:I

    .line 1099
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->updateItemTextAlign()V

    .line 1100
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeDrawnCenter()V

    .line 1101
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setItemSpace(I)V
    .locals 0

    .line 1005
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemSpace:I

    .line 1006
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 1007
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setItemTextColor(I)V
    .locals 0

    .line 980
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemTextColor:I

    .line 981
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setItemTextSize(I)V
    .locals 1

    .line 991
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemTextSize:I

    .line 992
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 993
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeTextSize()V

    .line 994
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 995
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setMaximumWidthText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Maximum width text can not be null!"

    .line 938
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 939
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mMaxWidthText:Ljava/lang/String;

    .line 940
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeTextSize()V

    .line 941
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 942
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setMaximumWidthTextPosition(I)V
    .locals 3

    .line 952
    invoke-direct {p0, p1}, Lcom/aigestudio/wheelpicker/WheelPicker;->isPosInRang(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mTextMaxWidthPosition:I

    .line 956
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeTextSize()V

    .line 957
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 958
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void

    .line 953
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum width text Position must in [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    .line 954
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), but current is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemSelectedListener(Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mOnItemSelectedListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;

    return-void
.end method

.method public setOnWheelChangeListener(Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mOnWheelChangeListener:Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;

    return-void
.end method

.method public setSameWidth(Z)V
    .locals 0

    .line 914
    iput-boolean p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->hasSameWidth:Z

    .line 915
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeTextSize()V

    .line 916
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 917
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 855
    invoke-virtual {p0, p1, v0}, Lcom/aigestudio/wheelpicker/WheelPicker;->setSelectedItemPosition(IZ)V

    return-void
.end method

.method public setSelectedItemPosition(IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 859
    iput-boolean v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isTouchTriggered:Z

    if-eqz p2, :cond_3

    .line 860
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 861
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 862
    iget v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurrentItemPosition:I

    sub-int/2addr p1, v1

    if-nez p1, :cond_0

    return-void

    .line 865
    :cond_0
    iget-boolean v1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->isCyclic:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v2, p2, 0x2

    if-le v1, v2, :cond_2

    if-lez p1, :cond_1

    neg-int p2, p2

    :cond_1
    add-int/2addr p1, p2

    .line 868
    :cond_2
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    neg-int p1, p1

    iget v2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mItemHeight:I

    mul-int/2addr p1, v2

    invoke-virtual {p2, v0, v1, v0, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 869
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 871
    :cond_3
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_4

    .line 872
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 873
    :cond_4
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mData:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 874
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 875
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemPosition:I

    .line 876
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mCurrentItemPosition:I

    .line 877
    iput v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mScrollOffsetY:I

    .line 878
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeFlingLimitY()V

    .line 879
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 880
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method public setSelectedItemTextColor(I)V
    .locals 0

    .line 968
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mSelectedItemTextColor:I

    .line 969
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeCurrentItemRect()V

    .line 970
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1115
    :cond_0
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->computeTextSize()V

    .line 1116
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    .line 1117
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->invalidate()V

    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 0

    .line 826
    iput p1, p0, Lcom/aigestudio/wheelpicker/WheelPicker;->mVisibleItemCount:I

    .line 827
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->updateVisibleItemCount()V

    .line 828
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/WheelPicker;->requestLayout()V

    return-void
.end method
