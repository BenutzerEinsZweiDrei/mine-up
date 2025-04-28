.class public Lcom/facebook/react/views/text/TextAttributeProps;
.super Ljava/lang/Object;
.source "TextAttributeProps.java"


# static fields
.field private static final DEFAULT_BREAK_STRATEGY:I

.field private static final DEFAULT_HYPHENATION_FREQUENCY:I

.field private static final DEFAULT_JUSTIFICATION_MODE:I

.field private static final DEFAULT_TEXT_SHADOW_COLOR:I = 0x55000000

.field private static final PROP_SHADOW_COLOR:Ljava/lang/String; = "textShadowColor"

.field private static final PROP_SHADOW_OFFSET:Ljava/lang/String; = "textShadowOffset"

.field private static final PROP_SHADOW_OFFSET_HEIGHT:Ljava/lang/String; = "height"

.field private static final PROP_SHADOW_OFFSET_WIDTH:Ljava/lang/String; = "width"

.field private static final PROP_SHADOW_RADIUS:Ljava/lang/String; = "textShadowRadius"

.field private static final PROP_TEXT_TRANSFORM:Ljava/lang/String; = "textTransform"

.field public static final TA_KEY_ACCESSIBILITY_ROLE:S = 0x16s

.field public static final TA_KEY_ALIGNMENT:S = 0xcs

.field public static final TA_KEY_ALLOW_FONT_SCALING:S = 0x9s

.field public static final TA_KEY_BACKGROUND_COLOR:S = 0x1s

.field public static final TA_KEY_BEST_WRITING_DIRECTION:S = 0xds

.field public static final TA_KEY_FONT_FAMILY:S = 0x3s

.field public static final TA_KEY_FONT_SIZE:S = 0x4s

.field public static final TA_KEY_FONT_SIZE_MULTIPLIER:S = 0x5s

.field public static final TA_KEY_FONT_STYLE:S = 0x7s

.field public static final TA_KEY_FONT_VARIANT:S = 0x8s

.field public static final TA_KEY_FONT_WEIGHT:S = 0x6s

.field public static final TA_KEY_FOREGROUND_COLOR:S = 0x0s

.field public static final TA_KEY_IS_HIGHLIGHTED:S = 0x14s

.field public static final TA_KEY_LAYOUT_DIRECTION:S = 0x15s

.field public static final TA_KEY_LETTER_SPACING:S = 0xas

.field public static final TA_KEY_LINE_HEIGHT:S = 0xbs

.field public static final TA_KEY_OPACITY:S = 0x2s

.field public static final TA_KEY_TEXT_DECORATION_COLOR:S = 0xes

.field public static final TA_KEY_TEXT_DECORATION_LINE:S = 0xfs

.field public static final TA_KEY_TEXT_DECORATION_STYLE:S = 0x10s

.field public static final TA_KEY_TEXT_SHADOW_COLOR:S = 0x13s

.field public static final TA_KEY_TEXT_SHADOW_RADIUS:S = 0x12s

.field public static final UNSET:I = -0x1


# instance fields
.field protected mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field protected mAllowFontScaling:Z

.field protected mBackgroundColor:I

.field protected mColor:I

.field protected mContainsImages:Z

.field protected mFontFamily:Ljava/lang/String;

.field protected mFontFeatureSettings:Ljava/lang/String;

.field protected mFontSize:I

.field protected mFontSizeInput:F

.field protected mFontStyle:I

.field protected mFontWeight:I

.field protected mHeightOfTallestInlineImage:F

.field protected mIncludeFontPadding:Z

.field protected mIsAccessibilityLink:Z

.field protected mIsAccessibilityRoleSet:Z

.field protected mIsBackgroundColorSet:Z

.field protected mIsColorSet:Z

.field protected mIsLineThroughTextDecorationSet:Z

.field protected mIsUnderlineTextDecorationSet:Z

.field protected mLayoutDirection:I

.field protected mLetterSpacingInput:F

.field protected mLineHeight:F

.field protected mLineHeightInput:F

.field protected mNumberOfLines:I

