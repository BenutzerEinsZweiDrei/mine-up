.class public Lcom/tron/ReactWheelCurvedPickerManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "ReactWheelCurvedPickerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/tron/ReactWheelCurvedPicker;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ITEM_SPACE:I = 0x20

.field private static final DEFAULT_TEXT_SIZE:I = 0x30

.field private static final REACT_CLASS:Ljava/lang/String; = "WheelCurvedPicker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/tron/ReactWheelCurvedPickerManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/tron/ReactWheelCurvedPicker;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/tron/ReactWheelCurvedPicker;
    .locals 2

    .line 39
    new-instance v0, Lcom/tron/ReactWheelCurvedPicker;

    invoke-direct {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    const/high16 p1, -0x1000000

    .line 40
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setItemTextColor(I)V

    const/16 p1, 0x30

    .line 41
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setItemTextSize(I)V

    const/4 p1, -0x1

    .line 42
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setSelectedItemTextColor(I)V

    const/16 p1, 0x20

    .line 43
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setItemSpace(I)V

    const/4 p1, 0x1

    .line 44
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setIndicator(Z)V

    const/4 v1, 0x4

    .line 45
    invoke-virtual {v0, v1}, Lcom/tron/ReactWheelCurvedPicker;->setIndicatorSize(I)V

    const-string v1, "#26808080"

    .line 46
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tron/ReactWheelCurvedPicker;->setIndicatorColor(I)V

    .line 47
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setCurtain(Z)V

    const-string v1, "#1A808080"

    .line 48
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tron/ReactWheelCurvedPicker;->setCurtainColor(I)V

    .line 49
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setAtmospheric(Z)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setCurved(Z)V

    const/4 v1, 0x7

    .line 51
    invoke-virtual {v0, v1}, Lcom/tron/ReactWheelCurvedPicker;->setVisibleItemCount(I)V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lcom/tron/ReactWheelCurvedPicker;->setItemAlign(I)V

    .line 56
    invoke-virtual {v0, p1}, Lcom/tron/ReactWheelCurvedPicker;->setSelectedItemPosition(I)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 2

    const-string v0, "registrationName"

    const-string v1, "onValueChange"

    .line 33
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "wheelCurvedPickerPageSelected"

    .line 32
    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "WheelCurvedPicker"

    return-object v0
.end method

.method public setCurtain(Lcom/tron/ReactWheelCurvedPicker;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "isShowSelectBackground"
    .end annotation

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setCurtain(Z)V

    :cond_0
    return-void
.end method

.method public setCurtainColor(Lcom/tron/ReactWheelCurvedPicker;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "selectBackgroundColor"
    .end annotation

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setCurtainColor(I)V

    :cond_0
    return-void
.end method

.method public setData(Lcom/tron/ReactWheelCurvedPicker;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "data"
    .end annotation

    if-eqz p1, :cond_3

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 66
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 67
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    const-string v4, "value"

    .line 69
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_0

    .line 70
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_0
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_1

    .line 72
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    const-string v4, "label"

    .line 75
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1, v0}, Lcom/tron/ReactWheelCurvedPicker;->setValueData(Ljava/util/List;)V

    .line 78
    invoke-virtual {p1, v1}, Lcom/tron/ReactWheelCurvedPicker;->setData(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public setIndicator(Lcom/tron/ReactWheelCurvedPicker;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "isShowSelectLine"
    .end annotation

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setIndicator(Z)V

    :cond_0
    return-void
.end method

.method public setIndicatorColor(Lcom/tron/ReactWheelCurvedPicker;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "selectLineColor"
    .end annotation

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setIndicatorColor(I)V

    :cond_0
    return-void
.end method

.method public setIndicatorSize(Lcom/tron/ReactWheelCurvedPicker;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectLineSize"
    .end annotation

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setIndicatorSize(I)V

    :cond_0
    return-void
.end method

.method public setSelectedIndex(Lcom/tron/ReactWheelCurvedPicker;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "selectedIndex"
    .end annotation

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setSelectedItemPosition(I)V

    .line 88
    invoke-virtual {p1}, Lcom/tron/ReactWheelCurvedPicker;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedTextColor(Lcom/tron/ReactWheelCurvedPicker;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "selectTextColor"
    .end annotation

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setSelectedItemTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(Lcom/tron/ReactWheelCurvedPicker;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "textColor"
    .end annotation

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setItemTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(Lcom/tron/ReactWheelCurvedPicker;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textSize"
    .end annotation

    if-eqz p1, :cond_0

    int-to-float p2, p2

    .line 131
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/tron/ReactWheelCurvedPicker;->setItemTextSize(I)V

    :cond_0
    return-void
.end method
