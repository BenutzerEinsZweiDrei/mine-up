.class Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;
.super Ljava/lang/Object;
.source "ReanimatedNativeHierarchyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

.field final synthetic val$toBeRemovedChildren:Ljava/util/ArrayList;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;

.field final synthetic val$viewGroupManager:Lcom/facebook/react/uimanager/ViewGroupManager;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;Ljava/util/ArrayList;Landroid/view/View;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->this$0:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    iput-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$toBeRemovedChildren:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$viewGroupManager:Lcom/facebook/react/uimanager/ViewGroupManager;

    iput-object p5, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$toBeRemovedChildren:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$viewGroupManager:Lcom/facebook/react/uimanager/ViewGroupManager;

    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$viewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeView(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method
