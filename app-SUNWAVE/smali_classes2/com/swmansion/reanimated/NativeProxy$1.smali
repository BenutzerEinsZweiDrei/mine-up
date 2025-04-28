.class Lcom/swmansion/reanimated/NativeProxy$1;
.super Ljava/lang/Object;
.source "NativeProxy.java"

# interfaces
.implements Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/NativeProxy;->prepare(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/NativeProxy;

.field final synthetic val$LayoutAnimations:Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

.field final synthetic val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/NativeProxy;Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/swmansion/reanimated/NativeProxy$1;->this$0:Lcom/swmansion/reanimated/NativeProxy;

    iput-object p2, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$LayoutAnimations:Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLayoutAnimationEnabled()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$LayoutAnimations:Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->isLayoutAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public removeConfigForTag(I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->removeConfigForTag(I)V

    :cond_0
    return-void
.end method

.method public startAnimationForTag(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy$1;->val$weakLayoutAnimations:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    if-eqz v0, :cond_1

    .line 266
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 267
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 268
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;->startAnimationForTag(ILjava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
