.class Lcom/horcrux/svg/FontData;
.super Ljava/lang/Object;
.source "FontData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/FontData$AbsoluteFontWeight;
    }
.end annotation


# static fields
.field static final DEFAULT_FONT_SIZE:D = 12.0

.field private static final DEFAULT_KERNING:D = 0.0

.field private static final DEFAULT_LETTER_SPACING:D = 0.0

.field private static final DEFAULT_WORD_SPACING:D = 0.0

.field static final Defaults:Lcom/horcrux/svg/FontData;

.field private static final FONT_DATA:Ljava/lang/String; = "fontData"

.field private static final FONT_FEATURE_SETTINGS:Ljava/lang/String; = "fontFeatureSettings"

.field private static final FONT_VARIANT_LIGATURES:Ljava/lang/String; = "fontVariantLigatures"

.field private static final FONT_VARIATION_SETTINGS:Ljava/lang/String; = "fontVariationSettings"

.field private static final KERNING:Ljava/lang/String; = "kerning"

.field private static final LETTER_SPACING:Ljava/lang/String; = "letterSpacing"

.field private static final TEXT_ANCHOR:Ljava/lang/String; = "textAnchor"

.field private static final TEXT_DECORATION:Ljava/lang/String; = "textDecoration"

.field private static final WORD_SPACING:Ljava/lang/String; = "wordSpacing"


# instance fields
.field absoluteFontWeight:I

.field final fontData:Lcom/facebook/react/bridge/ReadableMap;

.field final fontFamily:Ljava/lang/String;

.field final fontFeatureSettings:Ljava/lang/String;

.field final fontSize:D

.field final fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

.field final fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

.field final fontVariationSettings:Ljava/lang/String;

.field fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

.field final kerning:D

.field final letterSpacing:D

.field final manualKerning:Z

.field final textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

.field private final textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

