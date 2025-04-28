.class public final Lcom/swmansion/rnscreens/SearchBarView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SearchBarView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;,
        Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchBarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBarView.kt\ncom/swmansion/rnscreens/SearchBarView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0002RSB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010:\u001a\u00020;J\u0006\u0010<\u001a\u00020;J\u0008\u0010=\u001a\u00020;H\u0002J\u0010\u0010>\u001a\u00020;2\u0006\u0010?\u001a\u00020\u000cH\u0002J\u0006\u0010@\u001a\u00020;J\u0008\u0010A\u001a\u00020;H\u0002J\u0010\u0010B\u001a\u00020;2\u0008\u0010C\u001a\u0004\u0018\u00010%J\u0012\u0010D\u001a\u00020;2\u0008\u0010E\u001a\u0004\u0018\u00010%H\u0002J\u0012\u0010F\u001a\u00020;2\u0008\u0010E\u001a\u0004\u0018\u00010%H\u0002J\u000e\u0010G\u001a\u00020;2\u0006\u0010H\u001a\u00020\u000cJ\u0008\u0010I\u001a\u00020;H\u0014J\u0006\u0010J\u001a\u00020;J\u0014\u0010K\u001a\u00020;2\n\u0010L\u001a\u0006\u0012\u0002\u0008\u00030MH\u0002J\u0010\u0010N\u001a\u00020;2\u0006\u0010O\u001a\u00020PH\u0002J\u0008\u0010Q\u001a\u00020;H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u000e\u0010!\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0016\u0010*\u001a\u0004\u0018\u00010+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u001a\u0010.\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u000e\"\u0004\u00080\u0010\u0010R\u001a\u00101\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u000e\"\u0004\u00083\u0010\u0010R\u001e\u00104\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u00085\u0010\u0014\"\u0004\u00086\u0010\u0016R\u001e\u00107\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u00088\u0010\u0014\"\u0004\u00089\u0010\u0016\u00a8\u0006T"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/SearchBarView;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/facebook/react/bridge/ReactContext;)V",
        "autoCapitalize",
        "Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;",
        "getAutoCapitalize",
        "()Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;",
        "setAutoCapitalize",
        "(Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;)V",
        "autoFocus",
        "",
        "getAutoFocus",
        "()Z",
        "setAutoFocus",
        "(Z)V",
        "headerIconColor",
        "",
        "getHeaderIconColor",
        "()Ljava/lang/Integer;",
        "setHeaderIconColor",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "hintTextColor",
        "getHintTextColor",
        "setHintTextColor",
        "inputType",
        "Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;",
        "getInputType",
        "()Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;",
        "setInputType",
        "(Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;)V",
        "mAreListenersSet",
        "mSearchViewFormatter",
        "Lcom/swmansion/rnscreens/SearchViewFormatter;",
        "placeholder",
        "",
        "getPlaceholder",
        "()Ljava/lang/String;",
        "setPlaceholder",
        "(Ljava/lang/String;)V",
        "screenStackFragment",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "getScreenStackFragment",
        "()Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "shouldOverrideBackButton",
        "getShouldOverrideBackButton",
        "setShouldOverrideBackButton",
        "shouldShowHintSearchIcon",
        "getShouldShowHintSearchIcon",
        "setShouldShowHintSearchIcon",
        "textColor",
        "getTextColor",
        "setTextColor",
        "tintColor",
        "getTintColor",
        "setTintColor",
        "handleBlurJsRequest",
        "",
        "handleClearTextJsRequest",
        "handleClose",
        "handleFocusChange",
        "hasFocus",
        "handleFocusJsRequest",
        "handleOpen",
        "handleSetTextJsRequest",
        "text",
        "handleTextChange",
        "newText",
        "handleTextSubmit",
        "handleToggleCancelButtonJsRequest",
        "flag",
        "onAttachedToWindow",
        "onUpdate",
        "sendEvent",
        "event",
        "Lcom/facebook/react/uimanager/events/Event;",
        "setSearchViewListeners",
        "searchView",
        "Landroidx/appcompat/widget/SearchView;",
        "setSearchViewProps",
        "SearchBarAutoCapitalize",
        "SearchBarInputTypes",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private autoCapitalize:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

.field private autoFocus:Z

.field private headerIconColor:Ljava/lang/Integer;

.field private hintTextColor:Ljava/lang/Integer;

.field private inputType:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

.field private mAreListenersSet:Z

.field private mSearchViewFormatter:Lcom/swmansion/rnscreens/SearchViewFormatter;

.field private placeholder:Ljava/lang/String;

.field private shouldOverrideBackButton:Z

.field private shouldShowHintSearchIcon:Z

.field private textColor:Ljava/lang/Integer;

