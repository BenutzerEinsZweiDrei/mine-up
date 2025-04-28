.class Lcom/beefe/picker/view/PickerViewAlone$1;
.super Ljava/lang/Object;
.source "PickerViewAlone.java"

# interfaces
.implements Lcom/beefe/picker/view/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beefe/picker/view/PickerViewAlone;->setAloneData(Lcom/facebook/react/bridge/ReadableArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beefe/picker/view/PickerViewAlone;


# direct methods
.method constructor <init>(Lcom/beefe/picker/view/PickerViewAlone;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone$1;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Ljava/lang/String;I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/beefe/picker/view/PickerViewAlone$1;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {v0}, Lcom/beefe/picker/view/PickerViewAlone;->access$000(Lcom/beefe/picker/view/PickerViewAlone;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/beefe/picker/view/ReturnData;

    invoke-direct {v0}, Lcom/beefe/picker/view/ReturnData;-><init>()V

    .line 92
    invoke-virtual {v0, p1}, Lcom/beefe/picker/view/ReturnData;->setItem(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p2}, Lcom/beefe/picker/view/ReturnData;->setIndex(I)V

    .line 94
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone$1;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewAlone;->access$100(Lcom/beefe/picker/view/PickerViewAlone;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/beefe/picker/view/PickerViewAlone$1;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {p1}, Lcom/beefe/picker/view/PickerViewAlone;->access$000(Lcom/beefe/picker/view/PickerViewAlone;)Lcom/beefe/picker/view/OnSelectedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/beefe/picker/view/PickerViewAlone$1;->this$0:Lcom/beefe/picker/view/PickerViewAlone;

    invoke-static {p2}, Lcom/beefe/picker/view/PickerViewAlone;->access$100(Lcom/beefe/picker/view/PickerViewAlone;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/beefe/picker/view/OnSelectedListener;->onSelected(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
