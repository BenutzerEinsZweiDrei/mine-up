.class public final Lcom/swmansion/rnscreens/SearchBarManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "SearchBarManager.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNSSearchBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/SearchBarManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/swmansion/rnscreens/SearchBarView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 )2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0016\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0014J$\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0007J\u001f\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019J\u001f\u0010\u001a\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007\u00a2\u0006\u0002\u0010\u001fJ\u001f\u0010 \u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007\u00a2\u0006\u0002\u0010\u001fJ\u001a\u0010!\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\"\u001a\u0004\u0018\u00010\tH\u0007J\u001a\u0010#\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010$\u001a\u0004\u0018\u00010\tH\u0007J\u001f\u0010%\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010&\u001a\u0004\u0018\u00010\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019J\u001f\u0010\'\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007\u00a2\u0006\u0002\u0010\u001fJ\u001f\u0010(\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007\u00a2\u0006\u0002\u0010\u001f\u00a8\u0006*"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/SearchBarManager;",
        "Lcom/facebook/react/uimanager/ViewGroupManager;",
        "Lcom/swmansion/rnscreens/SearchBarView;",
        "()V",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "",
        "",
        "getName",
        "onAfterUpdateTransaction",
        "",
        "view",
        "receiveCommand",
        "root",
        "commandId",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setAutoCapitalize",
        "autoCapitalize",
        "setAutoFocus",
        "autoFocus",
        "",
        "(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Boolean;)V",
        "setDisableBackButtonOverride",
        "disableBackButtonOverride",
        "setHeaderIconColor",
        "color",
        "",
        "(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Integer;)V",
        "setHintTextColor",
        "setInputType",
        "inputType",
        "setPlaceholder",
        "placeholder",
        "setShouldShowHintSearchIcon",
        "shouldShowHintSearchIcon",
        "setTextColor",
        "setTintColor",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/swmansion/rnscreens/SearchBarManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "RNSSearchBar"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/SearchBarManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/SearchBarManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/SearchBarManager;->Companion:Lcom/swmansion/rnscreens/SearchBarManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/SearchBarManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/SearchBarView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/swmansion/rnscreens/SearchBarView;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/swmansion/rnscreens/SearchBarView;

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/SearchBarView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "registrationName"

    const-string v1, "onBlur"

    .line 114
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v1, "onChangeText"

    .line 116
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    const-string v1, "onClose"

    .line 118
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    const-string v1, "onFocus"

    .line 120
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    const-string v1, "onOpen"

    .line 122
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    const-string v1, "onSearchButtonPress"

    .line 124
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v13

    const-string v2, "topBlur"

    const-string v4, "topChangeText"

    const-string v6, "topClose"

    const-string v8, "topFocus"

    const-string v10, "topOpen"

    const-string v12, "topSearchButtonPress"

    .line 112
    invoke-static/range {v2 .. v13}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNSSearchBar"

    return-object v0
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/swmansion/rnscreens/SearchBarView;

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/SearchBarManager;->onAfterUpdateTransaction(Lcom/swmansion/rnscreens/SearchBarView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/swmansion/rnscreens/SearchBarView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 29
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/SearchBarView;->onUpdate()V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/swmansion/rnscreens/SearchBarView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/swmansion/rnscreens/SearchBarManager;->receiveCommand(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "setText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->handleSetTextJsRequest(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    const-string p3, "focus"

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/SearchBarView;->handleFocusJsRequest()V

    goto :goto_1

    :sswitch_2
    const-string p3, "blur"

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/SearchBarView;->handleBlurJsRequest()V

    goto :goto_1

    :sswitch_3
    const-string p3, "toggleCancelButton"

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 105
    invoke-virtual {p1, v1}, Lcom/swmansion/rnscreens/SearchBarView;->handleToggleCancelButtonJsRequest(Z)V

    goto :goto_1

    :sswitch_4
    const-string p3, "clearText"

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/SearchBarView;->handleClearTextJsRequest()V

    :goto_1
    return-void

    .line 107
    :cond_1
    :goto_2
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string p3, "Unsupported native command received: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x4bc07ee6 -> :sswitch_4
        -0x27995040 -> :sswitch_3
        0x2e3067 -> :sswitch_2
        0x5d154d8 -> :sswitch_1
        0x765074af -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAutoCapitalize(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoCapitalize"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "characters"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 38
    sget-object p2, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->CHARACTERS:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    goto :goto_2

    :sswitch_1
    const-string v0, "sentences"

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 37
    sget-object p2, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->SENTENCES:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    goto :goto_2

    :sswitch_2
    const-string v0, "words"

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    sget-object p2, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->WORDS:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    goto :goto_2

    :sswitch_3
    const-string v0, "none"

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string p2, "Forbidden auto capitalize value passed"

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    :goto_1
    sget-object p2, Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;->NONE:Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;

    .line 34
    :goto_2
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setAutoCapitalize(Lcom/swmansion/rnscreens/SearchBarView$SearchBarAutoCapitalize;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x33af38 -> :sswitch_3
        0x6c11aa9 -> :sswitch_2
        0x1d36f670 -> :sswitch_1
        0x4a3baa6a -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAutoFocus(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoFocus"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setAutoFocus(Z)V

    return-void
.end method

.method public final setDisableBackButtonOverride(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Boolean;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "disableBackButtonOverride"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setShouldOverrideBackButton(Z)V

    return-void
.end method

.method public final setHeaderIconColor(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "headerIconColor"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setHeaderIconColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setHintTextColor(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "hintTextColor"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setHintTextColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setInputType(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "inputType"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    sget-object p2, Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;->PHONE:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    goto :goto_2

    :sswitch_1
    const-string v0, "email"

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    sget-object p2, Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;->EMAIL:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    goto :goto_2

    :sswitch_2
    const-string v0, "text"

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v0, "number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 65
    sget-object p2, Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;->NUMBER:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    goto :goto_2

    .line 67
    :cond_0
    :goto_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string p2, "Forbidden input type value"

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    :goto_1
    sget-object p2, Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;->TEXT:Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;

    .line 62
    :goto_2
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setInputType(Lcom/swmansion/rnscreens/SearchBarView$SearchBarInputTypes;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_3
        0x36452d -> :sswitch_2
        0x5c24b9c -> :sswitch_1
        0x65b3d6e -> :sswitch_0
    .end sparse-switch
.end method

.method public final setPlaceholder(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "placeholder"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setPlaceholder(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setShouldShowHintSearchIcon(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "shouldShowHintSearchIcon"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setShouldShowHintSearchIcon(Z)V

    return-void
.end method

.method public final setTextColor(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "textColor"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setTextColor(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setTintColor(Lcom/swmansion/rnscreens/SearchBarView;Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "barTintColor"
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/SearchBarView;->setTintColor(Ljava/lang/Integer;)V

    return-void
.end method
