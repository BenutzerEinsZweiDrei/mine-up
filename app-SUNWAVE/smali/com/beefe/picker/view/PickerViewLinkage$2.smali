.class Lcom/beefe/picker/view/PickerViewLinkage$2;
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

    .line 250
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/String;I)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1302(Lcom/beefe/picker/view/PickerViewLinkage;I)I

    .line 255
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$000(Lcom/beefe/picker/view/PickerViewLinkage;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$000(Lcom/beefe/picker/view/PickerViewLinkage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le p2, v1, :cond_0

    add-int/lit8 p2, v1, -0x1

    .line 262
    :cond_0
    invoke-interface {v0, p2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$800(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$900(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$802(Lcom/beefe/picker/view/PickerViewLinkage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 267
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1000(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;

    move-result-object v1

    iget-object v3, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v3}, Lcom/beefe/picker/view/PickerViewLinkage;->access$800(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/beefe/picker/view/PickerViewLinkage;->access$600(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/LoopView;Ljava/util/ArrayList;)V

    .line 269
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {v0, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$102(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 270
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1400(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v3}, Lcom/beefe/picker/view/PickerViewLinkage;->access$000(Lcom/beefe/picker/view/PickerViewLinkage;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1500(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 272
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance v1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {v0, v1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$702(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 275
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 277
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$700(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    new-instance p2, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p2}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    invoke-static {p1, p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1102(Lcom/beefe/picker/view/PickerViewLinkage;Lcom/beefe/picker/view/ReturnData;)Lcom/beefe/picker/view/ReturnData;

    .line 281
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$800(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$800(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 282
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$800(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1000(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/LoopView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 284
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x2

    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1100(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/ReturnData;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewLinkage;->access$1200(Lcom/beefe/picker/view/PickerViewLinkage;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewLinkage$2;->this$0:Lcom/beefe/picker/view/PickerViewLinkage;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewLinkage;->access$200(Lcom/beefe/picker/view/PickerViewLinkage;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/beefe/picker/view/OnSelectedListener;->onSelected(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method
