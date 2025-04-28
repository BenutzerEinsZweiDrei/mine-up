.class Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener$1;
.super Ljava/lang/Object;
.source "AddOnChangeListener.java"

# interfaces
.implements Lcom/henninghall/date_picker/pickers/Picker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;->apply(Lcom/henninghall/date_picker/wheels/Wheel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;

.field final synthetic val$wheel:Lcom/henninghall/date_picker/wheels/Wheel;


# direct methods
.method constructor <init>(Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;Lcom/henninghall/date_picker/wheels/Wheel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener$1;->this$0:Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;

    iput-object p2, p0, Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener$1;->val$wheel:Lcom/henninghall/date_picker/wheels/Wheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener$1;->this$0:Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;

    invoke-static {v0}, Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;->access$000(Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener;)Lcom/henninghall/date_picker/ui/WheelChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henninghall/date_picker/wheelFunctions/AddOnChangeListener$1;->val$wheel:Lcom/henninghall/date_picker/wheels/Wheel;

    invoke-interface {v0, v1}, Lcom/henninghall/date_picker/ui/WheelChangeListener;->onChange(Lcom/henninghall/date_picker/wheels/Wheel;)V

    return-void
.end method
