.class public Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;
.super Ljava/lang/Object;
.source "TextLayoutManagerMapBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;
    }
.end annotation


# static fields
.field public static final AS_KEY_CACHE_ID:S = 0x3s

.field public static final AS_KEY_FRAGMENTS:S = 0x2s

.field public static final AS_KEY_HASH:S = 0x0s

.field public static final AS_KEY_STRING:S = 0x1s

.field private static final DEFAULT_INCLUDE_FONT_PADDING:Z = true

.field private static final ENABLE_MEASURE_LOGGING:Z = false

.field public static final FR_KEY_HEIGHT:S = 0x4s

.field public static final FR_KEY_IS_ATTACHMENT:S = 0x2s

.field public static final FR_KEY_REACT_TAG:S = 0x1s

.field public static final FR_KEY_STRING:S = 0x0s

.field public static final FR_KEY_TEXT_ATTRIBUTES:S = 0x5s

.field public static final FR_KEY_WIDTH:S = 0x3s

.field private static final INLINE_VIEW_PLACEHOLDER:Ljava/lang/String; = "0"

.field public static final PA_KEY_ADJUST_FONT_SIZE_TO_FIT:S = 0x3s

.field public static final PA_KEY_ELLIPSIZE_MODE:S = 0x1s

.field public static final PA_KEY_HYPHENATION_FREQUENCY:S = 0x5s

.field public static final PA_KEY_INCLUDE_FONT_PADDING:S = 0x4s

.field public static final PA_KEY_MAX_NUMBER_OF_LINES:S = 0x0s

.field public static final PA_KEY_TEXT_BREAK_STRATEGY:S = 0x2s

.field private static final TAG:Ljava/lang/String; = "TextLayoutManagerMapBuffer"

.field private static final sSpannableCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/facebook/react/common/mapbuffer/MapBuffer;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSpannableCacheLock:Ljava/lang/Object;

.field private static final sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextPaintInstance:Landroid/text/TextPaint;

