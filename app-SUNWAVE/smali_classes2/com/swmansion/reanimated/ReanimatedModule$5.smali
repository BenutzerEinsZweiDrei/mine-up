.class Lcom/swmansion/reanimated/ReanimatedModule$5;
.super Ljava/lang/Object;
.source "ReanimatedModule.java"

# interfaces
.implements Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/reanimated/ReanimatedModule;->disconnectNodes(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/reanimated/ReanimatedModule;

.field final synthetic val$childID:I

.field final synthetic val$parentID:I


# direct methods
.method constructor <init>(Lcom/swmansion/reanimated/ReanimatedModule;II)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/swmansion/reanimated/ReanimatedModule$5;->this$0:Lcom/swmansion/reanimated/ReanimatedModule;

    iput p2, p0, Lcom/swmansion/reanimated/ReanimatedModule$5;->val$parentID:I

    iput p3, p0, Lcom/swmansion/reanimated/ReanimatedModule$5;->val$childID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/swmansion/reanimated/NodesManager;)V
    .locals 2

    .line 162
    iget v0, p0, Lcom/swmansion/reanimated/ReanimatedModule$5;->val$parentID:I

    iget v1, p0, Lcom/swmansion/reanimated/ReanimatedModule$5;->val$childID:I

    invoke-virtual {p1, v0, v1}, Lcom/swmansion/reanimated/NodesManager;->disconnectNodes(II)V

    return-void
.end method
