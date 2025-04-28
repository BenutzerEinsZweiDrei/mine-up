.class Lcom/beefe/picker/view/PickerViewAlone$2;
.super Ljava/lang/Object;
.source "PickerViewAlone.java"

# interfaces
.implements Lcom/beefe/picker/view/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beefe/picker/view/PickerViewAlone;->setMultipleData(Lcom/facebook/react/bridge/ReadableArray;[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beefe/picker/view/PickerViewAlone;

.field final synthetic val$selectedIndexes:[I

.field final synthetic val$selectedItems:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beefe/picker/view/PickerViewAlone;[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    iput-object p2, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->val$selectedItems:[Ljava/lang/String;

    iput-object p3, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->val$selectedIndexes:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/String;I)V
    .locals 4

    .line 138
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewAlone;->access$200(Lcom/beefe/picker/view/PickerViewAlone;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {v1}, Lcom/beefe/picker/view/PickerViewAlone;->access$200(Lcom/beefe/picker/view/PickerViewAlone;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 141
    instance-of v2, v1, Lcom/beefe/picker/view/LoopView;

    if-eqz v2, :cond_0

    .line 142
    check-cast v1, Lcom/beefe/picker/view/LoopView;

    .line 143
    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->val$selectedItems:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedItem()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 144
    iget-object v2, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->val$selectedIndexes:[I

    invoke-virtual {v1}, Lcom/beefe/picker/view/LoopView;->getSelectedIndex()I

    move-result v1

    aput v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewAlone;->access$000(Lcom/beefe/picker/view/PickerViewAlone;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 149
    :goto_1
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->val$selectedItems:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_2

    .line 150
    new-instance p1, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {p1}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->val$selectedItems:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->val$selectedIndexes:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 153
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewAlone;->access$100(Lcom/beefe/picker/view/PickerViewAlone;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewAlone;->access$000(Lcom/beefe/picker/view/PickerViewAlone;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewAlone$2;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewAlone;->access$100(Lcom/beefe/picker/view/PickerViewAlone;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/beefe/picker/view/OnSelectedListener;->onSelected(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method
