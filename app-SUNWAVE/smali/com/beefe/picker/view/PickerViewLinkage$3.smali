.class Lcom/beefe/picker/view/PickerViewLinkage$3;
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

    .line 295
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/String;I)V
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$000(Lcom/beefe/picker/view/PickerViewLinkage;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$002(Lcom/beefe/picker/view/PickerViewLinkage;I)I

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$300(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1300(Lcom/beefe/picker/view/PickerViewLinkage;)I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 306
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1302(Lcom/beefe/picker/view/PickerViewLinkage;I)I

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {v0, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$102(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 310
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v3}, Lcom/beefe/picker/view/PickerViewLinkage;->access$000(Lcom/beefe/picker/view/PickerViewLinkage;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1500(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 312
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v3}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {v0, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$702(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 315
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$300(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v3}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1300(Lcom/beefe/picker/view/PickerViewLinkage;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$500(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 317
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {v0, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1102(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 320
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 322
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 324
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$3;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/beefe/picker/view/OnSelectedListener;->onSelected(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