.field private static final spannableCacheSize:S = 0x64s


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sTextPaintInstance:Landroid/text/TextPaint;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sSpannableCacheLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sSpannableCache:Landroid/util/LruCache;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildSpannableFromFragment(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/common/mapbuffer/MapBuffer;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 116
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_e

    move-object/from16 v4, p1

    .line 117
    invoke-interface {v4, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v5

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v7, 0x5

    .line 121
    invoke-interface {v5, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->fromMapBuffer(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Lcom/facebook/react/views/text/TextAttributeProps;

    move-result-object v7

    .line 124
    invoke-interface {v5, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    invoke-static {v8, v9}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p2

    .line 123
    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v10, 0x1

    .line 128
    invoke-interface {v5, v10}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_0

    invoke-interface {v5, v10}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v11

    goto :goto_1

    :cond_0
    move v11, v12

    :goto_1
    const/4 v13, 0x2

    .line 129
    invoke-interface {v5, v13}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5, v13}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v6, 0x3

    .line 130
    invoke-interface {v5, v6}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(D)F

    move-result v6

    const/4 v7, 0x4

    .line 131
    invoke-interface {v5, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(D)F

    move-result v5

    .line 132
    new-instance v7, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v10

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    new-instance v12, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    float-to-int v6, v6

    float-to-int v5, v5

    invoke-direct {v12, v11, v6, v5}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;-><init>(III)V

    invoke-direct {v7, v8, v10, v12}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 132
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    if-lt v8, v6, :cond_d

    .line 138
    iget-boolean v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsAccessibilityLink:Z

    if-eqz v5, :cond_2

    .line 139
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactClickableSpan;

    invoke-direct {v10, v11}, Lcom/facebook/react/views/text/ReactClickableSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    iget-boolean v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v5, :cond_3

    .line 142
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactForegroundColorSpan;

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    invoke-direct {v10, v13}, Lcom/facebook/react/views/text/ReactForegroundColorSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_3
    iget-boolean v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v5, :cond_4

    .line 147
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    invoke-direct {v10, v13}, Lcom/facebook/react/views/text/ReactBackgroundColorSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_4
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_5

    .line 152
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;

    .line 154
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v13

    invoke-direct {v10, v13}, Lcom/facebook/react/views/text/CustomLetterSpacingSpan;-><init>(F)V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 152
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_5
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    invoke-direct {v10, v13}, Lcom/facebook/react/views/text/ReactAbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    if-ne v5, v12, :cond_6

    iget v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    if-ne v5, v12, :cond_6

    iget-object v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 161
    :cond_6
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/CustomStyleSpan;

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    iget v14, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    iget-object v15, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v12, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    move-object/from16 v16, v12

    move-object v12, v10

    invoke-direct/range {v12 .. v17}, Lcom/facebook/react/views/text/CustomStyleSpan;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 161
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_7
    iget-boolean v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    if-eqz v5, :cond_8

    .line 173
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactUnderlineSpan;

    invoke-direct {v10}, Lcom/facebook/react/views/text/ReactUnderlineSpan;-><init>()V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_8
    iget-boolean v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    if-eqz v5, :cond_9

    .line 176
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ReactStrikethroughSpan;

    invoke-direct {v10}, Lcom/facebook/react/views/text/ReactStrikethroughSpan;-><init>()V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_9
    iget v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    const/4 v10, 0x0

    cmpl-float v5, v5, v10

    if-nez v5, :cond_a

    iget v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_b

    .line 179
    :cond_a
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/ShadowStyleSpan;

    iget v12, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    iget v14, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    iget v15, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/facebook/react/views/text/ShadowStyleSpan;-><init>(FFFI)V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_b
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_c

    .line 190
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v10, Lcom/facebook/react/views/text/CustomLineHeightSpan;

    .line 192
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v7

    invoke-direct {v10, v7}, Lcom/facebook/react/views/text/CustomLineHeightSpan;-><init>(F)V

    invoke-direct {v5, v6, v8, v10}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    .line 190
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_c
    new-instance v5, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    new-instance v7, Lcom/facebook/react/views/text/ReactTagSpan;

    invoke-direct {v7, v11}, Lcom/facebook/react/views/text/ReactTagSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v7}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;-><init>(IILcom/facebook/react/views/text/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private static createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZII)Landroid/text/Layout;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v0, p2

    move/from16 v7, p4

    move/from16 v2, p5

    move/from16 v3, p6

    .line 265
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v4

    .line 266
    sget-object v5, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p3

    if-eq v11, v5, :cond_1

    cmpg-float v5, v0, v9

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v8

    .line 267
    :goto_1
    sget-object v11, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sTextPaintInstance:Landroid/text/TextPaint;

    if-nez v6, :cond_2

    .line 268
    invoke-static {v1, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v12

    goto :goto_2

    :cond_2
    const/high16 v12, 0x7fc00000    # NaNf

    :goto_2
    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0x17

    if-nez v6, :cond_5

    if-nez v5, :cond_3

    .line 272
    invoke-static {v12}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v15

    if-nez v15, :cond_5

    cmpg-float v15, v12, v0

    if-gtz v15, :cond_5

    :cond_3
    float-to-double v5, v12

    .line 276
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v14, :cond_4

    .line 278
    new-instance v8, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v5

    move v5, v6

    move v6, v9

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_4

    .line 289
    :cond_4
    invoke-static {v1, v10, v4, v11, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 290
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v9, v13}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v8

    goto/16 :goto_4

    :cond_5
    if-eqz v6, :cond_8

    if-nez v5, :cond_6

    .line 298
    iget v5, v6, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v5, v5

    cmpg-float v5, v5, v0

    if-gtz v5, :cond_8

    .line 299
    :cond_6
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    .line 300
    iget v2, v6, Landroid/text/BoringLayout$Metrics;->width:I

    if-gez v2, :cond_7

    .line 301
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text width is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Landroid/text/BoringLayout$Metrics;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v10

    goto :goto_3

    :cond_7
    move v2, v0

    .line 307
    :goto_3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v6, p1

    move/from16 v7, p4

    .line 308
    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v8

    goto :goto_4

    .line 320
    :cond_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v14, :cond_9

    .line 321
    new-instance v8, Landroid/text/StaticLayout;

    float-to-int v3, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_4

    :cond_9
    float-to-int v0, v0

    .line 332
    invoke-static {v1, v10, v4, v11, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 333
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v9, v13}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 339
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_a

    .line 340
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 343
    :cond_a
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v8

    :goto_4
    return-object v8
.end method

.method private static createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;
    .locals 3

    .line 231
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    .line 238
    invoke-interface {p1, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p1

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->buildSpannableFromFragment(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 243
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;

    .line 246
    invoke-virtual {v1, v0, p1}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer$SetSpanOperation;->execute(Landroid/text/Spannable;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 251
    invoke-interface {p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManagerCallback;->onPostProcessSpannable(Landroid/text/Spannable;)V

    :cond_1
    return-object v0
.end method

.method public static deleteCachedSpannableForTag(I)V
    .locals 1

    .line 97
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;
    .locals 3

    .line 208
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sSpannableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    sget-object v1, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sSpannableCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 211
    monitor-exit v0

    return-object v2

    .line 213
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object p0

    .line 219
    monitor-enter v0

    .line 220
    :try_start_1
    invoke-virtual {v1, p1, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 213
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static isRTL(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Z
    .locals 2

    const/4 v0, 0x2

    .line 101
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    .line 102
    invoke-interface {p0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-interface {p0, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    const/4 v0, 0x5

    .line 107
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    const/16 v0, 0x15

    .line 109
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {p0}, Lcom/facebook/react/views/text/TextAttributeProps;->getLayoutDirection(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public static measureLines(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;F)Lcom/facebook/react/bridge/WritableArray;
    .locals 9

    .line 558
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sTextPaintInstance:Landroid/text/TextPaint;

    const/4 v1, 0x0

    .line 559
    invoke-static {p0, p1, v1}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object p1

    .line 560
    invoke-static {p1, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v3

    const/4 v1, 0x2

    .line 564
    invoke-interface {p2, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v7

    const/4 v1, 0x4

    .line 566
    invoke-interface {p2, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    invoke-interface {p2, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v6, v1

    const/4 v1, 0x5

    .line 571
    invoke-interface {p2, v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 570
    invoke-static {p2}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v8

    .line 573
    sget-object v5, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    move-object v2, p1

    move v4, p3

    .line 574
    invoke-static/range {v2 .. v8}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZII)Landroid/text/Layout;

    move-result-object p2

    .line 582
    invoke-static {p1, p2, v0, p0}, Lcom/facebook/react/views/text/FontMetricsUtil;->getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0
.end method

.method public static measureText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;[F)J
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 361
    sget-object v2, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sTextPaintInstance:Landroid/text/TextPaint;

    const/4 v3, 0x3

    .line 363
    invoke-interface {v0, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    invoke-interface {v0, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v0

    .line 368
    sget-object v3, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p7

    .line 380
    invoke-static {v3, v0, v4}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    const/4 v3, 0x2

    .line 385
    invoke-interface {v1, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-static {v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x4

    .line 387
    invoke-interface {v1, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v4

    const/4 v11, 0x1

    if-eqz v4, :cond_2

    .line 388
    invoke-interface {v1, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v3

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v11

    :goto_1
    const/4 v3, 0x5

    .line 392
    invoke-interface {v1, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-static {v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v8

    if-eqz v0, :cond_1a

    .line 398
    invoke-static {v0, v2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v3

    if-nez v3, :cond_3

    .line 399
    invoke-static {v0, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 402
    :cond_3
    sget-object v2, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v12, 0x0

    if-eq v9, v2, :cond_4

    cmpg-float v2, p3, v12

    :cond_4
    move-object v2, v0

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 405
    invoke-static/range {v2 .. v8}, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZII)Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    .line 415
    invoke-interface {v1, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_5

    .line 416
    invoke-interface {v1, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v1

    goto :goto_2

    :cond_5
    move v1, v5

    :goto_2
    if-eq v1, v5, :cond_7

    if-nez v1, :cond_6

    goto :goto_3

    .line 422
    :cond_6
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_4

    .line 421
    :cond_7
    :goto_3
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 427
    :goto_4
    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v9, v4, :cond_8

    goto :goto_6

    :cond_8
    move v4, v3

    :goto_5
    if-ge v4, v1, :cond_a

    .line 431
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v6

    cmpl-float v7, v6, v12

    if-lez v7, :cond_9

    move v12, v6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 436
    :cond_a
    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v9, v4, :cond_b

    cmpl-float v4, v12, p3

    if-lez v4, :cond_b

    :goto_6
    move/from16 v12, p3

    .line 442
    :cond_b
    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-eq v10, v4, :cond_c

    sub-int/2addr v1, v11

    .line 443
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    .line 444
    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v10, v4, :cond_d

    cmpl-float v4, v1, p5

    if-lez v4, :cond_d

    :cond_c
    move/from16 v1, p5

    :cond_d
    move v4, v3

    move v6, v4

    .line 454
    :goto_7
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ge v4, v7, :cond_19

    .line 456
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    invoke-interface {v0, v4, v7, v8}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    .line 457
    const-class v8, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    .line 458
    invoke-interface {v0, v4, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;

    .line 459
    array-length v8, v4

    move v9, v3

    :goto_8
    if-ge v9, v8, :cond_18

    aget-object v10, v4, v9

    .line 460
    invoke-interface {v0, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 461
    invoke-virtual {v2, v13}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v14

    .line 462
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v15

    if-lez v15, :cond_e

    move v15, v11

    goto :goto_9

    :cond_e
    move v15, v3

    :goto_9
    if-eqz v15, :cond_10

    .line 467
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    invoke-virtual {v2, v14}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v16

    add-int v15, v15, v16

    if-lt v13, v15, :cond_10

    .line 468
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    if-lt v13, v15, :cond_f

    goto :goto_a

    :cond_f
    move v5, v11

    goto/16 :goto_f

    .line 469
    :cond_10
    :goto_a
    invoke-virtual {v10}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getWidth()I

    move-result v15

    int-to-float v15, v15

    .line 470
    invoke-virtual {v10}, Lcom/facebook/react/views/text/TextInlineViewPlaceholderSpan;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 472
    invoke-virtual {v2, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 473
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v5, :cond_11

    const/4 v11, 0x1

    goto :goto_b

    :cond_11
    const/4 v11, 0x0

    .line 478
    :goto_b
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v5, v16, -0x1

    if-ne v13, v5, :cond_13

    if-eqz v11, :cond_12

    .line 484
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    sub-float v3, v12, v3

    goto :goto_e

    .line 485
    :cond_12
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    sub-float/2addr v3, v15

    goto :goto_e

    :cond_13
    if-ne v11, v3, :cond_14

    const/16 v17, 0x1

    goto :goto_c

    :cond_14
    const/16 v17, 0x0

    :goto_c
    if-eqz v17, :cond_15

    .line 497
    invoke-virtual {v2, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    goto :goto_d

    .line 498
    :cond_15
    invoke-virtual {v2, v13}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v5

    :goto_d
    if-eqz v11, :cond_16

    .line 510
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    sub-float/2addr v11, v5

    sub-float v5, v12, v11

    :cond_16
    if-eqz v3, :cond_17

    sub-float v3, v5, v15

    goto :goto_e

    :cond_17
    move v3, v5

    .line 517
    :goto_e
    invoke-virtual {v2, v14}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v10

    mul-int/lit8 v10, v6, 0x2

    .line 522
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v5

    aput v5, p8, v10

    const/4 v5, 0x1

    add-int/2addr v10, v5

    .line 524
    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    aput v3, p8, v10

    add-int/lit8 v6, v6, 0x1

    :goto_f
    add-int/lit8 v9, v9, 0x1

    move v11, v5

    const/4 v3, 0x0

    const/4 v5, -0x1

    goto/16 :goto_8

    :cond_18
    move v4, v7

    goto/16 :goto_7

    .line 530
    :cond_19
    invoke-static {v12}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    .line 531
    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v1

    .line 549
    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v0

    return-wide v0

    .line 395
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Spannable element has not been prepared in onBeforeLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setCachedSpannabledForTag(ILandroid/text/Spannable;)V
    .locals 1

    .line 90
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManagerMapBuffer;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