.field protected mTextAlign:I

.field protected mTextShadowColor:I

.field protected mTextShadowOffsetDx:F

.field protected mTextShadowOffsetDy:F

.field protected mTextShadowRadius:F

.field protected mTextTransform:Lcom/facebook/react/views/text/TextTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    sput v0, Lcom/facebook/react/views/text/TextAttributeProps;->DEFAULT_JUSTIFICATION_MODE:I

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput v1, Lcom/facebook/react/views/text/TextAttributeProps;->DEFAULT_BREAK_STRATEGY:I

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/facebook/react/views/text/TextAttributeProps;->DEFAULT_HYPHENATION_FREQUENCY:I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # NaNf

    .line 75
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    const/4 v2, 0x1

    .line 77
    iput-boolean v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    .line 79
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    const/4 v3, -0x1

    .line 82
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mNumberOfLines:I

    .line 83
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    const/high16 v4, -0x40800000    # -1.0f

    .line 84
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    .line 85
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    .line 86
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 87
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    .line 90
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLayoutDirection:I

    .line 92
    sget-object v4, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    const/4 v4, 0x0

    .line 94
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 95
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 96
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    const/high16 v4, 0x55000000

    .line 97
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    .line 99
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 100
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    .line 101
    iput-boolean v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIncludeFontPadding:Z

    const/4 v2, 0x0

    .line 103
    iput-object v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 104
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsAccessibilityRoleSet:Z

    .line 105
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsAccessibilityLink:Z

    .line 107
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    .line 108
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    .line 130
    iput-object v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mContainsImages:Z

    .line 136
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    return-void
.end method

