.class public Lcom/facebook/react/views/text/ReactTextViewManager;
.super Lcom/facebook/react/views/text/ReactTextAnchorViewManager;
.source "ReactTextViewManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/IViewManagerWithChildren;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTText"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<",
        "Lcom/facebook/react/views/text/ReactTextView;",
        "Lcom/facebook/react/views/text/ReactTextShadowNode;",
        ">;",
        "Lcom/facebook/react/uimanager/IViewManagerWithChildren;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RCTText"

.field private static final TX_STATE_KEY_ATTRIBUTED_STRING:S = 0x0s

.field private static final TX_STATE_KEY_HASH:S = 0x2s

.field private static final TX_STATE_KEY_MOST_RECENT_EVENT_COUNT:S = 0x3s

.field private static final TX_STATE_KEY_PARAGRAPH_ATTRIBUTES:S = 0x1s


# instance fields
.field protected mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;-><init>()V

    return-void
.end method

.method private getReactTextUpdate(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    .line 147
    invoke-interface {p3, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    invoke-interface {p3, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p3

    .line 151
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 150
    invoke-static {v1, v0, v2}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v4

    .line 152
    invoke-virtual {p1, v4}, Lcom/facebook/react/views/text/ReactTextView;->setSpanned(Landroid/text/Spannable;)V

    const/4 p1, 0x2

    .line 156
    invoke-interface {p3, p1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v8

    .line 158
    new-instance p1, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 163
    invoke-static {v0}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->isRTL(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Z

    move-result p3

    .line 162
    invoke-static {p2, p3}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextAlignment(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Z)I

    move-result v7

    .line 165
    invoke-static {p2}, Lcom/facebook/react/views/text/TextAttributeProps;->getJustificationMode(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)I

    move-result v9

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZIII)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewManager;->createShadowNodeInstance()Lcom/facebook/react/views/text/ReactTextShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/views/text/ReactTextShadowNode;
    .locals 2

    .line 84
    new-instance v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    iget-object v1, p0, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/ReactTextShadowNode;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    return-object v0
.end method

.method public createShadowNodeInstance(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Lcom/facebook/react/views/text/ReactTextShadowNode;
    .locals 1

    .line 89
    new-instance v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/text/ReactTextShadowNode;-><init>(Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)V

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/text/ReactTextView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/text/ReactTextView;
    .locals 1

    .line 56
    new-instance v0, Lcom/facebook/react/views/text/ReactTextView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/text/ReactTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 5

    .line 171
    invoke-super {p0}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v1, "registrationName"

    const-string v2, "onTextLayout"

    .line 176
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "onInlineViewLayout"

    .line 177
    invoke-static {v1, v3}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "topTextLayout"

    const-string/jumbo v4, "topInlineViewLayout"

    .line 175
    invoke-static {v3, v2, v4, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 174
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RCTText"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/react/views/text/ReactTextShadowNode;",
            ">;"
        }
    .end annotation

    .line 94
    const-class v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    return-object v0
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 10

    move-object v0, p0

    .line 192
    iget-object v8, v0, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/facebook/react/views/text/TextLayoutManager;->measureText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;[F)J

    move-result-wide v1

    return-wide v1
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 10

    move-object v0, p0

    .line 215
    iget-object v8, v0, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->measureText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;[F)J

    move-result-wide v1

    return-wide v1
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/text/ReactTextView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/text/ReactTextView;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 100
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->updateView()V

    return-void
.end method

.method public bridge synthetic setPadding(Landroid/view/View;IIII)V
    .locals 0

    .line 34
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual/range {p0 .. p5}, Lcom/facebook/react/views/text/ReactTextViewManager;->setPadding(Lcom/facebook/react/views/text/ReactTextView;IIII)V

    return-void
.end method

.method public setPadding(Lcom/facebook/react/views/text/ReactTextView;IIII)V
    .locals 0

    .line 229
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/facebook/react/views/text/ReactTextView;->setPadding(IIII)V

    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/text/ReactTextViewManager;->updateExtraData(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Object;)V
    .locals 3

    .line 61
    check-cast p2, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 62
    invoke-virtual {p2}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v0

    .line 63
    invoke-virtual {p2}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v0, p1}, Lcom/facebook/react/views/text/TextInlineImageSpan;->possiblyUpdateInlineImageSpans(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 66
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setText(Lcom/facebook/react/views/text/ReactTextUpdate;)V

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p2}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result p2

    const-class v2, Lcom/facebook/react/views/text/ReactClickableSpan;

    invoke-interface {v0, v1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/facebook/react/views/text/ReactClickableSpan;

    .line 73
    array-length v1, p2

    if-lez v1, :cond_1

    .line 74
    sget v1, Lcom/facebook/react/R$id;->accessibility_links:I

    new-instance v2, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;

    invoke-direct {v2, p2, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityLinks;-><init>([Landroid/text/style/ClickableSpan;Landroid/text/Spannable;)V

    invoke-virtual {p1, v1, v2}, Lcom/facebook/react/views/text/ReactTextView;->setTag(ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->isFocusable()Z

    move-result p2

    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->getImportantForAccessibility()I

    move-result v0

    .line 77
    invoke-static {p1, p2, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate;->resetDelegate(Landroid/view/View;ZI)V

    :cond_1
    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/text/ReactTextViewManager;->updateState(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 114
    :cond_0
    invoke-static {}, Lcom/facebook/react/config/ReactFeatureFlags;->isMapBufferSerializationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {p3}, Lcom/facebook/react/uimanager/StateWrapper;->getStateDataMapBuffer()Lcom/facebook/react/common/mapbuffer/ReadableMapBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/react/views/text/ReactTextViewManager;->getReactTextUpdate(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 121
    :cond_1
    invoke-interface {p3}, Lcom/facebook/react/uimanager/StateWrapper;->getStateData()Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object p3

    if-nez p3, :cond_2

    return-object v0

    :cond_2
    const-string v0, "attributedString"

    .line 126
    invoke-virtual {p3, v0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v0

    const-string v1, "paragraphAttributes"

    .line 127
    invoke-virtual {p3, v1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/react/views/text/ReactTextViewManager;->mReactTextViewManagerCallback:Lcom/facebook/react/views/text/ReactTextViewManagerCallback;

    .line 129
    invoke-static {v2, v0, v3}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v5

    .line 131
    invoke-virtual {p1, v5}, Lcom/facebook/react/views/text/ReactTextView;->setSpanned(Landroid/text/Spannable;)V

    const-string/jumbo p1, "textBreakStrategy"

    .line 134
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v9

    .line 136
    new-instance p1, Lcom/facebook/react/views/text/ReactTextUpdate;

    const-string v1, "mostRecentEventCount"

    .line 138
    invoke-virtual {p3, v1}, Lcom/facebook/react/bridge/ReadableNativeMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3, v1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    :goto_0
    move v6, p3

    const/4 v7, 0x0

    .line 140
    invoke-static {v0}, Lcom/facebook/react/views/text/TextLayoutManager;->isRTL(Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result p3

    invoke-static {p2, p3}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextAlignment(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Z)I

    move-result v8

    .line 142
    invoke-static {p2}, Lcom/facebook/react/views/text/TextAttributeProps;->getJustificationMode(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)I

    move-result v10

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZIII)V

    return-object p1
.end method
