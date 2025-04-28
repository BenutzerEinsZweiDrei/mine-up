.class Lcom/henninghall/date_picker/pickers/IosClone$2;
.super Ljava/lang/Object;
.source "IosClone.java"

# interfaces
.implements Lcn/carbswang/android/numberpickerview/library/NumberPickerView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henninghall/date_picker/pickers/IosClone;->setOnValueChangedListener(Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henninghall/date_picker/pickers/IosClone;

.field final synthetic val$listener:Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/pickers/IosClone;Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/henninghall/date_picker/pickers/IosClone$2;->this$0:Lcom/henninghall/date_picker/pickers/IosClone;

    iput-object p2, p0, Lcom/henninghall/date_picker/pickers/IosClone$2;->val$listener:Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/carbswang/android/numberpickerview/library/NumberPickerView;II)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/henninghall/date_picker/pickers/IosClone$2;->val$listener:Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;

    invoke-interface {p1}, Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;->onValueChange()V

    return-void
.end method
