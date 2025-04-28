.class Lcom/beefe/picker/view/PickerViewLinkage$4;
.super Ljava/lang/Object;
.source "PickerViewLinkage.java"

# interfaces
.implements Lcom/beefe/picker/view/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beefe/picker/view/PickerViewLinkage;->setPickerData(Lcom/facebook/react/bridge/ReadableArray;[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beefe/picker/view/PickerViewLinkage;


# direct methods
.method constructor <init>(Lcom/beefe/picker/view/PickerViewLinkage;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/String;I)V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$002(Lcom/beefe/picker/view/PickerViewLinkage;I)I

    .line 334
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$300(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$900(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$302(Lcom/beefe/picker/view/PickerViewLinkage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 337
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$500(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;

    move-result-object v1

    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$300(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$600(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V

    .line 338
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {v0, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$102(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 339
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 341
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance p2, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p2}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {p1, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$702(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 343
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$300(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$500(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 345
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$4;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/beefe/picker/view/OnSelectedListener;->onSelected(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
