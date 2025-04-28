.class Lcom/swmansion/reanimated/CopiedEvent$1;
.super Ljava/lang/Object;
.source "CopiedEvent.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/RCTEventEmitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/CopiedEvent;-><init>(Lcom/facebook/react/uimanager/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/CopiedEvent;


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/CopiedEvent;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/swmansion/reanimated/CopiedEvent$1;->this$0:Lcom/swmansion/reanimated/CopiedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/swmansion/reanimated/CopiedEvent$1;->this$0:Lcom/swmansion/reanimated/CopiedEvent;

    invoke-static {v0, p1}, Lcom/swmansion/reanimated/CopiedEvent;->access$002(Lcom/swmansion/reanimated/CopiedEvent;I)I

    .line 20
    iget-object p1, p0, Lcom/swmansion/reanimated/CopiedEvent$1;->this$0:Lcom/swmansion/reanimated/CopiedEvent;

    invoke-static {p1, p2}, Lcom/swmansion/reanimated/CopiedEvent;->access$102(Lcom/swmansion/reanimated/CopiedEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lcom/swmansion/reanimated/CopiedEvent$1;->this$0:Lcom/swmansion/reanimated/CopiedEvent;

    invoke-interface {p3}, Lcom/facebook/react/bridge/WritableMap;->copy()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/swmansion/reanimated/CopiedEvent;->access$202(Lcom/swmansion/reanimated/CopiedEvent;Lcom/facebook/react/bridge/WritableMap;)Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method

.method public receiveTouches(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;Lcom/facebook/react/bridge/WritableArray;)V
    .locals 0

    return-void
.end method
