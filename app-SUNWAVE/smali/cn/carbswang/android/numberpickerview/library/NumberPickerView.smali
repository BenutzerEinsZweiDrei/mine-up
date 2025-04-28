.class public Lcn/carbswang/android/numberpickerview/library/NumberPickerView;
.super Landroid/view/View;
.source "NumberPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnScrollListener;,
        Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;,
        Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerRelativeToRaw;,
        Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CURRENT_ITEM_INDEX_EFFECT:Z = false

.field private static final DEFAULT_DIVIDER_COLOR:I = -0xa9ced

.field private static final DEFAULT_DIVIDER_HEIGHT:I = 0x2

.field private static final DEFAULT_DIVIDER_MARGIN_HORIZONTAL:I = 0x0

.field private static final DEFAULT_INTERVAL_REVISE_DURATION:I = 0x12c

.field private static final DEFAULT_ITEM_PADDING_DP_H:I = 0x5

.field private static final DEFAULT_ITEM_PADDING_DP_V:I = 0x2

.field private static final DEFAULT_MARGIN_END_OF_HINT_DP:I = 0x8

.field private static final DEFAULT_MARGIN_START_OF_HINT_DP:I = 0x8

.field private static final DEFAULT_MAX_SCROLL_BY_INDEX_DURATION:I = 0x258

.field private static final DEFAULT_MIN_SCROLL_BY_INDEX_DURATION:I = 0x12c

.field private static final DEFAULT_RESPOND_CHANGE_IN_MAIN_THREAD:Z = true

.field private static final DEFAULT_RESPOND_CHANGE_ON_DETACH:Z = false

.field private static final DEFAULT_SHOWN_COUNT:I = 0x3

.field private static final DEFAULT_SHOW_DIVIDER:Z = true

.field private static final DEFAULT_TEXT_COLOR_NORMAL:I = -0xcccccd

.field private static final DEFAULT_TEXT_COLOR_SELECTED:I = -0xa9ced

.field private static final DEFAULT_TEXT_SIZE_HINT_SP:I = 0xe

.field private static final DEFAULT_TEXT_SIZE_NORMAL_SP:I = 0xe

.field private static final DEFAULT_TEXT_SIZE_SELECTED_SP:I = 0x10

.field private static final DEFAULT_WRAP_SELECTOR_WHEEL:Z = true

.field private static final HANDLER_INTERVAL_REFRESH:I = 0x20

.field private static final HANDLER_WHAT_LISTENER_VALUE_CHANGED:I = 0x2

.field private static final HANDLER_WHAT_REFRESH:I = 0x1

.field private static final HANDLER_WHAT_REQUEST_LAYOUT:I = 0x3

.field private static final TEXT_ELLIPSIZE_END:Ljava/lang/String; = "end"

.field private static final TEXT_ELLIPSIZE_MIDDLE:Ljava/lang/String; = "middle"

.field private static final TEXT_ELLIPSIZE_START:Ljava/lang/String; = "start"


# instance fields
.field private currY:F

.field private dividerY0:F

.field private dividerY1:F

.field private downY:F

.field private downYGlobal:F

.field private mAlterHint:Ljava/lang/String;

.field private mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

.field private mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

.field private mCurrDrawFirstItemIndex:I

.field private mCurrDrawFirstItemY:I

.field private mCurrDrawGlobalY:I

.field private mCurrentItemIndexEffect:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDividerColor:I

.field private mDividerHeight:I

.field private mDividerIndex0:I

.field private mDividerIndex1:I

.field private mDividerMarginL:I

.field private mDividerMarginR:I

.field private mEmptyItemHint:Ljava/lang/String;

.field private mFlagMayPress:Z

.field private mFriction:F

.field private mHandlerInMainThread:Landroid/os/Handler;

.field private mHandlerInNewThread:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasInit:Z

.field private mHintText:Ljava/lang/String;

.field private mInScrollingPickedNewValue:I

.field private mInScrollingPickedOldValue:I

.field private mItemHeight:I

.field private mItemPaddingHorizontal:I

.field private mItemPaddingVertical:I

.field private mMarginEndOfHint:I

.field private mMarginStartOfHint:I

.field private mMaxHeightOfDisplayedValues:I

.field private mMaxShowIndex:I

.field private mMaxValue:I

.field private mMaxWidthOfAlterArrayWithMeasureHint:I

.field private mMaxWidthOfAlterArrayWithoutMeasureHint:I

.field private mMaxWidthOfDisplayedValues:I

.field private mMinShowIndex:I

.field private mMinValue:I

.field private mMiniVelocityFling:I

.field private mNotWrapLimitYBottom:I

.field private mNotWrapLimitYTop:I

.field private mOnScrollListener:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnScrollListener;

.field private mOnValueChangeListener:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;

.field private mOnValueChangeListenerInScrolling:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;

.field private mOnValueChangeListenerRaw:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerRelativeToRaw;

.field private mPaintDivider:Landroid/graphics/Paint;

.field private mPaintHint:Landroid/graphics/Paint;

.field private mPaintText:Landroid/text/TextPaint;

.field private mPendingWrapToLinear:Z

.field private mPrevPickedIndex:I

.field private mRespondChangeInMainThread:Z

.field private mRespondChangeOnDetach:Z

.field private mScaledTouchSlop:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mShowDivider:Z

.field private mShownCount:I

.field private mSpecModeH:I

.field private mSpecModeW:I

.field private mTextColorHint:I

.field private mTextColorNormal:I

.field private mTextColorSelected:I

.field private mTextEllipsize:Ljava/lang/String;

.field private mTextSizeHint:I

.field private mTextSizeHintCenterYOffset:F

.field private mTextSizeNormal:I

.field private mTextSizeNormalCenterYOffset:F

.field private mTextSizeSelected:I

.field private mTextSizeSelectedCenterYOffset:F

.field private mTextWidthCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewCenterX:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWidthOfAlterHint:I

.field private mWidthOfHintText:I

.field private mWrapSelectorWheel:Z

