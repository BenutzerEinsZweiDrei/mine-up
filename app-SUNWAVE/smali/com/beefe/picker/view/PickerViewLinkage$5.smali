.class Lcom/beefe/picker/view/PickerViewLinkage$5;
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

    .line 363
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/String;I)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {v0, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$102(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 367
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$000(Lcom/beefe/picker/view/PickerViewLinkage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1500(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 369
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {v0, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$702(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 372
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 373
    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 376
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$5;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/beefe/picker/view/OnSelectedListener;->onSelected(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
