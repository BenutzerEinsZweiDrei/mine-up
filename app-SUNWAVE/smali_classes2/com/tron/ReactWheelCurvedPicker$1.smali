.class Lcom/tron/ReactWheelCurvedPicker$1;
.super Ljava/lang/Object;
.source "ReactWheelCurvedPicker.java"

# interfaces
.implements Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tron/ReactWheelCurvedPicker;-><init>(Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tron/ReactWheelCurvedPicker;


# direct methods
.method constructor <init>(Lcom/tron/ReactWheelCurvedPicker;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tron/ReactWheelCurvedPicker$1;->this$0:Lcom/tron/ReactWheelCurvedPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onWheelScrolled(I)V
    .locals 0

    return-void
.end method

.method public onWheelSelected(I)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/tron/ReactWheelCurvedPicker$1;->this$0:Lcom/tron/ReactWheelCurvedPicker;

    invoke-static {v0}, Lcom/tron/ReactWheelCurvedPicker;->access$000(Lcom/tron/ReactWheelCurvedPicker;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tron/ReactWheelCurvedPicker$1;->this$0:Lcom/tron/ReactWheelCurvedPicker;

    invoke-static {v0}, Lcom/tron/ReactWheelCurvedPicker;->access$000(Lcom/tron/ReactWheelCurvedPicker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/tron/ReactWheelCurvedPicker$1;->this$0:Lcom/tron/ReactWheelCurvedPicker;

    invoke-static {v0}, Lcom/tron/ReactWheelCurvedPicker;->access$100(Lcom/tron/ReactWheelCurvedPicker;)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/tron/ItemSelectedEvent;

    iget-object v2, p0, Lcom/tron/ReactWheelCurvedPicker$1;->this$0:Lcom/tron/ReactWheelCurvedPicker;

    .line 49
    invoke-virtual {v2}, Lcom/tron/ReactWheelCurvedPicker;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/tron/ReactWheelCurvedPicker$1;->this$0:Lcom/tron/ReactWheelCurvedPicker;

    invoke-static {v3}, Lcom/tron/ReactWheelCurvedPicker;->access$000(Lcom/tron/ReactWheelCurvedPicker;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/tron/ItemSelectedEvent;-><init>(ILjava/lang/Object;)V

    .line 48
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method