.field private tintColor:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$RWFncLYEm9jU7AQn9rfR2X-Den0(Lcom/swmansion/rnscreens/SearchBarView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/SearchBarView;->setSearchViewListeners$lambda-2(Lcom/swmansion/rnscreens/SearchBarView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aXIqUUs8qFTuiX0xFYZC5NHlxeI(Lcom/swmansion/rnscreens/SearchBarView;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setSearchViewListeners$lambda-0(Lcom/swmansion/rnscreens/SearchBarView;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfnce3-Dcu7zJZLgnkBdaybeO-w(Lcom/swmansion/rnscreens/SearchBarView;)Z
    .locals 0

    invoke-static {p0}, Lcom/swmansion/rnscreens/SearchBarView;->setSearchViewListeners$lambda-1(Lcom/swmansion/rnscreens/SearchBarView;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 19
    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object p1, Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;->TEXT:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->inputType:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    .line 21
    sget-object p1, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->NONE:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->autoCapitalize:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    const-string p1, ""

    .line 26
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->placeholder:Ljava/lang/String;

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->shouldOverrideBackButton:Z

    .line 29
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->shouldShowHintSearchIcon:Z

    return-void
.end method

.method public static final synthetic access$getMSearchViewFormatter$p(Lcom/swmansion/rnscreens/SearchBarView;)Lcom/swmansion/rnscreens/SearchViewFormatter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/swmansion/rnscreens/SearchBarView;->mSearchViewFormatter:Lcom/swmansion/rnscreens/SearchViewFormatter;

    return-object p0
.end method

.method public static final synthetic access$getScreenStackFragment(Lcom/swmansion/rnscreens/SearchBarView;)Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getScreenStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleTextChange(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/SearchBarView;->handleTextChange(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleTextSubmit(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/SearchBarView;->handleTextSubmit(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setMSearchViewFormatter$p(Lcom/swmansion/rnscreens/SearchBarView;Lcom/swmansion/rnscreens/SearchViewFormatter;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->mSearchViewFormatter:Lcom/swmansion/rnscreens/SearchViewFormatter;

    return-void
.end method

.method public static final synthetic access$setSearchViewProps(Lcom/swmansion/rnscreens/SearchBarView;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->setSearchViewProps()V

    return-void
.end method

.method private final getScreenStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 38
    instance-of v1, v0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubview;->getConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getScreenFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method private final handleClose()V
    .locals 2

    .line 112
    new-instance v0, Lcom/swmansion/rnscreens/events/SearchBarCloseEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/events/SearchBarCloseEvent;-><init>(I)V

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/SearchBarView;->sendEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private final handleFocusChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    new-instance p1, Lcom/swmansion/rnscreens/events/SearchBarFocusEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getId()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/swmansion/rnscreens/events/SearchBarFocusEvent;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/swmansion/rnscreens/events/SearchBarBlurEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getId()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/swmansion/rnscreens/events/SearchBarBlurEvent;-><init>(I)V

    :goto_0
    check-cast p1, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/SearchBarView;->sendEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private final handleOpen()V
    .locals 2

    .line 116
    new-instance v0, Lcom/swmansion/rnscreens/events/SearchBarOpenEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/events/SearchBarOpenEvent;-><init>(I)V

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/SearchBarView;->sendEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private final handleTextChange(Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Lcom/swmansion/rnscreens/events/SearchBarChangeTextEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/swmansion/rnscreens/events/SearchBarChangeTextEvent;-><init>(ILjava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/SearchBarView;->sendEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private final handleTextSubmit(Ljava/lang/String;)V
    .locals 2

    .line 120
    new-instance v0, Lcom/swmansion/rnscreens/events/SearchBarSearchButtonPressEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/swmansion/rnscreens/events/SearchBarSearchButtonPressEvent;-><init>(ILjava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/SearchBarView;->sendEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method private final sendEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/events/Event<",
            "*>;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :goto_0
    return-void
.end method

.method private final setSearchViewListeners(Landroidx/appcompat/widget/SearchView;)V
    .locals 1

    .line 80
    new-instance v0, Lcom/swmansion/rnscreens/SearchBarView$setSearchViewListeners$1;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/SearchBarView$setSearchViewListeners$1;-><init>(Lcom/swmansion/rnscreens/SearchBarView;)V

    check-cast v0, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 91
    new-instance v0, Lcom/swmansion/rnscreens/SearchBarView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/SearchBarView$$ExternalSyntheticLambda1;-><init>(Lcom/swmansion/rnscreens/SearchBarView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 94
    new-instance v0, Lcom/swmansion/rnscreens/SearchBarView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/SearchBarView$$ExternalSyntheticLambda2;-><init>(Lcom/swmansion/rnscreens/SearchBarView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 98
    new-instance v0, Lcom/swmansion/rnscreens/SearchBarView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/SearchBarView$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/SearchBarView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setSearchViewListeners$lambda-0(Lcom/swmansion/rnscreens/SearchBarView;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p2}, Lcom/swmansion/rnscreens/SearchBarView;->handleFocusChange(Z)V

    return-void
.end method

.method private static final setSearchViewListeners$lambda-1(Lcom/swmansion/rnscreens/SearchBarView;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->handleClose()V

    const/4 p0, 0x0

    return p0
.end method

.method private static final setSearchViewListeners$lambda-2(Lcom/swmansion/rnscreens/SearchBarView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->handleOpen()V

    return-void
.end method

.method private final setSearchViewProps()V
    .locals 4

    .line 49
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getScreenStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getSearchView()Lcom/swmansion/rnscreens/CustomSearchView;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    .line 51
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->mAreListenersSet:Z

    if-nez v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0, v1}, Lcom/swmansion/rnscreens/SearchBarView;->setSearchViewListeners(Landroidx/appcompat/widget/SearchView;)V

    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->mAreListenersSet:Z

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->inputType:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    iget-object v2, p0, Lcom/swmansion/rnscreens/SearchBarView;->autoCapitalize:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;->toAndroidInputType(Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/CustomSearchView;->setInputType(I)V

    .line 57
    iget-object v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->mSearchViewFormatter:Lcom/swmansion/rnscreens/SearchViewFormatter;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/swmansion/rnscreens/SearchBarView;->textColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/SearchViewFormatter;->setTextColor(Ljava/lang/Integer;)V

    .line 58
    :goto_1
    iget-object v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->mSearchViewFormatter:Lcom/swmansion/rnscreens/SearchViewFormatter;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/swmansion/rnscreens/SearchBarView;->tintColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/SearchViewFormatter;->setTintColor(Ljava/lang/Integer;)V

    .line 59
    :goto_2
    iget-object v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->mSearchViewFormatter:Lcom/swmansion/rnscreens/SearchViewFormatter;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/swmansion/rnscreens/SearchBarView;->headerIconColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/SearchViewFormatter;->setHeaderIconColor(Ljava/lang/Integer;)V

    .line 60
    :goto_3
    iget-object v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->mSearchViewFormatter:Lcom/swmansion/rnscreens/SearchViewFormatter;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/swmansion/rnscreens/SearchBarView;->hintTextColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/SearchViewFormatter;->setHintTextColor(Ljava/lang/Integer;)V

    .line 61
    :goto_4
    iget-object v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->mSearchViewFormatter:Lcom/swmansion/rnscreens/SearchViewFormatter;

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/swmansion/rnscreens/SearchBarView;->placeholder:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/swmansion/rnscreens/SearchBarView;->shouldShowHintSearchIcon:Z

    invoke-virtual {v1, v2, v3}, Lcom/swmansion/rnscreens/SearchViewFormatter;->setPlaceholder(Ljava/lang/String;Z)V

    .line 62
    :goto_5
    iget-boolean v1, p0, Lcom/swmansion/rnscreens/SearchBarView;->shouldOverrideBackButton:Z

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/CustomSearchView;->setOverrideBackAction(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final getAutoCapitalize()Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->autoCapitalize:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    return-object v0
.end method

.method public final getAutoFocus()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->autoFocus:Z

    return v0
.end method

.method public final getHeaderIconColor()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->headerIconColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHintTextColor()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->hintTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInputType()Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->inputType:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    return-object v0
.end method

.method public final getPlaceholder()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->placeholder:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldOverrideBackButton()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->shouldOverrideBackButton:Z

    return v0
.end method

.method public final getShouldShowHintSearchIcon()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->shouldShowHintSearchIcon:Z

    return v0
.end method

.method public final getTextColor()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->textColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTintColor()Ljava/lang/Integer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/swmansion/rnscreens/SearchBarView;->tintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final handleBlurJsRequest()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getScreenStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getSearchView()Lcom/swmansion/rnscreens/CustomSearchView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/CustomSearchView;->clearFocus()V

    :goto_0
    return-void
.end method

.method public final handleClearTextJsRequest()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getScreenStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getSearchView()Lcom/swmansion/rnscreens/CustomSearchView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/CustomSearchView;->clearText()V

    :goto_0
    return-void
.end method

.method public final handleFocusJsRequest()V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getScreenStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getSearchView()Lcom/swmansion/rnscreens/CustomSearchView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/CustomSearchView;->focus()V

    :goto_0
    return-void
.end method

.method public final handleSetTextJsRequest(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getScreenStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->getSearchView()Lcom/swmansion/rnscreens/CustomSearchView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/CustomSearchView;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final handleToggleCancelButtonJsRequest(Z)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 69
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->getScreenStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;

    invoke-direct {v1, p0}, Lcom/swmansion/rnscreens/SearchBarView$onAttachedToWindow$1;-><init>(Lcom/swmansion/rnscreens/SearchBarView;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->setOnSearchViewCreate(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public final onUpdate()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/swmansion/rnscreens/SearchBarView;->setSearchViewProps()V

    return-void
.end method

.method public final setAutoCapitalize(Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->autoCapitalize:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    return-void
.end method

.method public final setAutoFocus(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->autoFocus:Z

    return-void
.end method

.method public final setHeaderIconColor(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->headerIconColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setHintTextColor(Ljava/lang/Integer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->hintTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setInputType(Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->inputType:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    return-void
.end method

.method public final setPlaceholder(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->placeholder:Ljava/lang/String;

    return-void
.end method

.method public final setShouldOverrideBackButton(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->shouldOverrideBackButton:Z

    return-void
.end method

.method public final setShouldShowHintSearchIcon(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->shouldShowHintSearchIcon:Z

    return-void
.end method

.method public final setTextColor(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->textColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setTintColor(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/swmansion/rnscreens/SearchBarView;->tintColor:Ljava/lang/Integer;

    return-void
.end method
