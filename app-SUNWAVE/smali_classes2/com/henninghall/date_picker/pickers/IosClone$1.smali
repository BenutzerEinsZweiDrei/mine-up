.class Lcom/henninghall/date_picker/pickers/IosClone$1;
.super Ljava/lang/Object;
.source "IosClone.java"

# interfaces
.implements Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListenerInScrolling;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henninghall/date_picker/pickers/IosClone;->initSetOnValueChangeListenerInScrolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henninghall/date_picker/pickers/IosClone;

.field final synthetic val$self:Lcom/henninghall/date_picker/pickers/Picker;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/pickers/IosClone;Lcom/henninghall/date_picker/pickers/Picker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/henninghall/date_picker/pickers/IosClone$1;->this$0:Lcom/henninghall/date_picker/pickers/IosClone;

    iput-object p2, p0, Lcom/henninghall/date_picker/pickers/IosClone$1;->val$self:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChangeInScrolling(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/henninghall/date_picker/pickers/IosClone$1;->val$self:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-static {p1, p3}, Lcom/henninghall/date_picker/ui/Accessibility;->sendValueChangedEvent(Lcom/henninghall/date_picker/pickers/Picker;I)V

    .line 52
    iget-object p1, p0, Lcom/henninghall/date_picker/pickers/IosClone$1;->this$0:Lcom/henninghall/date_picker/pickers/IosClone;

    invoke-static {p1}, Lcom/henninghall/date_picker/pickers/IosClone;->access$000(Lcom/henninghall/date_picker/pickers/IosClone;)Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/henninghall/date_picker/pickers/IosClone$1;->this$0:Lcom/henninghall/date_picker/pickers/IosClone;

    invoke-static {p1}, Lcom/henninghall/date_picker/pickers/IosClone;->access$000(Lcom/henninghall/date_picker/pickers/IosClone;)Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;

    move-result-object p1

    iget-object v0, p0, Lcom/henninghall/date_picker/pickers/IosClone$1;->val$self:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {p1, v0, p2, p3}, Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListenerInScrolling;->onValueChangeInScrolling(Lcom/henninghall/date_picker/pickers/Picker;II)V

    :cond_0
    return-void
.end method
