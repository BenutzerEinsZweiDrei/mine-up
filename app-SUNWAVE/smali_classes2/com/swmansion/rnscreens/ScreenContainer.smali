.class public Lcom/swmansion/rnscreens/ScreenContainer;
.super Landroid/view/ViewGroup;
.source "ScreenContainer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenContainer.kt\ncom/swmansion/rnscreens/ScreenContainer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,374:1\n286#2,2:375\n1#3:377\n37#4:378\n36#4,3:379\n*S KotlinDebug\n*F\n+ 1 ScreenContainer.kt\ncom/swmansion/rnscreens/ScreenContainer\n*L\n123#1:375,2\n332#1:378\n332#1:379,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\u001aH\u0014\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u0016J\u0018\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0002H\u0002J\u0008\u0010\'\u001a\u00020%H\u0004J\u0018\u0010(\u001a\u00020!2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0002H\u0002J\u0010\u0010)\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020+H\u0002J\u0012\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010&\u001a\u00020\u0002H\u0002J\u000e\u0010.\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020\u0016J\u0012\u0010/\u001a\u00020\u00082\u0008\u0010&\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u00100\u001a\u00020!J\u0008\u00101\u001a\u00020!H\u0014J\u0008\u00102\u001a\u00020!H\u0014J\u0008\u00103\u001a\u00020!H\u0014J0\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u00162\u0006\u00108\u001a\u00020\u00162\u0006\u00109\u001a\u00020\u0016H\u0014J\u0018\u0010:\u001a\u00020!2\u0006\u0010;\u001a\u00020\u00162\u0006\u0010<\u001a\u00020\u0016H\u0014J\u0008\u0010=\u001a\u00020!H\u0002J\u0008\u0010>\u001a\u00020!H\u0016J\u0006\u0010?\u001a\u00020!J\u0008\u0010@\u001a\u00020!H\u0004J\u0008\u0010A\u001a\u00020!H\u0016J\u0010\u0010B\u001a\u00020!2\u0006\u0010C\u001a\u00020\u000bH\u0002J\u0010\u0010D\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0016H\u0016J\u0010\u0010E\u001a\u00020!2\u0006\u0010F\u001a\u00020GH\u0016J\u0008\u0010H\u001a\u00020!H\u0016J\u0010\u0010I\u001a\u00020!2\u0006\u0010J\u001a\u00020\u000bH\u0002J\u0008\u0010K\u001a\u00020!H\u0002R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0013j\u0008\u0012\u0004\u0012\u00028\u0000`\u00148\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006L"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "T",
        "Lcom/swmansion/rnscreens/ScreenFragment;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "isNested",
        "",
        "()Z",
        "mFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "mIsAttached",
        "mLayoutCallback",
        "Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;",
        "mLayoutEnqueued",
        "mNeedUpdate",
        "mParentScreenFragment",
        "mScreenFragments",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "screenCount",
        "",
        "getScreenCount",
        "()I",
        "topScreen",
        "Lcom/swmansion/rnscreens/Screen;",
        "getTopScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "adapt",
        "screen",
        "(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;",
        "addScreen",
        "",
        "index",
        "attachScreen",
        "transaction",
        "Landroidx/fragment/app/FragmentTransaction;",
        "screenFragment",
        "createTransaction",
        "detachScreen",
        "findFragmentManagerForReactRootView",
        "rootView",
        "Lcom/facebook/react/ReactRootView;",
        "getActivityState",
        "Lcom/swmansion/rnscreens/Screen$ActivityState;",
        "getScreenAt",
        "hasScreen",
        "notifyChildUpdate",
        "notifyContainerUpdate",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onScreenChanged",
        "onUpdate",
        "performUpdates",
        "performUpdatesNow",
        "removeAllScreens",
        "removeMyFragments",
        "fragmentManager",
        "removeScreenAt",
        "removeView",
        "view",
        "Landroid/view/View;",
        "requestLayout",
        "setFragmentManager",
        "fm",
        "setupFragmentManager",
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
.field protected mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIsAttached:Z

.field private final mLayoutCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

.field private mLayoutEnqueued:Z

.field private mNeedUpdate:Z

.field private mParentScreenFragment:Lcom/swmansion/rnscreens/ScreenFragment;