.field final wordSpacing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/horcrux/svg/FontData;

    invoke-direct {v0}, Lcom/horcrux/svg/FontData;-><init>()V

    sput-object v0, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, ""

    .line 117
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    .line 118
    sget-object v1, Lcom/horcrux/svg/TextProperties$FontStyle;->normal:Lcom/horcrux/svg/TextProperties$FontStyle;

    iput-object v1, p0, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    .line 119
    sget-object v1, Lcom/horcrux/svg/TextProperties$FontWeight;->Normal:Lcom/horcrux/svg/TextProperties$FontWeight;

    iput-object v1, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    const/16 v1, 0x190

    .line 120
    iput v1, p0, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 121
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->normal:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    .line 125
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 126
    sget-object v0, Lcom/horcrux/svg/TextProperties$TextDecoration;->None:Lcom/horcrux/svg/TextProperties$TextDecoration;

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/horcrux/svg/FontData;->manualKerning:Z

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->kerning:D

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    .line 130
    iput-wide v2, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    .line 131
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->wordSpacing:D

    .line 132
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->letterSpacing:D

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/horcrux/svg/FontData;D)V
    .locals 11

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iget-wide v7, p2, Lcom/horcrux/svg/FontData;->fontSize:D

    const-string v0, "fontSize"

    .line 168
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string v2, "fontSize"

    move-object v0, p0

    move-object v1, p1

    move-wide v5, v7

    .line 169
    invoke-direct/range {v0 .. v8}, Lcom/horcrux/svg/FontData;->toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    goto :goto_0

    .line 171
    :cond_0
    iput-wide v7, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    :goto_0
    const-string v0, "fontWeight"

    .line 174
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 176
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v1, v2, :cond_1

    .line 177
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/horcrux/svg/FontData;->handleNumericWeight(Lcom/horcrux/svg/FontData;D)V

    goto :goto_1

    .line 179
    :cond_1
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontWeight;->hasEnum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontWeight;->get(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontWeight;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/horcrux/svg/FontData$AbsoluteFontWeight;->from(Lcom/horcrux/svg/TextProperties$FontWeight;Lcom/horcrux/svg/FontData;)I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 182
    invoke-static {v0}, Lcom/horcrux/svg/FontData$AbsoluteFontWeight;->nearestFontWeight(I)Lcom/horcrux/svg/TextProperties$FontWeight;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 184
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/horcrux/svg/FontData;->handleNumericWeight(Lcom/horcrux/svg/FontData;D)V

    goto :goto_1

    .line 186
    :cond_3
    invoke-direct {p0, p2}, Lcom/horcrux/svg/FontData;->setInheritedWeight(Lcom/horcrux/svg/FontData;)V

    goto :goto_1

    .line 190
    :cond_4
    invoke-direct {p0, p2}, Lcom/horcrux/svg/FontData;->setInheritedWeight(Lcom/horcrux/svg/FontData;)V

    :goto_1
    const-string v0, "fontData"

    .line 193
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    :goto_2
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontData:Lcom/facebook/react/bridge/ReadableMap;

    const-string v0, "fontFamily"

    .line 195
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFamily:Ljava/lang/String;

    const-string v0, "fontStyle"

    .line 196
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontStyle;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontStyle;

    move-result-object v0

    goto :goto_4

    :cond_7
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    :goto_4
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontStyle:Lcom/horcrux/svg/TextProperties$FontStyle;

    const-string v0, "fontFeatureSettings"

    .line 197
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontFeatureSettings:Ljava/lang/String;

    const-string v0, "fontVariationSettings"

    .line 198
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontVariationSettings:Ljava/lang/String;

    const-string v0, "fontVariantLigatures"

    .line 199
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$FontVariantLigatures;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    move-result-object v0

    goto :goto_7

    :cond_a
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    :goto_7
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->fontVariantLigatures:Lcom/horcrux/svg/TextProperties$FontVariantLigatures;

    const-string v0, "textAnchor"

    .line 201
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$TextAnchor;->valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextAnchor;

    move-result-object v0

    goto :goto_8

    :cond_b
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    :goto_8
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textAnchor:Lcom/horcrux/svg/TextProperties$TextAnchor;

    const-string v0, "textDecoration"

    .line 202
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/TextProperties$TextDecoration;->getEnum(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$TextDecoration;

    move-result-object v0

    goto :goto_9

    :cond_c
    iget-object v0, p2, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    :goto_9
    iput-object v0, p0, Lcom/horcrux/svg/FontData;->textDecoration:Lcom/horcrux/svg/TextProperties$TextDecoration;

    const-string v0, "kerning"

    .line 204
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 205
    iget-boolean v1, p2, Lcom/horcrux/svg/FontData;->manualKerning:Z

    if-eqz v1, :cond_d

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v1, 0x1

    :goto_b
    iput-boolean v1, p0, Lcom/horcrux/svg/FontData;->manualKerning:Z

    if-eqz v0, :cond_f

    .line 210
    iget-wide v7, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    const-wide/16 v9, 0x0

    const-string v4, "kerning"

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p3

    invoke-direct/range {v2 .. v10}, Lcom/horcrux/svg/FontData;->toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D

    move-result-wide v0

    goto :goto_c

    :cond_f
    iget-wide v0, p2, Lcom/horcrux/svg/FontData;->kerning:D

    :goto_c
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->kerning:D

    const-string v0, "wordSpacing"

    .line 211
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v6, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    const-wide/16 v8, 0x0

    const-string v3, "wordSpacing"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/horcrux/svg/FontData;->toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D

    move-result-wide v0

    goto :goto_d

    :cond_10
    iget-wide v0, p2, Lcom/horcrux/svg/FontData;->wordSpacing:D

    :goto_d
    iput-wide v0, p0, Lcom/horcrux/svg/FontData;->wordSpacing:D

    const-string v0, "letterSpacing"

    .line 212
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v6, p0, Lcom/horcrux/svg/FontData;->fontSize:D

    const-wide/16 v8, 0x0

    const-string v3, "letterSpacing"

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/horcrux/svg/FontData;->toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D

    move-result-wide p1

    goto :goto_e

    :cond_11
    iget-wide p1, p2, Lcom/horcrux/svg/FontData;->letterSpacing:D

    :goto_e
    iput-wide p1, p0, Lcom/horcrux/svg/FontData;->letterSpacing:D

    return-void
.end method

.method private handleNumericWeight(Lcom/horcrux/svg/FontData;D)V
    .locals 2

    .line 156
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    long-to-int p1, p2

    .line 158
    iput p1, p0, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 159
    invoke-static {p1}, Lcom/horcrux/svg/FontData$AbsoluteFontWeight;->nearestFontWeight(I)Lcom/horcrux/svg/TextProperties$FontWeight;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FontData;->setInheritedWeight(Lcom/horcrux/svg/FontData;)V

    :goto_0
    return-void
.end method

.method private setInheritedWeight(Lcom/horcrux/svg/FontData;)V
    .locals 1

    .line 151
    iget v0, p1, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    iput v0, p0, Lcom/horcrux/svg/FontData;->absoluteFontWeight:I

    .line 152
    iget-object p1, p1, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    iput-object p1, p0, Lcom/horcrux/svg/FontData;->fontWeight:Lcom/horcrux/svg/TextProperties$FontWeight;

    return-void
.end method

.method private toAbsolute(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;DDD)D
    .locals 7

    .line 136
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_0

    .line 138
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1

    .line 140
    :cond_0
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-wide v1, p7

    move-wide v3, p3

    move-wide v5, p5

    .line 141
    invoke-static/range {v0 .. v6}, Lcom/horcrux/svg/PropHelper;->fromRelative(Ljava/lang/String;DDD)D

    move-result-wide p1

    return-wide p1
.end method