.method public static fromMapBuffer(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Lcom/facebook/react/views/text/TextAttributeProps;
    .locals 4

    .line 142
    new-instance v0, Lcom/facebook/react/views/text/TextAttributeProps;

    invoke-direct {v0}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>()V

    .line 145
    invoke-interface {p0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 146
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;

    .line 148
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getKey()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/16 v3, 0xf

    if-eq v2, v3, :cond_4

    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    const/16 v3, 0x13

    if-eq v2, v3, :cond_2

    const/16 v3, 0x15

    if-eq v2, v3, :cond_1

    const/16 v3, 0x16

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getBooleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setAllowFontScaling(Z)V

    goto :goto_0

    .line 172
    :pswitch_3
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getMapBufferValue()Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontVariant(Lcom/facebook/react/common/mapbuffer/MapBuffer;)V

    goto :goto_0

    .line 169
    :pswitch_4
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontStyle(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_5
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontWeight(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setAccessibilityRole(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLayoutDirection(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getIntValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowColor(I)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowRadius(F)V

    goto/16 :goto_0

    .line 190
    :cond_4
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextDecorationLine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_5
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    goto/16 :goto_0

    .line 158
    :cond_6
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontFamily(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_7
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setBackgroundColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 150
    :cond_8
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromReadableMap(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Lcom/facebook/react/views/text/TextAttributeProps;
    .locals 6

    .line 221
    new-instance v0, Lcom/facebook/react/views/text/TextAttributeProps;

    invoke-direct {v0}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>()V

    const-string v1, "numberOfLines"

    const/4 v2, -0x1

    .line 222
    invoke-static {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setNumberOfLines(I)V

    const-string v1, "lineHeight"

    const/high16 v2, -0x40800000    # -1.0f

    .line 223
    invoke-static {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    const-string v1, "letterSpacing"

    const/high16 v3, 0x7fc00000    # NaNf

    .line 224
    invoke-static {p0, v1, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    const-string v1, "allowFontScaling"

    const/4 v3, 0x1

    .line 225
    invoke-static {p0, v1, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getBooleanProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setAllowFontScaling(Z)V

    const-string v1, "fontSize"

    .line 226
    invoke-static {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    const-string v1, "color"

    .line 227
    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v4}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    const-string v1, "foregroundColor"

    .line 229
    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {p0, v1, v4}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v5

    .line 228
    :goto_1
    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    const-string v1, "backgroundColor"

    .line 233
    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    invoke-virtual {p0, v1, v4}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v5

    .line 232
    :goto_2
    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setBackgroundColor(Ljava/lang/Integer;)V

    const-string v1, "fontFamily"

    .line 236
    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontFamily(Ljava/lang/String;)V

    const-string v1, "fontWeight"

    .line 237
    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontWeight(Ljava/lang/String;)V

    const-string v1, "fontStyle"

    .line 238
    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontStyle(Ljava/lang/String;)V

    const-string v1, "fontVariant"

    .line 239
    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getArrayProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontVariant(Lcom/facebook/react/bridge/ReadableArray;)V

    const-string v1, "includeFontPadding"

    .line 240
    invoke-static {p0, v1, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getBooleanProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setIncludeFontPadding(Z)V

    const-string/jumbo v1, "textDecorationLine"

    .line 241
    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextDecorationLine(Ljava/lang/String;)V

    const-string/jumbo v1, "textShadowOffset"

    .line 243
    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 242
    :cond_3
    invoke-direct {v0, v5}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "textShadowRadius"

    .line 244
    invoke-static {p0, v2, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowRadius(F)V

    const/high16 v1, 0x55000000

    const-string/jumbo v2, "textShadowColor"

    .line 245
    invoke-static {p0, v2, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowColor(I)V

    const-string/jumbo v1, "textTransform"

    .line 246
    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextTransform(Ljava/lang/String;)V

    const-string v1, "layoutDirection"

    .line 247
    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLayoutDirection(Ljava/lang/String;)V

    const-string v1, "accessibilityRole"

    .line 248
    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/react/views/text/TextAttributeProps;->setAccessibilityRole(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getArrayProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 1

    .line 321
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getBooleanProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;Z)Z
    .locals 1

    .line 289
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F
    .locals 1

    .line 313
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getHyphenationFrequency(Ljava/lang/String;)I
    .locals 1

    .line 571
    sget v0, Lcom/facebook/react/views/text/TextAttributeProps;->DEFAULT_HYPHENATION_FREQUENCY:I

    if-eqz p0, :cond_2

    .line 573
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static getIntProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;I)I
    .locals 1

    .line 305
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getJustificationMode(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)I
    .locals 2

    const-string/jumbo v0, "textAlign"

    .line 279
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "justify"

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 284
    :cond_1
    sget p0, Lcom/facebook/react/views/text/TextAttributeProps;->DEFAULT_JUSTIFICATION_MODE:I

    return p0
.end method

.method public static getLayoutDirection(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_3

    const-string/jumbo v0, "undefined"

    .line 499
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "rtl"

    .line 501
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ltr"

    .line 503
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 506
    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid layoutDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 297
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTextAlignment(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Z)I
    .locals 3

    const-string/jumbo v0, "textAlign"

    .line 255
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "justify"

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_7

    const-string v0, "auto"

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "left"

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_4

    if-eqz p1, :cond_8

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    const-string v0, "right"

    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_5
    const-string p1, "center"

    .line 267
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    .line 270
    :cond_6
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid textAlign: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    const/4 v1, 0x0

    :cond_8
    :goto_2
    return v1
.end method

.method public static getTextBreakStrategy(Ljava/lang/String;)I
    .locals 1

    .line 553
    sget v0, Lcom/facebook/react/views/text/TextAttributeProps;->DEFAULT_BREAK_STRATEGY:I

    if-eqz p0, :cond_2

    .line 555
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "balanced"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "simple"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_0
    return v0
.end method

.method private setAccessibilityRole(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 544
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsAccessibilityRoleSet:Z

    .line 546
    invoke-static {p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 547
    sget-object v0, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 548
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsAccessibilityLink:Z

    :cond_0
    return-void
.end method

.method private setAllowFontScaling(Z)V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eq p1, v0, :cond_0

    .line 375
    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    .line 376
    iget p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    .line 377
    iget p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    .line 378
    iget p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    :cond_0
    return-void
.end method

.method private setBackgroundColor(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    :cond_1
    return-void
.end method

.method private setColor(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 394
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    :cond_1
    return-void
.end method

.method private setFontFamily(Ljava/lang/String;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    return-void
.end method

.method private setFontSize(F)V
    .locals 2

    .line 383
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 386
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-float p1, v0

    :cond_1
    float-to-int p1, p1

    .line 390
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    return-void
.end method

.method private setFontStyle(Ljava/lang/String;)V
    .locals 0

    .line 458
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontStyle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    return-void
.end method

.method private setFontVariant(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 416
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontVariant(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    return-void
.end method

.method private setFontVariant(Lcom/facebook/react/common/mapbuffer/MapBuffer;)V
    .locals 4

    if-eqz p1, :cond_8

    .line 420
    invoke-interface {p1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 425
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    invoke-interface {p1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 427
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 428
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;

    .line 429
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "small-caps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "oldstyle-nums"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "tabular-nums"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "lining-nums"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "proportional-nums"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "\'smcp\'"

    .line 433
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const-string v1, "\'onum\'"

    .line 436
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    const-string v1, "\'tnum\'"

    .line 442
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const-string v1, "\'lnum\'"

    .line 439
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    const-string v1, "\'pnum\'"

    .line 445
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string p1, ", "

    .line 450
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    return-void

    :cond_8
    :goto_2
    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x473fc7cb -> :sswitch_4
        -0x3f4391b7 -> :sswitch_3
        -0x2e038ca3 -> :sswitch_2
        -0x2751e650 -> :sswitch_1
        0x468813e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFontWeight(Ljava/lang/String;)V
    .locals 0

    .line 454
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontWeight(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    return-void
.end method

.method private setIncludeFontPadding(Z)V
    .locals 0

    .line 462
    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIncludeFontPadding:Z

    return-void
.end method

.method private setLayoutDirection(Ljava/lang/String;)V
    .locals 0

    .line 513
    invoke-static {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getLayoutDirection(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLayoutDirection:I

    return-void
.end method

.method private setLetterSpacing(F)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    return-void
.end method

.method private setLineHeight(F)V
    .locals 1

    .line 343
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # NaNf

    .line 345
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    goto :goto_1

    .line 348
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_1

    .line 349
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result p1

    goto :goto_0

    .line 350
    :cond_1
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    :goto_1
    return-void
.end method

.method private setNumberOfLines(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 339
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mNumberOfLines:I

    return-void
.end method

.method private setTextDecorationLine(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 467
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    if-eqz p1, :cond_2

    const-string v1, "-"

    .line 469
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    const-string/jumbo v3, "underline"

    .line 470
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 471
    iput-boolean v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "strikethrough"

    .line 472
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    iput-boolean v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setTextShadowColor(I)V
    .locals 1

    .line 523
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    if-eq p1, v0, :cond_0

    .line 524
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    :cond_0
    return-void
.end method

.method private setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    const/4 v0, 0x0

    .line 480
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 481
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    if-eqz p1, :cond_1

    const-string/jumbo v0, "width"

    .line 484
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    :cond_0
    const-string v0, "height"

    .line 489
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    :cond_1
    return-void
.end method

.method private setTextShadowRadius(F)V
    .locals 1

    .line 517
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 518
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    :cond_0
    return-void
.end method

.method private setTextTransform(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, "none"

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "uppercase"

    .line 531
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->UPPERCASE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    :cond_1
    const-string v0, "lowercase"

    .line 533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    :cond_2
    const-string v0, "capitalize"

    .line 535
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    .line 538
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid textTransform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_4
    :goto_0
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    :goto_1
    return-void
.end method


# virtual methods
.method public getEffectiveLineHeight()F
    .locals 2

    .line 331
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    .line 332
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    .line 333
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 335
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    :goto_1
    return v0
.end method

.method public getLetterSpacing()F
    .locals 3

    .line 360
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_0

    .line 361
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    goto :goto_0

    .line 362
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 364
    :goto_0
    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    if-lez v1, :cond_1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FontSize should be a positive value. Current value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
