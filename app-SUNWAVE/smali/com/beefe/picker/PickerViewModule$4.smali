.class Lcom/beefe/picker/PickerViewModule$4;
.super Ljava/lang/Object;
.source "PickerViewModule.java"

# interfaces
.implements Lcom/beefe/picker/view/OnSelectedListener;


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

    .line 339
    iput-object p1, p0, Lcom/beefe/picker/PickerViewModule$4;->this$0:Lcom/beefe/picker/PickerViewModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/beefe/picker/view/ReturnData;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/beefe/picker/PickerViewModule$4;->this$0:Lcom/beefe/picker/PickerViewModule;

    invoke-static {v0, p1}, Lcom/beefe/picker/PickerViewModule;->access$102(Lcom/beefe/picker/PickerViewModule;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 343
    iget-object p1, p0, Lcom/beefe/picker/PickerViewModule$4;->this$0:Lcom/beefe/picker/PickerViewModule;

    const-string v0, "select"

    invoke-static {p1, v0}, Lcom/beefe/picker/PickerViewModule;->access$400(Lcom/beefe/picker/PickerViewModule;Ljava/lang/String;)V

    return-void
.end method
