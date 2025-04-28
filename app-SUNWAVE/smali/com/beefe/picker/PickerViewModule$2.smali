.class Lcom/beefe/picker/PickerViewModule$2;
.super Ljava/lang/Object;
.source "PickerViewModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beefe/picker/PickerViewModule;->_init(Lcom/facebook/react/bridge/ReadableMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beefe/picker/PickerViewModule;


# direct methods
.method constructor <init>(Lcom/beefe/picker/PickerViewModule;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/beefe/picker/PickerViewModule$2;->this$0:Lcom/beefe/picker/PickerViewModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/beefe/picker/PickerViewModule$2;->this$0:Lcom/beefe/picker/PickerViewModule;

    invoke-static {p1}, Lcom/beefe/picker/PickerViewModule;->access$000(Lcom/beefe/picker/PickerViewModule;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/beefe/picker/PickerViewModule$2;->this$0:Lcom/beefe/picker/PickerViewModule;

    invoke-static {p1}, Lcom/beefe/picker/PickerViewModule;->access$300(Lcom/beefe/picker/PickerViewModule;)Lcom/beefe/picker/view/PickerViewLinkage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beefe/picker/view/PickerViewLinkage;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beefe/picker/PickerViewModule;->access$102(Lcom/beefe/picker/PickerViewModule;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/beefe/picker/PickerViewModule$2;->this$0:Lcom/beefe/picker/PickerViewModule;

    invoke-static {p1}, Lcom/beefe/picker/PickerViewModule;->access$200(Lcom/beefe/picker/PickerViewModule;)Lcom/beefe/picker/view/PickerViewAlone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beefe/picker/view/PickerViewAlone;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beefe/picker/PickerViewModule;->access$102(Lcom/beefe/picker/PickerViewModule;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/beefe/picker/PickerViewModule$2;->this$0:Lcom/beefe/picker/PickerViewModule;

    const-string v0, "cancel"

    invoke-static {p1, v0}, Lcom/beefe/picker/PickerViewModule;->access$400(Lcom/beefe/picker/PickerViewModule;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/beefe/picker/PickerViewModule$2;->this$0:Lcom/beefe/picker/PickerViewModule;

    invoke-virtual {p1}, Lcom/beefe/picker/PickerViewModule;->hide()V

    return-void
.end method