.field private mWrapSelectorWheelCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 218
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0xcccccd

    .line 101
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    const v0, -0xa9ced

    .line 102
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorSelected:I

    .line 103
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorHint:I

    const/4 v1, 0x0

    .line 104
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    .line 105
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    .line 106
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    .line 107
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    .line 108
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfAlterHint:I

    .line 109
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginStartOfHint:I

    .line 110
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginEndOfHint:I

    .line 111
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingVertical:I

    .line 112
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    .line 113
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerColor:I

    const/4 v0, 0x2

    .line 114
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerHeight:I

    .line 115
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    .line 116
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    const/4 v0, 0x3

    .line 117
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    .line 118
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerIndex0:I

    .line 119
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerIndex1:I

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    .line 121
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    .line 123
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    .line 125
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    .line 126
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfDisplayedValues:I

    .line 127
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxHeightOfDisplayedValues:I

    .line 128
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 129
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 130
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    const/16 v0, 0x96

    .line 131
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMiniVelocityFling:I

    const/16 v0, 0x8

    .line 132
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScaledTouchSlop:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 138
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFriction:F

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormalCenterYOffset:F

    .line 140
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelectedCenterYOffset:F

    .line 141
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHintCenterYOffset:F

    const/4 v2, 0x1

    .line 143
    iput-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShowDivider:Z

    .line 145
    iput-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    .line 147
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrentItemIndexEffect:Z

    .line 149
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHasInit:Z

    .line 151
    iput-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    .line 153
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPendingWrapToLinear:Z

    .line 162
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeOnDetach:Z

    .line 167
    iput-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeInMainThread:Z

    .line 172
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    .line 173
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    .line 174
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    .line 184
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextWidthCache:Ljava/util/Map;

    .line 215
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScrollState:I

    .line 1052
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downYGlobal:F

    .line 1053
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downY:F

    .line 1054
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->currY:F

    .line 1066
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFlagMayPress:Z

    .line 1179
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemIndex:I

    .line 1181
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    .line 1183
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    .line 1232
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeW:I

    .line 1233
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeH:I

    .line 219
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 223
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xcccccd

    .line 101
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    const v0, -0xa9ced

    .line 102
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorSelected:I

    .line 103
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorHint:I

    const/4 v1, 0x0

    .line 104
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    .line 105
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    .line 106
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    .line 107
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    .line 108
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfAlterHint:I

    .line 109
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginStartOfHint:I

    .line 110
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginEndOfHint:I

    .line 111
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingVertical:I

    .line 112
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    .line 113
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerColor:I

    const/4 v0, 0x2

    .line 114
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerHeight:I

    .line 115
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    .line 116
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    const/4 v0, 0x3

    .line 117
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    .line 118
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerIndex0:I

    .line 119
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerIndex1:I

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    .line 121
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    .line 123
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    .line 125
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    .line 126
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfDisplayedValues:I

    .line 127
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxHeightOfDisplayedValues:I

    .line 128
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 129
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 130
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    const/16 v0, 0x96

    .line 131
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMiniVelocityFling:I

    const/16 v0, 0x8

    .line 132
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScaledTouchSlop:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 138
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFriction:F

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormalCenterYOffset:F

    .line 140
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelectedCenterYOffset:F

    .line 141
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHintCenterYOffset:F

    const/4 v2, 0x1

    .line 143
    iput-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShowDivider:Z

    .line 145
    iput-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    .line 147
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrentItemIndexEffect:Z

    .line 149
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHasInit:Z

    .line 151
    iput-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    .line 153
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPendingWrapToLinear:Z

    .line 162
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeOnDetach:Z

    .line 167
    iput-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeInMainThread:Z

    .line 172
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    .line 173
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    .line 174
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    .line 184
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextWidthCache:Ljava/util/Map;

    .line 215
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScrollState:I

    .line 1052
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downYGlobal:F

    .line 1053
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downY:F

    .line 1054
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->currY:F

    .line 1066
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFlagMayPress:Z

    .line 1179
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemIndex:I

    .line 1181
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    .line 1183
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    .line 1232
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeW:I

    .line 1233
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeH:I

    .line 224
    invoke-direct {p0, p1, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, -0xcccccd

    .line 101
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    const p3, -0xa9ced

    .line 102
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorSelected:I

    .line 103
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorHint:I

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    .line 105
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    .line 106
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    .line 107
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    .line 108
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfAlterHint:I

    .line 109
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginStartOfHint:I

    .line 110
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginEndOfHint:I

    .line 111
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingVertical:I

    .line 112
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    .line 113
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerColor:I

    const/4 p3, 0x2

    .line 114
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerHeight:I

    .line 115
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    .line 116
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    const/4 p3, 0x3

    .line 117
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    .line 118
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerIndex0:I

    .line 119
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerIndex1:I

    const/4 p3, -0x1

    .line 120
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    .line 121
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    .line 123
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    .line 125
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    .line 126
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfDisplayedValues:I

    .line 127
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxHeightOfDisplayedValues:I

    .line 128
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 129
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 130
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    const/16 p3, 0x96

    .line 131
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMiniVelocityFling:I

    const/16 p3, 0x8

    .line 132
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScaledTouchSlop:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 138
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFriction:F

    const/4 p3, 0x0

    .line 139
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormalCenterYOffset:F

    .line 140
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelectedCenterYOffset:F

    .line 141
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHintCenterYOffset:F

    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShowDivider:Z

    .line 145
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    .line 147
    iput-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrentItemIndexEffect:Z

    .line 149
    iput-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHasInit:Z

    .line 151
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    .line 153
    iput-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPendingWrapToLinear:Z

    .line 162
    iput-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeOnDetach:Z

    .line 167
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeInMainThread:Z

    .line 172
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    .line 173
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    .line 174
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    .line 184
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextWidthCache:Ljava/util/Map;

    .line 215
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScrollState:I

    .line 1052
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downYGlobal:F

    .line 1053
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downY:F

    .line 1054
    iput p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->currY:F

    .line 1066
    iput-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFlagMayPress:Z

    .line 1179
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemIndex:I

    .line 1181
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    .line 1183
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    .line 1232
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeW:I

    .line 1233
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeH:I

    .line 230
    invoke-direct {p0, p1, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroid/widget/Scroller;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$100(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScrollState:I

    return p0
.end method

.method static synthetic access$1000(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeInMainThread:Z

    return p0
.end method

.method static synthetic access$1100(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInMainThread:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;IILjava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->respondPickedValueChanged(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->onScrollStateChange(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    return p0
.end method

.method static synthetic access$600(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    return p0
.end method

.method static synthetic access$700(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    return p0
.end method

.method static synthetic access$800(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getWillPickIndexByGlobalY(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    return p0
.end method

.method private calculateFirstItemParameterByGlobalY()V
    .locals 4

    .line 1196
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    int-to-float v0, v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemIndex:I

    .line 1197
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    mul-int v3, v0, v2

    sub-int/2addr v1, v3

    neg-int v1, v1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    .line 1198
    iget-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListenerInScrolling:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;

    if-eqz v3, :cond_3

    neg-int v1, v1

    .line 1199
    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1200
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedNewValue:I

    goto :goto_0

    .line 1202
    :cond_0
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedNewValue:I

    .line 1204
    :goto_0
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedNewValue:I

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedNewValue:I

    if-gez v0, :cond_1

    .line 1206
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedNewValue:I

    .line 1208
    :cond_1
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedOldValue:I

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedNewValue:I

    if-eq v0, v1, :cond_2

    .line 1209
    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->respondPickedValueChangedInScrolling(II)V

    .line 1211
    :cond_2
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedNewValue:I

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedOldValue:I

    :cond_3
    return-void
.end method

.method private click(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v0, 0x0

    .line 1130
    :goto_0
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    if-ge v0, v1, :cond_1

    .line 1131
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    mul-int v2, v1, v0

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1132
    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->clickItem(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private clickItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1139
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    if-ge p1, v0, :cond_0

    .line 1141
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->scrollByIndexSmoothly(I)V

    :cond_0
    return-void
.end method

.method private convertCharSequenceArrayToStringArray([Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1562
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1563
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1564
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private correctPositionByDefaultValue(IZ)V
    .locals 2

    .line 1161
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemIndex:I

    .line 1162
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getIndexByRawIndex(IIZ)I

    move-result p1

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemIndex:I

    .line 1163
    iget p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    if-nez p2, :cond_0

    .line 1164
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrentItemIndexEffect:Z

    goto :goto_0

    :cond_0
    mul-int/2addr p2, p1

    .line 1166
    iput p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    .line 1168
    iget p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedOldValue:I

    .line 1169
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedOldValue:I

    if-gez p1, :cond_1

    .line 1171
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedOldValue:I

    .line 1173
    :cond_1
    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedOldValue:I

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mInScrollingPickedNewValue:I

    .line 1174
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->calculateFirstItemParameterByGlobalY()V

    :goto_0
    return-void
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 1530
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 1289
    :goto_0
    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_7

    .line 1290
    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    mul-int/2addr v5, v2

    add-int/2addr v3, v5

    int-to-float v3, v3

    .line 1291
    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemIndex:I

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v6

    iget-boolean v7, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v0

    :goto_1
    invoke-direct {p0, v5, v6, v7}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getIndexByRawIndex(IIZ)I

    move-result v5

    .line 1292
    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    div-int/lit8 v7, v6, 0x2

    if-ne v2, v7, :cond_1

    .line 1293
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    iget v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    .line 1294
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorSelected:I

    invoke-direct {p0, v4, v1, v6}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getEvaluateColor(FII)I

    move-result v1

    .line 1295
    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    int-to-float v6, v6

    iget v7, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    int-to-float v7, v7

    invoke-direct {p0, v4, v6, v7}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getEvaluateSize(FFF)F

    move-result v6

    .line 1296
    iget v7, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormalCenterYOffset:F

    iget v8, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelectedCenterYOffset:F

    invoke-direct {p0, v4, v7, v8}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getEvaluateSize(FFF)F

    move-result v7

    goto :goto_2

    .line 1298
    :cond_1
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    if-ne v2, v6, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    .line 1299
    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    iget v7, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorSelected:I

    invoke-direct {p0, v4, v6, v7}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getEvaluateColor(FII)I

    move-result v6

    .line 1300
    iget v7, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    int-to-float v7, v7

    iget v8, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    int-to-float v8, v8

    invoke-direct {p0, v4, v7, v8}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getEvaluateSize(FFF)F

    move-result v7

    .line 1301
    iget v8, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormalCenterYOffset:F

    iget v9, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelectedCenterYOffset:F

    invoke-direct {p0, v4, v8, v9}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getEvaluateSize(FFF)F

    move-result v4

    move v10, v4

    move v4, v1

    move v1, v6

    move v6, v7

    move v7, v10

    goto :goto_2

    .line 1304
    :cond_2
    iget v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    .line 1305
    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    int-to-float v6, v6

    .line 1306
    iget v7, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormalCenterYOffset:F

    move v10, v4

    move v4, v1

    move v1, v10

    .line 1308
    :goto_2
    iget-object v8, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1309
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    if-ltz v5, :cond_5

    .line 1311
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    if-ge v5, v1, :cond_5

    .line 1312
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    add-int/2addr v5, v6

    aget-object v1, v1, v5

    .line 1313
    iget-object v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextEllipsize:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1314
    iget-object v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getWidth()I

    move-result v6

    iget v8, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getEllipsizeType()Landroid/text/TextUtils$TruncateAt;

    move-result-object v8

    invoke-static {v1, v5, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1317
    :cond_3
    iget-object v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewWidth:I

    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    goto :goto_3

    :cond_4
    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    mul-int/lit8 v5, v5, 0x2

    :goto_3
    int-to-float v5, v5

    .line 1321
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v3, v6

    add-float/2addr v3, v7

    iget-object v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1323
    :cond_5
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mEmptyItemHint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1324
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mEmptyItemHint:Ljava/lang/String;

    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewCenterX:F

    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v3, v6

    add-float/2addr v3, v7

    iget-object v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1353
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1354
    :cond_0
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHintText:Ljava/lang/String;

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewCenterX:F

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfDisplayedValues:I

    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginStartOfHint:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dividerY0:F

    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dividerY1:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHintCenterYOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1344
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShowDivider:Z

    if-eqz v0, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dividerY0:F

    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewWidth:I

    .line 1346
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dividerY0:F

    iget-object v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    move-object v1, p1

    .line 1345
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1347
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dividerY1:F

    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewWidth:I

    .line 1348
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dividerY1:F

    iget-object v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    move-object v1, p1

    .line 1347
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getEllipsizeType()Landroid/text/TextUtils$TruncateAt;
    .locals 3

    .line 1331
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextEllipsize:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal text ellipsize type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    .line 1337
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    .line 1335
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEvaluateColor(FII)I
    .locals 7

    const/high16 v0, -0x1000000

    and-int v1, p2, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int v3, p2, v2

    ushr-int/lit8 v3, v3, 0x10

    const v4, 0xff00

    and-int v5, p2, v4

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 p2, p2, 0xff

    ushr-int/lit8 p2, p2, 0x0

    and-int/2addr v0, p3

    ushr-int/lit8 v0, v0, 0x18

    and-int/2addr v2, p3

    ushr-int/lit8 v2, v2, 0x10

    and-int/2addr v4, p3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 p3, p3, 0xff

    ushr-int/lit8 p3, p3, 0x0

    int-to-float v6, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v6, v0

    float-to-int v0, v6

    int-to-float v1, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p2, p1

    add-float/2addr v3, p2

    float-to-int p1, v3

    shl-int/lit8 p2, v0, 0x18

    shl-int/lit8 p3, v1, 0x10

    or-int/2addr p2, p3

    shl-int/lit8 p3, v2, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private getEvaluateSize(FFF)F
    .locals 0

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    return p2
.end method

.method private getIndexByRawIndex(IIZ)I
    .locals 0

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 987
    rem-int/2addr p1, p2

    if-gez p1, :cond_1

    add-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method private getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1375
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p1, v0

    if-eqz v3, :cond_1

    .line 1377
    invoke-direct {p0, v3, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v3

    .line 1378
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getMsg(I)Landroid/os/Message;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1499
    invoke-direct {p0, p1, v0, v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method private getMsg(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1503
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1504
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1505
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1506
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1507
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1149
    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 2

    .line 1385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1388
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1390
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextWidthCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextWidthCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1393
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1397
    :cond_1
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 1398
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextWidthCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method private getWillPickIndexByGlobalY(I)I
    .locals 4

    .line 974
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 975
    :cond_0
    div-int/2addr p1, v0

    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 976
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    iget-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getIndexByRawIndex(IIZ)I

    move-result p1

    if-ltz p1, :cond_2

    .line 977
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 978
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    add-int/2addr p1, v0

    return p1

    .line 980
    :cond_2
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result p1

    sub-int/2addr p1, v3

    return p1
.end method

.method private inflateDisplayedValuesIfNull()V
    .locals 3

    .line 1442
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1443
    iput-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 304
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    .line 305
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMiniVelocityFling:I

    .line 306
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScaledTouchSlop:I

    .line 307
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    const/high16 v1, 0x41600000    # 14.0f

    if-nez v0, :cond_0

    .line 308
    invoke-direct {p0, p1, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    .line 310
    :cond_0
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    if-nez v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    .line 311
    invoke-direct {p0, p1, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    .line 313
    :cond_1
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    if-nez v0, :cond_2

    .line 314
    invoke-direct {p0, p1, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    .line 316
    :cond_2
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginStartOfHint:I

    const/high16 v1, 0x41000000    # 8.0f

    if-nez v0, :cond_3

    .line 317
    invoke-direct {p0, p1, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginStartOfHint:I

    .line 319
    :cond_3
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginEndOfHint:I

    if-nez v0, :cond_4

    .line 320
    invoke-direct {p0, p1, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginEndOfHint:I

    .line 322
    :cond_4
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 324
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 328
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 330
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 332
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorHint:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 335
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 337
    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_5

    add-int/2addr p1, v0

    .line 338
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    .line 340
    :cond_5
    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    if-ne p1, v0, :cond_7

    .line 341
    :cond_6
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateValueForInit()V

    .line 343
    :cond_7
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initHandler()V

    return-void
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 238
    :cond_0
    sget-object v0, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 239
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1d

    .line 241
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 242
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_ShownCount:I

    if-ne v3, v4, :cond_1

    const/4 v4, 0x3

    .line 243
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    goto/16 :goto_1

    .line 244
    :cond_1
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_DividerColor:I

    const v5, -0xa9ced

    if-ne v3, v4, :cond_2

    .line 245
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerColor:I

    goto/16 :goto_1

    .line 246
    :cond_2
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_DividerHeight:I

    if-ne v3, v4, :cond_3

    const/4 v4, 0x2

    .line 247
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerHeight:I

    goto/16 :goto_1

    .line 248
    :cond_3
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_DividerMarginLeft:I

    if-ne v3, v4, :cond_4

    .line 249
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    goto/16 :goto_1

    .line 250
    :cond_4
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_DividerMarginRight:I

    if-ne v3, v4, :cond_5

    .line 251
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    goto/16 :goto_1

    .line 252
    :cond_5
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_TextArray:I

    if-ne v3, v4, :cond_6

    .line 253
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->convertCharSequenceArrayToStringArray([Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    goto/16 :goto_1

    .line 254
    :cond_6
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_TextColorNormal:I

    if-ne v3, v4, :cond_7

    const v4, -0xcccccd

    .line 255
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    goto/16 :goto_1

    .line 256
    :cond_7
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_TextColorSelected:I

    if-ne v3, v4, :cond_8

    .line 257
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorSelected:I

    goto/16 :goto_1

    .line 258
    :cond_8
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_TextColorHint:I

    if-ne v3, v4, :cond_9

    .line 259
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorHint:I

    goto/16 :goto_1

    .line 260
    :cond_9
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_TextSizeNormal:I

    const/high16 v5, 0x41600000    # 14.0f

    if-ne v3, v4, :cond_a

    .line 261
    invoke-direct {p0, p1, v5}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    goto/16 :goto_1

    .line 262
    :cond_a
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_TextSizeSelected:I

    if-ne v3, v4, :cond_b

    const/high16 v4, 0x41800000    # 16.0f

    .line 263
    invoke-direct {p0, p1, v4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    goto/16 :goto_1

    .line 264
    :cond_b
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_TextSizeHint:I

    if-ne v3, v4, :cond_c

    .line 265
    invoke-direct {p0, p1, v5}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->sp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    goto/16 :goto_1

    .line 266
    :cond_c
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_MinValue:I

    if-ne v3, v4, :cond_d

    .line 267
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    goto/16 :goto_1

    .line 268
    :cond_d
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_MaxValue:I

    if-ne v3, v4, :cond_e

    .line 269
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    goto/16 :goto_1

    .line 270
    :cond_e
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_WrapSelectorWheel:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_f

    .line 271
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    goto/16 :goto_1

    .line 272
    :cond_f
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_ShowDivider:I

    if-ne v3, v4, :cond_10

    .line 273
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShowDivider:Z

    goto/16 :goto_1

    .line 274
    :cond_10
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_HintText:I

    if-ne v3, v4, :cond_11

    .line 275
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHintText:Ljava/lang/String;

    goto/16 :goto_1

    .line 276
    :cond_11
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_AlternativeHint:I

    if-ne v3, v4, :cond_12

    .line 277
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mAlterHint:Ljava/lang/String;

    goto/16 :goto_1

    .line 278
    :cond_12
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_EmptyItemHint:I

    if-ne v3, v4, :cond_13

    .line 279
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mEmptyItemHint:Ljava/lang/String;

    goto/16 :goto_1

    .line 280
    :cond_13
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_MarginStartOfHint:I

    const/high16 v6, 0x41000000    # 8.0f

    if-ne v3, v4, :cond_14

    .line 281
    invoke-direct {p0, p1, v6}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginStartOfHint:I

    goto/16 :goto_1

    .line 282
    :cond_14
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_MarginEndOfHint:I

    if-ne v3, v4, :cond_15

    .line 283
    invoke-direct {p0, p1, v6}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginEndOfHint:I

    goto :goto_1

    .line 284
    :cond_15
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_ItemPaddingVertical:I

    if-ne v3, v4, :cond_16

    const/high16 v4, 0x40000000    # 2.0f

    .line 285
    invoke-direct {p0, p1, v4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingVertical:I

    goto :goto_1

    .line 286
    :cond_16
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_ItemPaddingHorizontal:I

    if-ne v3, v4, :cond_17

    const/high16 v4, 0x40a00000    # 5.0f

    .line 287
    invoke-direct {p0, p1, v4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    goto :goto_1

    .line 288
    :cond_17
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_AlternativeTextArrayWithMeasureHint:I

    if-ne v3, v4, :cond_18

    .line 289
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 290
    :cond_18
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_AlternativeTextArrayWithoutMeasureHint:I

    if-ne v3, v4, :cond_19

    .line 291
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 292
    :cond_19
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_RespondChangeOnDetached:I

    if-ne v3, v4, :cond_1a

    .line 293
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeOnDetach:Z

    goto :goto_1

    .line 294
    :cond_1a
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_RespondChangeInMainThread:I

    if-ne v3, v4, :cond_1b

    .line 295
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeInMainThread:Z

    goto :goto_1

    .line 296
    :cond_1b
    sget v4, Lcn/carbswang/android/numberpickerview/library/R$styleable;->NumberPickerView_npv_TextEllipsize:I

    if-ne v3, v4, :cond_1c

    .line 297
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextEllipsize:Ljava/lang/String;

    :cond_1c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 300
    :cond_1d
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initHandler()V
    .locals 2

    .line 347
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread-For-Refreshing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerThread:Landroid/os/HandlerThread;

    .line 348
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 350
    new-instance v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$1;-><init>(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    .line 399
    new-instance v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$2;

    invoke-direct {v0, p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$2;-><init>(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;)V

    iput-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInMainThread:Landroid/os/Handler;

    return-void
.end method

.method private initHandlerIfDead()V
    .locals 1

    .line 690
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initHandler()V

    :cond_0
    return-void
.end method

.method private internalSetWrapToLinear()V
    .locals 2

    .line 998
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    .line 999
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->correctPositionByDefaultValue(IZ)V

    .line 1000
    iput-boolean v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    .line 1001
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method private isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1520
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private limitY(I)I
    .locals 1

    .line 1057
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    return p1

    .line 1058
    :cond_0
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mNotWrapLimitYBottom:I

    if-ge p1, v0, :cond_1

    :goto_0
    move p1, v0

    goto :goto_1

    .line 1060
    :cond_1
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mNotWrapLimitYTop:I

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private measureHeight(I)I
    .locals 4

    .line 1259
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeH:I

    .line 1260
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1265
    :cond_0
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxHeightOfDisplayedValues:I

    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingVertical:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    .line 1266
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1268
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 7

    .line 1237
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeW:I

    .line 1238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1243
    :cond_0
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfAlterHint:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginEndOfHint:I

    .line 1244
    :goto_0
    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    iget v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfAlterHint:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMarginStartOfHint:I

    .line 1246
    :goto_1
    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    iget v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfDisplayedValues:I

    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 1247
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    iget v6, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfAlterHint:I

    .line 1248
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v1

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    .line 1246
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1249
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 1251
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    return p1
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 929
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 932
    :cond_0
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScrollState:I

    .line 933
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnScrollListener:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 934
    invoke-interface {v0, p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnScrollListener;->onScrollStateChange(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;I)V

    :cond_1
    return-void
.end method

.method private refineValueByLimit(IIIZ)I
    .locals 0

    if-eqz p4, :cond_2

    if-le p1, p3, :cond_0

    sub-int/2addr p1, p3

    .line 1455
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result p3

    rem-int/2addr p1, p3

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    sub-int/2addr p1, p2

    .line 1457
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result p2

    rem-int/2addr p1, p2

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    return p1

    :cond_2
    if-le p1, p3, :cond_3

    move p1, p3

    goto :goto_1

    :cond_3
    if-ge p1, p2, :cond_4

    move p1, p2

    :cond_4
    :goto_1
    return p1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1218
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1219
    iput-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private respondPickedValueChanged(IILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 667
    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->onScrollStateChange(I)V

    if-eq p1, p2, :cond_3

    if-eqz p3, :cond_0

    .line 669
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 670
    :cond_0
    iget-object p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListener:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;

    if-eqz p3, :cond_1

    .line 671
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-interface {p3, p0, v2, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;->onValueChange(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II)V

    .line 673
    :cond_1
    iget-object p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListenerRaw:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerRelativeToRaw;

    if-eqz p3, :cond_2

    .line 674
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    invoke-interface {p3, p0, p1, p2, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerRelativeToRaw;->onValueChangeRelativeToRaw(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II[Ljava/lang/String;)V

    .line 677
    :cond_2
    iput p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    .line 679
    :cond_3
    iget-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPendingWrapToLinear:Z

    if-eqz p1, :cond_4

    .line 680
    iput-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPendingWrapToLinear:Z

    .line 681
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->internalSetWrapToLinear()V

    :cond_4
    return-void
.end method

.method private respondPickedValueChangedInScrolling(II)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListenerInScrolling:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;

    invoke-interface {v0, p0, p1, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;->onValueChangeInScrolling(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II)V

    return-void
.end method

.method private scrollByIndexSmoothly(I)V
    .locals 1

    const/4 v0, 0x1

    .line 686
    invoke-direct {p0, p1, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->scrollByIndexSmoothly(IZ)V

    return-void
.end method

.method private scrollByIndexSmoothly(IZ)V
    .locals 10

    .line 700
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initHandlerIfDead()V

    .line 701
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-nez v0, :cond_2

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    add-int v1, v0, p1

    .line 703
    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    if-le v1, v2, :cond_1

    :goto_0
    sub-int p1, v2, v0

    goto :goto_1

    .line 705
    :cond_1
    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    if-ge v1, v2, :cond_2

    goto :goto_0

    .line 711
    :cond_2
    :goto_1
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x43960000    # 300.0f

    if-ge v0, v2, :cond_4

    add-int v2, v1, v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    int-to-float v3, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    if-gez p1, :cond_3

    neg-int v0, v0

    mul-int/lit16 v3, p1, 0x12c

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_3
    mul-int/lit16 v3, p1, 0x12c

    add-int/2addr v0, v3

    :goto_2
    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_3

    :cond_4
    neg-int v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-gez p1, :cond_5

    mul-int/lit16 v3, p1, 0x12c

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_5
    mul-int/lit16 v3, p1, 0x12c

    add-int/2addr v2, v3

    :goto_3
    mul-int/2addr p1, v1

    add-int v7, v0, p1

    const/16 p1, 0x12c

    if-ge v2, p1, :cond_6

    move v2, p1

    :cond_6
    const/16 p1, 0x258

    if-le v2, p1, :cond_7

    move v2, p1

    .line 735
    :cond_7
    iget-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    iget v5, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    const/4 v6, 0x0

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 p1, 0x1

    if-eqz p2, :cond_8

    .line 737
    iget-object p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMsg(I)Landroid/os/Message;

    move-result-object p1

    div-int/lit8 v2, v2, 0x4

    int-to-long v0, v2

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 739
    :cond_8
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMsg(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    div-int/lit8 v2, v2, 0x4

    int-to-long v1, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 741
    :goto_4
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method private sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 1525
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private stopRefreshing()V
    .locals 2

    .line 1471
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1472
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateContent([Ljava/lang/String;)V
    .locals 0

    .line 1417
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    .line 1418
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateWrapStateByContent()V

    return-void
.end method

.method private updateContentAndIndex([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1410
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    .line 1411
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    .line 1412
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    .line 1413
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateWrapStateByContent()V

    return-void
.end method

.method private updateDividerAttr()V
    .locals 5

    .line 1005
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerIndex0:I

    add-int/lit8 v2, v1, 0x1

    .line 1006
    iput v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerIndex1:I

    .line 1007
    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewHeight:I

    mul-int/2addr v1, v3

    div-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dividerY0:F

    mul-int/2addr v2, v3

    .line 1008
    div-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->dividerY1:F

    .line 1009
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    .line 1010
    :cond_0
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    if-gez v0, :cond_1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    .line 1012
    :cond_1
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    add-int/2addr v0, v1

    if-nez v0, :cond_2

    return-void

    .line 1013
    :cond_2
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewWidth:I

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    .line 1014
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    add-int/2addr v0, v1

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewWidth:I

    sub-int/2addr v0, v2

    .line 1015
    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    int-to-float v3, v2

    int-to-float v0, v0

    int-to-float v4, v2

    mul-float/2addr v4, v0

    add-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    float-to-int v2, v3

    iput v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginL:I

    int-to-float v3, v1

    int-to-float v4, v1

    mul-float/2addr v0, v4

    add-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    float-to-int v0, v3

    .line 1016
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerMarginR:I

    :cond_3
    return-void
.end method

.method private updateFontAttr()V
    .locals 2

    .line 1024
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    .line 1025
    :cond_0
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    .line 1027
    :cond_1
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 1030
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1031
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHintCenterYOffset:F

    .line 1032
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHintText:Ljava/lang/String;

    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    .line 1034
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    if-eqz v0, :cond_2

    .line 1037
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1038
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelectedCenterYOffset:F

    .line 1039
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormal:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1040
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeNormalCenterYOffset:F

    return-void

    .line 1035
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPaintText should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPaintHint should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateMaxHeightOfDisplayedValues()V
    .locals 5

    .line 1403
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    .line 1404
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1405
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxHeightOfDisplayedValues:I

    .line 1406
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateMaxWHOfDisplayedValues(Z)V
    .locals 1

    .line 1224
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateMaxWidthOfDisplayedValues()V

    .line 1225
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateMaxHeightOfDisplayedValues()V

    if-eqz p1, :cond_1

    .line 1226
    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeW:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mSpecModeH:I

    if-ne p1, v0, :cond_1

    .line 1228
    :cond_0
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInMainThread:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private updateMaxWidthOfDisplayedValues()V
    .locals 3

    .line 1360
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    .line 1361
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeSelected:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1362
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    iget-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfDisplayedValues:I

    .line 1363
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mAlterTextArrayWithMeasureHint:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithMeasureHint:I

    .line 1364
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mAlterTextArrayWithoutMeasureHint:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMaxWidthOfTextArray([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxWidthOfAlterArrayWithoutMeasureHint:I

    .line 1365
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1366
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mAlterHint:Ljava/lang/String;

    iget-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfAlterHint:I

    .line 1367
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateNotWrapYLimit()V
    .locals 3

    const/4 v0, 0x0

    .line 1044
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mNotWrapLimitYTop:I

    .line 1045
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    neg-int v0, v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mNotWrapLimitYBottom:I

    .line 1046
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mNotWrapLimitYTop:I

    .line 1048
    div-int/lit8 v1, v1, 0x2

    neg-int v0, v1

    mul-int/2addr v0, v2

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mNotWrapLimitYBottom:I

    :cond_0
    return-void
.end method

.method private updateValue()V
    .locals 1

    .line 1423
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->inflateDisplayedValuesIfNull()V

    .line 1424
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateWrapStateByContent()V

    const/4 v0, 0x0

    .line 1425
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    .line 1426
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    return-void
.end method

.method private updateValueForInit()V
    .locals 3

    .line 1430
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->inflateDisplayedValuesIfNull()V

    .line 1431
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateWrapStateByContent()V

    .line 1432
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1433
    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    .line 1435
    :cond_0
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    if-ne v0, v2, :cond_1

    .line 1436
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    .line 1438
    :cond_1
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    invoke-virtual {p0, v0, v2, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method private updateWrapStateByContent()V
    .locals 2

    .line 1449
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .line 1187
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    if-nez v0, :cond_0

    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    .line 1190
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->calculateFirstItemParameterByGlobalY()V

    .line 1191
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public getContentByCurrValue()Ljava/lang/String;
    .locals 3

    .line 790
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getValue()I

    move-result v1

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 749
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 745
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    return v0
.end method

.method public getOneRecycleSize()I
    .locals 2

    .line 503
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPickedIndexRelativeToRaw()I
    .locals 3

    .line 867
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    if-eqz v0, :cond_1

    .line 868
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 869
    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getWillPickIndexByGlobalY(I)I

    move-result v0

    goto :goto_0

    .line 871
    :cond_0
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getWillPickIndexByGlobalY(I)I

    move-result v0

    goto :goto_0

    .line 874
    :cond_1
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getWillPickIndexByGlobalY(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRawContentSize()I
    .locals 1

    .line 507
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 508
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 2

    .line 786
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    return v0
.end method

.method public getWrapSelectorWheelAbsolutely()Z
    .locals 1

    .line 798
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrolling()Z
    .locals 2

    .line 1495
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 456
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 457
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    :cond_0
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initHandler()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 464
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 465
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 468
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 471
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    .line 472
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->calculateFirstItemParameterByGlobalY()V

    .line 473
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemY:I

    if-eqz v0, :cond_2

    .line 474
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    .line 475
    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    goto :goto_0

    .line 477
    :cond_1
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    .line 479
    :goto_0
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->calculateFirstItemParameterByGlobalY()V

    :cond_2
    const/4 v0, 0x0

    .line 481
    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->onScrollStateChange(I)V

    .line 486
    :cond_3
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getWillPickIndexByGlobalY(I)I

    move-result v0

    .line 487
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    if-eq v0, v1, :cond_5

    iget-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mRespondChangeOnDetach:Z

    if-eqz v2, :cond_5

    .line 489
    :try_start_0
    iget-object v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListener:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;

    if-eqz v2, :cond_4

    .line 490
    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    add-int/2addr v1, v3

    add-int/2addr v3, v0

    invoke-interface {v2, p0, v1, v3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;->onValueChange(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II)V

    .line 492
    :cond_4
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListenerRaw:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerRelativeToRaw;

    if-eqz v1, :cond_5

    .line 493
    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    iget-object v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    invoke-interface {v1, p0, v2, v0, v3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerRelativeToRaw;->onValueChangeRelativeToRaw(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    :cond_5
    :goto_1
    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1276
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1277
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->drawContent(Landroid/graphics/Canvas;)V

    .line 1278
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->drawLine(Landroid/graphics/Canvas;)V

    .line 1279
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->drawHint(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 424
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateMaxWHOfDisplayedValues(Z)V

    .line 426
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->measureWidth(I)I

    move-result p1

    .line 427
    invoke-direct {p0, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->measureHeight(I)I

    move-result p2

    .line 426
    invoke-virtual {p0, p1, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 433
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewWidth:I

    .line 434
    iput p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewHeight:I

    .line 435
    iget p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    div-int/2addr p2, p3

    iput p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    .line 436
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mViewCenterX:F

    .line 438
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    .line 439
    iget-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHasInit:Z

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getValue()I

    move-result p1

    iget p4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    sub-int/2addr p1, p4

    goto :goto_0

    .line 441
    :cond_0
    iget-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrentItemIndexEffect:Z

    if-eqz p1, :cond_1

    .line 442
    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawFirstItemIndex:I

    iget p4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p1, p4

    goto :goto_0

    :cond_1
    move p1, p2

    .line 447
    :goto_0
    iget-boolean p4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz p4, :cond_2

    move p2, p3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->correctPositionByDefaultValue(IZ)V

    .line 448
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateFontAttr()V

    .line 449
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateNotWrapYLimit()V

    .line 450
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateDividerAttr()V

    .line 451
    iput-boolean p3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHasInit:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1070
    invoke-direct/range {p0 .. p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initHandlerIfDead()V

    .line 1071
    iget v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemHeight:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 1073
    :cond_0
    iget-object v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 1074
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1076
    :cond_1
    iget-object v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->currY:F

    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    if-eq v1, v2, :cond_5

    if-eq v1, v7, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    goto/16 :goto_1

    .line 1120
    :cond_2
    iget v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    int-to-float v1, v1

    iput v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downYGlobal:F

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->stopScrolling()V

    .line 1122
    iget-object v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMsg(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1090
    :cond_3
    iget v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downY:F

    iget v3, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->currY:F

    sub-float/2addr v1, v3

    .line 1092
    iget-boolean v3, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFlagMayPress:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScaledTouchSlop:I

    neg-int v5, v3

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_4

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_4

    goto :goto_0

    .line 1095
    :cond_4
    iput-boolean v4, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFlagMayPress:Z

    .line 1096
    iget v3, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downYGlobal:F

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-direct {v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->limitY(I)I

    move-result v1

    iput v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    .line 1097
    invoke-direct/range {p0 .. p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->calculateFirstItemParameterByGlobalY()V

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->invalidate()V

    .line 1100
    :goto_0
    invoke-direct {v0, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->onScrollStateChange(I)V

    goto :goto_1

    .line 1103
    :cond_5
    iget-boolean v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFlagMayPress:Z

    if-eqz v1, :cond_6

    .line 1104
    invoke-direct/range {p0 .. p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->click(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1106
    :cond_6
    iget-object v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    .line 1107
    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1108
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget v3, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFriction:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 1109
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMiniVelocityFling:I

    if-le v3, v4, :cond_7

    .line 1110
    iget-object v8, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 v9, 0x0

    iget v10, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    const/4 v11, 0x0

    neg-int v12, v1

    const/high16 v13, -0x80000000

    const v14, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 1111
    invoke-direct {v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->limitY(I)I

    move-result v15

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->limitY(I)I

    move-result v16

    .line 1110
    invoke-virtual/range {v8 .. v16}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->invalidate()V

    .line 1113
    invoke-direct {v0, v7}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->onScrollStateChange(I)V

    .line 1115
    :cond_7
    iget-object v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMsg(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1116
    invoke-direct/range {p0 .. p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->releaseVelocityTracker()V

    goto :goto_1

    .line 1081
    :cond_8
    iput-boolean v2, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFlagMayPress:Z

    .line 1082
    iget-object v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->stopScrolling()V

    .line 1084
    iget v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->currY:F

    iput v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downY:F

    .line 1085
    iget v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mCurrDrawGlobalY:I

    int-to-float v1, v1

    iput v1, v0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->downYGlobal:F

    .line 1086
    invoke-direct {v0, v4}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->onScrollStateChange(I)V

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    return v2
.end method

.method public refreshByNewDisplayedValues([Ljava/lang/String;)V
    .locals 3

    .line 642
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMinValue()I

    move-result v0

    .line 644
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMaxValue()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 647
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    .line 651
    invoke-virtual {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setDisplayedValues([Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setMaxValue(I)V

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {p0, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setMaxValue(I)V

    .line 655
    invoke-virtual {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setDisplayedValues([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContentTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 5

    .line 538
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->stopRefreshing()V

    .line 539
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->stopScrolling()V

    if-eqz p1, :cond_2

    .line 544
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p1

    if-gt v0, v2, :cond_1

    .line 550
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateContent([Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateMaxWHOfDisplayedValues(Z)V

    .line 552
    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    const/4 v0, 0x0

    add-int/2addr p1, v0

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    .line 553
    iget-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->correctPositionByDefaultValue(IZ)V

    .line 554
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    .line 555
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInMainThread:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 545
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxValue - mMinValue + 1 should not be greater than mDisplayedValues.length, now ((mMaxValue - mMinValue + 1) is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    iget v4, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newDisplayedValues.length is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", you need to set MaxValue and MinValue before setDisplayedValues(String[])"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newDisplayedValues should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisplayedValues([Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, p1, v0, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V

    return-void
.end method

.method public setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V
    .locals 2

    .line 513
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->stopScrolling()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    .line 520
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateContent([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 521
    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateMaxWHOfDisplayedValues(Z)V

    .line 522
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateNotWrapYLimit()V

    .line 523
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateValue()V

    .line 524
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    .line 525
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->correctPositionByDefaultValue(IZ)V

    if-eqz p3, :cond_1

    .line 527
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initHandlerIfDead()V

    .line 528
    iget-object p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMsg(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 529
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    :cond_1
    return-void

    .line 518
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pickedIndex should not be negative, now pickedIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 515
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newDisplayedValues should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 837
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 838
    :cond_0
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerColor:I

    .line 839
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 840
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 844
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerHeight:I

    if-ne v0, p1, :cond_0

    return-void

    .line 845
    :cond_0
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDividerHeight:I

    .line 846
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintDivider:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 847
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method public setFriction(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    div-float/2addr v0, p1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mFriction:F

    return-void

    .line 923
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you should set a a positive float friction, now friction is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHintText:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 803
    :cond_0
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHintText:Ljava/lang/String;

    .line 804
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getTextCenterYOffset(Landroid/graphics/Paint$FontMetrics;)F

    move-result p1

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextSizeHintCenterYOffset:F

    .line 805
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHintText:Ljava/lang/String;

    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getTextWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWidthOfHintText:I

    .line 806
    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInMainThread:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    .line 830
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorHint:I

    if-ne v0, p1, :cond_0

    return-void

    .line 831
    :cond_0
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorHint:I

    .line 832
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 833
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method public setHintTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 961
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintHint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setItemPaddingHorizontal(I)V
    .locals 0

    .line 851
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mItemPaddingHorizontal:I

    .line 852
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3

    .line 760
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    const-string v1, "mDisplayedValues should not be null"

    .line 761
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 763
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    sub-int v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    array-length v0, v0

    if-gt v2, v0, :cond_0

    .line 767
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    sub-int/2addr p1, v1

    .line 768
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    .line 769
    invoke-virtual {p0, v0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setMinAndMaxShowIndex(II)V

    .line 770
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateNotWrapYLimit()V

    return-void

    .line 764
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(maxValue - mMinValue + 1) should not be greater than mDisplayedValues.length now  (maxValue - mMinValue + 1) is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and mDisplayedValues.length is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinAndMaxShowIndex(II)V
    .locals 1

    const/4 v0, 0x1

    .line 880
    invoke-virtual {p0, p1, p2, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method public setMinAndMaxShowIndex(IIZ)V
    .locals 3

    if-gt p1, p2, :cond_7

    .line 888
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_6

    if-ltz p1, :cond_5

    .line 893
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_4

    if-ltz p2, :cond_3

    .line 900
    array-length v0, v0

    sub-int/2addr v0, v2

    if-gt p2, v0, :cond_2

    .line 905
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    .line 906
    iput p2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    add-int/2addr p1, p2

    .line 908
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    .line 909
    iget-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-direct {p0, p2, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->correctPositionByDefaultValue(IZ)V

    .line 910
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    :cond_1
    return-void

    .line 901
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maxShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 899
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxShowIndex should not be less than 0, now maxShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 894
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 892
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minShowIndex should not be less than 0, now minShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 889
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mDisplayedValues should not be null, you need to set mDisplayedValues first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 885
    :cond_7
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minShowIndex should be less than maxShowIndex, minShowIndex is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxShowIndex is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setMinValue(I)V
    .locals 0

    .line 753
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    const/4 p1, 0x0

    .line 754
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    .line 755
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateNotWrapYLimit()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    .line 818
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    if-ne v0, p1, :cond_0

    return-void

    .line 819
    :cond_0
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorNormal:I

    .line 820
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method public setOnScrollListener(Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnScrollListener;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnScrollListener:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnScrollListener;

    return-void
.end method

.method public setOnValueChangeListenerInScrolling(Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListenerInScrolling:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;

    return-void
.end method

.method public setOnValueChangedListener(Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListener:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;

    return-void
.end method

.method public setOnValueChangedListenerRelativeToRaw(Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerRelativeToRaw;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mOnValueChangeListenerRaw:Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerRelativeToRaw;

    return-void
.end method

.method public setPickedIndexRelativeToMin(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 810
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 811
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    .line 812
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->correctPositionByDefaultValue(IZ)V

    .line 813
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setPickedIndexRelativeToRaw(I)V
    .locals 2

    .line 856
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinShowIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    if-gt v0, p1, :cond_1

    .line 857
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxShowIndex:I

    if-gt p1, v1, :cond_1

    .line 858
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPrevPickedIndex:I

    sub-int/2addr p1, v0

    .line 859
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->correctPositionByDefaultValue(IZ)V

    .line 860
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1

    .line 824
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorSelected:I

    if-ne v0, p1, :cond_0

    return-void

    .line 825
    :cond_0
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mTextColorSelected:I

    .line 826
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method public setShownCount(I)V
    .locals 0

    .line 965
    iput p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mShownCount:I

    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 1

    .line 969
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPaintText:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public setValue(I)V
    .locals 3

    .line 775
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    if-lt p1, v0, :cond_1

    .line 778
    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    .line 781
    invoke-virtual {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setPickedIndexRelativeToRaw(I)V

    return-void

    .line 779
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not set a value greater than mMaxValue, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not set a value less than mMinValue, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_1

    .line 570
    iget p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScrollState:I

    if-nez p1, :cond_0

    .line 571
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->internalSetWrapToLinear()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 573
    iput-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mPendingWrapToLinear:Z

    goto :goto_0

    .line 576
    :cond_1
    iput-boolean p1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    .line 577
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->updateWrapStateByContent()V

    .line 578
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public smoothScrollToValue(I)V
    .locals 2

    .line 591
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public smoothScrollToValue(II)V
    .locals 1

    const/4 v0, 0x1

    .line 607
    invoke-virtual {p0, p1, p2, v0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public smoothScrollToValue(IIZ)V
    .locals 5

    .line 617
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    iget-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-direct {p0, p1, v0, v1, v2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->refineValueByLimit(IIIZ)I

    move-result p1

    .line 619
    iget v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMinValue:I

    iget v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mMaxValue:I

    iget-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-direct {p0, p2, v0, v1, v3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->refineValueByLimit(IIIZ)I

    move-result p2

    .line 621
    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mWrapSelectorWheelCheck:Z

    if-eqz v0, :cond_4

    sub-int v0, p2, p1

    .line 623
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    neg-int v2, v1

    if-lt v0, v2, :cond_2

    if-ge v1, v0, :cond_5

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    if-lez v0, :cond_3

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v1

    goto :goto_2

    :cond_4
    sub-int v0, p2, p1

    .line 630
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->setValue(I)V

    if-ne p1, p2, :cond_6

    return-void

    .line 632
    :cond_6
    invoke-direct {p0, v0, p3}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->scrollByIndexSmoothly(IZ)V

    return-void
.end method

.method public smoothScrollToValue(IZ)V
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getValue()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->smoothScrollToValue(IIZ)V

    return-void
.end method

.method public stopScrolling()V
    .locals 7

    .line 1477
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 1478
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    iget-object v1, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1480
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1481
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public stopScrollingAndCorrectPosition()V
    .locals 4

    .line 1487
    invoke-virtual {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->stopScrolling()V

    .line 1488
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1489
    invoke-direct {p0}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->initHandlerIfDead()V

    .line 1490
    iget-object v0, p0, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->mHandlerInNewThread:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/carbswang/android/numberpickerview/library/NumberPickerView;->getMsg(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