.field protected final mScreenFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-NzR6fs_eYEeQYBiyCsPGC0jdHQ(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onScreenChanged$lambda-7(Lcom/swmansion/rnscreens/ScreenContainer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    .line 27
    new-instance p1, Lcom/swmansion/rnscreens/ScreenContainer$mLayoutCallback$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenContainer$mLayoutCallback$1;-><init>(Lcom/swmansion/rnscreens/ScreenContainer;)V

    check-cast p1, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    return-void
.end method

.method public static final synthetic access$setMLayoutEnqueued$p(Lcom/swmansion/rnscreens/ScreenContainer;Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutEnqueued:Z

    return-void
.end method

.method private final attachScreen(Landroidx/fragment/app/FragmentTransaction;Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getId()I

    move-result v0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private final detachScreen(Landroidx/fragment/app/FragmentTransaction;Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    .line 205
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private final findFragmentManagerForReactRootView(Lcom/facebook/react/ReactRootView;)Landroidx/fragment/app/FragmentManager;
    .locals 3

    .line 131
    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    :goto_0
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v1, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 136
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    .line 148
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "{\n            // We are \u2026FragmentManager\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 158
    :cond_1
    :try_start_0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->findFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    :goto_1
    const-string v0, "{\n            // We are \u2026r\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1

    .line 139
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "In order to use RNScreens components your app\'s activity need to extend ReactActivity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getActivityState(Lcom/swmansion/rnscreens/ScreenFragment;)Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 0

    .line 209
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getActivityState()Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object p1

    return-object p1
.end method

.method private final onScreenChanged()V
    .locals 2

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    .line 288
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/swmansion/rnscreens/ScreenContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/swmansion/rnscreens/ScreenContainer$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/ScreenContainer;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static final onScreenChanged$lambda-7(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->performUpdates()V

    return-void
.end method

.method private final removeMyFragments(Landroidx/fragment/app/FragmentManager;)V
    .locals 4

    .line 222
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "fragmentManager.beginTransaction()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 225
    instance-of v3, v2, Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 226
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_2
    return-void
.end method

.method private final setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 127
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->performUpdatesNow()V

    return-void
.end method

.method private final setupFragmentManager()V
    .locals 3

    .line 166
    move-object v0, p0

    check-cast v0, Landroid/view/ViewParent;

    .line 168
    :goto_0
    instance-of v1, v0, Lcom/facebook/react/ReactRootView;

    if-nez v1, :cond_0

    instance-of v2, v0, Lcom/swmansion/rnscreens/Screen;

    if-nez v2, :cond_0

    .line 169
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "parent.parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    instance-of v2, v0, Lcom/swmansion/rnscreens/Screen;

    if-eqz v2, :cond_3

    .line 177
    check-cast v0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 178
    :cond_1
    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mParentScreenFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    .line 179
    invoke-virtual {v0, p0}, Lcom/swmansion/rnscreens/ScreenFragment;->registerChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    .line 180
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "screenFragment.childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenContainer;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 177
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent Screen does not have its Fragment attached"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v1, :cond_4

    .line 190
    check-cast v0, Lcom/facebook/react/ReactRootView;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenContainer;->findFragmentManagerForReactRootView(Lcom/facebook/react/ReactRootView;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenContainer;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    :goto_2
    return-void

    .line 189
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenContainer is not attached under ReactRootView"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/rnscreens/Screen;",
            ")TT;"
        }
    .end annotation

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    return-object v0
.end method

.method public final addScreen(Lcom/swmansion/rnscreens/Screen;I)V
    .locals 2

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen;->setFragment(Lcom/swmansion/rnscreens/ScreenFragment;)V

    .line 98
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p1, p0}, Lcom/swmansion/rnscreens/Screen;->setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    .line 100
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onScreenChanged()V

    return-void
.end method

.method protected final createTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x1

    .line 197
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "requireNotNull(mFragment\u2026etReorderingAllowed(true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mFragmentManager is null when creating transaction"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getScreenAt(I)Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    return-object p1
.end method

.method public final getScreenCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTopScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 375
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/swmansion/rnscreens/ScreenFragment;

    .line 123
    invoke-direct {p0, v3}, Lcom/swmansion/rnscreens/ScreenContainer;->getActivityState(Lcom/swmansion/rnscreens/ScreenFragment;)Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/swmansion/rnscreens/Screen$ActivityState;->ON_TOP:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragment;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public hasScreen(Lcom/swmansion/rnscreens/ScreenFragment;)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isNested()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mParentScreenFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final notifyChildUpdate()V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->performUpdatesNow()V

    return-void
.end method

.method protected notifyContainerUpdate()V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->onContainerUpdate()V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mIsAttached:Z

    .line 217
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->setupFragmentManager()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeMyFragments(Landroidx/fragment/app/FragmentManager;)V

    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 249
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mParentScreenFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Lcom/swmansion/rnscreens/ScreenFragment;->unregisterChildScreenContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    :goto_1
    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mParentScreenFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    .line 252
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mIsAttached:Z

    .line 266
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 267
    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeViewAt(I)V

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 43
    invoke-virtual {p0, p3}, Lcom/swmansion/rnscreens/ScreenContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getWidth()I

    move-result p5

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 272
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 273
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 274
    invoke-virtual {p0, v1}, Lcom/swmansion/rnscreens/ScreenContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 10

    .line 316
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->createTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_9

    .line 321
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 318
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    check-cast v2, Ljava/util/Set;

    .line 323
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "screenFragment"

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/rnscreens/ScreenFragment;

    .line 324
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/swmansion/rnscreens/ScreenContainer;->getActivityState(Lcom/swmansion/rnscreens/ScreenFragment;)Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object v4

    sget-object v5, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-ne v4, v5, :cond_0

    .line 325
    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-direct {p0, v0, v3}, Lcom/swmansion/rnscreens/ScreenContainer;->detachScreen(Landroidx/fragment/app/FragmentTransaction;Lcom/swmansion/rnscreens/ScreenFragment;)V

    .line 329
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_1
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    new-array v1, v5, [Landroidx/fragment/app/Fragment;

    .line 381
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    check-cast v1, [Landroidx/fragment/app/Fragment;

    .line 333
    array-length v2, v1

    move v6, v5

    :cond_2
    :goto_1
    if-ge v6, v2, :cond_3

    aget-object v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 334
    instance-of v8, v7, Lcom/swmansion/rnscreens/ScreenFragment;

    if-eqz v8, :cond_2

    .line 335
    check-cast v7, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v8

    invoke-virtual {v8}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v8

    if-nez v8, :cond_2

    .line 336
    invoke-direct {p0, v0, v7}, Lcom/swmansion/rnscreens/ScreenContainer;->detachScreen(Landroidx/fragment/app/FragmentTransaction;Lcom/swmansion/rnscreens/ScreenFragment;)V

    goto :goto_1

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v5

    .line 347
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v6, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/swmansion/rnscreens/ScreenFragment;

    .line 350
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/swmansion/rnscreens/ScreenContainer;->getActivityState(Lcom/swmansion/rnscreens/ScreenFragment;)Lcom/swmansion/rnscreens/Screen$ActivityState;

    move-result-object v8

    .line 351
    sget-object v9, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-eq v8, v9, :cond_5

    invoke-virtual {v7}, Lcom/swmansion/rnscreens/ScreenFragment;->isAdded()Z

    move-result v9

    if-nez v9, :cond_5

    .line 353
    invoke-direct {p0, v0, v7}, Lcom/swmansion/rnscreens/ScreenContainer;->attachScreen(Landroidx/fragment/app/FragmentTransaction;Lcom/swmansion/rnscreens/ScreenFragment;)V

    move v5, v3

    goto :goto_4

    .line 354
    :cond_5
    sget-object v9, Lcom/swmansion/rnscreens/Screen$ActivityState;->INACTIVE:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-eq v8, v9, :cond_6

    if-eqz v5, :cond_6

    .line 356
    invoke-direct {p0, v0, v7}, Lcom/swmansion/rnscreens/ScreenContainer;->detachScreen(Landroidx/fragment/app/FragmentTransaction;Lcom/swmansion/rnscreens/ScreenFragment;)V

    .line 357
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_6
    :goto_4
    invoke-virtual {v7}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/swmansion/rnscreens/Screen;->setTransitioning(Z)V

    goto :goto_3

    .line 362
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenFragment;

    .line 363
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/swmansion/rnscreens/ScreenContainer;->attachScreen(Landroidx/fragment/app/FragmentTransaction;Lcom/swmansion/rnscreens/ScreenFragment;)V

    goto :goto_5

    .line 366
    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void

    .line 319
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mFragmentManager is null when performing update in ScreenContainer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final performUpdates()V
    .locals 3

    .line 307
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mIsAttached:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 310
    :cond_2
    iput-boolean v2, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    .line 311
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onUpdate()V

    .line 312
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->notifyContainerUpdate()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected final performUpdatesNow()V
    .locals 1

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mNeedUpdate:Z

    .line 303
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->performUpdates()V

    return-void
.end method

.method public removeAllScreens()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragment;

    .line 111
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/Screen;->setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onScreenChanged()V

    return-void
.end method

.method public removeScreenAt(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenFragment;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenFragment;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/Screen;->setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V

    .line 105
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mScreenFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->onScreenChanged()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 64
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 72
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutEnqueued:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutEnqueued:Z

    .line 76
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenContainer;->mLayoutCallback:Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    :cond_0
    return-void
.end method
