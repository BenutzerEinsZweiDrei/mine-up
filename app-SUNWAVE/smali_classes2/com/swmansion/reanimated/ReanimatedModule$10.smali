.class Lcom/swmansion/reanimated/ReanimatedModule$10;
.super Ljava/lang/Object;
.source "ReanimatedModule.java"

# interfaces
.implements Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/ReanimatedModule;->getValue(ILcom/facebook/react/bridge/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/ReanimatedModule;

.field final synthetic val$callback:Lcom/facebook/react/bridge/Callback;

.field final synthetic val$nodeID:I


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/ReanimatedModule;ILcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->this$0:Lcom/swmansion/reanimated/ReanimatedModule;

    iput p2, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->val$nodeID:I

    iput-object p3, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/swmansion/reanimated/NodesManager;)V
    .locals 2

    .line 217
    iget v0, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->val$nodeID:I

    iget-object v1, p0, Lcom/swmansion/reanimated/ReanimatedModule$10;->val$callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1, v0, v1}, Lcom/swmansion/reanimated/NodesManager;->getValue(ILcom/facebook/react/bridge/Callback;)V

    return-void
.end method
