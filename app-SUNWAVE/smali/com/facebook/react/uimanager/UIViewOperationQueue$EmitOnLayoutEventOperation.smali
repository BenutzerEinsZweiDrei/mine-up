.class final Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;
.super Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;
.source "UIViewOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/UIViewOperationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmitOnLayoutEventOperation"
.end annotation


# instance fields
.field private final mScreenHeight:I

.field private final mScreenWidth:I

.field private final mScreenX:I

.field private final mScreenY:I

.field final synthetic this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;IIIII)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/UIViewOperationQueue$ViewOperation;-><init>(Lcom/facebook/react/uimanager/UIViewOperationQueue;I)V

    .line 107
    iput p3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mScreenX:I

    .line 108
    iput p4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mScreenY:I

    .line 109
    iput p5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mScreenWidth:I

    .line 110
    iput p6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mScreenHeight:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->this$0:Lcom/facebook/react/uimanager/UIViewOperationQueue;

    invoke-static {v0}, Lcom/facebook/react/uimanager/UIViewOperationQueue;->access$100(Lcom/facebook/react/uimanager/UIViewOperationQueue;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    const/4 v1, -0x1

    iget v2, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mTag:I

    iget v3, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mScreenX:I

    iget v4, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mScreenY:I

    iget v5, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mScreenWidth:I

    iget v6, p0, Lcom/facebook/react/uimanager/UIViewOperationQueue$EmitOnLayoutEventOperation;->mScreenHeight:I

    .line 121
    invoke-static/range {v1 .. v6}, Lcom/facebook/react/uimanager/OnLayoutEvent;->obtain(IIIIII)Lcom/facebook/react/uimanager/OnLayoutEvent;

    move-result-object v1

    .line 120
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method
