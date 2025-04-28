.class Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;
.super Ljava/lang/Object;
.source "ReactRootView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/ReactRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomGlobalLayoutListener"
.end annotation


# instance fields
.field private mDeviceRotation:I

.field private mKeyboardHeight:I

.field private final mMinKeyboardHeightDetected:I

.field private final mVisibleViewArea:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/facebook/react/ReactRootView;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactRootView;)V
    .locals 1

    .line 885
    iput-object p1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 882
    iput v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    .line 883
    iput v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mDeviceRotation:I

    .line 886
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V

    .line 887
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    const/high16 p1, 0x42700000    # 60.0f

    .line 888
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mMinKeyboardHeightDetected:I

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;)V
    .locals 0

    .line 878
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForKeyboardEvents()V

    return-void
.end method

.method private checkForDeviceDimensionsChanges()V
    .locals 0

    .line 962
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->emitUpdateDimensionsEvent()V

    return-void
.end method

.method private checkForDeviceOrientationChanges()V
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    .line 949
    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 950
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 951
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 952
    iget v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mDeviceRotation:I

    if-ne v1, v0, :cond_0

    return-void

    .line 955
    :cond_0
    iput v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mDeviceRotation:I

    .line 956
    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v1}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetrics(Landroid/content/Context;)V

    .line 957
    invoke-direct {p0, v0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->emitOrientationChanged(I)V

    return-void
.end method

.method private checkForKeyboardEvents()V
    .locals 11

    .line 904
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 906
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 907
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-virtual {v0}, Lcom/facebook/react/ReactRootView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 916
    :goto_0
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 920
    iget v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    iget v4, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mMinKeyboardHeightDetected:I

    if-le v2, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 923
    iput v2, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    .line 924
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 927
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v3, v1

    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 928
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v5, v1

    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 929
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v7, v1

    iget v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    int-to-float v1, v1

    .line 930
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v9, v1

    move-object v2, p0

    .line 926
    invoke-direct/range {v2 .. v10}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->createKeyboardEventPayload(DDDD)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "keyboardDidShow"

    .line 924
    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 934
    iget v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mMinKeyboardHeightDetected:I

    if-gt v2, v0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 936
    iput v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mKeyboardHeight:I

    .line 937
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    .line 940
    invoke-static {v0}, Lcom/facebook/react/ReactRootView;->access$300(Lcom/facebook/react/ReactRootView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v3, v1

    const-wide/16 v5, 0x0

    iget-object v1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->mVisibleViewArea:Landroid/graphics/Rect;

    .line 942
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    float-to-double v7, v1

    const-wide/16 v9, 0x0

    move-object v2, p0

    .line 939
    invoke-direct/range {v2 .. v10}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->createKeyboardEventPayload(DDDD)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "keyboardDidHide"

    .line 937
    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_4
    return-void
.end method

.method private createKeyboardEventPayload(DDDD)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 1011
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1012
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "height"

    .line 1014
    invoke-interface {v1, v2, p7, p8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p7, "screenX"

    .line 1015
    invoke-interface {v1, p7, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo p3, "width"

    .line 1016
    invoke-interface {v1, p3, p5, p6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p3, "screenY"

    .line 1017
    invoke-interface {v1, p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "endCoordinates"

    .line 1019
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p1, "easing"

    const-string p2, "keyboard"

    .line 1020
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "duration"

    const-wide/16 p2, 0x0

    .line 1021
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method private emitOrientationChanged(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x4056800000000000L    # 90.0

    const-string p1, "landscape-secondary"

    goto :goto_1

    :cond_1
    const-wide v2, 0x4066800000000000L    # 180.0

    const-string p1, "portrait-secondary"

    goto :goto_0

    :cond_2
    const-wide v1, -0x3fa9800000000000L    # -90.0

    const-string p1, "landscape-primary"

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    const-string p1, "portrait-primary"

    :goto_0
    move v0, v1

    move-wide v1, v2

    .line 992
    :goto_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "name"

    .line 993
    invoke-interface {v3, v4, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rotationDegrees"

    .line 994
    invoke-interface {v3, p1, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "isLandscape"

    .line 995
    invoke-interface {v3, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 997
    iget-object p1, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    const-string v0, "namedOrientationDidChange"

    invoke-virtual {p1, v0, v3}, Lcom/facebook/react/ReactRootView;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method private emitUpdateDimensionsEvent()V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    .line 1002
    invoke-static {v0}, Lcom/facebook/react/ReactRootView;->access$100(Lcom/facebook/react/ReactRootView;)Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/deviceinfo/DeviceInfoModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/deviceinfo/DeviceInfoModule;

    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {v0}, Lcom/facebook/react/modules/deviceinfo/DeviceInfoModule;->emitUpdateDimensionsEvent()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    invoke-static {v0}, Lcom/facebook/react/ReactRootView;->access$100(Lcom/facebook/react/ReactRootView;)Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    .line 894
    invoke-static {v0}, Lcom/facebook/react/ReactRootView;->access$200(Lcom/facebook/react/ReactRootView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->this$0:Lcom/facebook/react/ReactRootView;

    .line 895
    invoke-static {v0}, Lcom/facebook/react/ReactRootView;->access$100(Lcom/facebook/react/ReactRootView;)Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForKeyboardEvents()V

    .line 899
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForDeviceOrientationChanges()V

    .line 900
    invoke-direct {p0}, Lcom/facebook/react/ReactRootView$CustomGlobalLayoutListener;->checkForDeviceDimensionsChanges()V

    :cond_1
    :goto_0
    return-void
.end method
